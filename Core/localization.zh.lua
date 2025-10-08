-------------------------------------------------------------------------------
-- Chinese localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "zhCN" and GetLocale() ~= "zhTW") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "已禁用：与 %s 冲突";

l.SUBTITLE      = "增益/减益管理";
l.DESC          = "更改团队/小队增益和减益|r\n\n"
.." - 调整增益/减益大小\n\n"
.." - 增加最大显示增益/减益数量\n\n"
.." - 多行显示\n\n"
.." - 相对X/Y位置\n\n"
.." - 可自定义方向\n\n"
l.OPTIONS_TITLE = format("%s - 选项", l.VERS_TITLE);

l.MSG_LOADED         = format("%s 已加载并激活", l.VERS_TITLE);

l.INIT_FAILED = format("%s 未正确加载 (冲突?) !", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "增益 / 减益"
l.OPTION_ORIENTATION_LeftThenUp = "左侧，然后向上"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."左侧，然后向上 (默认)"
l.OPTION_ORIENTATION_UpThenLeft = "向上，然后向左"
l.OPTION_ORIENTATION_RightThenUp = "右侧，然后向上"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."右侧，然后向上 (默认)"
l.OPTION_ORIENTATION_UpThenRight = "向上，然后向右"
l.OPTION_BUFFSSCALE = "增益图标大小"..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."魔兽世界默认：1"
l.OPTION_MAXBUFFS = "增益上限"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "最大显示增益数量\n"..l.CY.."魔兽世界默认："..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4增益:增益";
l.OPTION_BUFFSPERLINE = "每行增益数量"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "每行增益图标数量\n"..l.CY.."如果超过上限则忽略";
l.OPTION_BUFFSPERLINE_FORMAT = "%d 每行";
l.OPTION_BUFFSORIENTATION = "增益方向"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "选择增益排列方式 (支持多行)\n"..l.CY.."默认："..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "水平位置"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "调整增益的相对水平位置";
l.OPTION_BUFFS_RELATIVE_Y = "垂直位置"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "调整增益的相对垂直位置";
l.OPTION_DEBUFFSSCALE = "减益图标大小"..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."魔兽世界默认：1"
l.OPTION_MAXDEBUFFS = "减益上限"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "最大显示减益数量\n"..l.CY.."魔兽世界默认："..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4减益:减益";
l.OPTION_DEBUFFSPERLINE = "每行减益数量"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "每行减益图标数量\n"..l.CY.."如果超过上限则忽略";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d 每行";
l.OPTION_DEBUFFSORIENTATION = "减益方向"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "选择减益排列方式 (支持多行)\n"..l.CY.."默认："..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "水平位置"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "调整减益的相对水平位置";
l.OPTION_DEBUFFS_RELATIVE_Y = "垂直位置"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "调整减益的相对垂直位置";
l.OPTION_USETAINTMETHOD = l.CY.."经典增益/减益上限显示"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "未勾选时，使用实验性显示\n勾选时，使用稳定显示，但每会话会产生一个"..l.RDL.."错误|r，问题不大..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." 更改上限会导致每会话产生一个"..l.RDL.."错误|r，问题不大..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." 在首领死亡时，重新定位可能会受到几秒钟的影响"
l.OPTION_BUFFS_RESET = "取消所有重新定位"
-- KBD END

l.OPTION_RESET_OPTIONS = "重置选项";
l.OPTION_RELOAD_REQUIRED = "某些更改需要重新加载 (输入: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": 需要重新加载的选项";
l.OPTION_SHOWMSGNORMAL = l.GYL.."显示消息";
l.OPTION_SHOWMSGWARNING = l.GYL.."显示警告";
l.OPTION_SHOWMSGERR = l.GYL.."显示错误";
l.OPTION_WHATSNEW = "新功能";
