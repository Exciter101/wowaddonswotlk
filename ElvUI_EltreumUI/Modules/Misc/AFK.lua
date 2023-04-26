local E, L, V, P, G = unpack(ElvUI)
local _G = _G
local C_CVar = _G.C_CVar
local CreateFrame = _G.CreateFrame
local UIParent = _G.UIParent
local UnitIsAFK = _G.UnitIsAFK
local SetCVar = _G.SetCVar
local PlayMusic = _G.PlayMusic
local PlaySound = _G.PlaySound
local StopMusic = _G.StopMusic
local StopSound = _G.StopSound
local tonumber = _G.tonumber

-- general alliance walk (legion) maybe human music idk
--/script PlaySoundFile(1417250, "Dialog", true)

-- AFK music (modified with the help of Repooc!)
local racialMusic = {
	["Human"] = 53210,
	["Gnome"] = 369055,
	["NightElf"] = 441709,
	["KulTiran"] = 1781897,
	["Dwarf"] = 298910,
	["Draenei"] = 53284,
	["Worgen"] = 441525,
	["VoidElf"] = 1864282,
	["LightforgedDraenei"] = 1864285,
	["DarkIronDwarf"] = 441566,
	["Mechagnome"] = 3028751,
	["Orc"] = 441713,
	["Scourge"] = 53217,
	["Tauren"] = 441788,
	["Troll"] = 371378,
	["Goblin"] = 441627,
	["BloodElf"] = 53473,
	["Pandaren"] = 642246,
	["Nightborne"] = 1477339,
	["HighmountainTauren"] = 1417319,
	["ZandalariTroll"] = 2844635,
	["Vulpera"] = 3260632,
	["MagharOrc"] = 2146630,
	["Dracthyr"] = 4872480, --test
}
local classMusic = {
	["WARRIOR"] = 1417334,
	["PALADIN"] = 1417342, --443289
	["HUNTER"] = 1417326,
	["ROGUE"] = 1417273,
	["PRIEST"] = 1417367,
	["DEATHKNIGHT"] = 229831,
	["SHAMAN"] = 528163,
	["MAGE"] = 1417264,
	["WARLOCK"] = 1417356,
	["MONK"] = 642138,
	["DRUID"] = 1417312,
	["DEMONHUNTER"] = 1417290,
	["EVOKER"] = 4887975, --test
}

local wrathMusic ={
	["Human"] = 53210,
	["Gnome"] = 369055,
	["NightElf"] = 53187,
	["Dwarf"] = 298910,
	["Draenei"] = 53284,
	["Orc"] = 53201,
	["Scourge"] = 53217,
	["Tauren"] = 53215,
	["Troll"] = 371378,
	["BloodElf"] = 53473,
}

local classicMusic = {
	["Human"] = 6794,
	["Gnome"] = 7341,
	["NightElf"] = 3920,
	["Dwarf"] = 7319,
	["Orc"] = 2902,
	["Scourge"] = 5074,
	["Tauren"] = 7077,
	["Troll"] = 8452,
}

-- with the help of Repooc, Simpy and Acidweb (not in order :D)
local musicSettingLoadingIn = C_CVar.GetCVar('Sound_EnableMusic')
local musicSetting = musicSettingLoadingIn
local classicmusicstopper = nil
local willplay = nil
function ElvUI_EltreumUI:AFKmusic()
	if E.db.ElvUI_EltreumUI.otherstuff.afkmusic.enable then
		if UnitIsAFK("player") then
			musicSetting = tonumber(C_CVar.GetCVar('Sound_EnableMusic'))
			SetCVar("Sound_EnableMusic", 1)
			if E.Retail then
				if E.db.ElvUI_EltreumUI.otherstuff.afkmusic.racial then
					PlayMusic(racialMusic[E.myrace])
				elseif E.db.ElvUI_EltreumUI.otherstuff.afkmusic.playerclass then
					PlayMusic(classMusic[E.myclass])
				end
			elseif E.Classic then
				willplay, classicmusicstopper = PlaySound(classicMusic[E.myrace])
			elseif E.Wrath then
				PlayMusic(wrathMusic[E.myrace])
			end
		else
			if not E.Classic then
				StopMusic()
				if musicSettingLoadingIn ~= musicSetting then
					SetCVar("Sound_EnableMusic", musicSetting)
				end
			else
				if willplay then
					StopSound(classicmusicstopper,3000)
				end
				if musicSettingLoadingIn ~= musicSetting then
					SetCVar("Sound_EnableMusic", musicSetting)
				end
			end
		end
	end
end

--add Eltruism logo to elvui afk screen

local EltruismAFKLogoTexture = _G.ElvUIAFKFrame:CreateTexture()
local EltruismAFKVignette = CreateFrame("Frame", "EltruismAFKVignette", UIParent)
local EltruismAFKVignetteTexture = EltruismAFKVignette:CreateTexture()
local EltruismAFKClassTexture = _G.ElvUIAFKFrame.bottom:CreateTexture()

