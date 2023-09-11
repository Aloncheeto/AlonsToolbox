--IF YOU ARE GOING TO SKID YOU BETTER KNOW THAT MY CODE IS PROBABLY WORSE THAN YOURS, PLEASE TRY TO DO IT YOURSELF.
--AlonsToolbox 0.05
util.require_natives("natives-1681379138", "g-uno")

local selfs = menu.list(menu.my_root(), "Self")
local vehicle = menu.list(menu.my_root(), "Vehicles")
local interface = menu.list(menu.my_root(), "UI Tweaks")
local experiment = menu.list(menu.my_root(), "Experiments")
local credits = menu.list(menu.my_root(), "Credits")
--GLOBAR VARS (UPDATED EVERY TICK)--
util.create_tick_handler(function()
    music = GET_AUDIBLE_MUSIC_TRACK_TEXT_ID()
    ptr = entities.get_user_vehicle_as_pointer(true) 
    veh = entities.get_user_vehicle_as_handle(true)
end)
--SELF START--
selfs:action("The Third Way", {"itsasetup"}, "Tune in to LSRR ;)", function() SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_SAVE_MICHAEL_TREVOR", 1) end)
--VEHICLE STUFF START-
local windows = menu.list(vehicle, "Windows Management")
vehicle:slider("Set Car Dirtiness", {}, "", 0, 15, 0, 1, function(dirt) util.toast(dirt) SET_VEHICLE_DIRT_LEVEL(ptr, dirt) util.toast(GET_VEHICLE_DIRT_LEVEL(ptr)) end)
windows:toggle("Front Left Window", {"rolldownfl"},"", function() end)
windows:toggle("Front Right Window", {"rolldownfr"},"", function() end)
windows:toggle("Back Left Window", {"rolldownbl"}, "", function() end)
windows:toggle("Back Right Window", {"rolldownbr"}, "", function() end)
--EXPERIMENT START--
experiment:action("Cat Create", {}, "Testing ", function() util.requestmodel() entities.create_ped(1, util.joaat("a_c_cat_01"), players.get_position(players.user() ), 0)  end) --n
experiment:action("MusicTest", {}, "prints current music label  ", function() SET_ACHIEVEMENT_PROGRESS(0, 0) end) 
experiment:action("Current Vehicle Name", {}, "test", function() vehcur = entities.get_model_hash(ptr) finalstring = util.reverse_joaat(vehcur)  util.toast(finalstring) end) 
--CREDITS START--
credits:action("alon", {}, "bad coder", function() -- probably just beginner level but, ye ig bad coder lol
end)
credits:action("LNATIC", {}, "overall optimization of code.", function() -- big thanks. marked by optimizations marked by --n
end)
credits:action("Prisuhm", {}, "used some of his code for reference , pls dont kill me", function() --referencing from his code, since documentation isnt always that understandable
end)
credits:action("Sainan", {}, "For Providing Stand. the lua api, and a lot of resources for the modding community.", function() -- truly a statement 
end)
