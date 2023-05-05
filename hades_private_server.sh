#!/bin/bash

if [ $# -le 2 ]; then
  echo "Usage:"
  echo "  sfence_server.sh game_id game_dir mods_dir"
  exit
fi

gameid=$1
gamedir=$2
modsdir=$3
echo "Game will be cloned into $gamedir"

# game
echo "Getting game"
# /home/sfence/.minetest/games/hades_sinki
repodir=$gamedir/$gameid
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_revisited.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout c2d136c750be2dd29f0946cd5d1d47ff85c37d25


# mods hades_mesecons_lamp, hades_mesecons_detector, hades_mesecons_walllever, hades_mesecons_button, hades_mesecons_mvps, hades_mesecons_wires, hades_mesecons_receiver, hades_mesecons_alias, hades_mesecons_luacontroller, hades_mesecons_materials, hades_mesecons, hades_mesecons_switch, hades_mesecons_microcontroller, hades_mesecons_solarpanel, hades_mesecons_stickyblocks, hades_mesecons_fpga, hades_mesecons_blinkyplant, hades_mesecons_insulated, hades_mesecons_noteblock, hades_mesecons_random, hades_mesecons_torch, hades_mesecons_pressureplates, hades_mesecons_powerplant, hades_mesecons_pistons, hades_mesecons_movestones, hades_mesecons_lightstone, hades_mesecons_hydroturbine, hades_mesecons_gates, hades_mesecons_doors, hades_mesecons_commandblock, hades_mesecons_delayer, hades_mesecons_extrawires
echo "Getting mods hades_mesecons_lamp, hades_mesecons_detector, hades_mesecons_walllever, hades_mesecons_button, hades_mesecons_mvps, hades_mesecons_wires, hades_mesecons_receiver, hades_mesecons_alias, hades_mesecons_luacontroller, hades_mesecons_materials, hades_mesecons, hades_mesecons_switch, hades_mesecons_microcontroller, hades_mesecons_solarpanel, hades_mesecons_stickyblocks, hades_mesecons_fpga, hades_mesecons_blinkyplant, hades_mesecons_insulated, hades_mesecons_noteblock, hades_mesecons_random, hades_mesecons_torch, hades_mesecons_pressureplates, hades_mesecons_powerplant, hades_mesecons_pistons, hades_mesecons_movestones, hades_mesecons_lightstone, hades_mesecons_hydroturbine, hades_mesecons_gates, hades_mesecons_doors, hades_mesecons_commandblock, hades_mesecons_delayer, hades_mesecons_extrawires"
# /home/sfence/.minetest/mods/hades_mesecons
repodir=$modsdir/hades_mesecons
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/mesecons.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 9ca7f6ce6b712d82dec8aba383b52968ac4c43e7

# mods hades_castle_lighting, hades_default, hades_extravessels, hades_extrafarming, hades_moretools, hades_clothing, hades_fachwerk, hades_glass_stained, hades_bucket, hades_animals, hades_craftguide2, hades_digtron, hades_castle_masonry, hades_rocks, hades_xpanes, hades_castle_gates, hades_moreblocks, hades_extramaterials, hades_boost_cart, hades_horse
echo "Getting mods hades_castle_lighting, hades_default, hades_extravessels, hades_extrafarming, hades_moretools, hades_clothing, hades_fachwerk, hades_glass_stained, hades_bucket, hades_animals, hades_craftguide2, hades_digtron, hades_castle_masonry, hades_rocks, hades_xpanes, hades_castle_gates, hades_moreblocks, hades_extramaterials, hades_boost_cart, hades_horse"
# /home/sfence/.minetest/mods/hades_extensionmods
repodir=$modsdir/hades_extensionmods
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_extensionmods.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 40dcf37df6a8b4bdd17daaaa5bc1f810c1b21b6d
git -C $repodir submodule init
git -C $repodir submodule update

# mods church_candles, display_lib, church_podium, church_bell, church_grave, font_lib, church_cross, church_glass, church_pews, church_altar
echo "Getting mods church_candles, display_lib, church_podium, church_bell, church_grave, font_lib, church_cross, church_glass, church_pews, church_altar"
# /home/sfence/.minetest/mods/church
repodir=$modsdir/church
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/church.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 70e7a5c85ea5fb0181078416ea9e46771d78d87c

# mods hades_mr_goat, hades_bat, hades_birds, hades_fish, hades_deer, hades_turtles, hades_giraffe, hades_better_rat, hades_butterfly, hades_jellyfish, hades_wolf, hades_walrus, hades_snowman, hades_doomed, hades_bear, hades_bugslive
echo "Getting mods hades_mr_goat, hades_bat, hades_birds, hades_fish, hades_deer, hades_turtles, hades_giraffe, hades_better_rat, hades_butterfly, hades_jellyfish, hades_wolf, hades_walrus, hades_snowman, hades_doomed, hades_bear, hades_bugslive"
# /home/sfence/.minetest/mods/hades_animal_pack
repodir=$modsdir/hades_animal_pack
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/mobs_animal_pack.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 057f8b94475e2f80becff03b265ebf94b93d022b

# mods adaptation_techage, adaptation_cool_trees, adaptation_minetest_game, adaptation_pipeworks, adaptation_rubber, adaptation_farlands_reloaded, adaptation_moretrees, adaptation_elepower, adaptation_farming_redo, adaptation_hades_revisited, adaptation_mesecons, adaptation_technic, adaptation_xocean, adaptation_hades_extensionmods, adaptation_power_generators, adaptation_mineclone, adaptation_biofuel, adaptation_lib, adaptation_basic_materials
echo "Getting mods adaptation_techage, adaptation_cool_trees, adaptation_minetest_game, adaptation_pipeworks, adaptation_rubber, adaptation_farlands_reloaded, adaptation_moretrees, adaptation_elepower, adaptation_farming_redo, adaptation_hades_revisited, adaptation_mesecons, adaptation_technic, adaptation_xocean, adaptation_hades_extensionmods, adaptation_power_generators, adaptation_mineclone, adaptation_biofuel, adaptation_lib, adaptation_basic_materials"
# /home/sfence/.minetest/mods/adaptation_modpack
repodir=$modsdir/adaptation_modpack
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/adaptation_modpack "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 2237772c1851729d59f6ba0c465b3b89cea3836e

# mods hades_ski
echo "Getting mods hades_ski"
# /home/sfence/.minetest/mods/hades_ski
repodir=$modsdir/hades_ski
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/Ski.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 413d3c504834cafa872065768f8d712b44802898

# mods hades_skinsdb
echo "Getting mods hades_skinsdb"
# /home/sfence/.minetest/mods/hades_skinsdb
repodir=$modsdir/hades_skinsdb
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/skinsdb.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 46f07a6553daee2a36bafc4bce9307e22c96acad

# mods hades_building_sign, hades_villages
echo "Getting mods hades_building_sign, hades_villages"
# /home/sfence/.minetest/mods/hades_villages
repodir=$modsdir/hades_villages
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/working_villages.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 58f965e08399b344ea5cd4c4cc36f46ac7378917
git -C $repodir submodule init
git -C $repodir submodule update

# mods hades_pomegranate, hades_bamboo, hades_larch, hades_baldcypress, hades_cherrytree, hades_birch, hades_ebony, hades_sequoia, hades_cacaotree, hades_maple, hades_oak, hades_willow, hades_clementinetree, hades_pineapple, hades_jacaranda, hades_palm, hades_mahogany, hades_lemontree, hades_chestnuttree, hades_hollytree, hades_plumtree
echo "Getting mods hades_pomegranate, hades_bamboo, hades_larch, hades_baldcypress, hades_cherrytree, hades_birch, hades_ebony, hades_sequoia, hades_cacaotree, hades_maple, hades_oak, hades_willow, hades_clementinetree, hades_pineapple, hades_jacaranda, hades_palm, hades_mahogany, hades_lemontree, hades_chestnuttree, hades_hollytree, hades_plumtree"
# /home/sfence/.minetest/mods/hades_cool_trees
repodir=$modsdir/hades_cool_trees
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/cool_trees.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 1335abd7f788a9ca2e69d237d7607f6f319b27d1

# mods appliances
echo "Getting mods appliances"
# /home/sfence/.minetest/mods/appliances
repodir=$modsdir/appliances
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/appliances.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a1ba954053487600c1a34466bf378040359e01b4

# mods hades_pkarcs, hades_pkarcs_doors, hades_pkarcs_doors3
echo "Getting mods hades_pkarcs, hades_pkarcs_doors, hades_pkarcs_doors3"
# /home/sfence/.minetest/mods/hades_pkarcs
repodir=$modsdir/hades_pkarcs
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/pkarcs.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 19dc373c71a4b867970790bc0b656c60f6349e61

# mods morelights_vintage, morelights_modern, morelights, morelights_extras
echo "Getting mods morelights_vintage, morelights_modern, morelights, morelights_extras"
# /home/sfence/.minetest/mods/morelights
repodir=$modsdir/morelights
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/morelights.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout ee8facbfe0af1c6086209f3e1f84ec2482eff3d8

# mods hades_paleotest
echo "Getting mods hades_paleotest"
# /home/sfence/.minetest/mods/hades_paleotest
repodir=$modsdir/hades_paleotest
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/paleotest "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a3fff382c04b51f920fe5243c639c314b8d39531

# mods hades_fire
echo "Getting mods hades_fire"
# /home/sfence/.minetest/mods/hades_fire
repodir=$modsdir/hades_fire
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_fire.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 982845b06ff21dfcafceb882bab4ff98ff2df5a7

# mods hades_technic_worldgen, hades_concrete, hades_technic_chests, hades_technic, hades_extranodes, hades_wrench, hades_technic_cnc
echo "Getting mods hades_technic_worldgen, hades_concrete, hades_technic_chests, hades_technic, hades_extranodes, hades_wrench, hades_technic_cnc"
# /home/sfence/.minetest/mods/hades_technic
repodir=$modsdir/hades_technic
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/technic "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout b95e15b5d469029c8984a933f5e0ceda4b21fbae

# mods basic_materials
echo "Getting mods basic_materials"
# /home/sfence/.minetest/mods/basic_materials
repodir=$modsdir/basic_materials
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/basic_materials "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout bb54e0dfe463b0530e30c6942c3b2865e6f1609d
git -C $repodir submodule init
git -C $repodir submodule update

# mods hades_aquaz
echo "Getting mods hades_aquaz"
# /home/sfence/.minetest/mods/hades_aquaz
repodir=$modsdir/hades_aquaz
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/aquaz.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 395f7762ceb450f5c620161205bab1bfe099b436

# mods hades_darkage
echo "Getting mods hades_darkage"
# /home/sfence/.minetest/mods/hades_darkage
repodir=$modsdir/hades_darkage
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/darkage.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout f9ac3408053d132934d50f64409a59307e5d0e35

# mods hades_xocean
echo "Getting mods hades_xocean"
# /home/sfence/.minetest/mods/hades_xocean
repodir=$modsdir/hades_xocean
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/xocean.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout ebf33ca12acf56f98d9866f1ca10a23acd0c0e5e

# mods sdwalls
echo "Getting mods sdwalls"
# /home/sfence/.minetest/mods/sdwalls
repodir=$modsdir/sdwalls
if [ ! -d "$repodir" ]; then
  git clone https://gitlab.com/SFENCE/sdwalls.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 037a23b7b9397b8d31a1206d1c67b34b9d41b024

# mods writing
echo "Getting mods writing"
# /home/sfence/.minetest/mods/writing
repodir=$modsdir/writing
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/writing.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7428b5391bd5e4246a028aaf48b67cd76bcbecff

# mods skeletons
echo "Getting mods skeletons"
# /home/sfence/.minetest/mods/skeletons
repodir=$modsdir/skeletons
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/skeletons.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a6ebfea7cedecfe4a1073cbefa9696a1691ec0bb

# mods hades_extraores
echo "Getting mods hades_extraores"
# /home/sfence/.minetest/mods/hades_extraores
repodir=$modsdir/hades_extraores
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_exraores.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 6ec3350177fe6735c569feb6c1d0fda1c960a009

# mods wield3d
echo "Getting mods wield3d"
# /home/sfence/.minetest/mods/wield3d
repodir=$modsdir/wield3d
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/wield3d.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 668ea2682a89d6f6a6a6fdc2326b1db6d69257ac

# mods hades_mokapi, hades_bale, hades_petz
echo "Getting mods hades_mokapi, hades_bale, hades_petz"
# /home/sfence/.minetest/mods/hades_petz
repodir=$modsdir/hades_petz
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/petz.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 79cf5c10af6cc95d893d164cb02d2b74668fb064

# mods chair_lift
echo "Getting mods chair_lift"
# /home/sfence/.minetest/mods/chair_lift
repodir=$modsdir/chair_lift
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/chair_lift.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 5f2d3652206245f809d868e01fdd729f920a8cdb

# mods sfence_help
echo "Getting mods sfence_help"
# /home/sfence/.minetest/mods/sfence_help
repodir=$modsdir/sfence_help
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/sfence_help.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 2c3b0b5f7689975cbfd1cc33299d2e914e02ea31

# mods hades_tnt
echo "Getting mods hades_tnt"
# /home/sfence/.minetest/mods/hades_tnt
repodir=$modsdir/hades_tnt
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_tnt.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 013f2128d0eff9ec4b254585fa1df9d89838d452

# mods hades_biofuel
echo "Getting mods hades_biofuel"
# /home/sfence/.minetest/mods/hades_biofuel
repodir=$modsdir/hades_biofuel
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/Biofuel.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 8ca4deab5268e7aa7cc51c041569543ca38ef6f6

# mods hades_cottages
echo "Getting mods hades_cottages"
# /home/sfence/.minetest/mods/hades_cottages
repodir=$modsdir/hades_cottages
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/cottages.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7d1c51174072eed91f593b40f67a405b9babf9c3

# mods inspect_tool
echo "Getting mods inspect_tool"
# /home/sfence/.minetest/mods/inspect_tool
repodir=$modsdir/inspect_tool
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/inspect_tool.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 8d1c929333252dd2c0abcf0d09dacc96db231ad2

# mods feed_buckets
echo "Getting mods feed_buckets"
# /home/sfence/.minetest/mods/feed_buckets
repodir=$modsdir/feed_buckets
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/feed_buckets "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 039bf57d5ae7cf42bc9881234197f6317f8eeced

# mods pole_scaffolding
echo "Getting mods pole_scaffolding"
# /home/sfence/.minetest/mods/pole_scaffolding
repodir=$modsdir/pole_scaffolding
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/pole_scaffolding.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout d52b4f3c4d3a9f54b9bc48e596d7486e9d7483be

# mods powered_tools
echo "Getting mods powered_tools"
# /home/sfence/.minetest/mods/powered_tools
repodir=$modsdir/powered_tools
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/powered_tools.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 254c033c28db39ed4e91ea6b74f9702990061af6

# mods hades_travelnet
echo "Getting mods hades_travelnet"
# /home/sfence/.minetest/mods/hades_travelnet
repodir=$modsdir/hades_travelnet
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/travelnet.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout c197fd4807156eab3d843387986355ff13e58fdd

# mods rope_bridges
echo "Getting mods rope_bridges"
# /home/sfence/.minetest/mods/rope_bridges
repodir=$modsdir/rope_bridges
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/rope_bridges.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7c77c13ad13e8ef2a36eb7043b719ed25e529c70

# mods spyglass
echo "Getting mods spyglass"
# /home/sfence/.minetest/mods/spyglass
repodir=$modsdir/spyglass
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/spyglass.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 0be414e39cb707e2d7c132ab74e1d01f25429c0c

# mods wateringcan
echo "Getting mods wateringcan"
# /home/sfence/.minetest/mods/wateringcan
repodir=$modsdir/wateringcan
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/wateringcan.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a360698809d992decd1117262fd15c8900faa873

# mods palisade
echo "Getting mods palisade"
# /home/sfence/.minetest/mods/palisade
repodir=$modsdir/palisade
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/palisade.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 9d4721a80f044f93c88b0c7c08b69e1d16d12a92

# mods sculpture
echo "Getting mods sculpture"
# /home/sfence/.minetest/mods/sculpture
repodir=$modsdir/sculpture
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/sculpture.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout db57ee880c19b312eba366ea0c2d0d7dc0f8ee47

# mods power_generators
echo "Getting mods power_generators"
# /home/sfence/.minetest/mods/power_generators
repodir=$modsdir/power_generators
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/power_generators.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 5366e8107eade47482cf27836f035fae47908145

# mods painting
echo "Getting mods painting"
# /home/sfence/.minetest/mods/painting
repodir=$modsdir/painting
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/painting.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 77f5748a031ebd17471cfdc8c30e445d8566e7e6

# mods composting
echo "Getting mods composting"
# /home/sfence/.minetest/mods/composting
repodir=$modsdir/composting
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/composting.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout c40c96877def63fbe77a7fdd254d7379cb20f102

# mods hades_3dforniture
echo "Getting mods hades_3dforniture"
# /home/sfence/.minetest/mods/hades_3dforniture
repodir=$modsdir/hades_3dforniture
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/3dforniture.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a2d0d4cf2f5c9ab28b73ec5f071e42ccaf62b882

# mods items_update
echo "Getting mods items_update"
# /home/sfence/.minetest/mods/items_update
repodir=$modsdir/items_update
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/items_update.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 31fb16e840377b99b8268483113c7551ee423760

# mods hades_laboratory
echo "Getting mods hades_laboratory"
# /home/sfence/.minetest/mods/hades_laboratory
repodir=$modsdir/hades_laboratory
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_laboratory.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout ac7d343bf0f5fb2af5649d827b9c546885f07b62

# mods hades_garden_trowel
echo "Getting mods hades_garden_trowel"
# /home/sfence/.minetest/mods/hades_garden_trowel
repodir=$modsdir/hades_garden_trowel
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_garden_trowel.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 229ae4935b7dd4893bb51aae5003c4c98bf8f2ee

# mods hades_snow
echo "Getting mods hades_snow"
# /home/sfence/.minetest/mods/hades_snow
repodir=$modsdir/hades_snow
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_snow.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 12b6feb19daddcfa9374831761f9ea977cb76d1e

# mods hades_compatibility
echo "Getting mods hades_compatibility"
# /home/sfence/.minetest/mods/hades_compatibility
repodir=$modsdir/hades_compatibility
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_compatibility.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 9573583d00c10556fd9eeced57f0f042c2df8674

# mods hades_animalia
echo "Getting mods hades_animalia"
# /home/sfence/.minetest/mods/hades_animalia
repodir=$modsdir/hades_animalia
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/animalia.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 5fa0aef2117aaf4c73da056afc47429ee4b9eff3

# mod mob_core
echo "Getting mod mob_core"
moddir=$modsdir/mob_core
wget -O "$modsdir/mob_core.zip" https://content.minetest.net/packages/ElCeejo/mob_core/download/
if [ -f "$modsdir/mob_core.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/mob_core.zip"
  rm "$modsdir/mob_core.zip"
fi

# mod whitelist
echo "Getting mod whitelist"
moddir=$modsdir/creatura
wget -O "$modsdir/whitelist.zip" https://content.minetest.net/packages/Zughy/whitelist/download/
if [ -f "$modsdir/whitelist.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/whitelist.zip"
  rm "$modsdir/whitelist.zip"
fi

# mod creatura
echo "Getting mod creatura"
moddir=$modsdir/creatura
wget -O "$modsdir/creatura.zip" https://content.minetest.net/packages/ElCeejo/creatura/download/
if [ -f "$modsdir/creatura.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/creatura.zip"
  rm "$modsdir/creatura.zip"
fi

# mod tubelib2
echo "Getting mod tubelib2"
moddir=$modsdir/tubelib2
wget -O "$modsdir/tubelib2.zip" https://content.minetest.net/packages/joe7575/tubelib2/download/
if [ -f "$modsdir/tubelib2.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/tubelib2.zip"
  rm "$modsdir/tubelib2.zip"
fi

# mod wielded_light
echo "Getting mod wielded_light"
moddir=$modsdir/wielded_light
wget -O "$modsdir/wielded_light.zip" https://content.minetest.net/packages/bell07/wielded_light/download/
if [ -f "$modsdir/wielded_light.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/wielded_light.zip"
  rm "$modsdir/wielded_light.zip"
fi

# mod modutil
echo "Getting mod modutil"
moddir=$modsdir/modutil
wget -O "$modsdir/modutil.zip" https://content.minetest.net/packages/theFox/modutil/download/
if [ -f "$modsdir/modutil.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/modutil.zip"
  rm "$modsdir/modutil.zip"
fi

# mod mobkit
echo "Getting mod mobkit"
moddir=$modsdir/mobkit
wget -O "$modsdir/mobkit.zip" https://content.minetest.net/packages/Termos/mobkit/download/
if [ -f "$modsdir/mobkit.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/mobkit.zip"
  rm "$modsdir/mobkit.zip"
fi

# mod headanim
echo "Getting mod headanim"
moddir=$modsdir/headanim
wget -O "$modsdir/headanim.zip" https://content.minetest.net/packages/Lone_Wolf/headanim/download/
if [ -f "$modsdir/headanim.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/headanim.zip"
  rm "$modsdir/headanim.zip"
fi

# game commit check
repodir=$gamedir/$gameid
if [ $(git -C $repodir rev-parse HEAD) != 973a6a4733c25279238cfb4e6efcef09ad5ae49a ]; then
  echo "game is checkouted in unexpected commit."
fi

# mods hades_mesecons_lamp, hades_mesecons_detector, hades_mesecons_walllever, hades_mesecons_button, hades_mesecons_mvps, hades_mesecons_wires, hades_mesecons_receiver, hades_mesecons_alias, hades_mesecons_luacontroller, hades_mesecons_materials, hades_mesecons, hades_mesecons_switch, hades_mesecons_microcontroller, hades_mesecons_solarpanel, hades_mesecons_stickyblocks, hades_mesecons_fpga, hades_mesecons_blinkyplant, hades_mesecons_insulated, hades_mesecons_noteblock, hades_mesecons_random, hades_mesecons_torch, hades_mesecons_pressureplates, hades_mesecons_powerplant, hades_mesecons_pistons, hades_mesecons_movestones, hades_mesecons_lightstone, hades_mesecons_hydroturbine, hades_mesecons_gates, hades_mesecons_doors, hades_mesecons_commandblock, hades_mesecons_delayer, hades_mesecons_extrawires commit check
repodir=$modsdir/hades_mesecons
if [ $(git -C $repodir rev-parse HEAD) != 9ca7f6ce6b712d82dec8aba383b52968ac4c43e7 ]; then
  echo "hades_mesecons is checkouted in unexpected commit."
fi

# mods hades_castle_lighting, hades_default, hades_extravessels, hades_extrafarming, hades_moretools, hades_clothing, hades_fachwerk, hades_glass_stained, hades_bucket, hades_animals, hades_craftguide2, hades_digtron, hades_castle_masonry, hades_rocks, hades_xpanes, hades_castle_gates, hades_moreblocks, hades_extramaterials, hades_boost_cart, hades_horse commit check
repodir=$modsdir/hades_extensionmods
if [ $(git -C $repodir rev-parse HEAD) != 40dcf37df6a8b4bdd17daaaa5bc1f810c1b21b6d ]; then
  echo "hades_extensionmods is checkouted in unexpected commit."
fi

# mods church_candles, display_lib, church_podium, church_bell, church_grave, font_lib, church_cross, church_glass, church_pews, church_altar commit check
repodir=$modsdir/church
if [ $(git -C $repodir rev-parse HEAD) != 70e7a5c85ea5fb0181078416ea9e46771d78d87c ]; then
  echo "church is checkouted in unexpected commit."
fi

# mods hades_mr_goat, hades_bat, hades_birds, hades_fish, hades_deer, hades_turtles, hades_giraffe, hades_better_rat, hades_butterfly, hades_jellyfish, hades_wolf, hades_walrus, hades_snowman, hades_doomed, hades_bear, hades_bugslive commit check
repodir=$modsdir/hades_animal_pack
if [ $(git -C $repodir rev-parse HEAD) != 057f8b94475e2f80becff03b265ebf94b93d022b ]; then
  echo "hades_animal_pack is checkouted in unexpected commit."
fi

# mods adaptation_techage, adaptation_cool_trees, adaptation_minetest_game, adaptation_pipeworks, adaptation_rubber, adaptation_farlands_reloaded, adaptation_moretrees, adaptation_elepower, adaptation_farming_redo, adaptation_hades_revisited, adaptation_mesecons, adaptation_technic, adaptation_xocean, adaptation_hades_extensionmods, adaptation_power_generators, adaptation_mineclone, adaptation_biofuel, adaptation_lib, adaptation_basic_materials commit check
repodir=$modsdir/adaptation_modpack
if [ $(git -C $repodir rev-parse HEAD) != 2237772c1851729d59f6ba0c465b3b89cea3836e ]; then
  echo "adaptation_modpack is checkouted in unexpected commit."
fi

# mods hades_ski commit check
repodir=$modsdir/hades_ski
if [ $(git -C $repodir rev-parse HEAD) != 413d3c504834cafa872065768f8d712b44802898 ]; then
  echo "hades_ski is checkouted in unexpected commit."
fi

# mods hades_skinsdb commit check
repodir=$modsdir/hades_skinsdb
if [ $(git -C $repodir rev-parse HEAD) != 46f07a6553daee2a36bafc4bce9307e22c96acad ]; then
  echo "hades_skinsdb is checkouted in unexpected commit."
fi

# mods hades_building_sign, hades_villages commit check
repodir=$modsdir/hades_villages
if [ $(git -C $repodir rev-parse HEAD) != 58f965e08399b344ea5cd4c4cc36f46ac7378917 ]; then
  echo "hades_villages is checkouted in unexpected commit."
fi

# mods hades_pomegranate, hades_bamboo, hades_larch, hades_baldcypress, hades_cherrytree, hades_birch, hades_ebony, hades_sequoia, hades_cacaotree, hades_maple, hades_oak, hades_willow, hades_clementinetree, hades_pineapple, hades_jacaranda, hades_palm, hades_mahogany, hades_lemontree, hades_chestnuttree, hades_hollytree, hades_plumtree commit check
repodir=$modsdir/hades_cool_trees
if [ $(git -C $repodir rev-parse HEAD) != 1335abd7f788a9ca2e69d237d7607f6f319b27d1 ]; then
  echo "hades_cool_trees is checkouted in unexpected commit."
fi

# mods appliances commit check
repodir=$modsdir/appliances
if [ $(git -C $repodir rev-parse HEAD) != a1ba954053487600c1a34466bf378040359e01b4 ]; then
  echo "appliances is checkouted in unexpected commit."
fi

# mods hades_pkarcs, hades_pkarcs_doors, hades_pkarcs_doors3 commit check
repodir=$modsdir/hades_pkarcs
if [ $(git -C $repodir rev-parse HEAD) != 19dc373c71a4b867970790bc0b656c60f6349e61 ]; then
  echo "hades_pkarcs is checkouted in unexpected commit."
fi

# mods morelights_vintage, morelights_modern, morelights, morelights_extras commit check
repodir=$modsdir/morelights
if [ $(git -C $repodir rev-parse HEAD) != ee8facbfe0af1c6086209f3e1f84ec2482eff3d8 ]; then
  echo "morelights is checkouted in unexpected commit."
fi

# mods hades_paleotest commit check
repodir=$modsdir/hades_paleotest
if [ $(git -C $repodir rev-parse HEAD) != a3fff382c04b51f920fe5243c639c314b8d39531 ]; then
  echo "hades_paleotest is checkouted in unexpected commit."
fi

# mods hades_fire commit check
repodir=$modsdir/hades_fire
if [ $(git -C $repodir rev-parse HEAD) != 982845b06ff21dfcafceb882bab4ff98ff2df5a7 ]; then
  echo "hades_fire is checkouted in unexpected commit."
fi

# mods hades_technic_worldgen, hades_concrete, hades_technic_chests, hades_technic, hades_extranodes, hades_wrench, hades_technic_cnc commit check
repodir=$modsdir/hades_technic
if [ $(git -C $repodir rev-parse HEAD) != b95e15b5d469029c8984a933f5e0ceda4b21fbae ]; then
  echo "hades_technic is checkouted in unexpected commit."
fi

# mods basic_materials commit check
repodir=$modsdir/basic_materials
if [ $(git -C $repodir rev-parse HEAD) != bb54e0dfe463b0530e30c6942c3b2865e6f1609d ]; then
  echo "basic_materials is checkouted in unexpected commit."
fi

# mods hades_aquaz commit check
repodir=$modsdir/hades_aquaz
if [ $(git -C $repodir rev-parse HEAD) != 395f7762ceb450f5c620161205bab1bfe099b436 ]; then
  echo "hades_aquaz is checkouted in unexpected commit."
fi

# mods hades_darkage commit check
repodir=$modsdir/hades_darkage
if [ $(git -C $repodir rev-parse HEAD) != f9ac3408053d132934d50f64409a59307e5d0e35 ]; then
  echo "hades_darkage is checkouted in unexpected commit."
fi

# mods hades_xocean commit check
repodir=$modsdir/hades_xocean
if [ $(git -C $repodir rev-parse HEAD) != ebf33ca12acf56f98d9866f1ca10a23acd0c0e5e ]; then
  echo "hades_xocean is checkouted in unexpected commit."
fi

# mods sdwalls commit check
repodir=$modsdir/sdwalls
if [ $(git -C $repodir rev-parse HEAD) != 037a23b7b9397b8d31a1206d1c67b34b9d41b024 ]; then
  echo "sdwalls is checkouted in unexpected commit."
fi

# mods writing commit check
repodir=$modsdir/writing
if [ $(git -C $repodir rev-parse HEAD) != 7428b5391bd5e4246a028aaf48b67cd76bcbecff ]; then
  echo "writing is checkouted in unexpected commit."
fi

# mods skeletons commit check
repodir=$modsdir/skeletons
if [ $(git -C $repodir rev-parse HEAD) != a6ebfea7cedecfe4a1073cbefa9696a1691ec0bb ]; then
  echo "skeletons is checkouted in unexpected commit."
fi

# mods hades_extraores commit check
repodir=$modsdir/hades_extraores
if [ $(git -C $repodir rev-parse HEAD) != 6ec3350177fe6735c569feb6c1d0fda1c960a009 ]; then
  echo "hades_extraores is checkouted in unexpected commit."
fi

# mods wield3d commit check
repodir=$modsdir/wield3d
if [ $(git -C $repodir rev-parse HEAD) != 668ea2682a89d6f6a6a6fdc2326b1db6d69257ac ]; then
  echo "wield3d is checkouted in unexpected commit."
fi

# mods hades_mokapi, hades_bale, hades_petz commit check
repodir=$modsdir/hades_petz
if [ $(git -C $repodir rev-parse HEAD) != 79cf5c10af6cc95d893d164cb02d2b74668fb064 ]; then
  echo "hades_petz is checkouted in unexpected commit."
fi

# mods chair_lift commit check
repodir=$modsdir/chair_lift
if [ $(git -C $repodir rev-parse HEAD) != 5f2d3652206245f809d868e01fdd729f920a8cdb ]; then
  echo "chair_lift is checkouted in unexpected commit."
fi

# mods sfence_help commit check
repodir=$modsdir/sfence_help
if [ $(git -C $repodir rev-parse HEAD) != 2c3b0b5f7689975cbfd1cc33299d2e914e02ea31 ]; then
  echo "sfence_help is checkouted in unexpected commit."
fi

# mods hades_tnt commit check
repodir=$modsdir/hades_tnt
if [ $(git -C $repodir rev-parse HEAD) != 013f2128d0eff9ec4b254585fa1df9d89838d452 ]; then
  echo "hades_tnt is checkouted in unexpected commit."
fi

# mods hades_biofuel commit check
repodir=$modsdir/hades_biofuel
if [ $(git -C $repodir rev-parse HEAD) != 8ca4deab5268e7aa7cc51c041569543ca38ef6f6 ]; then
  echo "hades_biofuel is checkouted in unexpected commit."
fi

# mods hades_cottages commit check
repodir=$modsdir/hades_cottages
if [ $(git -C $repodir rev-parse HEAD) != 7d1c51174072eed91f593b40f67a405b9babf9c3 ]; then
  echo "hades_cottages is checkouted in unexpected commit."
fi

# mods inspect_tool commit check
repodir=$modsdir/inspect_tool
if [ $(git -C $repodir rev-parse HEAD) != 8d1c929333252dd2c0abcf0d09dacc96db231ad2 ]; then
  echo "inspect_tool is checkouted in unexpected commit."
fi

# mods feed_buckets commit check
repodir=$modsdir/feed_buckets
if [ $(git -C $repodir rev-parse HEAD) != 039bf57d5ae7cf42bc9881234197f6317f8eeced ]; then
  echo "feed_buckets is checkouted in unexpected commit."
fi

# mods pole_scaffolding commit check
repodir=$modsdir/pole_scaffolding
if [ $(git -C $repodir rev-parse HEAD) != d52b4f3c4d3a9f54b9bc48e596d7486e9d7483be ]; then
  echo "pole_scaffolding is checkouted in unexpected commit."
fi

# mods powered_tools commit check
repodir=$modsdir/powered_tools
if [ $(git -C $repodir rev-parse HEAD) != 254c033c28db39ed4e91ea6b74f9702990061af6 ]; then
  echo "powered_tools is checkouted in unexpected commit."
fi

# mods hades_travelnet commit check
repodir=$modsdir/hades_travelnet
if [ $(git -C $repodir rev-parse HEAD) != c197fd4807156eab3d843387986355ff13e58fdd ]; then
  echo "hades_travelnet is checkouted in unexpected commit."
fi

# mods rope_bridges commit check
repodir=$modsdir/rope_bridges
if [ $(git -C $repodir rev-parse HEAD) != 7c77c13ad13e8ef2a36eb7043b719ed25e529c70 ]; then
  echo "rope_bridges is checkouted in unexpected commit."
fi

# mods spyglass commit check
repodir=$modsdir/spyglass
if [ $(git -C $repodir rev-parse HEAD) != 0be414e39cb707e2d7c132ab74e1d01f25429c0c ]; then
  echo "spyglass is checkouted in unexpected commit."
fi

# mods wateringcan commit check
repodir=$modsdir/wateringcan
if [ $(git -C $repodir rev-parse HEAD) != a360698809d992decd1117262fd15c8900faa873 ]; then
  echo "wateringcan is checkouted in unexpected commit."
fi

# mods palisade commit check
repodir=$modsdir/palisade
if [ $(git -C $repodir rev-parse HEAD) != 9d4721a80f044f93c88b0c7c08b69e1d16d12a92 ]; then
  echo "palisade is checkouted in unexpected commit."
fi

# mods sculpture commit check
repodir=$modsdir/sculpture
if [ $(git -C $repodir rev-parse HEAD) != db57ee880c19b312eba366ea0c2d0d7dc0f8ee47 ]; then
  echo "sculpture is checkouted in unexpected commit."
fi

# mods power_generators commit check
repodir=$modsdir/power_generators
if [ $(git -C $repodir rev-parse HEAD) != 5366e8107eade47482cf27836f035fae47908145 ]; then
  echo "power_generators is checkouted in unexpected commit."
fi

# mods painting commit check
repodir=$modsdir/painting
if [ $(git -C $repodir rev-parse HEAD) != 77f5748a031ebd17471cfdc8c30e445d8566e7e6 ]; then
  echo "painting is checkouted in unexpected commit."
fi

# mods composting commit check
repodir=$modsdir/composting
if [ $(git -C $repodir rev-parse HEAD) != c40c96877def63fbe77a7fdd254d7379cb20f102 ]; then
  echo "composting is checkouted in unexpected commit."
fi

# mods hades_3dforniture commit check
repodir=$modsdir/hades_3dforniture
if [ $(git -C $repodir rev-parse HEAD) != a2d0d4cf2f5c9ab28b73ec5f071e42ccaf62b882 ]; then
  echo "hades_3dforniture is checkouted in unexpected commit."
fi

# mods items_update commit check
repodir=$modsdir/items_update
if [ $(git -C $repodir rev-parse HEAD) != 31fb16e840377b99b8268483113c7551ee423760 ]; then
  echo "items_update is checkouted in unexpected commit."
fi

# mods hades_laboratory commit check
repodir=$modsdir/hades_laboratory
if [ $(git -C $repodir rev-parse HEAD) != ac7d343bf0f5fb2af5649d827b9c546885f07b62 ]; then
  echo "hades_laboratory is checkouted in unexpected commit."
fi

# mods hades_garden_trowel commit check
repodir=$modsdir/hades_garden_trowel
if [ $(git -C $repodir rev-parse HEAD) != 229ae4935b7dd4893bb51aae5003c4c98bf8f2ee ]; then
  echo "hades_garden_trowel is checkouted in unexpected commit."
fi

# mods hades_snow commit check
repodir=$modsdir/hades_snow
if [ $(git -C $repodir rev-parse HEAD) != 12b6feb19daddcfa9374831761f9ea977cb76d1e ]; then
  echo "hades_snow is checkouted in unexpected commit."
fi

# mods hades_compatibility commit check
repodir=$modsdir/hades_compatibility
if [ $(git -C $repodir rev-parse HEAD) != 9573583d00c10556fd9eeced57f0f042c2df8674 ]; then
  echo "hades_compatibility is checkouted in unexpected commit."
fi

# mods hades_animalia commit check
repodir=$modsdir/hades_animalia
if [ $(git -C $repodir rev-parse HEAD) != 5fa0aef2117aaf4c73da056afc47429ee4b9eff3 ]; then
  echo "hades_animalia is checkouted in unexpected commit."
fi

