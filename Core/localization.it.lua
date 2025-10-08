-------------------------------------------------------------------------------
-- Italian localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "itIT") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Disattivato: Conflitto con %s";

l.SUBTITLE      = "Gestione Buff / Debuff";
l.DESC          = "Modifica i Buff e Debuff di gruppo / raid|r\n\n"
.." - Ridimensiona buff/debuff \n\n"
.." - Aumenta il numero massimo di buff/debuff visualizzati\n\n"
.." - Visualizzazione multilinea\n\n"
.." - Posizione relativa X/Y\n\n"
.." - Orientamento personalizzabile\n\n"
l.OPTIONS_TITLE = format("%s - Opzioni", l.VERS_TITLE);

l.MSG_LOADED         = format("%s caricato e attivo", l.VERS_TITLE);

l.INIT_FAILED = format("%s non si \195\170 inizializzato correttamente (conflitto ?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Buff / Debuff"
l.OPTION_ORIENTATION_LeftThenUp = "A Sinistra, poi in Alto"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."A Sinistra, poi in Alto (predefinito)"
l.OPTION_ORIENTATION_UpThenLeft = "In Alto, poi a Sinistra"
l.OPTION_ORIENTATION_RightThenUp = "A Destra, poi in Alto"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."A Destra, poi in Alto (predefinito)"
l.OPTION_ORIENTATION_UpThenRight = "In Alto, poi a Destra"
l.OPTION_BUFFSSCALE = "Dimensione dei buff "..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Per impostazione predefinita in Wow: 1"
l.OPTION_MAXBUFFS = "Limite di buff"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "Numero massimo di buff da visualizzare\n"..l.CY.."Per impostazione predefinita in Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4buff:buffs";
l.OPTION_BUFFSPERLINE = "Buff per riga"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "Numero di buff per riga\n"..l.CY.."Ignorato se superiore al Limite";
l.OPTION_BUFFSPERLINE_FORMAT = "%d per riga";
l.OPTION_BUFFSORIENTATION = "Orientamento dei buff"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Scegli l'organizzazione dei buff (supporta il multilinea)\n"..l.CY.."Per impostazione predefinita: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "Posizione orizzontale"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Regola la posizione orizzontale relativa dei buff";
l.OPTION_BUFFS_RELATIVE_Y = "Posizione verticale"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Regola la posizione verticale relativa dei buff";
l.OPTION_DEBUFFSSCALE = "Dimensione dei debuff "..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Per impostazione predefinita in Wow: 1"
l.OPTION_MAXDEBUFFS = "Limite di debuff"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "Numero massimo di debuff da visualizzare\n"..l.CY.."Per impostazione predefinita in Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4debuff:debuffs";
l.OPTION_DEBUFFSPERLINE = "Debuff per riga"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Numero di icone di debuff per riga\n"..l.CY.."Ignorato se superiore al Limite";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d per riga";
l.OPTION_DEBUFFSORIENTATION = "Orientamento dei debuff"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Scegli l'organizzazione dei debuff (supporta il multilinea)\n"..l.CY.."Per impostazione predefinita: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "Posizione orizzontale"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Regola la posizione orizzontale relativa dei debuff";
l.OPTION_DEBUFFS_RELATIVE_Y = "Posizione verticale"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Regola la posizione verticale relativa dei debuff";
l.OPTION_USETAINTMETHOD = l.CY.."Visualizzazione classica del Limite di buff / debuff"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Deselezionato, usa la visualizzazione sperimentale\nSelezionato, usa la visualizzazione stabile, ma con un "..l.RDL.."errore per sessione|r, non cos\195\174 grave..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Cambiare il Limite provoca un "..l.RDL.."errore per sessione|r, non cos\195\174 grave..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." Il riposizionamento pu\195\170 essere influenzato per alcuni secondi alla morte di un boss"
l.OPTION_BUFFS_RESET = "Annulla tutto il riposizionamento"
-- KBD END

l.OPTION_RESET_OPTIONS = "Ripristina opzioni";
l.OPTION_RELOAD_REQUIRED = "Alcune modifiche richiedono un ricaricamento (digita: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Opzioni che richiedono un ricaricamento";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Mostra messaggi";
l.OPTION_SHOWMSGWARNING = l.GYL.."Mostra avvisi";
l.OPTION_SHOWMSGERR = l.GYL.."Mostra errori";
l.OPTION_WHATSNEW = "Novit\195\160";
