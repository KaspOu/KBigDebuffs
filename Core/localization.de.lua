-------------------------------------------------------------------------------
-- German localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Deaktiviert: Konflikt mit %s";

l.SUBTITLE      = "Buff- / Debuff-Verwaltung";
l.DESC          = "Ändert Gruppen- / Raid-Buffs & Debuffs|r\n\n"
.." - Skaliert Buffs/Debuffs \n\n"
.." - Erhöht die maximale Anzahl angezeigter Buffs/Debuffs\n\n"
.." - Mehrzeilige Anzeige\n\n"
.." - Relative X/Y-Position\n\n"
.." - Wählbare Ausrichtung\n\n"
l.OPTIONS_TITLE = format("%s - Optionen", l.VERS_TITLE);

l.MSG_LOADED         = format("%s geladen und aktiv", l.VERS_TITLE);

l.INIT_FAILED = format("%s nicht korrekt geladen (Konflikt?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Debuffs / Buffs"
l.OPTION_ORIENTATION_LeftThenUp = "Links, dann nach oben"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."Links, dann nach oben (Standard)"
l.OPTION_ORIENTATION_UpThenLeft = "Oben, dann nach links"
l.OPTION_ORIENTATION_RightThenUp = "Rechts, dann nach oben"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."Rechts, dann nach oben (Standard)"
l.OPTION_ORIENTATION_UpThenRight = "Oben, dann nach rechts"
l.OPTION_BUFFSSCALE = "Buff-Größe ";
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Standard in Wow: 1"
l.OPTION_MAXBUFFS = "Buff-Limit";
l.OPTION_MAXBUFFS_TOOLTIP = "Maximale Anzahl der anzuzeigenden Buffs\n"..l.CY.."Standard in Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4Buff:Buffs";
l.OPTION_BUFFSPERLINE = "Buffs pro Reihe";
l.OPTION_BUFFSPERLINE_TOOLTIP = "Anzahl der Buffs pro Reihe\n"..l.CY.."Ignoriert, wenn über dem Limit";
l.OPTION_BUFFSPERLINE_FORMAT = "%d pro Reihe";
l.OPTION_BUFFSORIENTATION = "Buff-Ausrichtung";
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Wählen Sie die Anordnung der Buffs (unterstützt Mehrzeilen)\n"..l.CY.."Standard: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "Horizontale Position";
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Passen Sie die relative horizontale Position der Buffs an";
l.OPTION_BUFFS_RELATIVE_Y = "Vertikale Position";
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Passen Sie die relative vertikale Position der Buffs an";
l.OPTION_DEBUFFSSCALE = "Debuff-Größe ";
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Standard in Wow: 1"
l.OPTION_MAXDEBUFFS = "Debuff-Limit";
l.OPTION_MAXDEBUFFS_TOOLTIP = "Maximale Anzahl der anzuzeigenden Debuffs\n"..l.CY.."Standard in Wow: "..ns.DEFAULT_MAXDEBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4Debuff:Debuffs";
l.OPTION_DEBUFFSPERLINE = "Debuffs pro Reihe";
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Anzahl der Debuff-Symbole pro Reihe\n"..l.CY.."Ignoriert, wenn über dem Limit";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d pro Reihe";
l.OPTION_DEBUFFSORIENTATION = "Debuff-Ausrichtung";
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Wählen Sie die Anordnung der Debuffs (unterstützt Mehrzeilen)\n"..l.CY.."Standard: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "Horizontale Position";
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Passen Sie die relative horizontale Position der Debuffs an";
l.OPTION_DEBUFFS_RELATIVE_Y = "Vertikale Position";
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Passen Sie die relative vertikale Position der Debuffs an";
l.OPTION_USETAINTMETHOD = l.CY.."Klassische Anzeige des Buff-/Debuff-Limits"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Deaktiviert, verwendet die experimentelle Anzeige\nAktiviert, verwendet die stabile Anzeige, aber mit einem "..l.RDL.."Fehler pro Sitzung|r, nicht so schlimm..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Das ändern des Limits verursacht einen "..l.RDL.."Fehler pro Sitzung|r, nicht so schlimm..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." Die Neupositionierung kann für einige Sekunden nach dem Tod eines Bosses beeinträchtigt sein"
l.OPTION_BUFFS_HIDEBLIZZARDAURAS = " Blizzard-Auren ausblenden"
l.OPTION_BUFFS_RESET = "Alle Neupositionierungen rückgängig machen"
l.OPTION_FILTER_AUTO_DEFAULT = l.DEFAULT.."Auto — folgt dem Kampf (Standard)";
l.OPTION_FILTER_RAID = "Immer die Liste außerhalb des Kampfes";
l.OPTION_FILTER_RAID_IN_COMBAT = "Immer die Kampfliste";
l.OPTION_BUFFS_SPACING_X = "Horizontaler Abstand";
l.OPTION_BUFFS_SPACING_X_TOOLTIP = "Horizontaler Abstand in Pixeln zwischen Buff-Symbolen\n"..l.CY.."Standard: 0";
l.OPTION_BUFFS_SPACING_Y = "Vertikaler Abstand";
l.OPTION_BUFFS_SPACING_Y_TOOLTIP = "Vertikaler Abstand in Pixeln zwischen Buff-Symbolen\n"..l.CY.."Standard: 1";
l.OPTION_BUFFSFILTER = "Buff-Filter";
l.OPTION_BUFFSFILTER_TOOLTIP = "Welche Buff-Liste Blizzard liefert\n"..l.CY.."Auto wechselt beim Betreten und Verlassen des Kampfes";
l.OPTION_BUFFS_HIDETOOLTIP = "Buff-Tooltips ausblenden"..required;
l.OPTION_BUFFS_HIDETOOLTIP_TOOLTIP = "Kein Tooltip beim Überfahren eines Buff-Symbols\n"..l.RDL.."Deaktiviert auch den Rechtsklick zum Abbrechen eines Buffs";
l.OPTION_BUFFS_EXCLUDED = "Buffs ignoriert";
l.OPTION_BUFFS_EXCLUDED_TITLE = "Buffs, die nicht angezeigt werden sollen";
l.OPTION_BUFFS_EXCLUDED_PLACEHOLDER = "Spell name or Spell ID";
l.OPTION_DEBUFFS_SPACING_X = "Horizontaler Abstand";
l.OPTION_DEBUFFS_SPACING_X_TOOLTIP = "Horizontaler Abstand in Pixeln zwischen Debuff-Symbolen\n"..l.CY.."Standard: 0";
l.OPTION_DEBUFFS_SPACING_Y = "Vertikaler Abstand";
l.OPTION_DEBUFFS_SPACING_Y_TOOLTIP = "Vertikaler Abstand in Pixeln zwischen Debuff-Symbolen\n"..l.CY.."Standard: 1";
l.OPTION_DEBUFFSFILTER = "Debuff-Filter";
l.OPTION_DEBUFFSFILTER_TOOLTIP = "Welche Debuff-Liste Blizzard liefert\n"..l.CY.."Auto wechselt beim Betreten und Verlassen des Kampfes";
l.OPTION_DEBUFFS_HIDETOOLTIP = "Debuff-Tooltips ausblenden"..required;
l.OPTION_DEBUFFS_HIDETOOLTIP_TOOLTIP = "Kein Tooltip beim Überfahren eines Debuff-Symbols\n"..l.RDL.."Deaktiviert auch den Rechtsklick zum Abbrechen eines Debuffs";
-- KBD END

l.OPTION_RESET_OPTIONS = "Profil zurücksetzen";
l.OPTION_RELOAD_REQUIRED = "Einige Änderungen erfordern einen Neuladen (tippe: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Optionen, die einen Neuladen erfordern";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Nachrichten anzeigen";
l.OPTION_SHOWMSGWARNING = l.GYL.."Warnungen anzeigen";
l.OPTION_SHOWMSGERR = l.GYL.."Fehler anzeigen";
l.OPTION_COMPARTMENT_FILTER = "Im Fachfilter anzeigen"..required;
l.OPTION_COMPARTMENT_FILTER_TOOLTIP = "In der Addon-Liste oben rechts";
l.OPTION_WHATSNEW = "Was gibt es Neues?";