local classIcons = {
	["WARRIOR"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/WarriorShadow",
	["PALADIN"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/PaladinShadow",
	["HUNTER"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/HunterShadow",
	["ROGUE"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/RogueShadow",
	["PRIEST"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/PriestShadow",
	["DEATHKNIGHT"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/DeathKnightShadow",
	["SHAMAN"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/ShamanShadow",
	["MAGE"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/MageShadow",
	["WARLOCK"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/WarlockShadow",
	["MONK"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/MonkShadow",
	["DRUID"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/DruidShadow",
	["DEMONHUNTER"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/DemonHunterShadow",
	["EVOKER"] = "Interface/Addons/ElvUI_EltreumUI/Media/Textures/Classes/EvokerShadow",
}

function ElvUI_EltreumUI:AFKLogo()
	if E.db.general.afk then

		--add shadows
		if _G.ElvUIAFKFrame and _G.ElvUIAFKFrame.bottom and not _G.ElvUIAFKFrame.bottom.shadow then
			_G.ElvUIAFKFrame.bottom:CreateShadow(E.db.ElvUI_EltreumUI.skins.shadow.length)
			ElvUI_EltreumUI:ShadowColor(_G.ElvUIAFKFrame.bottom.shadow)
		end

		if E.db.ElvUI_EltreumUI.otherstuff.afklogo then

			--vignette/overlay
			EltruismAFKVignette:SetSize(E.screenWidth,E.screenHeight)
			EltruismAFKVignette:SetAllPoints(_G.ElvUIAFKFrame)
			EltruismAFKVignette:SetParent(_G.ElvUIAFKFrame)
			EltruismAFKVignette:SetFrameStrata("BACKGROUND")
			EltruismAFKVignetteTexture:SetTexture("Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\StealthOverlay.tga")
			EltruismAFKVignetteTexture:SetAllPoints(EltruismAFKVignette)
			if UnitIsAFK("player") then
				EltruismAFKVignette:Show()
			else
				EltruismAFKVignette:Hide()
			end

			--bottom frame
			_G.ElvUIAFKFrame.bottom:SetWidth(E.screenWidth/1.75)
			_G.ElvUIAFKFrame.bottom:SetHeight(E.screenHeight * 0.05)
			_G.ElvUIAFKFrame.bottom:SetPoint("BOTTOM", _G.ElvUIAFKFrame, "BOTTOM", 0 , 50)

			--elvui logo
			_G.ElvUIAFKFrame.bottom.LogoTop:SetTexture(nil)
			_G.ElvUIAFKFrame.bottom.LogoBottom:SetTexture("Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\elvui.tga")
			_G.ElvUIAFKFrame.bottom.LogoBottom:SetGradient("HORIZONTAL", ElvUI_EltreumUI:GradientColors(E.myclass, false, false))
			_G.ElvUIAFKFrame.bottom.LogoBottom:SetSize(E.screenHeight * 0.1, E.screenHeight * 0.05)
			_G.ElvUIAFKFrame.bottom.LogoBottom:ClearAllPoints()
			_G.ElvUIAFKFrame.bottom.LogoBottom:Point('RIGHT', _G.ElvUIAFKFrame.bottom,'CENTER', -10, 0)

			--eltruism logo
			EltruismAFKLogoTexture:SetTexture("Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\logohqbw")
			EltruismAFKLogoTexture:SetSize(E.screenHeight * 0.2, E.screenHeight * 0.05)
			EltruismAFKLogoTexture:SetPoint("CENTER", _G.ElvUIAFKFrame.bottom)
			EltruismAFKLogoTexture:SetGradient("HORIZONTAL", ElvUI_EltreumUI:GradientColors("ELTRUISM", false, false))
			EltruismAFKLogoTexture:Point('LEFT', _G.ElvUIAFKFrame.bottom,'CENTER', 10, 0)

			--model
			local point, relativeTo, relativePoint, xOfs, yOfs = _G.ElvUIAFKFrame.bottom.modelHolder:GetPoint()
			_G.ElvUIAFKFrame.bottom.modelHolder:ClearAllPoints()
			_G.ElvUIAFKFrame.bottom.modelHolder:Point(point, relativeTo, relativePoint, 250, yOfs+10)
			_G.ElvUIAFKFrame.bottom.model:SetScale(0.9)

			--time
			_G.ElvUIAFKFrame.bottom.time:ClearAllPoints()
			_G.ElvUIAFKFrame.bottom.time:Point('RIGHT', _G.ElvUIAFKFrame.bottom, 'RIGHT', -10, 0)

			--class icon
			_G.ElvUIAFKFrame.bottom.faction:SetTexture(nil)
			EltruismAFKClassTexture:Point('LEFT', _G.ElvUIAFKFrame.bottom, 'LEFT', 0, 0)
			EltruismAFKClassTexture:Size(E.screenHeight * 0.05, E.screenHeight * 0.05)
			EltruismAFKClassTexture:SetTexture(classIcons[E.myclass])

			--name
			_G.ElvUIAFKFrame.bottom.name:SetText(ElvUI_EltreumUI:GradientName(E.myname, E.myclass))
			_G.ElvUIAFKFrame.bottom.name:ClearAllPoints()
			_G.ElvUIAFKFrame.bottom.name:Point('TOPLEFT', EltruismAFKClassTexture, 'TOPRIGHT', 10, -2)

			--remove the rank from guild text
			if IsInGuild() then
				E:Delay(0, function()
					local guildName = GetGuildInfo('player')
					_G.ElvUIAFKFrame.bottom.guild:SetText(guildName)
				end)
			end
		end
	end
end
