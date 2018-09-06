-- Автор: Fronun.
-- author: Fronun.
-- создали в сервере guild-bt.ru (Sotq-Tech)
-- code Fronun
-- моя первая нормальная программа.

local GUI = require("GUI") -- подключаем библеотеки для alert
local MineOSInterface = require("MineOSInterface") -- подключаем для окна
local srl = require("serialization") -- версия прогги

local server = "Guild-BT (Sotq)" -- это не реклама просто я сам играю на таком сервере)
local vk = "группа_не_найдена"
local version = "1.17" -- здесь пишется версия.
local Host = "https://github.com/Fronun/Wallpapers/raw/master/wall/" -- да да, теперь все это дело на гитхабе (порн хаб)
local w = "Обои"
local ll = "Fronun"


-- очко
--local mainContainer, window = MineOSInterface.addWindow(GUI.tabbedWindow(1, 1, 120, 35)) -- окно
local mainContainer, window = MineOSInterface.addWindow(GUI.titledWindow(1, 1, 135, 35, "Wallpapers "..version, true))


-- а вот его тело
window:addChild(GUI.label(98, 35, window.width, window.height, 0x878787, "Сервер: "..server))
--window:addChild(GUI.label(7, 1, window.width, window.height, 0xB4B4B4, "vk.com/"..vk))
--window:addChild(GUI.label(2, 3, window.width, window.height, 0xD2D2D2, "Wallpapers version "..version)):setAlignment(GUI.ALIGNMENT_HORIZONTAL_CENTER, GUI.ALIGNMENT_VERTICAL_TOP) 
window:addChild(GUI.label(5, 4, window.width, window.height, 0x5A5A5A, w.." "))
window:addChild(GUI.label(5, 5, window.width, window.height, 0x5A5A5A, "t.a.t.u")) -- нас не догонят
window:addChild(GUI.label(2, 35, window.width, window.height, 0x5A5A5A, "Автор: "..ll)) 
window:addChild(GUI.framedButton(5, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function() -- кнопка
  
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.") -- предупреждение 
  os.sleep(1.000)
  

   loadfile("/bin/wget.lua")(Host.."Tatu.pic", "/MineOS/Pictures/tatu.pic", "-fQ") -- приказываем, скачать файл с хоста, и сохранить.
 
 computer=require("computer") computer.beep() -- звуковой сигнал, что уже скачено.  
  computer=require("computer") computer.beep() 
    GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Tatu.pic") -- подсказка.
  end -- end пишем чтобы, не перебивать loadfile.
  
  -----------------------------------------------------------------------------------------------
  
 window:addChild(GUI.label(5, 9, window.width, window.height, 0x5A5A5A, w.." Katya")) 
  window:addChild(GUI.framedButton(5, 10, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Katya.pic", "/MineOS/Pictures/Katya.pic", "-FQ")
  computer=require("computer") computer.beep()
  computer=require("computer") computer.beep()  
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Katya.pic")
  end 
  
  -----------------------------------------------------------------------------------------------
  
window:addChild(GUI.label(2, 13, window.width, window.height, 0x5A5A5A, w.." Winter"))  
  window:addChild(GUI.framedButton(5, 14, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."WinterSunrise.pic", "/MineOS/Pictures/WinterSunrise.pic", "-FQ")
  computer=require("computer") computer.beep()
  computer=require("computer") computer.beep()  
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете WinterSunrise.pic")
  end 

 ------------------------------------------------------------------------------------------
 
window:addChild(GUI.label(2, 17, window.width, window.height, 0x5A5A5A, w.." Nocturnal"))  
  window:addChild(GUI.framedButton(5, 18, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)

   loadfile("/bin/wget.lua")(Host.."Nocturnal.pic", "/MineOS/Pictures/Nocturnal.pic", "-FQ")

  computer=require("computer") computer.beep()
  computer=require("computer") computer.beep()  
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Nocturnal.pic")
  end 
 
 ------------------------------------------------------------------------------------------
 
 window:addChild(GUI.label(1, 21, window.width, window.height, 0x5A5A5A, w.." Ahsoka Tano"))
  window:addChild(GUI.framedButton(4, 22, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."AhsokaTano.pic", "/MineOS/Pictures/AhsokaTano.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете AhsokaTano.pic")
  end 
 
 
 ------------------------------------
 
  window:addChild(GUI.label(17, 5, window.width, window.height, 0x5A5A5A, w.." Sea")) 
  window:addChild(GUI.framedButton(17, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)

   loadfile("/bin/wget.lua")(Host.."Sea.pic", "/MineOS/Pictures/Sea.pic", "-FQ")
  computer=require("computer") computer.beep()
computer=require("computer") computer.beep()
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Sea.pic")
  end 
 
 ------------------------------------
 
  window:addChild(GUI.label(17, 9, window.width, window.height, 0x5A5A5A, w.." Sea"))
  window:addChild(GUI.label(17, 10, window.width, window.height, 0x5A5A5A, "mountains")) 
  window:addChild(GUI.framedButton(17, 11, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Sea-mountains.pic", "/MineOS/Pictures/Sea-mountains.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Sea-mountains.pic")
  end 
 
 ------------------------------------
 
 window:addChild(GUI.label(14, 14, window.width, window.height, 0x5A5A5A, w.." Chester")) 
 window:addChild(GUI.label(16, 15, window.width, window.height, 0x5A5A5A, "Bennigton")) 
  window:addChild(GUI.framedButton(17, 16, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Chester.pic", "/MineOS/Pictures/Chester.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Chester.pic")
  end 
 
 ------------------------------------
 
 window:addChild(GUI.label(17, 20, window.width, window.height, 0x5A5A5A, w.." LP"))
  window:addChild(GUI.framedButton(17, 21, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."linkin_park.pic", "/MineOS/Pictures/linkin_park.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Linkin_park.pic")
  end 

 -----------------------------------
 
  window:addChild(GUI.label(28, 5, window.width, window.height, 0x5A5A5A, "Moscow")) 
  window:addChild(GUI.label(28, 4, window.width, window.height, 0x5A5A5A, w.." "))
  window:addChild(GUI.framedButton(27, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."moscow.pic", "/MineOS/Pictures/moscow.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете moscow.pic")
  end 
 
 -----------------------------------
 
 window:addChild(GUI.label(26, 9, window.width, window.height, 0x5A5A5A, w.." Piter")) 
  window:addChild(GUI.framedButton(27, 10, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Piter.pic", "/MineOS/Pictures/piter.pic", "-FQ")
  computer=require("computer") computer.beep()
  computer=require("computer") computer.beep()  
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Piter.pic")
  end
 
 -----------------------------------
 
  window:addChild(GUI.label(26, 13, window.width, window.height, 0x5A5A5A, w.." Nice")) 
  window:addChild(GUI.label(27, 14, window.width, window.height, 0x5A5A5A, "girl"))
  window:addChild(GUI.framedButton(27, 15, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Nice_girl.pic", "/MineOS/Pictures/Nice_girl.pic", "-FQ")
  computer=require("computer") computer.beep()
  computer=require("computer") computer.beep()  
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Nice_girl.pic")
  end
 
 -----------------------------------
 
  window:addChild(GUI.label(26, 20, window.width, window.height, 0x5A5A5A, w.." Win 10"))
  window:addChild(GUI.framedButton(27, 21, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Win_10.pic", "/MineOS/Pictures/Win_10.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Win_10.pic")
  end
 
 ----------------------------------
 
 window:addChild(GUI.label(38, 5, window.width, window.height, 0x5A5A5A, w.." Texture"))
  window:addChild(GUI.framedButton(38, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."texture.pic", "/MineOS/Pictures/texture.pic", "-FQ")
  computer=require("computer") computer.beep()
  computer=require("computer") computer.beep()  
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете texture.pic")
  end
 
 ----------------------------------
     
 window:addChild(GUI.label(38, 9, window.width, window.height, 0x5A5A5A, w.." Winter"))
 window:addChild(GUI.label(38, 10, window.width, window.height, 0x5A5A5A, "National"))
  window:addChild(GUI.framedButton(38, 11, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Winter_National.pic", "/MineOS/Pictures/Winter_National.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Winter_National.pic")
  end    
     
 ----------------------------------
 
 window:addChild(GUI.label(38, 14, window.width, window.height, 0x5A5A5A, w.." Car"))
  window:addChild(GUI.framedButton(38, 15, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Car.pic", "/MineOS/Pictures/Car.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Car.pic")
  end 
 
 ----------------------------------
 
 window:addChild(GUI.label(38, 18, window.width, window.height, 0x5A5A5A, w.." field"))
  window:addChild(GUI.framedButton(38, 19, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."field.pic", "/MineOS/Pictures/field.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете field.pic")
  end 
 
 ----------------------------------
 
 window:addChild(GUI.label(52, 5, window.width, window.height, 0x5A5A5A, w.." Colors"))
  window:addChild(GUI.framedButton(52, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Colors.pic", "/MineOS/Pictures/Colors.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Colors.pic")
  end 
 
 ----------------------------------
 
 window:addChild(GUI.label(52, 9, window.width, window.height, 0x5A5A5A, w.." CPU"))
  window:addChild(GUI.framedButton(52, 10, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."CPU.pic", "/MineOS/Pictures/CPU.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете CPU.pic")
  end 
 
 ----------------------------------
 
 window:addChild(GUI.label(52, 14, window.width, window.height, 0x5A5A5A, w.." Surgut"))
  window:addChild(GUI.framedButton(52, 15, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Surgut.pic", "/MineOS/Pictures/Surgut.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Surgut.pic")
  end 
 
 ---------------------------------
 
  window:addChild(GUI.label(52, 19, window.width, window.height, 0x5A5A5A, w.." Nizne-"))
  window:addChild(GUI.label(52, 20, window.width, window.height, 0x5A5A5A, "vartovck"))
  window:addChild(GUI.framedButton(52, 21, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Niznevartock.pic", "/MineOS/Pictures/Niznevartock.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Niznevartock.pic")
  end 
 
 ---------------------------------
 
 window:addChild(GUI.label(65, 5, window.width, window.height, 0x5A5A5A, w.." Forest"))
  window:addChild(GUI.framedButton(65, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Forest.pic", "/MineOS/Pictures/Forest.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Forest.pic")
  end 
 
 ---------------------------------
 
  window:addChild(GUI.label(65, 9, window.width, window.height, 0x5A5A5A, w.." Sea!"))
  window:addChild(GUI.framedButton(65, 10, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Sea-2.pic", "/MineOS/Pictures/Sea-2.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Sea-2.pic")
  end 
 
 ---------------------------------
 
 window:addChild(GUI.label(65, 13, window.width, window.height, 0x5A5A5A, w.." hard"))
 window:addChild(GUI.label(65, 14, window.width, window.height, 0x5A5A5A, "disk"))
  window:addChild(GUI.framedButton(65, 15, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Hard_disk.pic", "/MineOS/Pictures/Hard_disk.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Hard_disk.pic")
  end

 
 ---------------------------------
 
 window:addChild(GUI.label(65, 19, window.width, window.height, 0x5A5A5A, w.." Kiev")) --Це украина
  window:addChild(GUI.framedButton(65, 20, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Kiev.pic", "/MineOS/Pictures/Kiev.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Kiev.pic")
  end 
 
 ---------------------------------
 
  window:addChild(GUI.label(77, 5, window.width, window.height, 0x5A5A5A, w.." Color"))
  window:addChild(GUI.label(77, 6, window.width, window.height, 0x5A5A5A, "Skull"))
  window:addChild(GUI.framedButton(77, 7, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Color_Skull.pic", "/MineOS/Pictures/Color_Skull.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Color_Skull.pic")
  end 
 
 ---------------------------------
 
 window:addChild(GUI.label(75, 12, window.width, window.height, 0x5A5A5A, w.." winter"))
  window:addChild(GUI.label(79, 13, window.width, window.height, 0x5A5A5A, "fun"))
  window:addChild(GUI.framedButton(77, 14, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."winter_fun.pic", "/MineOS/Pictures/winter_fun.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете winter_fun.pic")
  end 
 
 ---------------------------------
 
 window:addChild(GUI.label(75, 17, window.width, window.height, 0x5A5A5A, w.." Squirrel"))
  window:addChild(GUI.framedButton(75, 18, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Squirrel.pic", "/MineOS/Pictures/Squirrel.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Squirrel.pic")
  end 
 
 ---------------------------------
 
  window:addChild(GUI.label(77, 22, window.width, window.height, 0x5A5A5A, w.." Ferret"))
  window:addChild(GUI.framedButton(77, 23, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Ferret.pic", "/MineOS/Pictures/Ferret.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Ferret.pic")
  end 
 
 --------------------------------
 
  window:addChild(GUI.label(2, 26, window.width, window.height, 0x5A5A5A, w.." Android P"))
  window:addChild(GUI.framedButton(2, 27, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Android_P.pic", "/MineOS/Pictures/Android_P.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Android_P.pic")
  end 
 
 --------------------------------
 
  window:addChild(GUI.label(17, 26, window.width, window.height, 0x5A5A5A, w.." Android O"))
  window:addChild(GUI.framedButton(18, 27, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Android_O.pic", "/MineOS/Pictures/Android_O.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Android_O.pic")
  end 
 
 --------------------------------
 
  window:addChild(GUI.label(32, 26, window.width, window.height, 0x5A5A5A, w.." Android N"))
  window:addChild(GUI.framedButton(32, 27, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Android_N.pic", "/MineOS/Pictures/Android_N.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Android_N.pic")
  end 
 
 --------------------------------
 
  window:addChild(GUI.label(48, 26, window.width, window.height, 0x5A5A5A, w.." Android M"))
  window:addChild(GUI.framedButton(48, 27, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Android_M.pic", "/MineOS/Pictures/Android_M.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Android_M.pic")
  end 
 
 --------------------------------
 
 window:addChild(GUI.label(3, 30, window.width, window.height, 0x5A5A5A, w.." Redstone"))
  window:addChild(GUI.framedButton(3, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Redstone.pic", "/MineOS/Pictures/Redstone.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Redstone.pic")
  end 
 
 --------------------------------
 
 window:addChild(GUI.label(18, 30, window.width, window.height, 0x5A5A5A, w.." Linux"))
  window:addChild(GUI.framedButton(18, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Linux.pic", "/MineOS/Pictures/Linux.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Linux.pic")
  end 
 
 --------------------------------
 
 window:addChild(GUI.label(29, 30, window.width, window.height, 0x5A5A5A, w.." Code"))
  window:addChild(GUI.framedButton(29, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Code.pic", "/MineOS/Pictures/Code.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Code.pic")
  end 
 
 --------------------------------
 
 window:addChild(GUI.label(43, 30, window.width, window.height, 0x5A5A5A, w.." Anonumys")) --анонимус отсосимус!
  window:addChild(GUI.framedButton(43, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Anonumys.pic", "/MineOS/Pictures/Anonumys.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Anonumys.pic")
  end 
 
 --------------------------------
 
  window:addChild(GUI.label(58, 30, window.width, window.height, 0x5A5A5A, w.." MineCraft")) 
  window:addChild(GUI.framedButton(58, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."MineCraft.pic", "/MineOS/Pictures/MineCraft.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете MineCraft.pic")
  end 
 
 --------------------------------
 
 window:addChild(GUI.label(73, 30, window.width, window.height, 0x5A5A5A, w.." Apple")) 
  window:addChild(GUI.framedButton(73, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()
  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Apple.pic", "/MineOS/Pictures/Apple.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Apple.pic")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(69, 26, window.width, window.height, 0x5A5A5A, w.." Trap Nation")) 
 window:addChild(GUI.framedButton(69, 27, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Trap_nation.pic", "/MineOS/Pictures/Trap_nation.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Trap_nation.pic")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(89, 5, window.width, window.height, 0x5A5A5A, w.." Ryzen")) 
 window:addChild(GUI.framedButton(89, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Ryzen.pic", "/MineOS/Pictures/Ryzen.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Ryzen.pic")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(88, 9, window.width, window.height, 0x5A5A5A, w.." Ryazan")) 
 window:addChild(GUI.framedButton(89, 10, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Ryazan.pic", "/MineOS/Pictures/Ryazan.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Ryzen.pic")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(86, 13, window.width, window.height, 0x5A5A5A, w.." Raspbery")) 
 window:addChild(GUI.framedButton(89, 14, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Raspberry.pic", "/MineOS/Pictures/Raspbery.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Raspbery.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(88, 17, window.width, window.height, 0x5A5A5A, w.." Firefox")) 
 window:addChild(GUI.framedButton(89, 18, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Firefox.pic", "/MineOS/Pictures/Firefox.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Firefox.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(88, 21, window.width, window.height, 0x5A5A5A, w.." Scrimer")) 
 window:addChild(GUI.framedButton(89, 22, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "тсс..")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Scrimer.pic", "/MineOS/Pictures/Scrimer.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Scrimer.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(88, 25, window.width, window.height, 0x5A5A5A, w.." Lox")) 
 window:addChild(GUI.framedButton(89, 26, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."lox.pic", "/MineOS/Pictures/Lox.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Lox.pic ")
  end 
 
 -------------------------------
 
  window:addChild(GUI.label(88, 29, window.width, window.height, 0x5A5A5A, w.." Anime")) 
 window:addChild(GUI.framedButton(89, 30, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Anime.pic", "/MineOS/Pictures/Anime.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Anime.pic ")
  end 
 
 -------------------------------
 
  window:addChild(GUI.label(100, 4, window.width, window.height, 0x5A5A5A, w.." sea")) 
  window:addChild(GUI.label(100, 5, window.width, window.height, 0x5A5A5A, "shell"))
 window:addChild(GUI.framedButton(100, 6, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."seashell.pic", "/MineOS/Pictures/seashell.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете seashell.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(100, 9, window.width, window.height, 0x5A5A5A, w.." ")) 
 window:addChild(GUI.label(100, 10, window.width, window.height, 0x5A5A5A, "Ice haze"))
 window:addChild(GUI.framedButton(100, 11, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Ice_haze.pic", "/MineOS/Pictures/Ice_haze.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Ice haze.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(100, 14, window.width, window.height, 0x5A5A5A, w.." ")) 
 window:addChild(GUI.label(100, 15, window.width, window.height, 0x5A5A5A, "Sea wave"))
 window:addChild(GUI.framedButton(100, 16, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Sea_wave.pic", "/MineOS/Pictures/Sea_wave.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Ice haze.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(101, 19, window.width, window.height, 0x5A5A5A, w.." "))
 window:addChild(GUI.label(101, 20, window.width, window.height, 0x5A5A5A, "3D CAT")) 
 window:addChild(GUI.framedButton(100, 21, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."3D_Cat.pic", "/MineOS/Pictures/3D_Cat.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Ice haze.pic ")
  end 
 
 -------------------------------
 
  window:addChild(GUI.label(100, 24, window.width, window.height, 0x5A5A5A, w.." ")) 
  window:addChild(GUI.label(100, 25, window.width, window.height, 0x5A5A5A, "GitHub"))
 window:addChild(GUI.framedButton(100, 26, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Github.pic", "/MineOS/Pictures/Github.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Github.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(100, 29, window.width, window.height, 0x5A5A5A, w.." Lake"))
 window:addChild(GUI.label(102, 30, window.width, window.height, 0x5A5A5A, "forest")) 
 window:addChild(GUI.framedButton(100, 31, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."lake_forest_mountains.pic", "/MineOS/Pictures/lake_forest_mountains.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете lake_forest_mountains.pic.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(110, 4, window.width, window.height, 0x5A5A5A, w.." Nvidia")) 
 window:addChild(GUI.framedButton(110, 5, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."Nvidia.pic", "/MineOS/Pictures/Nvidia.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете Nvidia.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(110, 9, window.width, window.height, 0x5A5A5A, w.." ")) 
 window:addChild(GUI.label(110, 10, window.width, window.height, 0x5A5A5A, "Navalny")) --Навальный заебал блять, в рекламе ютуба сука, минтинг завтра сука в Сургуте.
 window:addChild(GUI.framedButton(110, 11, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы вызвать наряд ФСБ, Настройки -> обои, выбираете Navalny.pic ")
  end 
 
 -------------------------------
 
 window:addChild(GUI.label(110, 14, window.width, window.height, 0x5A5A5A, w.." wave")) 
 window:addChild(GUI.label(110, 15, window.width, window.height, 0x5A5A5A, "in the ocean"))
 window:addChild(GUI.framedButton(110, 16, 9, 3, 0x5A5A5A, 0x5A5A5A, 0x880000, 0x880000, "Скачать")).onTouch = function()

  GUI.alert("не вынимайте, интернет карту во время скачиваний, это пройдет 1 секунды.")
  os.sleep(1.000)
   loadfile("/bin/wget.lua")(Host.."wave_in_the_ocean.pic", "/MineOS/Pictures/wave_in_the_ocean.pic", "-FQ")
  computer=require("computer") computer.beep() 
  computer=require("computer") computer.beep() 
   GUI.alert("Загрузка завершена! Чтобы поставить на рабочий стол, Настройки -> обои, выбираете wave_in_the_ocean.pic ")
  end 
 
 -------------------------------

  mainContainer:drawOnScreen()
  mainContainer:startEventHandling()
