execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
execute unless data storage rtwrapper:meta loaded run data merge storage rtwrapper:meta {version:"v1.0.1",id:"RTWrapper",type:"datapack",datapack_type:"library",status:"enabled"}
