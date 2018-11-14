local GUI = require("GUI")
local MineOSInterface = require("MineOSInterface")
local Version = "1.12"
local MineOSCore = require("MineOSCore")
local buffer = require("doubleBuffering") -- нахрена? Дальше всем сам увидешь.
local image = require("image")
local computer = require("computer")

local resourcesPath = MineOSCore.getCurrentScriptDirectory()
local localization = MineOSCore.getLocalization(resourcesPath .. "Localizations/")

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
}

local mainContainer, window = MineOSInterface.addWindow(GUI.filledWindow(1, 1, 145, 35, 0x4B4B4B))

window.backgroundPanel.colors.transparency = 0.2

mainContainer.menu:addItem(localization.author).onTouch = function()
 local container = GUI.addBackgroundContainer(mainContainer, true, true, localization.author1)
 end
local progressIndicator = window:addChild(GUI.progressIndicator(140, 1, 0x696969, 0x787878, 0xD2D2D2))

local x, y, width, horizontalSpace, verticalSpace = 3, 4, 9, 2, 1
for i = 1, #pictures do
  window:addChild(GUI.text(x, y, 0xD2D2D2, string.limit(pictures[i], width)))
  window:addChild(GUI.roundedButton(x, y + 1, width, 3, 0x969696, 0xE1E1E1, 0x696969, 0x969696, localization.download)).onTouch = function()
    local file = pictures[i] .. ".pic"
    
    GUI.alert(localization.alert0)
     progressIndicator.active = true
     
      mainContainer:drawOnScreen()
        loadfile("/bin/wget.lua")("https://github.com/Fronun/Wallpapers/raw/master/wall/" .. file, "/MineOS/Pictures/" .. file, "-FQ")
      computer.beep() -- пипип нахуй :)
       buffer.drawImage(1, 1, image.load("/MineOS/Pictures/" ..file)) -- рисуем найух

       
         GUI.alert(localization.alert1 ..file)
      os.sleep(3.000)
    
      progressIndicator.active = false
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
mainContainer:drawOnScreen()
