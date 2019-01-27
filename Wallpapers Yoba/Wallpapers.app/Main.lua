
local GUI = require("GUI")
local system = require("System")
local internet = require("Internet")
local paths = require("Paths")
local filesystem = require("Filesystem")
local image = require("Image")

--------------------------------------------------------------------------------

local currentScriptDirectory = filesystem.path(system.getCurrentScript())
local localization = system.getLocalization(currentScriptDirectory .. "Localizations/")

local pictures = { -- Список обоев.
	"Tatu",
	"WinterSunrise",
	"Nocturnal",
	"AhsokaTano",
	"Sea",
	"Sea-mountains",
	"moscow",
	"Piter",
	"Nice_girl",
	"Win_10",
	"texture",
	"Winter_National",
	"Car",
	"field",
	"Colors",
	"CPU",
	"Surgut",
	"Forest",
	"Sea-2",
	"Hard_disk",
	"Kiev",
	"Color_Skull",
	"winter_fun",
	"Squirrel",
	"Ferret",
	"Android_P",
	"Android_O",
	"Android_N",
	"Android_M",
	"Redstone",
	"Linux",
	"Code",
	"Anonumys", -- анонимус, отсосимус!
	"MineCraft", 
	"Apple", 
	"Trap_nation",
	"Ryzen",
	"Ryazan",
	"Raspberry",
	"Firefox",
	"Scrimer",
	"lox",
	"Anime",
	"seashell",
	"Ice_haze",
	"Sea_wave",
	"3D_Cat",
	"Github",
	"lake_forest_mountains",
	"Nvidia",
	"wave_in_the_ocean",
	"Strawberry_cocktail",
	"Matrix",
	"Intel_Inside",
	"Rammstein", 
	"Google", 
	"TED",
	"Little_big",  
	"Yandex",
	"Cat",
	"Sea-Night",
	"IMac",
	"Mojave",
	"Mojave_Night",
	"yosemite",
	"Omen",
	"Helloween",
	"NewYork",
	"Sunset",
	"CalfMountains",
	"China",
	"japan",
	"SnowMountains",
	"Lineage_os",
	"Flyme",
	"MIUI",
	"steam",
	"Urban",
	"NewYear",
	"acer",
	"vaio",
	"xbox360",
}

-- Сортируем таблицу пикч по алфавиту в автоматическом режиме, че в жопу долбиться с ручной позиционкой
table.sort(pictures, function(a, b) return unicode.lower(a) < unicode.lower(b) end)

--------------------------------------------------------------------------------

local workspace, window, menu = system.addWindow(GUI.filledWindow(1, 1, 50, 21, 0xF0F0F0)) --  окно

local layout = window:addChild(GUI.layout(1, 3, 1, 1, 1, 1))

layout:addChild(GUI.image(1, 1, image.load(currentScriptDirectory .. "Icon.pic")))

local comboBox = layout:addChild(GUI.comboBox(1, 1, 36, 3, 0xE1E1E1, 0x696969, 0xD2D2D2, 0xA5A5A5))
comboBox.dropDownMenu.itemHeight = 1
comboBox.dropDownMenu.scrollSpeed = 2

for i = 1, #pictures do
	comboBox:addItem(pictures[i])
end

local button = layout:addChild(GUI.button(1, 1, 36, 3, 0xE1E1E1, 0x696969, 0xD2D2D2, 0x3C3C3C, "Download"))
button.animated = false

local switch = layout:addChild(GUI.switchAndLabel(1, 1, 36, 6, 0x66DB80, 0xE1E1E1, 0xFFFFFF, 0xA5A5A5, "Enable wallpaper after:", true)).switch

local progressIndicator = layout:addChild(GUI.progressIndicator(1, 1, 0xE1E1E1, 0x00B640, 0x99FF80))

local function download(file)
	progressIndicator.active = true
	workspace:draw()

	local handle, reason = filesystem.open(paths.system.pictures .. file, "wb")
	if handle then
		local success, reason = internet.rawRequest(
			"https://github.com/Fronun/Wallpapers/raw/master/wall/" .. internet.encode(file),
			nil,
			nil,
			function(chunk)
				handle:write(chunk)

				progressIndicator:roll()
				workspace:draw()
			end,
			math.huge
		)

		handle:close()

		if success then
			if switch.state then
				local userSettings = system.getUserSettings()
				userSettings.interfaceWallpaperPath = paths.system.pictures .. file
				userSettings.interfaceWallpaperEnabled = true

				system.updateWallpaper()
				workspace:draw()
				system.saveUserSettings()
			end
		else
			GUI.alert("Failed to download wallpaper: ", reason)
		end
	else
		GUI.alert("Failed to open file handle: ", reason)
	end

	progressIndicator.active = false
	workspace:draw()
end

button.onTouch = function()
	download(comboBox:getItem(comboBox.selectedItem).text .. ".pic")
end

menu:addItem(localization.author).onTouch = function() -- вкладка "Автор"
	GUI.addBackgroundContainer(workspace, true, true, localization.author1) -- тут все понятно..
	workspace:draw()
end

window.onResize = function(width, height)
	window.backgroundPanel.width, window.backgroundPanel.height = width, height
	layout.width, layout.height = width, height - layout.localY + 1
end

--------------------------------------------------------------------------------

window:resize(window.width, window.height)
workspace:draw()
