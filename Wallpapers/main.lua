local GUI = require("GUI")
local MineOSInterface = require("MineOSInterface")
local Version = "1.10"
local MineOSCore = require("MineOSCore")
local buffer = require("doubleBuffering") -- нахрена? Дальше всем сам увидешь.
local image = require("image")

local pictures = { -- Список обоев.
  "Zemfira", -- хочешь, сладких апельсинов.
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
  "MineCraft", --МАЙНКРАФТ ЭТО МОЯ ЖИЗНЬ!!!!!
  "Apple", --корпорация зла.
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
  "Rammstein", -- ну, норм я ниче не могу сказать.
  "Google", -- корпорация добра
  "TED",
  "Little_big", -- скпибиди папапа бум бум айс.
  "Yandex",
  "Cat",
  "Sea-Night",
  "IMac",
  "Mojave",
  "Mojave_Night",
  "yosemite",
  "Omen",
  "Helloween",
}

local mainContainer, window = MineOSInterface.addWindow(GUI.filledWindow(1, 1, 145, 35, 0x878787))
window.backgroundPanel.colors.transparency = 0.2
mainContainer.menu:addItem("language").onTouch = function()
local container = GUI.addBackgroundContainer(mainContainer, true, true, "Soon.. Скоро.. ")
end
mainContainer.menu:addItem("Author").onTouch = function()
 local container = GUI.addBackgroundContainer(mainContainer, true, true, "ENG: Author: Fronun. (Helped: MineCR, ECS) RUS: Автор: Fronun. (Помогли: MineCR, ECS) Github: https://github.com/Fronun")
 end
local progressIndicator = window:addChild(GUI.progressIndicator(140, 1, 0x696969, 0x787878, 0xD2D2D2))

local x, y, width, horizontalSpace, verticalSpace = 3, 4, 10, 2, 1
for i = 1, #pictures do
  window:addChild(GUI.text(x, y, 0xD2D2D2, string.limit(pictures[i], width)))
  window:addChild(GUI.roundedButton(x, y + 1, width, 3, 0xB4B4B4, 0x555555, 0x880000, 0xB4B4B4, "Download")).onTouch = function()
    local file = pictures[i] .. ".pic"
    
    GUI.alert("Russian: не вынимайте, интернет карту во время скачиваний, это пройдет 3 секунды. \nEnglish: do not remove the internet map during downloads, it will take 3 seconds.")
     progressIndicator.active = true
     
      mainContainer:drawOnScreen()
        loadfile("/bin/wget.lua")("https://github.com/Fronun/Wallpapers/raw/master/wall/" .. file, "/MineOS/Pictures/" .. file, "-FQ")
      
       buffer.drawImage(1, 1, image.load("/MineOS/Pictures/" ..file)) -- рисуем найух

       
         GUI.alert("Russian: Загрузка завершена! Чтобы поставить на рабочий стол, Settings -> обои и заставка, выбираете " .. file, "\nEnglish: Loading is successfully! To put on your desktop, Settings -> wallpapers, choose " ..file)
      os.sleep(5.000) -- 
    
      progressIndicator.active = false
  end

  x = x + width + horizontalSpace
  if x + width > window.width then
    x, y = 3, y + verticalSpace + 4

  end
end

mainContainer:drawOnScreen()
