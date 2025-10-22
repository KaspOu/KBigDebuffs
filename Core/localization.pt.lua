-------------------------------------------------------------------------------
-- Portuguese localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Desativado: Conflito com %s";

l.SUBTITLE      = "Gerenciamento de Buffs / Debuffs";
l.DESC          = "Altera os Buffs e Debuffs de grupo / raide|r\n\n"
.." - Redimensiona os buffs/debuffs \n\n"
.." - Aumenta o n\195\186mero m\195\161ximo de buffs/debuffs exibidos\n\n"
.." - Exibi\195\167\195\163o multilinha\n\n"
.." - Posi\195\167\195\163o relativa X/Y\n\n"
.." - Orienta\195\167\195\163o \195\160 escolha\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s iniciado e ativo", l.VERS_TITLE);

l.INIT_FAILED = format("%s n\195\163o carregado corretamente (conflito ?) !", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "B\195\186fes / Debufes"
l.OPTION_ORIENTATION_LeftThenUp = "\195\128 Esquerda, depois para Cima"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."\195\128 Esquerda, depois para Cima (padr\195\163o)"
l.OPTION_ORIENTATION_UpThenLeft = "Para Cima, depois \195\128 Esquerda"
l.OPTION_ORIENTATION_RightThenUp = "\195\128 Direita, depois para Cima"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."\195\128 Direita, depois para Cima (padr\195\163o)"
l.OPTION_ORIENTATION_UpThenRight = "Para Cima, depois \195\128 Direita"
l.OPTION_BUFFSSCALE = "Tamanho dos b\195\186fes "..required;
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Padr\195\163o no Wow: 1"
l.OPTION_MAXBUFFS = "Limite de b\195\186fes"..required;
l.OPTION_MAXBUFFS_TOOLTIP = "N\195\186mero m\195\161ximo de b\195\186fes a exibir\n"..l.CY.."Padr\195\163o no Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4b\195\186fe:b\195\186fes";
l.OPTION_BUFFSPERLINE = "B\195\186fes por linha"..required;
l.OPTION_BUFFSPERLINE_TOOLTIP = "N\195\186mero de b\195\186fes por linha\n"..l.CY.."Ignorado se superior ao Limite";
l.OPTION_BUFFSPERLINE_FORMAT = "%d por linha";
l.OPTION_BUFFSORIENTATION = "Orienta\195\167\195\163o dos b\195\186fes"..required;
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Escolha o arranjo dos b\195\186fes (suporta m\195\186ltiplas linhas)\n"..l.CY.."Padr\195\163o: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "Posi\195\167\195\163o horizontal"..required;
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Ajuste a posi\195\167\195\163o horizontal relativa dos b\195\186fes";
l.OPTION_BUFFS_RELATIVE_Y = "Posi\195\167\195\163o vertical"..required;
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Ajuste a posi\195\167\195\163o vertical relativa dos b\195\186fes";
l.OPTION_DEBUFFSSCALE = "Tamanho dos debufes "..required;
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Padr\195\163o no Wow: 1"
l.OPTION_MAXDEBUFFS = "Limite de debufes"..required;
l.OPTION_MAXDEBUFFS_TOOLTIP = "N\195\186mero m\195\161ximo de debufes a exibir\n"..l.CY.."Padr\195\163o no Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4debufe:debufes";
l.OPTION_DEBUFFSPERLINE = "Debufes por linha"..required;
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "N\195\186mero de \195\174cones de debufe por linha\n"..l.CY.."Ignorado se superior ao Limite";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d por linha";
l.OPTION_DEBUFFSORIENTATION = "Orienta\195\167\195\163o dos debufes"..required;
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Escolha o arranjo dos debufes (suporta m\195\186ltiplas linhas)\n"..l.CY.."Padr\195\163o: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "Posi\195\167\195\163o horizontal"..required;
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Ajuste a posi\195\167\195\163o horizontal relativa dos debufes";
l.OPTION_DEBUFFS_RELATIVE_Y = "Posi\195\167\195\163o vertical"..required;
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Ajuste a posi\195\167\195\163o vertical relativa dos debufes";
l.OPTION_USETAINTMETHOD = l.CY.."Exibi\195\167\195\163o cl\195\161ssica do Limite de b\195\186fes / debufes"..required.." "..l.ALERT
l.OPTION_USETAINTMETHOD_TOOLTIP = "Desmarcado, usa a exibi\195\167\195\163o experimental\nMarcado, usa a exibi\195\167\195\163o est\195\161vel, mas com um "..l.RDL.."erro por sess\195\163o|r, n\195\163o t\195\163o grave..."
l.OPTION_BUFFS_TAINTWARNING = l.ALERT.." Alterar o Limite causa um "..l.RDL.."erro por sess\195\163o|r, n\195\163o t\195\163o grave..."
l.OPTION_BUFFS_FLICKERWARNING = l.INFO.." O reposicionamento pode ser afetado por alguns segundos ap\195\180s a morte de um chefe"
l.OPTION_BUFFS_RESET = "Cancelar todo o reposicionamento"
-- KBD END

l.OPTION_RESET_OPTIONS = "Redefinir o perfil";
l.OPTION_RELOAD_REQUIRED = "Algumas altera\195\167\195\182es exigem um recarregamento (digite: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Op\195\167\195\182es que exigem um recarregamento";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Exibir mensagens";
l.OPTION_SHOWMSGWARNING = l.GYL.."Exibir alertas";
l.OPTION_SHOWMSGERR = l.GYL.."Exibir erros";
l.OPTION_WHATSNEW = "Novidades";
