-------------------------------------------------------------------------------
-- French localization
-------------------------------------------------------------------------------
if (GetLocale() == "frFR") then    
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "D\195\169sactiv\195\169 : Conflit avec %s";

l.SUBTITLE      = "Gestion des Buffs / D\195\169buffs";
l.DESC          = "Change les Buffs & D\195\169buffs de groupe / raid|r\n\n"
.." - Redimensionne les buffs/d\195\169buffs \n\n"
.." - Augmente le nombre max de buffs/d\195\169buffs affich\195\169s\n\n"
.." - Affichage multilignes\n\n"
.." - Orientation au choix\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s lanc\195\169 et actif", l.VERS_TITLE);

l.INIT_FAILED = format("%s pas charg\195\169 correctement (conflit ?) !", l.VERS_TITLE);

local required = l.YL.."*";
l.OPTION_BUFFS_HEADER = "Buffs / Debuffs";
l.OPTION_BUFFSSCALE = "Taille des buffs "..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Par d\195\169faut dans Wow : 1"
l.OPTION_MAXBUFFS = "Limite de buffs"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "Nombre maximum de buffs \195\160 afficher\n"..l.CY.."Par d\195\169faut dans Wow : "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4buff:buffs";
l.OPTION_BUFFSPERLINE = "Buffs par ligne"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "Nombre d'ic\195\180nes de buff par ligne\n"..l.CY.."Par d\195\169faut dans Wow : max";
l.OPTION_BUFFSPERLINE_FORMAT = "%d par ligne";
l.OPTION_BUFFSVERTICAL = "Aligner les buffs verticalement"..required;
l.OPTION_BUFFSVERTICAL_TOOLTIP = "Les buffs seront align\195\169s verticalement, en colonnes\n"..l.CY.."D\195\169sactiv\195\169 \195\160 la mort d'un boss";
l.OPTION_DEBUFFSSCALE = "Taille des d\195\169buffs "..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Par d\195\169faut dans Wow : 1"
l.OPTION_MAXDEBUFFS = "Limite de d\195\169buffs"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "Nombre maximum de d\195\169buffs \195\160 afficher\n"..l.CY.."Par d\195\169faut dans Wow : "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4d\195\169buff:d\195\169buffs";
l.OPTION_DEBUFFSPERLINE = "D\195\169buffs par ligne"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Nombre d'ic\195\180nes de d\195\169buff par ligne\n"..l.CY.."Par d\195\169faut dans Wow : max";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d par ligne";
l.OPTION_DEBUFFSVERTICAL = "Aligner les d\195\169buffs verticalement"..required;
l.OPTION_DEBUFFSVERTICAL_TOOLTIP = "Les d\195\169buffs seront align\195\169s verticalement, en colonnes\n"..l.CY.."D\195\169sactiv\195\169 quelques secondes \195\160 la mort d'un boss";
l.OPTION_USETAINTMETHOD = l.CY.."Affichage classique de la Limite de buffs / d\195\169buffs"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "D\195\169coch\195\169, utilise l'affichage exp\195\169rimental\nCoch\195\169, utilise l'affichage stable, mais avec une "..l.RDL.."erreur par session|r, pas si grave..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Changer la Limite provoque une "..l.RDL.."erreur par session|r, pas si grave..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." Le repositionnement peut \195\170tre affect\195\169 quelques secondes \195\160 la mort d'un boss"

l.OPTION_RESET_OPTIONS = "R\195\169initialiser le profil";
l.OPTION_RELOAD_REQUIRED = "Certains changements n\195\169cessitent un rechargement (\195\169crivez : "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Options n\195\169cessitant un rechargement";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Afficher les messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Afficher les alertes";
l.OPTION_SHOWMSGERR = l.GYL.."Afficher les erreurs";
l.OPTION_WHATSNEW = "Nouveaut\195\169s";

--@do-not-package@
-- https://code.google.com/archive/p/mangadmin/wikis/SpecialCharacters.wiki
-- https://wowwiki.fandom.com/wiki/Localizing_an_addon
--@end-do-not-package@
end
