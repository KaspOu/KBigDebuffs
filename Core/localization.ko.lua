-------------------------------------------------------------------------------
-- Korean localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "koKR") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "비활성화됨: %s 와 충돌";

l.SUBTITLE      = "버프 / 디버프 관리";
l.DESC          = "그룹/공격대 버프 및 디버프 변경|r\n\n"
.." - 버프/디버프 크기 조정\n\n"
.." - 표시되는 버프/디버프의 최대 개수 증가\n\n"
.." - 여러 줄 표시\n\n"
.." - 상대적 X/Y 위치\n\n"
.." - 방향 선택 가능\n\n"
l.OPTIONS_TITLE = format("%s - 옵션", l.VERS_TITLE);

l.MSG_LOADED         = format("%s 로드 및 활성화됨", l.VERS_TITLE);

l.INIT_FAILED = format("%s 이(가) 제대로 로드되지 않았습니다 (충돌?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "버프 / 디버프"
l.OPTION_ORIENTATION_LeftThenUp = "왼쪽에서 위로"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."왼쪽에서 위로 (기본값)"
l.OPTION_ORIENTATION_UpThenLeft = "위에서 왼쪽으로"
l.OPTION_ORIENTATION_RightThenUp = "오른쪽에서 위로"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."오른쪽에서 위로 (기본값)"
l.OPTION_ORIENTATION_UpThenRight = "위에서 오른쪽으로"
l.OPTION_BUFFSSCALE = "버프 크기 "..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."WoW 기본값: 1"
l.OPTION_MAXBUFFS = "버프 제한"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "표시할 버프의 최대 개수\n"..l.CY.."WoW 기본값: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4버프:버프";
l.OPTION_BUFFSPERLINE = "줄당 버프 개수"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "줄당 버프 개수\n"..l.CY.."제한보다 많으면 무시됩니다.";
l.OPTION_BUFFSPERLINE_FORMAT = "줄당 %d개";
l.OPTION_BUFFSORIENTATION = "버프 정렬"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "버프 배열을 선택하세요 (여러 줄 지원)\n"..l.CY.."기본값: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "가로 위치"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "버프의 상대적인 가로 위치를 조정합니다.";
l.OPTION_BUFFS_RELATIVE_Y = "세로 위치"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "버프의 상대적인 세로 위치를 조정합니다.";
l.OPTION_DEBUFFSSCALE = "디버프 크기 "..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."WoW 기본값: 1"
l.OPTION_MAXDEBUFFS = "디버프 제한"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "표시할 디버프의 최대 개수\n"..l.CY.."WoW 기본값: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4디버프:디버프";
l.OPTION_DEBUFFSPERLINE = "줄당 디버프 개수"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "줄당 디버프 아이콘 개수\n"..l.CY.."제한보다 많으면 무시됩니다.";
l.OPTION_DEBUFFSPERLINE_FORMAT = "줄당 %d개";
l.OPTION_DEBUFFSORIENTATION = "디버프 정렬"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "디버프 배열을 선택하세요 (여러 줄 지원)\n"..l.CY.."기본값: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "가로 위치"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "디버프의 상대적인 가로 위치를 조정합니다.";
l.OPTION_DEBUFFS_RELATIVE_Y = "세로 위치"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "디버프의 상대적인 세로 위치를 조정합니다.";
l.OPTION_USETAINTMETHOD = l.CY.."버프/디버프 제한의 고전적인 표시"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "체크 해제 시, 실험적인 표시를 사용합니다.\n체크 시, 안정적인 표시를 사용하지만 "..l.RDL.."세션당 오류|r가 발생할 수 있습니다. 심각하지 않습니다..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." 제한을 변경하면 "..l.RDL.."세션당 오류|r가 발생할 수 있습니다. 심각하지 않습니다..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." 보스 사망 시 몇 초 동안 재배치에 영향을 받을 수 있습니다."
l.OPTION_BUFFS_RESET = "모든 재배치 취소"
-- KBD END

l.OPTION_RESET_OPTIONS = "프로필 초기화";
l.OPTION_RELOAD_REQUIRED = "일부 변경 사항은 다시 로드해야 합니다 (입력: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": 다시 로드해야 하는 옵션";
l.OPTION_SHOWMSGNORMAL = l.GYL.."메시지 표시";
l.OPTION_SHOWMSGWARNING = l.GYL.."경고 표시";
l.OPTION_SHOWMSGERR = l.GYL.."오류 표시";
l.OPTION_WHATSNEW = "새로운 기능";
