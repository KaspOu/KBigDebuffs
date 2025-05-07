-------------------------------------------------------------------------------
-- English localization (Default)
-------------------------------------------------------------------------------
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Disabled: Conflict with %s";

l.SUBTITLE      = "Raid Buffs / Debuffs management";
l.DESC          = "Changes party/raid Buffs & Debuffs|r\n\n"
.." - Resize buffs/debuffs\n\n"
.." - Increase max buffs/debuffs displayed\n\n"
.." - Multiline display\n\n"
.." - Relative X/Y position\n\n"
.." - Customizable orientation\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s loaded and active", l.VERS_TITLE);

l.INIT_FAILED = format("%s not initialized correctly (conflict?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Buffs / Debuffs"
l.OPTION_ORIENTATION_LeftThenUp = "Left, then Up"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."Left, then Up (default)"
l.OPTION_ORIENTATION_UpThenLeft = "Up, then Left"
l.OPTION_ORIENTATION_RightThenUp = "Right, then Up"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."Right, then Up (default)"
l.OPTION_ORIENTATION_UpThenRight = "Up, then Right"
l.OPTION_BUFFSSCALE = "Buffs relative size"..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Wow default: 1"
l.OPTION_MAXBUFFS = "Max buffs"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "Max buffs to display\n"..l.CY.."Wow default: "..ns.DEFAULT_MAXBUFFS
l.OPTION_MAXBUFFS_FORMAT = "%d |4buff:buffs";
l.OPTION_BUFFSPERLINE = "Buffs per line"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "Number of buffs per line\n"..l.CY.."Ignored if greater than max buffs";
l.OPTION_BUFFSPERLINE_FORMAT = "%d per line"..required;
l.OPTION_BUFFSORIENTATION = "Buffs orientation"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Choose how buffs are arranged (/w multiline support)\n"..l.CY.."Default: Left to Right, then Up"
l.OPTION_BUFFS_RELATIVE_X = "Horizontal position"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Adjust the relative horizontal position of the buffs";
l.OPTION_BUFFS_RELATIVE_Y = "Vertical position"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Adjust the relative vertical position of the buffs";
l.OPTION_DEBUFFSSCALE = "Debuffs relative size"..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Wow default: 1"
l.OPTION_MAXDEBUFFS = "Max debuffs"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "Max debuffs to display\n"..l.CY.."Wow default: "..ns.DEFAULT_MAXBUFFS
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4debuff:debuffs";
l.OPTION_DEBUFFSPERLINE = "Debuffs per line"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Number of debuff icons per line\n"..l.CY.."Ignored if greater than max debuffs";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d per line";
l.OPTION_DEBUFFSORIENTATION = "Debuffs orientation"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Choose how debuffs are arranged ((/w multiline support)\n"..l.CY.."Default: Right to Left, then Up"
l.OPTION_DEBUFFS_RELATIVE_X = "Horizontal position"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Adjust the relative horizontal position of the debuffs";
l.OPTION_DEBUFFS_RELATIVE_Y = "Vertical position"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Adjust the relative vertical position of the debuffs";
l.OPTION_USETAINTMETHOD = l.CY.."Legacy display for Max buffs/debuffs"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Unchecked, uses an experimental display\nChecked, uses a stable display, but with one "..l.RDL.."error per session|r, not a big deal..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Changing Max buffs/debuffs causes one "..l.RDL.."error per session|r, not a big deal..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." Repositioning may be affected for a few seconds after a boss kill"
l.OPTION_BUFFS_RESET = "Cancel any repositioning"
-- KBD END

l.OPTION_RESET_OPTIONS = "Reset options";
l.OPTION_RELOAD_REQUIRED = "Some changes require reloading (write: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Options requiring reloading";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Display messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Display warnings";
l.OPTION_SHOWMSGERR = l.GYL.."Display errors";
l.OPTION_WHATSNEW = "What's new";