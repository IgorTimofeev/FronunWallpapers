-- 1.15
-- подключаем библеотеку.
local GUI = require("GUI")
local system = require("System")
local text = require("Text")
local internet = require("Internet")
local paths = require("Paths")
local fs = require("Filesystem") -- опа, что то новое будет.
-- указываем локализацию (языки)
local localization = system.getCurrentScriptLocalization()

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

local workspace, window, menu = system.addWindow(GUI.titledWindow(1, 1, 145, 35, "Wallpapers", false)) --  окно

menu:addItem(localization.author).onTouch = function() -- вкладка "Автор"
 local container = GUI.addBackgroundContainer(workspace, true, true, localization.author1) -- тут все понятно..
end

local x, y, width, horizontalSpace, verticalSpace = 3, 3, 8, 2, 1 
for i = 1, #pictures do
  window:addChild(GUI.text(x, y, 0x878787, text.limit(pictures[i], width))) -- название обоины.
  window:addChild(GUI.roundedButton(x, y + 1, width, 3, 0x969696, 0xE1E1E1, 0x696969, 0x969696, localization.download)).onTouch = function() -- кнопка скачать
    local file = pictures[i] .. ".pic"  
    internet.download("https://github.com/Fronun/Wallpapers/raw/master/wall/" .. file, paths.system.pictures .. file)
    computer.beep() 
    GUI.alert(localization.warning .. file)
  end

  x = x + width + horizontalSpace
  if x + width > window.width then
    x, y = 3, y + verticalSpace + 4
  end
end

window.onResize = function(width, height)
  window.backgroundPanel.width = width
  window.backgroundPanel.height = height
 end

window:resize(window.width, window.height)


workspace:draw()
