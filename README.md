# Regeneration scripts

Bash regeneration scripts for minetest game.

## License

BSD, see LICENSE file for details

## Aviable games

### `hades_private_server.sh`

Script for regenerate SFENCE's Hades Revisited private server with mods.

#### Mods list (can be incomplete):

* adaptation modpack
* appliances
* basic_materials
* chair_lift
* church modpack
* composting
* feed_buckets
* hades_3dforniture
* hades_animalia
* hades_animal_pack modpack
* hades_aquaz
* hades_biofuel
* hades_compatibility
* hades_cooltrees modpack
* hades_cottages
* hades_darkage
* hades_extensionmods modpack
* hades_extraores
* hades_fire
* hades_garden_trowel
* hades_laboratory
* hades_mesecons modpack
* hades_paleotest
* hades_petz modpack
* hades_pkarcs modpack
* hades_ski
* hades_skinsdb
* hades_snow
* hades_technic modpack
* hades_tnt
* hades_travelnet
* hades_villagers modpack
* hades_xocean
* inspect_tool
* items_update
* morelights modpack
* painting
* palisade
* pole_scaffolding
* powered_tools
* power_generators
* rope_bridges
* sculpture
* sdwalls
* sfence_help
* skeletons
* spyglass
* wateringcan
* wield3d
* writing

### `hades_developing.sh`

Script for regenerate SFENCE's Hades Revisited developing configuration with mods. There is high risk of unfinished/incorrect functionality.

#### Mods list (can be incomplete):

* adaptation modpack
* appliances
* basic_materials
* chair_lift
* church_glass modpack
* cleanroom
* clothing_machines
* composting
* feed_buckets
* hades_animalia
* hades_animal_pack modpack
* hades_aotearoa
* hades_aquaz
* hades_australia
* hades_beautiflowers
* hades_biofuel
* hades_compatibility
* hades_cooltrees modpack
* hades_cottages
* hades_darkage
* hades_extensionmods modpack
* hades_extraores
* hades_fire
* hades_fossils
* hades_garden_trowel
* hades_greek
* hades_laboratory
* hades_mesecons modpack
* hades_metamorphosis
* hades_paleotest
* hades_petz modpack
* hades_pkarcs modpack
* hades_ski
* hades_skinsdb
* hades_snow
* hades_technic modpack
* hades_tnt
* hades_travelnet
* hades_villagers modpack
* hades_xocean
* laptop
* morelights modpack
* painting
* palisade
* pipeworks
* pole_scaffolding
* powered_tools
* power_generators
* rope_bridges
* sculpture
* sdwalls
* sfence_help
* skeletons
* spyglass
* super_computer
* wateringcan
* wield3d
* writing

## System requirements

This is tested only under Linux. But it should be runnable from other unix systems without bigger problems and also from windows via mingw/cygwin or git bash environment.

## Using

It is HIGLY recomended to backup your game/mods directory before updating them by this generic scripts.

Game regeneration can force update game and mods obtained via ContentDB. Game and mods obtained via GIT should not be force removed and updated. But it can change HEADS of these mods by using git merge and git checkout.

This script is target to help you with moving you game with mods from one server to another or similar. It may require some manual actions after running it. Specially when script hints that some mods has been checkouted in unexpected git commit.

### Examples for `hades_developing`:

Replace `hades_developing` with different GAMEID if you want or need. 

#### Partially independent separate solution (only mod in world):

RECOMENDED if you do not want risk owerwritting/changind already installed mods in your home direcotry.

  * `git clone https://github.com/sfence/hades_revisited.git /home/USERNAME/.minetest/games/hades_developing`
  * Create minetest world with WORLDNAME for gameid `hades_developing` (not start/run it) -> Can be checked/edited in world.mt file in WORLDNAME directory, if gameid is correct.
  * `hades_developing.sh hades_developing /home/USERNAME/.minetest/games /home/USERNAME/.minetest/worlds/WORLDNAME/worldmods`
  * play world...

#### Optimal solution for new user or users who know what they are doing:
  * `hades_developing.sh hades_developing /home/USERNAME/.minetest/games /home/USERNAME/.minetest/mods`
  * create world, enable mods and play...
  
#### Independent separate solution (game in world):
  * create world and do not start/play it.
  * `hades_developing.sh game /home/USERNAME/.minetest/worlds/WORLDNAME /home/USERNAME/.minetest/worlds/WORLDNAME/game/mods`
  * start minetest server and connect to game...

## Script generation

1) You need pythoni 3 with lupa package.
2) Add mod `sfence_help` into you minetest game. You can get this mod from `https://github.com/sfence/sfence_help`.
3) Start minetest world with `sfence_help` mod.
4) Get debug privilege.
5) Use in-game command `print_mods target_file_name`
6) Use script `YOUR_MODS_DIR/sfence_help/scripts/generate_game_bash_script.py YOUR_WORLD_DIR/target_file_name output_bash_script_name follow_commit`
  Etc.: `/home/sfence/.minetest/mods/sfence_help/scripts/generate_game_bash_script.py /home/sfence/.minetest/worlds/hades_master/mods_file /home/sfence/hades_developing.sh follow_commit`

