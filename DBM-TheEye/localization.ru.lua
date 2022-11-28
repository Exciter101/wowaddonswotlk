if GetLocale() ~= "ruRU" then return end

local L

-----------
--  Alar --
-----------
L = DBM:GetModLocalization("Alar")

L:SetGeneralLocalization{
	name = "Ал'ар"
}

L:SetTimerLocalization{
	NextPlatform	= "Следующая платформа"
}

L:SetOptionLocalization{
	NextPlatform	= "Показывать таймер как долго Ал'ар может оставаться на платформе (Может улететь раньше, но позже никогда)"
}

------------------
--  Void Reaver --
------------------
L = DBM:GetModLocalization("VoidReaver")

L:SetGeneralLocalization{
	name = "Страж Бездны"
}

--------------------------------
--  High Astromancer Solarian --
--------------------------------
L = DBM:GetModLocalization("Solarian")

L:SetGeneralLocalization{
	name = "Верховный звездочет Солариан"
}

L:SetWarningLocalization{
	WarnSplit		= "Исчезновение",
	WarnSplitSoon	= "Исчезновение через 5 секунд",
	WarnAgent		= "Посланники появились",
	WarnPriest		= "Жрецы и Солариан появились"

}

L:SetTimerLocalization{
	TimerSplit		= "Следующее Исчезновение",
	TimerAgent		= "Посланники приближаются",
	TimerPriest		= "Жрецы и Солариан приближаются"
}

L:SetOptionLocalization{
	WarnSplit		= "Показывать предупреждение об Исчезновении",
	WarnSplitSoon	= "Показывать предупреждение о скором Исчезновении",
	WarnAgent		= "Показывать предупреждение о появлении Посланников",
	WarnPriest		= "Показывать предупреждение о появлении Жрецов и Солариана",
	TimerSplit		= "Показывать таймер об Исчезновении",
	TimerAgent		= "Показывать таймер о появлении Посланников",
	TimerPriest		= "Показывать таймер о появлении Жрецов и Солариана"
}

L:SetMiscLocalization{
	YellSplit1		= "Я навсегда избавлю вас от мании величия!",
	YellSplit2		= "Вы безнадежно слабы!",
	YellPhase2		= "Я сольюсь"
}

---------------------------
--  Kael'thas Sunstrider --
---------------------------
L = DBM:GetModLocalization("KaelThas")

L:SetGeneralLocalization{
	name = "Кель'тас Солнечный Скиталец"
}

L:SetWarningLocalization{
	WarnGaze		= "Взгляд на >%s<",
	WarnMobDead		= "%s мертв",
	WarnEgg			= "Яйцо феникса появилось",
	SpecWarnGaze	= "Взгляд на ТЕБЕ - Убегай!",
	SpecWarnEgg		= "Яйцо феникса появилось - Смени цель!"
}

L:SetTimerLocalization{
	TimerPhase		= "Следующая Фаза",
	TimerPhase1mob	= "%s",
	TimerNextGaze	= "Новая цель Взгляда",
	TimerRebirth	= "Возрождение Феникса"
}

L:SetOptionLocalization{
	WarnGaze		= "Показывать предупреждение о цели Взгляда Талареда",
	WarnMobDead		= "Показывать предупреждение о смерти советников на Фазе 2",
	WarnEgg			= "Показывать предупреждение о появлении Яйца феникса",
	SpecWarnGaze	= "Показывать специальное предупреждение о Взгляде на тебе",
	SpecWarnEgg		= "Показывать специальное предупреждение о появлении Яйца феникса",
	TimerPhase		= "Показывать таймер о следующей фазе",
	TimerPhase1mob	= "Показывать таймер об активности моба на Фазе 1",
	TimerNextGaze	= "Показывать таймер смены цели Взгляда Талареда",
	TimerRebirth	= "Показывать таймер до возрождения Яйца феникса",
	GazeIcon		= "Установить метку на цель Взгляда Талареда"
}

L:SetMiscLocalization{
	YellPhase2	= "Как видите, оружия у меня предостаточно...",
	YellPhase3	= "Возможно, я недооценил вас. Было бы несправедливо заставлять вас драться с четырьмя советниками сразу, но... Мои люди тоже никогда не знали справедливости. Я лишь возвращаю долг.",
	YellPhase4	= "Увы, иногда приходится брать все в свои руки. Баламоре шаналь!",
	YellPhase5	= "Я не затем ступил на этот путь, чтобы остановиться на полдороги! Мои планы должны сбыться – и они сбудутся! Узрите же истинную мощь!",
	YellSang	= "Вы справились с моими лучшими советниками... Но перед мощью Кровавого Молота не устоит никто. Узрите лорда Сангвинара!",
	YellCaper	= "Каперниан проследит, чтобы вы не задержались здесь надолго.",
	YellTelo	= "Неплохо, теперь вы можете потягаться с моим главным инженером Телоникусом.",
	EmoteGaze	= "смотрит на ([^%s]+).",
	Thaladred	= "Таладред Светокрад",
	Sanguinar	= "Лорд Сангвинар",
	Capernian	= "Великий Звездочет Каперниан",
	Telonicus	= "Главный инженер Телоникус",
	Bow			= "Длинный лук Края Пустоты",
	Axe			= "Сокрушение",
	Mace		= "Вселенский вдохновитель",
	Dagger		= "Клинки Бесконечности",
	Sword		= "Астральный тесак",
	Shield		= "Фазовый щит",
	Staff		= "Посох распыления",
	Egg			= "Яйцо феникса"
}
