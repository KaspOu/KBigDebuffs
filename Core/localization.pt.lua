-------------------------------------------------------------------------------
-- Portuguese localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;
if _G[ns.OPTIONS_NAME] and _G[ns.OPTIONS_NAME].ForceEnglish then return end

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Desativado: Conflito com %s";

l.SUBTITLE      = "Gerenciamento de Buffs / Debuffs";
l.DESC          = "Altera os Buffs e Debuffs de grupo / raide|r\n\n"
.." - Redimensiona os buffs/debuffs \n\n"
.." - Aumenta o número máximo de buffs/debuffs exibidos\n\n"
.." - Exibição multilinha\n\n"
.." - Posição relativa X/Y\n\n"
.." - Orientação à escolha\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s iniciado e ativo", l.VERS_TITLE);

l.INIT_FAILED = format("%s não carregado corretamente (conflito ?) !", l.VERS_TITLE);

local required = l.YL.."*";
-- KBD START
l.OPTION_BUFFS_HEADER = "Debufes / Búfes"
l.OPTION_ORIENTATION_LeftThenUp = "À Esquerda, depois para Cima"
l.OPTION_ORIENTATION_LeftThenUp_Default = l.DEFAULT.."À Esquerda, depois para Cima (padrão)"
l.OPTION_ORIENTATION_UpThenLeft = "Para Cima, depois À Esquerda"
l.OPTION_ORIENTATION_RightThenUp = "À Direita, depois para Cima"
l.OPTION_ORIENTATION_RightThenUp_Default = l.DEFAULT.."À Direita, depois para Cima (padrão)"
l.OPTION_ORIENTATION_UpThenRight = "Para Cima, depois À Direita"
l.OPTION_BUFFSSCALE = "Tamanho dos búfes ";
l.OPTION_BUFFSSCALE_TOOLTIP = l.CY.."Padrão no Wow: 1"
l.OPTION_MAXBUFFS = "Limite de búfes";
l.OPTION_MAXBUFFS_TOOLTIP = "Número máximo de búfes a exibir\n"..l.CY.."Padrão no Wow: "..ns.DEFAULT_MAXBUFFS;
l.OPTION_MAXBUFFS_FORMAT = "%d |4búfe:búfes";
l.OPTION_BUFFSPERLINE = "Búfes por linha";
l.OPTION_BUFFSPERLINE_TOOLTIP = "Número de búfes por linha\n"..l.CY.."Ignorado se superior ao Limite";
l.OPTION_BUFFSPERLINE_FORMAT = "%d por linha";
l.OPTION_BUFFSORIENTATION = "Orientação dos búfes";
l.OPTION_BUFFSORIENTATION_TOOLTIP = "Escolha o arranjo dos búfes (suporta múltiplas linhas)\n"..l.CY.."Padrão: "..l.OPTION_ORIENTATION_LeftThenUp
l.OPTION_BUFFS_RELATIVE_X = "Posição horizontal";
l.OPTION_BUFFS_RELATIVE_X_TOOLTIP = "Ajuste a posição horizontal relativa dos búfes";
l.OPTION_BUFFS_RELATIVE_Y = "Posição vertical";
l.OPTION_BUFFS_RELATIVE_Y_TOOLTIP = "Ajuste a posição vertical relativa dos búfes";
l.OPTION_DEBUFFSSCALE = "Tamanho dos debufes ";
l.OPTION_DEBUFFSSCALE_TOOLTIP = l.CY.."Padrão no Wow: 1"
l.OPTION_MAXDEBUFFS = "Limite de debufes";
l.OPTION_MAXDEBUFFS_TOOLTIP = "Número máximo de debufes a exibir\n"..l.CY.."Padrão no Wow: "..ns.DEFAULT_MAXDEBUFFS;
l.OPTION_MAXDEBUFFS_FORMAT = "%d |4debufe:debufes";
l.OPTION_DEBUFFSPERLINE = "Debufes por linha";
l.OPTION_DEBUFFSPERLINE_TOOLTIP = "Número de îcones de debufe por linha\n"..l.CY.."Ignorado se superior ao Limite";
l.OPTION_DEBUFFSPERLINE_FORMAT = "%d por linha";
l.OPTION_DEBUFFSORIENTATION = "Orientação dos debufes";
l.OPTION_DEBUFFSORIENTATION_TOOLTIP = "Escolha o arranjo dos debufes (suporta múltiplas linhas)\n"..l.CY.."Padrão: "..l.OPTION_ORIENTATION_RightThenUp;
l.OPTION_DEBUFFS_RELATIVE_X = "Posição horizontal";
l.OPTION_DEBUFFS_RELATIVE_X_TOOLTIP = "Ajuste a posição horizontal relativa dos debufes";
l.OPTION_DEBUFFS_RELATIVE_Y = "Posição vertical";
l.OPTION_DEBUFFS_RELATIVE_Y_TOOLTIP = "Ajuste a posição vertical relativa dos debufes";
l.OPTION_BUFFS_HIDEBLIZZARDAURAS = " Ocultar auras da Blizzard"
l.OPTION_BUFFS_RESET = "Cancelar reposicionamento"
l.OPTION_FILTER_AUTO_DEFAULT = l.DEFAULT.."Auto — acompanha o combate (padrão)";
l.OPTION_FILTER_RAID = "Sempre a lista fora de combate";
l.OPTION_FILTER_RAID_IN_COMBAT = "Sempre a lista em combate";
l.OPTION_BUFFS_SPACING_X = "Espaçamento horizontal";
l.OPTION_BUFFS_SPACING_X_TOOLTIP = "Espaço horizontal, em pixels, entre os ícones de bônus\n"..l.CY.."Padrão: 0";
l.OPTION_BUFFS_SPACING_Y = "Espaçamento vertical";
l.OPTION_BUFFS_SPACING_Y_TOOLTIP = "Espaço vertical, em pixels, entre os ícones de bônus\n"..l.CY.."Padrão: 1";
l.OPTION_BUFFSFILTER = "Filtro de bônus";
l.OPTION_BUFFSFILTER_TOOLTIP = "Qual lista de bônus a Blizzard fornece\n"..l.CY.."Auto alterna ao entrar e sair de combate";
l.OPTION_BUFFS_HIDETOOLTIP = "Ocultar dicas dos bônus"..required;
l.OPTION_BUFFS_HIDETOOLTIP_TOOLTIP = "Sem dica ao passar o cursor sobre um ícone de bônus\n"..l.RDL.."Também desativa o clique direito para cancelar um bônus";
l.OPTION_BUFFS_EXCLUDED = "Buffs ignorados";
l.OPTION_BUFFS_EXCLUDED_TITLE = "Buffs que não serão exibidos";
l.OPTION_BUFFS_EXCLUDED_PLACEHOLDER = "Nome do feitiço ou ID do feitiço";
l.OPTION_DEBUFFS_SPACING_X = "Espaçamento horizontal";
l.OPTION_DEBUFFS_SPACING_X_TOOLTIP = "Espaço horizontal, em pixels, entre os ícones de penalidades\n"..l.CY.."Padrão: 0";
l.OPTION_DEBUFFS_SPACING_Y = "Espaçamento vertical";
l.OPTION_DEBUFFS_SPACING_Y_TOOLTIP = "Espaço vertical, em pixels, entre os ícones de penalidades\n"..l.CY.."Padrão: 1";
l.OPTION_DEBUFFSFILTER = "Filtro de penalidades";
l.OPTION_DEBUFFSFILTER_TOOLTIP = "Qual lista de penalidades a Blizzard fornece\n"..l.CY.."Auto alterna ao entrar e sair de combate";
l.OPTION_DEBUFFS_HIDETOOLTIP = "Ocultar dicas das penalidades"..required;
l.OPTION_DEBUFFS_HIDETOOLTIP_TOOLTIP = "Sem dica ao passar o cursor sobre um ícone de penalidade\n"..l.RDL.."Também desativa o clique direito para cancelar uma penalidade";
-- KBD END

l.OPTION_RESET_OPTIONS = "Redefinir o perfil";
l.OPTION_RELOAD_REQUIRED = "Algumas alteraçöes exigem um recarregamento (digite: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Opçöes que exigem um recarregamento";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Exibir mensagens";
l.OPTION_SHOWMSGWARNING = l.GYL.."Exibir alertas";
l.OPTION_SHOWMSGERR = l.GYL.."Exibir erros";
l.OPTION_COMPARTMENT_FILTER = "Exibir no Filtro de Compartimento"..required;
l.OPTION_COMPARTMENT_FILTER_TOOLTIP = "Na lista de addons no canto superior direito";
l.OPTION_WHATSNEW = "Novidades";
