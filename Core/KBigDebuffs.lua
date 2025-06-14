--[[
	Hello to K Big Raid Debuffs
	Last version: @project-version@ (@project-date-iso@)
]]

local _, ns = ...
local l = ns.I18N;
local isInit = false;
local isLoaded = false;

local defaultOptions = {
	Version = ns.VERSION,

	BuffsScale = 0.75,
	MaxBuffs = CompactUnitFrame_GetOptionDisplayOnlyDispellableDebuffs and 8 or ns.DEFAULT_MAXBUFFS,
	BuffsPerLine = 4,
	BuffsOrientation = "LeftThenUp",
	BuffsPosX = 0,
	BuffsPosY = 0,
	DebuffsScale = 1.25,
	MaxDebuffs = ns.DEFAULT_MAXBUFFS,
	DebuffsPerLine = ns.DEFAULT_MAXBUFFS,
	DebuffsOrientation = "RightThenUp",
	DebuffsPosX = 0,
	DebuffsPosY = 0,
	UseTaintMethod = false,

	ShowMsgNormal = true,
	ShowMsgWarning = true,
	ShowMsgError = false,
};


function ns.RemoveOldOptions(options)
	-- Since 11.1.501
	if  options.BuffsVertical ~= nil then
		options.BuffsOrientation = options.BuffsVertical and "UpThenLeft" or options.BuffsOrientation
		options.BuffsVertical = nil
	end
	if  options.DebuffsVertical ~= nil then
		options.DebuffsOrientation = options.DebuffsVertical and "UpThenRight" or options.DebuffsOrientation
		options.DebuffsVertical = nil
	end
end

local function SLASH_command(msgIn)
	if (not isLoaded) then
		ns.AddMsgWarn(l.INIT_FAILED);
		return;
	end

	if msgIn == "reset" then
		StaticPopup_Show(ns.ADDON_NAME.."_CONFIRM_RESET")
	else
		if Settings then
			Settings.OpenToCategory(ns.TITLE);
		else
			InterfaceOptionsFrame_OpenToCategory(ns.TITLE);
		end
	end
end

local function SLASH_CLEAR_command()
	SELECTED_CHAT_FRAME:Clear()
end

local function OnEvent(self, event, ...)
	local arg1 = select(1, ...);
	if (event == "ADDON_LOADED" and arg1 == ns.ADDON_NAME) then
		self:UnregisterEvent("ADDON_LOADED");
		isLoaded = true;

		ns.SetDefaultOptions(defaultOptions);
		ns.RefreshOptions(defaultOptions);

		-- Load Module (standalone addon)

		ns.MODULES[1]:Init(_G[ns.OPTIONS_NAME]);
	end
end

local function InitAddon(frame)
	SlashCmdList["KBD"] = SLASH_command;
	SLASH_KBD1 = "/kbb";
	SLASH_KBD2 = "/kbd";
	SLASH_KBD3 = "/kb";

	if (ns.CONFLICT) then
		ns.AddMsgErr(format(l.CONFLICT_MESSAGE, ns.CONFLICT_WITH));
		return;
	end

	if (isInit or InCombatLockdown()) then return; end

	isInit = true;
	frame:SetScript("OnEvent",
		function(self, event, ...)
			OnEvent(self, event, ...);
		end
	);
	frame:RegisterEvent("ADDON_LOADED");
end

do
	local eventsFrame = CreateFrame("Frame", nil, UIParent)
	InitAddon(eventsFrame);
end

StaticPopupDialogs[ns.ADDON_NAME.."_CONFIRM_RESET"] = {
	showAlert = true,
	text = format("%s%s|r\n%s", l.YL, ns.TITLE, CONFIRM_RESET_SETTINGS),
	button1 = ALL_SETTINGS,
	-- button3 = CURRENT_SETTINGS,
	button2 = CANCEL,
	OnAccept = function()
		ns.SetDefaultOptions(defaultOptions, true);
		ReloadUI();
	end,
	-- OnAlt  = function()	end,
	timeout = STATICPOPUP_TIMEOUT,
	timeoutInformationalOnly = false,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,  -- avoid some UI taint
};

function KBDUI.ConfirmReset()
	StaticPopup_Show(ns.ADDON_NAME.."_CONFIRM_RESET")
end

function KBDUI.ResetOptions(optionNamesToReset, optionsToForce)
	ns.ResetOptions(optionNamesToReset, defaultOptions, optionsToForce)
end

function KBDUI.ShowEditMode(window)
	ns.ShowEditMode(window);
end

local refreshOptions = function()
	ns.RefreshOptions(defaultOptions, true);
end


local function RequiredReloadOptionsString()
	return tostring(_G[ns.OPTIONS_NAME].BuffsScale)
		..tostring(_G[ns.OPTIONS_NAME].MaxBuffs)
		..tostring(_G[ns.OPTIONS_NAME].BuffsPerLine)
		..tostring(_G[ns.OPTIONS_NAME].BuffsVertical)
		..tostring(_G[ns.OPTIONS_NAME].DebuffsScale)
		..tostring(_G[ns.OPTIONS_NAME].MaxDebuffs)
		..tostring(_G[ns.OPTIONS_NAME].DebuffsPerLine)
		..tostring(_G[ns.OPTIONS_NAME].DebuffsVertical)
end

local saveOptions = function()
	ns.SaveOptions(defaultOptions, RequiredReloadOptionsString);
end
function ns.InterfaceOptions_AddCategory(frame, addOn, position)
	if not Settings or not Settings.RegisterCanvasLayoutSubcategory then
		return InterfaceOptions_AddCategory(frame, addOn, position)
	end
    -- cancel is no longer a default option. May add menu extension for this.
    frame.OnCommit = frame.okay;
    frame.OnDefault = frame.default;
    frame.OnRefresh = frame.refresh;

    if frame.parent then -- for subcategories
        local category = Settings.GetCategory(frame.parent);
        local subcategory, layout = Settings.RegisterCanvasLayoutSubcategory(category, frame, frame.name, frame.name);
        subcategory.ID = frame.name;
        return subcategory, category;
    else
        local category, layout = Settings.RegisterCanvasLayoutCategory(frame, frame.name, frame.name);
        category.ID = frame.name;
        Settings.RegisterAddOnCategory(category);
        return category;
    end
end
function KBDUI.OptionsContainer_OnLoad(self, scrollFrame, optionsFrame)
	if ns.CONFLICT then
		return;
	end
	ns.containerFrame = self;
	ns.scrollFrame = scrollFrame;
	ns.optionsFrame = optionsFrame;
	self.name = ns.TITLE;
	self.okay = saveOptions;
	self.refresh = refreshOptions;
	ns.InterfaceOptions_AddCategory(self);
	if (ns.scrollFrame ~= nil) then
		local BACKDROP_TOOLTIP = {
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
			edgeFile = "Interface\\FriendsFrame\\UI-Toast-Border",
			tile = true,
			tileSize = 8,
			edge = true,
			edgeSize = 8,
			insets = {left = 2, right = 2, top = 2, bottom = 2},
		};

		if (BackdropTemplateMixin) then Mixin(ns.scrollFrame, BackdropTemplateMixin) end
		ns.scrollFrame:SetBackdrop(BACKDROP_TOOLTIP)
	end

	-- Localize FontStrings
	foreach(self,
		function (_, child)
			if type(child) == "table" and child:GetObjectType() == "FontString" then
				child:SetText(l[child:GetText()]);
			end
		end
	);
end