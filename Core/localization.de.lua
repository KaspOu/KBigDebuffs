-------------------------------------------------------------------------------
-- German localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "deDE") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Deaktiviert: Konflikt mit %s";

l.SUBTITLE      = "Buff- / Debuff-Verwaltung";
l.DESC          = "\195\132ndert Gruppen- / Raid-Buffs & Debuffs|r\n\n"
.." - Skaliert Buffs/Debuffs \n\n"
.." - Erh\195\182ht die maximale Anzahl angezeigter Buffs/Debuffs\n\n"
.." - Mehrzeilige Anzeige\n\n"
.." - Relative X/Y-Position\n\n"
.." - W\195\164hlbare Ausrichtung\n\n"
l.OPTIONS_TITLE = format("%s - Optionen", l.VERS_TITLE);

l.MSG_LOADED         = format("%s geladen und aktiv", l.VERS_TITLE);

l.INIT_FAILED = format("%s nicht korrekt geladen (Konflikt?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Buffs / Debuffs"
l.OPTION_ORIENTATION_LeftThenUp = "Links, dann nach oben"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."Links, dann nach oben (Standard)"
l.OPTION_ORIENTATION_UpThenLeft = "Oben, dann nach links"
l.OPTION_ORIENTATION_RightThenUp = "Rechts, dann nach oben"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."Rechts, dann nach oben (Standard)"
l.OPTION_ORIENTATION_UpThenRight = "Oben, dann nach rechts"
l.OPTION_BUFFSSCALE = "Buff-Gr\195\182\195\159e "..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Standard in Wow: 1"
l.OPTION_MAXBUFFS = "Buff-Limit"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "Maximale Anzahl der anzuzeigenden Buffs\n"..l.CY.."Standard in Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4Buff:Buffs";
l.OPTION_BUFFSPERLINE = "Buffs pro Reihe"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "Anzahl der Buffs pro Reihe\n"..l.CY.."Ignoriert, wenn \195\188ber dem Limit";
l.OPTION_BUFFSPERLINE_FORMAT = "%d pro Reihe";
l.OPTION_BUFFSORIENTATION = "Buff-Ausrichtung"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "W\195\164hlen Sie die Anordnung der Buffs (unterst\195\188tzt Mehrzeilen)\n"..l.CY.."Standard: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "Horizontale Position"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Passen Sie die relative horizontale Position der Buffs an";
l.OPTION_BUFFS_RELATIVE_Y = "Vertikale Position"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Passen Sie die relative vertikale Position der Buffs an";
l.OPTION_DEBUFFSSCALE = "Debuff-Gr\195\182\195\159e "..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Standard in Wow: 1"
l.OPTION_MAXDEBUFFS = "Debuff-Limit"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "Maximale Anzahl der anzuzeigenden Debuffs\n"..l.CY.."Standard in Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4Debuff:Debuffs";
l.OPTION_DEBUFFSPERLINE = "Debuffs pro Reihe"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Anzahl der Debuff-Symbole pro Reihe\n"..l.CY.."Ignoriert, wenn \195\188ber dem Limit";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d pro Reihe";
l.OPTION_DEBUFFSORIENTATION = "Debuff-Ausrichtung"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "W\195\164hlen Sie die Anordnung der Debuffs (unterst\195\188tzt Mehrzeilen)\n"..l.CY.."Standard: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "Horizontale Position"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Passen Sie die relative horizontale Position der Debuffs an";
l.OPTION_DEBUFFS_RELATIVE_Y = "Vertikale Position"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Passen Sie die relative vertikale Position der Debuffs an";
l.OPTION_USETAINTMETHOD = l.CY.."Klassische Anzeige des Buff-/Debuff-Limits"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Deaktiviert, verwendet die experimentelle Anzeige\nAktiviert, verwendet die stabile Anzeige, aber mit einem "..l.RDL.."Fehler pro Sitzung|r, nicht so schlimm..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Das \195\164ndern des Limits verursacht einen "..l.RDL.."Fehler pro Sitzung|r, nicht so schlimm..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." Die Neupositionierung kann f\195\188r einige Sekunden nach dem Tod eines Bosses beeintr\195\164chtigt sein"
l.OPTION_BUFFS_RESET = "Alle Neupositionierungen r\195\188ckg\195\164ngig machen"
-- KBD END

l.OPTION_RESET_OPTIONS = "Profil zur\195\188cksetzen";
l.OPTION_RELOAD_REQUIRED = "Einige \195\132nderungen erfordern einen Neuladen (tippe: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Optionen, die einen Neuladen erfordern";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Nachrichten anzeigen";
l.OPTION_SHOWMSGWARNING = l.GYL.."Warnungen anzeigen";
l.OPTION_SHOWMSGERR = l.GYL.."Fehler anzeigen";
l.OPTION_WHATSNEW = "Was gibt es Neues?";
