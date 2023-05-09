---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local professionLocals = {
    ["First Aid"] = {
        ["ptBR"] = "Primeiros Socorros",
        ["ruRU"] = "Первая помощь",
        ["deDE"] = "Erste Hilfe",
        ["koKR"] = "응급치료",
        ["esMX"] = "Primeros auxilios",
        ["enUS"] = true,
        ["zhCN"] = "急救",
        ["zhTW"] = "急救",
        ["esES"] = "Primeros auxilios",
        ["frFR"] = "Secourisme",
    },
    ["Blacksmithing"] = {
        ["ptBR"] = "Ferraria",
        ["ruRU"] = "Кузнечное дело",
        ["deDE"] = "Schmiedekunst",
        ["koKR"] = "대장기술",
        ["esMX"] = "Herrería",
        ["enUS"] = true,
        ["zhCN"] = "锻造",
        ["zhTW"] = "鍛造",
        ["esES"] = "Herrería",
        ["frFR"] = "Forge",
    },
    ["Leatherworking"] = {
        ["ptBR"] = "Couraria",
        ["ruRU"] = "Кожевничество",
        ["deDE"] = "Lederverarbeitung",
        ["koKR"] = "가죽세공",
        ["esMX"] = "Peletería",
        ["enUS"] = true,
        ["zhCN"] = "制皮",
        ["zhTW"] = "製皮",
        ["esES"] = "Peletería",
        ["frFR"] = "Travail du cuir",
    },
    ["Alchemy"] = {
        ["ptBR"] = "Alquimia",
        ["ruRU"] = "Алхимия",
        ["deDE"] = "Alchemie",
        ["koKR"] = "연금술",
        ["esMX"] = "Alquimia",
        ["enUS"] = true,
        ["zhCN"] = "炼金术",
        ["zhTW"] = "鍊金術",
        ["esES"] = "Alquimia",
        ["frFR"] = "Alchimie",
    },
    ["Herbalism"] = {
        ["ptBR"] = "Herborismo",
        ["ruRU"] = "Травничество",
        ["deDE"] = "Kräuterkunde",
        ["koKR"] = "약초채집",
        ["esMX"] = "Herboristería",
        ["enUS"] = true,
        ["zhCN"] = "草药学",
        ["zhTW"] = "草藥學",
        ["esES"] = "Herboristería",
        ["frFR"] = "Herboristerie",
    },
    ["Cooking"] = {
        ["ptBR"] = "Culinária",
        ["ruRU"] = "Кулинария",
        ["deDE"] = "Kochkunst",
        ["koKR"] = "요리",
        ["esMX"] = "Cocina",
        ["enUS"] = true,
        ["zhCN"] = "烹饪",
        ["zhTW"] = "烹飪",
        ["esES"] = "Cocina",
        ["frFR"] = "Cuisine",
    },
    ["Mining"] = {
        ["ptBR"] = "Mineração",
        ["ruRU"] = "Горное дело",
        ["deDE"] = "Bergbau",
        ["koKR"] = "채광",
        ["esMX"] = "Minería",
        ["enUS"] = true,
        ["zhCN"] = "采矿",
        ["zhTW"] = "採礦",
        ["esES"] = "Minería",
        ["frFR"] = "Minage",
    },
    ["Tailoring"] = {
        ["ptBR"] = "Alfaiataria",
        ["ruRU"] = "Портняжное дело",
        ["deDE"] = "Schneiderei",
        ["koKR"] = "재봉술",
        ["esMX"] = "Sastrería",
        ["enUS"] = true,
        ["zhCN"] = "裁缝",
        ["zhTW"] = "裁縫",
        ["esES"] = "Sastrería",
        ["frFR"] = "Couture",
    },
    ["Engineering"] = {
        ["ptBR"] = "Engenharia",
        ["ruRU"] = "Инженерное дело",
        ["deDE"] = "Ingenieurskunst",
        ["koKR"] = "기계공학",
        ["esMX"] = "Ingeniería",
        ["enUS"] = true,
        ["zhCN"] = "工程学",
        ["zhTW"] = "工程學",
        ["esES"] = "Ingeniería",
        ["frFR"] = "Ingénierie",
    },
    ["Enchanting"] = {
        ["ptBR"] = "Encantamento",
        ["ruRU"] = "Наложение чар",
        ["deDE"] = "Verzauberkunst",
        ["koKR"] = "마법부여",
        ["esMX"] = "Encantamiento",
        ["enUS"] = true,
        ["zhCN"] = "附魔",
        ["zhTW"] = "附魔",
        ["esES"] = "Encantamiento",
        ["frFR"] = "Enchantement",
    },
    ["Fishing"] = {
        ["ptBR"] = "Pescaria",
        ["ruRU"] = "Рыбная ловля",
        ["deDE"] = "Angeln",
        ["koKR"] = "낚시",
        ["esMX"] = "Pesca",
        ["enUS"] = true,
        ["zhCN"] = "钓鱼",
        ["zhTW"] = "釣魚",
        ["esES"] = "Pesca",
        ["frFR"] = "Pêche",
    },
    ["Skinning"] = {
        ["ptBR"] = "Esfolamento",
        ["ruRU"] = "Снятие шкур",
        ["deDE"] = "Kürschnerei",
        ["koKR"] = "무두질",
        ["esMX"] = "Desuello",
        ["enUS"] = true,
        ["zhCN"] = "剥皮",
        ["zhTW"] = "剝皮",
        ["esES"] = "Desuello",
        ["frFR"] = "Dépeçage",
    },
    ["Jewelcrafting"] = {
        ["ptBR"] = "Joalheria",
        ["ruRU"] = "Ювелирное дело",
        ["deDE"] = "Juwelierskunst",
        ["koKR"] = "보석세공",
        ["esMX"] = "Joyería",
        ["enUS"] = true,
        ["zhCN"] = "珠宝加工",
        ["zhTW"] = "珠寶設計",
        ["esES"] = "Joyería",
        ["frFR"] = "Joaillerie",
    },
    ["Riding"] = {
        ["ptBR"] = "Montaria",
        ["ruRU"] = "Верховая езда",
        ["deDE"] = "Reiten",
        ["koKR"] = "탈것 타기",
        ["esMX"] = "Equitación",
        ["enUS"] = true,
        ["zhCN"] = "骑术",
        ["zhTW"] = "騎術",
        ["esES"] = "Equitación",
        ["frFR"] = "Monte",
    },
    ["Inscription"] = {
        ["ptBR"] = "Escrivania",
        ["ruRU"] = "Начертание",
        ["deDE"] = "Inschriftenkunde",
        ["koKR"] = "주문각인",
        ["esMX"] = "Inscripción",
        ["enUS"] = true,
        ["zhCN"] = "铭文",
        ["zhTW"] = "銘文學",
        ["esES"] = "Inscripción",
        ["frFR"] = "Calligraphie",
    },
}

for k, v in pairs(professionLocals) do
    l10n.translations[k] = v
end
