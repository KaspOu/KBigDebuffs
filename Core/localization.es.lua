-------------------------------------------------------------------------------
-- Spanish localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Desactivado: Conflicto con %s";

l.SUBTITLE      = "Gestión de beneficios / perjuicios de banda";
l.DESC          = "Cambia los beneficios y perjuicios de grupo/banda|r\n\n"
.." - Redimensiona beneficios/perjuicios\n\n"
.." - Aumenta el máximo de beneficios/perjuicios mostrados\n\n"
.." - Visualización multilínea\n\n"
.." - Posición X/Y relativa\n\n"
.." - Orientación personalizable\n\n"
l.OPTIONS_TITLE = format("%s - Opciones", l.VERS_TITLE);

l.MSG_LOADED         = format("%s cargado y activo", l.VERS_TITLE);

l.INIT_FAILED = format("%s no se inicializó correctamente (¿conflicto?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Perjuicios / Beneficios"
l.OPTION_ORIENTATION_LeftThenUp = "A la izquierda, luego arriba"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."A la izquierda, luego arriba (por defecto)"
l.OPTION_ORIENTATION_UpThenLeft = "Arriba, luego a la izquierda"
l.OPTION_ORIENTATION_RightThenUp = "A la derecha, luego arriba"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."A la derecha, luego arriba (por defecto)"
l.OPTION_ORIENTATION_UpThenRight = "Arriba, luego a la derecha"
l.OPTION_BUFFSSCALE = "Tama\195\177o de beneficios "..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Por defecto en Wow: 1"
l.OPTION_MAXBUFFS = "L\195\173mite de beneficios"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "N\195\186mero m\195\161ximo de beneficios a mostrar\n"..l.CY.."Por defecto en Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4beneficio:beneficios";
l.OPTION_BUFFSPERLINE = "Beneficios por l\195\177nea"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "N\195\186mero de beneficios por l\195\177nea\n"..l.CY.."Ignorado si es superior al L\195\173mite";
l.OPTION_BUFFSPERLINE_FORMAT = "%d por l\195\177nea";
l.OPTION_BUFFSORIENTATION = "Orientaci\195\179n de beneficios"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Elige la disposici\195\179n de los beneficios (soporta m\195\186ltiples l\195\177neas)\n"..l.CY.."Por defecto: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "Posici\195\179n horizontal"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Ajusta la posici\195\179n horizontal relativa de los beneficios";
l.OPTION_BUFFS_RELATIVE_Y = "Posici\195\179n vertical"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Ajusta la posici\195\179n vertical relativa de los beneficios";
l.OPTION_DEBUFFSSCALE = "Tama\195\177o de perjuicios "..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Por defecto en Wow: 1"
l.OPTION_MAXDEBUFFS = "L\195\173mite de perjuicios"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "N\195\186mero m\195\161ximo de perjuicios a mostrar\n"..l.CY.."Por defecto en Wow: "..ns.DEFAULT_MAXDEBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4perjuicio:perjuicios";
l.OPTION_DEBUFFSPERLINE = "Perjuicios por l\195\177nea"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "N\195\186mero de iconos de perjuicio por l\195\177nea\n"..l.CY.."Ignorado si es superior al L\195\173mite";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d por l\195\177nea";
l.OPTION_DEBUFFSORIENTATION = "Orientaci\195\179n de perjuicios"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Elige la disposici\195\179n de los perjuicios (soporta m\195\186ltiples l\195\177neas)\n"..l.CY.."Por defecto: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "Posici\195\179n horizontal"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Ajusta la posici\195\179n horizontal relativa de los perjuicios";
l.OPTION_DEBUFFS_RELATIVE_Y = "Posici\195\179n vertical"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Ajusta la posici\195\179n vertical relativa de los perjuicios";
l.OPTION_USETAINTMETHOD = l.CY.."Visualizaci\195\179n cl\195\161sica del L\195\173mite de beneficios / perjuicios"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Desmarcado, usa la visualizaci\195\179n experimental\nMarcado, usa la visualizaci\195\179n estable, pero con un "..l.RDL.."error por sesi\195\179n|r, no tan grave..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Cambiar el L\195\173mite provoca un "..l.RDL.."error por sesi\195\179n|r, no tan grave..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." El reposicionamiento puede verse afectado unos segundos al morir un jefe"
l.OPTION_BUFFS_HIDEBLIZZARDAURAS = " Ocultar auras de Blizzard"
l.OPTION_BUFFS_RESET = "Cancelar todo reposicionamiento"
l.OPTION_FILTER_AUTO_DEFAULT = l.DEFAULT.."Auto — sigue el combate (predeterminado)";
l.OPTION_FILTER_RAID = "Siempre la lista fuera de combate";
l.OPTION_FILTER_RAID_IN_COMBAT = "Siempre la lista en combate";
l.OPTION_BUFFS_SPACING_X = "Espaciado horizontal";
l.OPTION_BUFFS_SPACING_X_TOOLTIP = "Separaci\195\179n horizontal, en p\195\173xeles, entre iconos de beneficios\n"..l.CY.."Predeterminado: 0";
l.OPTION_BUFFS_SPACING_Y = "Espaciado vertical";
l.OPTION_BUFFS_SPACING_Y_TOOLTIP = "Separaci\195\179n vertical, en p\195\173xeles, entre iconos de beneficios\n"..l.CY.."Predeterminado: 1";
l.OPTION_BUFFSFILTER = "Filtro de beneficios";
l.OPTION_BUFFSFILTER_TOOLTIP = "Qu\195\169 lista de beneficios entrega Blizzard\n"..l.CY.."Auto cambia al entrar y salir de combate";
l.OPTION_BUFFS_HIDETOOLTIP = "Ocultar descripciones de beneficios"..required;
l.OPTION_BUFFS_HIDETOOLTIP_TOOLTIP = "Sin descripci\195\179n al pasar el cursor sobre un icono de beneficio\n"..l.RDL.."Tambi\195\169n desactiva el clic derecho para cancelar un beneficio";
l.OPTION_DEBUFFS_SPACING_X = "Espaciado horizontal";
l.OPTION_DEBUFFS_SPACING_X_TOOLTIP = "Separaci\195\179n horizontal, en p\195\173xeles, entre iconos de perjuicios\n"..l.CY.."Predeterminado: 0";
l.OPTION_DEBUFFS_SPACING_Y = "Espaciado vertical";
l.OPTION_DEBUFFS_SPACING_Y_TOOLTIP = "Separaci\195\179n vertical, en p\195\173xeles, entre iconos de perjuicios\n"..l.CY.."Predeterminado: 1";
l.OPTION_DEBUFFSFILTER = "Filtro de perjuicios";
l.OPTION_DEBUFFSFILTER_TOOLTIP = "Qu\195\169 lista de perjuicios entrega Blizzard\n"..l.CY.."Auto cambia al entrar y salir de combate";
l.OPTION_DEBUFFS_HIDETOOLTIP = "Ocultar descripciones de perjuicios"..required;
l.OPTION_DEBUFFS_HIDETOOLTIP_TOOLTIP = "Sin descripci\195\179n al pasar el cursor sobre un icono de perjuicio\n"..l.RDL.."Tambi\195\169n desactiva el clic derecho para cancelar un perjuicio";
-- KBD END

l.OPTION_RESET_OPTIONS = "Restablecer opciones";
l.OPTION_RELOAD_REQUIRED = "Algunos cambios requieren recargar (escribe: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Opciones que requieren recarga";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Mostrar mensajes";
l.OPTION_SHOWMSGWARNING = l.GYL.."Mostrar advertencias";
l.OPTION_SHOWMSGERR = l.GYL.."Mostrar errores";
l.OPTION_WHATSNEW = "¿Qué hay de nuevo?";