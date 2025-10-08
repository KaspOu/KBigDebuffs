-------------------------------------------------------------------------------
-- Russian localization ZamestoTV
-------------------------------------------------------------------------------
if (GetLocale() ~= "ruRU") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Отключено: Конфликт с %s";

l.SUBTITLE      = "Управление баффами/дебаффами рейда";
l.DESC          = "Изменяет баффы и дебаффы группы/рейда|r\n\n"
.." - Изменение размера баффов/дебаффов\n\n"
.." - Увеличение максимального количества отображаемых баффов/дебаффов\n\n"
.." - Многострочный дисплей\n\n"
.." - Настраиваемая ориентация\n\n"
l.OPTIONS_TITLE = format("%s - Настройки", l.VERS_TITLE);

l.MSG_LOADED         = format("%s загружен и активен", l.VERS_TITLE);

l.INIT_FAILED = format("%s не инициализирован корректно (конфликт?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Баффы / Дебаффы";
l.OPTION_ORIENTATION_LeftThenUp = "Влево, затем вверх"; -- ChatGPT
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."Влево, затем вверх (по умолчанию)"; -- ChatGPT
l.OPTION_ORIENTATION_UpThenLeft = "Вверх, затем влево"; -- ChatGPT
l.OPTION_ORIENTATION_RightThenUp = "Вправо, затем вверх"; -- ChatGPT
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."Вправо, затем вверх (по умолчанию)"; -- ChatGPT
l.OPTION_ORIENTATION_UpThenRight = "Вверх, затем вправо"; -- ChatGPT
l.OPTION_BUFFSSCALE = "Относительный размер баффов"..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."По умолчанию в WoW: 1"
l.OPTION_MAXBUFFS = "Максимум баффов"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "Максимальное количество отображаемых баффов\n"..l.CY.."По умолчанию в WoW: "..ns.DEFAULT_MAXBUFFS
l.OPTION_MAXBUFFS_FORMAT = "%d |4бафф:баффа:баффов";
l.OPTION_BUFFSPERLINE = "Баффов в строке";
l.OPTION_BUFFSPERLINE_TOOLTIP = "Количество иконок баффов в строке\n"..l.CY.."По умолчанию в WoW: максимум"
l.OPTION_BUFFSPERLINE_FORMAT = "%d в строке"..required;
l.OPTION_BUFFSORIENTATION = "Ориентация баффов"..required; -- ChatGPT
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Выберите расположение баффов (поддерживает несколько строк)\n"..l.CY.."По умолчанию: "..l.OPTION_ORIENTATION_LeftThenUp; -- ChatGPT
l.OPTION_BUFFS_RELATIVE_X = "Горизонтальное положение"..required; -- ChatGPT
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Отрегулируйте относительное горизонтальное положение баффов"; -- ChatGPT
l.OPTION_BUFFS_RELATIVE_Y = "Вертикальное положение"..required; -- ChatGPT
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Отрегулируйте относительное вертикальное положение баффов"; -- ChatGPT
l.OPTION_DEBUFFSSCALE = "Относительный размер дебаффов"..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."По умолчанию в WoW: 1"
l.OPTION_MAXDEBUFFS = "Максимум дебаффов"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "Максимальное количество отображаемых дебаффов\n"..l.CY.."По умолчанию в WoW: "..ns.DEFAULT_MAXBUFFS
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4дебафф:дебаффа:дебаффов";
l.OPTION_DEBUFFSPERLINE = "Дебаффов в строке"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Количество иконок дебаффов в строке\n"..l.CY.."По умолчанию в WoW: максимум"
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d в строке";
l.OPTION_DEBUFFSORIENTATION = "Ориентация дебаффов"..required; -- ChatGPT
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Выберите расположение дебаффов (поддерживает несколько строк)\n"..l.CY.."По умолчанию: "..l.OPTION_ORIENTATION_RightThenUp; -- ChatGPT
l.OPTION_DEBUFFS_RELATIVE_X = "Горизонтальное положение"..required; -- ChatGPT
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Отрегулируйте относительное горизонтальное положение дебаффов"; -- ChatGPT
l.OPTION_DEBUFFS_RELATIVE_Y = "Вертикальное положение"..required; -- ChatGPT
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Отрегулируйте относительное вертикальное положение дебаффов"; -- ChatGPT
l.OPTION_USETAINTMETHOD = l.CY.."Устаревший метод отображения для максимума баффов/дебаффов"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Если не отмечено, используется экспериментальный метод отображения\nЕсли отмечено, используется стабильный метод, но с одной "..l.RDL.."ошибкой за сессию|r, не критично..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Изменение максимума баффов/дебаффов вызывает одну "..l.RDL.."ошибку за сессию|r, не критично..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." Перепозиционирование может быть затронуто в течение нескольких секунд после убийства босса"
l.OPTION_BUFFS_RESET = "Отменить все изменения положения"; -- ChatGPT
-- KBD END

l.OPTION_RESET_OPTIONS = "Сбросить настройки";
l.OPTION_RELOAD_REQUIRED = "Некоторые изменения требуют перезагрузки (наберите: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Настройки, требующие перезагрузки";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Отображать сообщения";
l.OPTION_SHOWMSGWARNING = l.GYL.."Отображать предупреждения";
l.OPTION_SHOWMSGERR = l.GYL.."Отображать ошибки";
l.OPTION_WHATSNEW = "Что нового";
