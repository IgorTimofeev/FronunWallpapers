--Спасибо ECS, что показал что можно было сделать таблицу, да и открыл глаза, в планах все таки дофига что хочу сделать...
--Фронун 13 лет.....

local GUI = require("GUI")
local MineOSInterface = require("MineOSInterface")

local pictures = {
	"Tatu",
	"Katya",
	"WinterSunrise",
	"Nocturnal",
	"AhsokaTano",
	"Sea",
	"Sea-mountains",
	"Chester",
	"linkin_park",
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
	"Niznevartock",
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
	"Anonumys",
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
}

local window = mainContainer:addChild(GUI.titledWindow(50, 22, 70, 30, "Wallpapers", true))
local mainContainer, window = MineOSInterface.addWindow(MineOSInterface.titledWindow(1, 1, 88, 25, "Wallpapers", true))
local x, y, width, horizontalSpace, verticalSpace = 3, 3, 10, 2, 1
for i = 1, #pictures do
	window:addChild(GUI.text(x, y, 0x5A5A5A, string.limit(pictures[i], width)))
	window:addChild(GUI.framedButton(x, y + 1, width, 3, 0xE1E1E1, 0xE1E1E1, 0x880000, 0x880000, "Download")).onTouch = function()
		local file = pictures[i] .. ".pic"
		
		GUI.alert("do not remove the Internet map during downloads, it will take 1 second.")
		loadfile("/bin/wget.lua")("https://github.com/Fronun/Wallpapers/raw/master/wall/" .. file, "/MineOS/Pictures/" .. file, "-FQ")
		GUI.alert("Download complete! To put on your desktop, Settings - > Wallpaper, choose " .. file)
	end

	x = x + width + horizontalSpace
	if x + width > window.width then
		x, y = 3, y + verticalSpace + 4

	end
end

mainContainer:drawOnScreen()
