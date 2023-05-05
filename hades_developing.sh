#!/bin/bash

if [ $# -le 2 ]; then
  echo "Usage:"
  echo "  /src/GNU_sources/minetest/custom/minetest_game_regeneration_scripts/hades_developing.sh game_id game_dir mods_dir"
  exit
fi

gameid=$1
gamedir=$2
modsdir=$3
echo "Game will be cloned into $gamedir"

# game
echo "Getting game"
# /src/GNU_sources/minetest/games/hades_master
repodir=$gamedir/$gameid
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_revisited.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 25f2a2cd6a19a04d347ce3d5df7e83452a542ec8


# mods rope_bridges
echo "Getting mods rope_bridges"
# /src/GNU_sources/minetest/mods/rope_bridges
repodir=$modsdir/rope_bridges
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/rope_bridges.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7c77c13ad13e8ef2a36eb7043b719ed25e529c70

# mods church_glass, font_lib, church_candles, church_podium, church_cross, display_lib, church_bell, church_altar, church_pews, church_grave
echo "Getting mods church_glass, font_lib, church_candles, church_podium, church_cross, display_lib, church_bell, church_altar, church_pews, church_grave"
# /src/GNU_sources/minetest/mods/church
repodir=$modsdir/church
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/church.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 70e7a5c85ea5fb0181078416ea9e46771d78d87c

# mods hades_bucket, hades_extravessels, hades_craftguide2, hades_clothing, hades_default, hades_fachwerk, hades_extramaterials, hades_castle_masonry, hades_moretools, hades_rocks, hades_glass_stained, hades_xpanes, hades_horse, hades_castle_lighting, hades_moreblocks, hades_extrafarming, hades_animals, hades_boost_cart, hades_digtron, hades_castle_gates
echo "Getting mods hades_bucket, hades_extravessels, hades_craftguide2, hades_clothing, hades_default, hades_fachwerk, hades_extramaterials, hades_castle_masonry, hades_moretools, hades_rocks, hades_glass_stained, hades_xpanes, hades_horse, hades_castle_lighting, hades_moreblocks, hades_extrafarming, hades_animals, hades_boost_cart, hades_digtron, hades_castle_gates"
# /src/GNU_sources/minetest/mods/hades_extensionmods
repodir=$modsdir/hades_extensionmods
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_extensionmods.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 40dcf37df6a8b4bdd17daaaa5bc1f810c1b21b6d
git -C $repodir submodule init
git -C $repodir submodule update

# mods hades_laboratory
echo "Getting mods hades_laboratory"
# /src/GNU_sources/minetest/mods/hades_laboratory
repodir=$modsdir/hades_laboratory
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_laboratory.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout c0d78d20418305420e594422e10b7a66c0b8fc5f

# mods hades_mesecons_random, hades_mesecons_lamp, hades_mesecons_switch, hades_mesecons_extrawires, hades_mesecons_wires, hades_mesecons_luacontroller, hades_mesecons_torch, hades_mesecons_blinkyplant, hades_mesecons_gates, hades_mesecons_microcontroller, hades_mesecons_lightstone, hades_mesecons_pressureplates, hades_mesecons_commandblock, hades_mesecons_walllever, hades_mesecons_materials, hades_mesecons_delayer, hades_mesecons_movestones, hades_mesecons_pistons, hades_mesecons_receiver, hades_mesecons_stickyblocks, hades_mesecons_powerplant, hades_mesecons_mvps, hades_mesecons_insulated, hades_mesecons_noteblock, hades_mesecons_hydroturbine, hades_mesecons_fpga, hades_mesecons_detector, hades_mesecons_button, hades_mesecons, hades_mesecons_alias, hades_mesecons_doors, hades_mesecons_solarpanel
echo "Getting mods hades_mesecons_random, hades_mesecons_lamp, hades_mesecons_switch, hades_mesecons_extrawires, hades_mesecons_wires, hades_mesecons_luacontroller, hades_mesecons_torch, hades_mesecons_blinkyplant, hades_mesecons_gates, hades_mesecons_microcontroller, hades_mesecons_lightstone, hades_mesecons_pressureplates, hades_mesecons_commandblock, hades_mesecons_walllever, hades_mesecons_materials, hades_mesecons_delayer, hades_mesecons_movestones, hades_mesecons_pistons, hades_mesecons_receiver, hades_mesecons_stickyblocks, hades_mesecons_powerplant, hades_mesecons_mvps, hades_mesecons_insulated, hades_mesecons_noteblock, hades_mesecons_hydroturbine, hades_mesecons_fpga, hades_mesecons_detector, hades_mesecons_button, hades_mesecons, hades_mesecons_alias, hades_mesecons_doors, hades_mesecons_solarpanel"
# /src/GNU_sources/minetest/mods/hades_mesecons
repodir=$modsdir/hades_mesecons
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/mesecons.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 9ca7f6ce6b712d82dec8aba383b52968ac4c43e7

# mods adaptation_minetest_game, adaptation_basic_materials, adaptation_biofuel, adaptation_rubber, adaptation_moretrees, adaptation_farlands_reloaded, adaptation_hades_revisited, adaptation_cool_trees, adaptation_technic, adaptation_techage, adaptation_elepower, adaptation_power_generators, adaptation_farming_redo, adaptation_hades_extensionmods, adaptation_xocean, adaptation_mineclone, adaptation_mesecons, adaptation_pipeworks, adaptation_lib
echo "Getting mods adaptation_minetest_game, adaptation_basic_materials, adaptation_biofuel, adaptation_rubber, adaptation_moretrees, adaptation_farlands_reloaded, adaptation_hades_revisited, adaptation_cool_trees, adaptation_technic, adaptation_techage, adaptation_elepower, adaptation_power_generators, adaptation_farming_redo, adaptation_hades_extensionmods, adaptation_xocean, adaptation_mineclone, adaptation_mesecons, adaptation_pipeworks, adaptation_lib"
# /src/GNU_sources/minetest/mods/adaptation_modpack
repodir=$modsdir/adaptation_modpack
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/adaptation_modpack.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 620f24a1cdee5b1afd7783459d6900abf2f5f533

# mods powered_tools
echo "Getting mods powered_tools"
# /src/GNU_sources/minetest/mods/powered_tools
repodir=$modsdir/powered_tools
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/powered_tools.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 254c033c28db39ed4e91ea6b74f9702990061af6

# mods hades_technic_cnc, hades_technic_chests, hades_technic, hades_wrench, hades_technic_worldgen, hades_concrete, hades_extranodes
echo "Getting mods hades_technic_cnc, hades_technic_chests, hades_technic, hades_wrench, hades_technic_worldgen, hades_concrete, hades_extranodes"
# /src/GNU_sources/minetest/mods/hades_technic
repodir=$modsdir/hades_technic
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/technic "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 8237a900774d699eb2b3450e3e55600dd9120de0

# mods hades_oak, hades_willow, hades_ebony, hades_palm, hades_maple, hades_lemontree, hades_baldcypress, hades_cherrytree, hades_chestnuttree, hades_bamboo, hades_birch, hades_cacaotree, hades_mahogany, hades_hollytree, hades_pineapple, hades_larch, hades_clementinetree, hades_jacaranda, hades_pomegranate, hades_sequoia, hades_plumtree
echo "Getting mods hades_oak, hades_willow, hades_ebony, hades_palm, hades_maple, hades_lemontree, hades_baldcypress, hades_cherrytree, hades_chestnuttree, hades_bamboo, hades_birch, hades_cacaotree, hades_mahogany, hades_hollytree, hades_pineapple, hades_larch, hades_clementinetree, hades_jacaranda, hades_pomegranate, hades_sequoia, hades_plumtree"
# /src/GNU_sources/minetest/mods/hades_cool_trees
repodir=$modsdir/hades_cool_trees
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/cool_trees.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 1335abd7f788a9ca2e69d237d7607f6f319b27d1

# mods wateringcan
echo "Getting mods wateringcan"
# /src/GNU_sources/minetest/mods/wateringcan
repodir=$modsdir/wateringcan
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/wateringcan.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a360698809d992decd1117262fd15c8900faa873

# mods hades_paleotest
echo "Getting mods hades_paleotest"
# /src/GNU_sources/minetest/mods/hades_paleotest
repodir=$modsdir/hades_paleotest
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/paleotest "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 115750195ca7304900f6b8c0bcfdf0fbcb66fb1e

# mods hades_fossils
echo "Getting mods hades_fossils"
# /src/GNU_sources/minetest/mods/hades_fossils
repodir=$modsdir/hades_fossils
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_fossils.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 55d666739b15a9b6dce960276da9f8d1ca7f876f

# mods hades_biofuel
echo "Getting mods hades_biofuel"
# /src/GNU_sources/minetest/mods/hades_biofuel
repodir=$modsdir/hades_biofuel
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/Biofuel.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 8ca4deab5268e7aa7cc51c041569543ca38ef6f6

# mods skeletons
echo "Getting mods skeletons"
# /src/GNU_sources/minetest/mods/skeletons
repodir=$modsdir/skeletons
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/skeletons.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 3a6cde508c079896ab1478443b35a7b4214b3347

# mods hades_greek
echo "Getting mods hades_greek"
# /src/GNU_sources/minetest/mods/hades_greek
repodir=$modsdir/hades_greek
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/greek "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout e2f0acdc05803263692445d3ca65817e0865d740

# mods appliances
echo "Getting mods appliances"
# /src/GNU_sources/minetest/mods/appliances
repodir=$modsdir/appliances
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/appliances.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout a1ba954053487600c1a34466bf378040359e01b4

# mods hades_darkage
echo "Getting mods hades_darkage"
# /src/GNU_sources/minetest/mods/hades_darkage
repodir=$modsdir/hades_darkage
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/darkage.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout f9ac3408053d132934d50f64409a59307e5d0e35

# mods cleanroom
echo "Getting mods cleanroom"
# /src/GNU_sources/minetest/mods/cleanroom
repodir=$modsdir/cleanroom
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/cleanroom.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout fe10a2390f7e8a84066ea7862c0579414c333889

# mods hades_garden_trowel
echo "Getting mods hades_garden_trowel"
# /src/GNU_sources/minetest/mods/hades_garden_trowel
repodir=$modsdir/hades_garden_trowel
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_garden_trowel.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 229ae4935b7dd4893bb51aae5003c4c98bf8f2ee

# mods hades_building_sign, hades_villages
echo "Getting mods hades_building_sign, hades_villages"
# /src/GNU_sources/minetest/mods/hades_villages
repodir=$modsdir/hades_villages
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/working_villages.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 58f965e08399b344ea5cd4c4cc36f46ac7378917
git -C $repodir submodule init
git -C $repodir submodule update

# mods hades_bale, hades_mokapi, hades_petz
echo "Getting mods hades_bale, hades_mokapi, hades_petz"
# /src/GNU_sources/minetest/mods/hades_petz
repodir=$modsdir/hades_petz
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/petz.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 79cf5c10af6cc95d893d164cb02d2b74668fb064

# mods hades_metamorphosis
echo "Getting mods hades_metamorphosis"
# /src/GNU_sources/minetest/mods/hades_metamorphosis
repodir=$modsdir/hades_metamorphosis
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_metamorphosis.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7c8cbf52fbc059a818f92a6c2ec356c5f9f3dd5d

# mods hades_pkarcs_doors, hades_pkarcs, hades_pkarcs_doors3
echo "Getting mods hades_pkarcs_doors, hades_pkarcs, hades_pkarcs_doors3"
# /src/GNU_sources/minetest/mods/hades_pkarcs
repodir=$modsdir/hades_pkarcs
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/pkarcs.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 19dc373c71a4b867970790bc0b656c60f6349e61

# mods hades_deer, hades_butterfly, hades_doomed, hades_better_rat, hades_bugslive, hades_turtles, hades_bear, hades_birds, hades_bat, hades_wolf, hades_walrus, hades_mr_goat, hades_snowman, hades_giraffe, hades_jellyfish, hades_fish
echo "Getting mods hades_deer, hades_butterfly, hades_doomed, hades_better_rat, hades_bugslive, hades_turtles, hades_bear, hades_birds, hades_bat, hades_wolf, hades_walrus, hades_mr_goat, hades_snowman, hades_giraffe, hades_jellyfish, hades_fish"
# /src/GNU_sources/minetest/mods/hades_animal_pack
repodir=$modsdir/hades_animal_pack
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/mobs_animal_pack.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 057f8b94475e2f80becff03b265ebf94b93d022b

# mods morelights_modern, morelights_extras, morelights_vintage, morelights
echo "Getting mods morelights_modern, morelights_extras, morelights_vintage, morelights"
# /src/GNU_sources/minetest/mods/morelights
repodir=$modsdir/morelights
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/morelights.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout ee8facbfe0af1c6086209f3e1f84ec2482eff3d8

# mods hades_aotearoa
echo "Getting mods hades_aotearoa"
# /src/GNU_sources/minetest/mods/hades_aotearoa
repodir=$modsdir/hades_aotearoa
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/aotearoa "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 6b4e5d2020b3a11ac3bebfce92892aa51e98c5fc

# mods composting
echo "Getting mods composting"
# /src/GNU_sources/minetest/mods/composting
repodir=$modsdir/composting
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/composting.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout d790a3dc9e4c572b7d0c441fae8517e7c2d134b4

# mods painting
echo "Getting mods painting"
# /src/GNU_sources/minetest/mods/painting
repodir=$modsdir/painting
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/painting.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 77f5748a031ebd17471cfdc8c30e445d8566e7e6

# mods super_computer
echo "Getting mods super_computer"
# /src/GNU_sources/minetest/mods/super_computer
repodir=$modsdir/super_computer
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/super_computer.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 62a389a4cfd3f17ec3f7b743b4bba11962136f1d

# mods feed_buckets
echo "Getting mods feed_buckets"
# /src/GNU_sources/minetest/mods/feed_buckets
repodir=$modsdir/feed_buckets
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/feed_buckets.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 039bf57d5ae7cf42bc9881234197f6317f8eeced

# mods hades_skinsdb
echo "Getting mods hades_skinsdb"
# /src/GNU_sources/minetest/mods/hades_skinsdb
repodir=$modsdir/hades_skinsdb
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/skinsdb.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 46f07a6553daee2a36bafc4bce9307e22c96acad

# mods clothing_machines
echo "Getting mods clothing_machines"
# /src/GNU_sources/minetest/mods/clothing_machines
repodir=$modsdir/clothing_machines
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/clothing_machines.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 69d2e9f381498306509c898fa2bda6f895e402ac

# mods hades_beautiflowers
echo "Getting mods hades_beautiflowers"
# /src/GNU_sources/minetest/mods/hades_beautiflowers
repodir=$modsdir/hades_beautiflowers
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/beautiflowers.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7cb4ab5928c7526be3fce558742b675ef297d1f9

# mods hades_aquaz
echo "Getting mods hades_aquaz"
# /src/GNU_sources/minetest/mods/hades_aquaz
repodir=$modsdir/hades_aquaz
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/aquaz.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 395f7762ceb450f5c620161205bab1bfe099b436

# mods hades_fire
echo "Getting mods hades_fire"
# /src/GNU_sources/minetest/mods/hades_fire
repodir=$modsdir/hades_fire
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_fire.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 982845b06ff21dfcafceb882bab4ff98ff2df5a7

# mods writing
echo "Getting mods writing"
# /src/GNU_sources/minetest/mods/writing
repodir=$modsdir/writing
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/writing.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout b98c5f7eeff125714a3602017ae04cae69edad4d

# mods hades_ski
echo "Getting mods hades_ski"
# /src/GNU_sources/minetest/mods/hades_ski
repodir=$modsdir/hades_ski
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/Ski.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 413d3c504834cafa872065768f8d712b44802898

# mods wield3d
echo "Getting mods wield3d"
# /src/GNU_sources/minetest/mods/wield3d
repodir=$modsdir/wield3d
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/wield3d.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 668ea2682a89d6f6a6a6fdc2326b1db6d69257ac

# mods hades_extraores
echo "Getting mods hades_extraores"
# /src/GNU_sources/minetest/mods/hades_extraores
repodir=$modsdir/hades_extraores
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_exraores.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout b34c719ccf122d2aeb8759535ad3fac613d015ea

# mods sfence_help
echo "Getting mods sfence_help"
# /src/GNU_sources/minetest/mods/sfence_help
repodir=$modsdir/sfence_help
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/sfence_help.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 2c3b0b5f7689975cbfd1cc33299d2e914e02ea31

# mods sdwalls
echo "Getting mods sdwalls"
# /src/GNU_sources/minetest/mods/sdwalls
repodir=$modsdir/sdwalls
if [ ! -d "$repodir" ]; then
  git clone https://gitlab.com/SFENCE/sdwalls.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 037a23b7b9397b8d31a1206d1c67b34b9d41b024

# mods sculpture
echo "Getting mods sculpture"
# /src/GNU_sources/minetest/mods/sculpture
repodir=$modsdir/sculpture
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/sculpture.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout db57ee880c19b312eba366ea0c2d0d7dc0f8ee47

# mods power_generators
echo "Getting mods power_generators"
# /src/GNU_sources/minetest/mods/power_generators
repodir=$modsdir/power_generators
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/power_generators.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 5366e8107eade47482cf27836f035fae47908145

# mods pole_scaffolding
echo "Getting mods pole_scaffolding"
# /src/GNU_sources/minetest/mods/pole_scaffolding
repodir=$modsdir/pole_scaffolding
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/pole_scaffolding.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout d52b4f3c4d3a9f54b9bc48e596d7486e9d7483be

# mods pipeworks
echo "Getting mods pipeworks"
# /src/GNU_sources/minetest/mods/pipeworks
repodir=$modsdir/pipeworks
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/pipeworks.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout e17eb5971664e0141fb794610df35ade2d880099

# mods palisade
echo "Getting mods palisade"
# /src/GNU_sources/minetest/mods/palisade
repodir=$modsdir/palisade
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/palisade.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 0380307e054745325ca607ee5f134215e3700157

# mods spyglass
echo "Getting mods spyglass"
# /src/GNU_sources/minetest/mods/spyglass
repodir=$modsdir/spyglass
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/spyglass.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 0be414e39cb707e2d7c132ab74e1d01f25429c0c

# mods basic_materials
echo "Getting mods basic_materials"
# /src/GNU_sources/minetest/mods/basic_materials
repodir=$modsdir/basic_materials
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/basic_materials "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 6146d180bdc53720bc63f2e741b1c8954cfa2ea9
git -C $repodir submodule init
git -C $repodir submodule update

# mods laptop
echo "Getting mods laptop"
# /src/GNU_sources/minetest/mods/laptop
repodir=$modsdir/laptop
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/laptop.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 3e10782c9ccf2684f11948c430343b49c287eabd

# mods hades_compatibility
echo "Getting mods hades_compatibility"
# /src/GNU_sources/minetest/mods/hades_compatibility
repodir=$modsdir/hades_compatibility
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_compatibility.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 9573583d00c10556fd9eeced57f0f042c2df8674

# mods hades_animalia
echo "Getting mods hades_animalia"
# /src/GNU_sources/minetest/mods/hades_animalia
repodir=$modsdir/hades_animalia
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/animalia.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 5fa0aef2117aaf4c73da056afc47429ee4b9eff3

# mods hades_cottages
echo "Getting mods hades_cottages"
# /src/GNU_sources/minetest/mods/hades_cottages
repodir=$modsdir/hades_cottages
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/cottages.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 7d1c51174072eed91f593b40f67a405b9babf9c3

# mods hades_travelnet
echo "Getting mods hades_travelnet"
# /src/GNU_sources/minetest/mods/hades_travelnet
repodir=$modsdir/hades_travelnet
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/travelnet.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout c197fd4807156eab3d843387986355ff13e58fdd

# mods chair_lift
echo "Getting mods chair_lift"
# /src/GNU_sources/minetest/mods/chair_lift
repodir=$modsdir/chair_lift
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/chair_lift.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 5f2d3652206245f809d868e01fdd729f920a8cdb

# mods hades_tnt
echo "Getting mods hades_tnt"
# /src/GNU_sources/minetest/mods/hades_tnt
repodir=$modsdir/hades_tnt
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_tnt.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 013f2128d0eff9ec4b254585fa1df9d89838d452

# mods hades_snow
echo "Getting mods hades_snow"
# /src/GNU_sources/minetest/mods/hades_snow
repodir=$modsdir/hades_snow
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/hades_snow.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 12b6feb19daddcfa9374831761f9ea977cb76d1e

# mods hades_xocean
echo "Getting mods hades_xocean"
# /src/GNU_sources/minetest/mods/hades_xocean
repodir=$modsdir/hades_xocean
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/xocean.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout ebf33ca12acf56f98d9866f1ca10a23acd0c0e5e

# mods hades_australia
echo "Getting mods hades_australia"
# /src/GNU_sources/minetest/mods/hades_australia
repodir=$modsdir/hades_australia
if [ ! -d "$repodir" ]; then
  git clone https://github.com/sfence/australia.git "$repodir"
else
  git -C $repodir fetch origin
fi
git -C $repodir checkout 1bc1624de7832c0041d0e27ef01e6078df3b1b22

# mod creatura
echo "Getting mod creatura"
moddir=$modsdir/creatura
wget -O "$modsdir/creatura.zip" https://content.minetest.net/packages/ElCeejo/creatura/download/
if [ -f "$modsdir/creatura.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/creatura.zip"
  rm "$modsdir/creatura.zip"
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
# mod xmaps
echo "Getting mod xmaps"
moddir=$modsdir/xmaps
wget -O "$modsdir/xmaps.zip" https://content.minetest.net/packages/erlehmann/xmaps/download/
if [ -f "$modsdir/xmaps.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/xmaps.zip"
  rm "$modsdir/xmaps.zip"
fi
# mod schemedit
echo "Getting mod schemedit"
moddir=$modsdir/schemedit
wget -O "$modsdir/schemedit.zip" https://content.minetest.net/packages/Wuzzy/schemedit/download/
if [ -f "$modsdir/schemedit.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/schemedit.zip"
  rm "$modsdir/schemedit.zip"
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
# mod tga_encoder
echo "Getting mod tga_encoder"
moddir=$modsdir/tga_encoder
wget -O "$modsdir/tga_encoder.zip" https://content.minetest.net/packages/erlehmann/tga_encoder/download/
if [ -f "$modsdir/tga_encoder.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/tga_encoder.zip"
  rm "$modsdir/tga_encoder.zip"
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
# mod mobkit
echo "Getting mod mobkit"
moddir=$modsdir/mobkit
wget -O "$modsdir/mobkit.zip" https://content.minetest.net/packages/Termos/mobkit/download/
if [ -f "$modsdir/mobkit.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/mobkit.zip"
  rm "$modsdir/mobkit.zip"
fi
# mod mob_core
echo "Getting mod mob_core"
moddir=$modsdir/mob_core
wget -O "$modsdir/mob_core.zip" https://content.minetest.net/packages/ElCeejo/mob_core/download/
if [ -f "$modsdir/mob_core.zip" ]; then
  rm -fr "$moddir"
  unzip -d "$modsdir" "$modsdir/mob_core.zip"
  rm "$modsdir/mob_core.zip"
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
# game commit check
repodir=$gamedir/$gameid
if [ $(git -C $repodir rev-parse HEAD) != bcc1ce9849d16ba7fbac8df8288aa8923ed590e9 ]; then
  echo "game is checkouted in unexpected commit."
fi

# mods rope_bridges commit check
repodir=$modsdir/rope_bridges
if [ $(git -C $repodir rev-parse HEAD) != 7c77c13ad13e8ef2a36eb7043b719ed25e529c70 ]; then
  echo "rope_bridges is checkouted in unexpected commit."
fi

# mods church_glass, font_lib, church_candles, church_podium, church_cross, display_lib, church_bell, church_altar, church_pews, church_grave commit check
repodir=$modsdir/church
if [ $(git -C $repodir rev-parse HEAD) != 70e7a5c85ea5fb0181078416ea9e46771d78d87c ]; then
  echo "church is checkouted in unexpected commit."
fi

# mods hades_bucket, hades_extravessels, hades_craftguide2, hades_clothing, hades_default, hades_fachwerk, hades_extramaterials, hades_castle_masonry, hades_moretools, hades_rocks, hades_glass_stained, hades_xpanes, hades_horse, hades_castle_lighting, hades_moreblocks, hades_extrafarming, hades_animals, hades_boost_cart, hades_digtron, hades_castle_gates commit check
repodir=$modsdir/hades_extensionmods
if [ $(git -C $repodir rev-parse HEAD) != 40dcf37df6a8b4bdd17daaaa5bc1f810c1b21b6d ]; then
  echo "hades_extensionmods is checkouted in unexpected commit."
fi

# mods hades_laboratory commit check
repodir=$modsdir/hades_laboratory
if [ $(git -C $repodir rev-parse HEAD) != c0d78d20418305420e594422e10b7a66c0b8fc5f ]; then
  echo "hades_laboratory is checkouted in unexpected commit."
fi

# mods hades_mesecons_random, hades_mesecons_lamp, hades_mesecons_switch, hades_mesecons_extrawires, hades_mesecons_wires, hades_mesecons_luacontroller, hades_mesecons_torch, hades_mesecons_blinkyplant, hades_mesecons_gates, hades_mesecons_microcontroller, hades_mesecons_lightstone, hades_mesecons_pressureplates, hades_mesecons_commandblock, hades_mesecons_walllever, hades_mesecons_materials, hades_mesecons_delayer, hades_mesecons_movestones, hades_mesecons_pistons, hades_mesecons_receiver, hades_mesecons_stickyblocks, hades_mesecons_powerplant, hades_mesecons_mvps, hades_mesecons_insulated, hades_mesecons_noteblock, hades_mesecons_hydroturbine, hades_mesecons_fpga, hades_mesecons_detector, hades_mesecons_button, hades_mesecons, hades_mesecons_alias, hades_mesecons_doors, hades_mesecons_solarpanel commit check
repodir=$modsdir/hades_mesecons
if [ $(git -C $repodir rev-parse HEAD) != 9ca7f6ce6b712d82dec8aba383b52968ac4c43e7 ]; then
  echo "hades_mesecons is checkouted in unexpected commit."
fi

# mods adaptation_minetest_game, adaptation_basic_materials, adaptation_biofuel, adaptation_rubber, adaptation_moretrees, adaptation_farlands_reloaded, adaptation_hades_revisited, adaptation_cool_trees, adaptation_technic, adaptation_techage, adaptation_elepower, adaptation_power_generators, adaptation_farming_redo, adaptation_hades_extensionmods, adaptation_xocean, adaptation_mineclone, adaptation_mesecons, adaptation_pipeworks, adaptation_lib commit check
repodir=$modsdir/adaptation_modpack
if [ $(git -C $repodir rev-parse HEAD) != 620f24a1cdee5b1afd7783459d6900abf2f5f533 ]; then
  echo "adaptation_modpack is checkouted in unexpected commit."
fi

# mods powered_tools commit check
repodir=$modsdir/powered_tools
if [ $(git -C $repodir rev-parse HEAD) != 254c033c28db39ed4e91ea6b74f9702990061af6 ]; then
  echo "powered_tools is checkouted in unexpected commit."
fi

# mods hades_technic_cnc, hades_technic_chests, hades_technic, hades_wrench, hades_technic_worldgen, hades_concrete, hades_extranodes commit check
repodir=$modsdir/hades_technic
if [ $(git -C $repodir rev-parse HEAD) != 8237a900774d699eb2b3450e3e55600dd9120de0 ]; then
  echo "hades_technic is checkouted in unexpected commit."
fi

# mods hades_oak, hades_willow, hades_ebony, hades_palm, hades_maple, hades_lemontree, hades_baldcypress, hades_cherrytree, hades_chestnuttree, hades_bamboo, hades_birch, hades_cacaotree, hades_mahogany, hades_hollytree, hades_pineapple, hades_larch, hades_clementinetree, hades_jacaranda, hades_pomegranate, hades_sequoia, hades_plumtree commit check
repodir=$modsdir/hades_cool_trees
if [ $(git -C $repodir rev-parse HEAD) != 1335abd7f788a9ca2e69d237d7607f6f319b27d1 ]; then
  echo "hades_cool_trees is checkouted in unexpected commit."
fi

# mods wateringcan commit check
repodir=$modsdir/wateringcan
if [ $(git -C $repodir rev-parse HEAD) != a360698809d992decd1117262fd15c8900faa873 ]; then
  echo "wateringcan is checkouted in unexpected commit."
fi

# mods hades_paleotest commit check
repodir=$modsdir/hades_paleotest
if [ $(git -C $repodir rev-parse HEAD) != 115750195ca7304900f6b8c0bcfdf0fbcb66fb1e ]; then
  echo "hades_paleotest is checkouted in unexpected commit."
fi

# mods hades_fossils commit check
repodir=$modsdir/hades_fossils
if [ $(git -C $repodir rev-parse HEAD) != 55d666739b15a9b6dce960276da9f8d1ca7f876f ]; then
  echo "hades_fossils is checkouted in unexpected commit."
fi

# mods hades_biofuel commit check
repodir=$modsdir/hades_biofuel
if [ $(git -C $repodir rev-parse HEAD) != 8ca4deab5268e7aa7cc51c041569543ca38ef6f6 ]; then
  echo "hades_biofuel is checkouted in unexpected commit."
fi

# mods skeletons commit check
repodir=$modsdir/skeletons
if [ $(git -C $repodir rev-parse HEAD) != 3a6cde508c079896ab1478443b35a7b4214b3347 ]; then
  echo "skeletons is checkouted in unexpected commit."
fi

# mods hades_greek commit check
repodir=$modsdir/hades_greek
if [ $(git -C $repodir rev-parse HEAD) != e2f0acdc05803263692445d3ca65817e0865d740 ]; then
  echo "hades_greek is checkouted in unexpected commit."
fi

# mods appliances commit check
repodir=$modsdir/appliances
if [ $(git -C $repodir rev-parse HEAD) != a1ba954053487600c1a34466bf378040359e01b4 ]; then
  echo "appliances is checkouted in unexpected commit."
fi

# mods hades_darkage commit check
repodir=$modsdir/hades_darkage
if [ $(git -C $repodir rev-parse HEAD) != f9ac3408053d132934d50f64409a59307e5d0e35 ]; then
  echo "hades_darkage is checkouted in unexpected commit."
fi

# mods cleanroom commit check
repodir=$modsdir/cleanroom
if [ $(git -C $repodir rev-parse HEAD) != fe10a2390f7e8a84066ea7862c0579414c333889 ]; then
  echo "cleanroom is checkouted in unexpected commit."
fi

# mods hades_garden_trowel commit check
repodir=$modsdir/hades_garden_trowel
if [ $(git -C $repodir rev-parse HEAD) != 229ae4935b7dd4893bb51aae5003c4c98bf8f2ee ]; then
  echo "hades_garden_trowel is checkouted in unexpected commit."
fi

# mods hades_building_sign, hades_villages commit check
repodir=$modsdir/hades_villages
if [ $(git -C $repodir rev-parse HEAD) != 58f965e08399b344ea5cd4c4cc36f46ac7378917 ]; then
  echo "hades_villages is checkouted in unexpected commit."
fi

# mods hades_bale, hades_mokapi, hades_petz commit check
repodir=$modsdir/hades_petz
if [ $(git -C $repodir rev-parse HEAD) != 79cf5c10af6cc95d893d164cb02d2b74668fb064 ]; then
  echo "hades_petz is checkouted in unexpected commit."
fi

# mods hades_metamorphosis commit check
repodir=$modsdir/hades_metamorphosis
if [ $(git -C $repodir rev-parse HEAD) != 7c8cbf52fbc059a818f92a6c2ec356c5f9f3dd5d ]; then
  echo "hades_metamorphosis is checkouted in unexpected commit."
fi

# mods hades_pkarcs_doors, hades_pkarcs, hades_pkarcs_doors3 commit check
repodir=$modsdir/hades_pkarcs
if [ $(git -C $repodir rev-parse HEAD) != 19dc373c71a4b867970790bc0b656c60f6349e61 ]; then
  echo "hades_pkarcs is checkouted in unexpected commit."
fi

# mods hades_deer, hades_butterfly, hades_doomed, hades_better_rat, hades_bugslive, hades_turtles, hades_bear, hades_birds, hades_bat, hades_wolf, hades_walrus, hades_mr_goat, hades_snowman, hades_giraffe, hades_jellyfish, hades_fish commit check
repodir=$modsdir/hades_animal_pack
if [ $(git -C $repodir rev-parse HEAD) != 057f8b94475e2f80becff03b265ebf94b93d022b ]; then
  echo "hades_animal_pack is checkouted in unexpected commit."
fi

# mods morelights_modern, morelights_extras, morelights_vintage, morelights commit check
repodir=$modsdir/morelights
if [ $(git -C $repodir rev-parse HEAD) != ee8facbfe0af1c6086209f3e1f84ec2482eff3d8 ]; then
  echo "morelights is checkouted in unexpected commit."
fi

# mods hades_aotearoa commit check
repodir=$modsdir/hades_aotearoa
if [ $(git -C $repodir rev-parse HEAD) != 6b4e5d2020b3a11ac3bebfce92892aa51e98c5fc ]; then
  echo "hades_aotearoa is checkouted in unexpected commit."
fi

# mods composting commit check
repodir=$modsdir/composting
if [ $(git -C $repodir rev-parse HEAD) != d790a3dc9e4c572b7d0c441fae8517e7c2d134b4 ]; then
  echo "composting is checkouted in unexpected commit."
fi

# mods painting commit check
repodir=$modsdir/painting
if [ $(git -C $repodir rev-parse HEAD) != 77f5748a031ebd17471cfdc8c30e445d8566e7e6 ]; then
  echo "painting is checkouted in unexpected commit."
fi

# mods super_computer commit check
repodir=$modsdir/super_computer
if [ $(git -C $repodir rev-parse HEAD) != 62a389a4cfd3f17ec3f7b743b4bba11962136f1d ]; then
  echo "super_computer is checkouted in unexpected commit."
fi

# mods feed_buckets commit check
repodir=$modsdir/feed_buckets
if [ $(git -C $repodir rev-parse HEAD) != 039bf57d5ae7cf42bc9881234197f6317f8eeced ]; then
  echo "feed_buckets is checkouted in unexpected commit."
fi

# mods hades_skinsdb commit check
repodir=$modsdir/hades_skinsdb
if [ $(git -C $repodir rev-parse HEAD) != 46f07a6553daee2a36bafc4bce9307e22c96acad ]; then
  echo "hades_skinsdb is checkouted in unexpected commit."
fi

# mods clothing_machines commit check
repodir=$modsdir/clothing_machines
if [ $(git -C $repodir rev-parse HEAD) != 69d2e9f381498306509c898fa2bda6f895e402ac ]; then
  echo "clothing_machines is checkouted in unexpected commit."
fi

# mods hades_beautiflowers commit check
repodir=$modsdir/hades_beautiflowers
if [ $(git -C $repodir rev-parse HEAD) != 7cb4ab5928c7526be3fce558742b675ef297d1f9 ]; then
  echo "hades_beautiflowers is checkouted in unexpected commit."
fi

# mods hades_aquaz commit check
repodir=$modsdir/hades_aquaz
if [ $(git -C $repodir rev-parse HEAD) != 395f7762ceb450f5c620161205bab1bfe099b436 ]; then
  echo "hades_aquaz is checkouted in unexpected commit."
fi

# mods hades_fire commit check
repodir=$modsdir/hades_fire
if [ $(git -C $repodir rev-parse HEAD) != 982845b06ff21dfcafceb882bab4ff98ff2df5a7 ]; then
  echo "hades_fire is checkouted in unexpected commit."
fi

# mods writing commit check
repodir=$modsdir/writing
if [ $(git -C $repodir rev-parse HEAD) != b98c5f7eeff125714a3602017ae04cae69edad4d ]; then
  echo "writing is checkouted in unexpected commit."
fi

# mods hades_ski commit check
repodir=$modsdir/hades_ski
if [ $(git -C $repodir rev-parse HEAD) != 413d3c504834cafa872065768f8d712b44802898 ]; then
  echo "hades_ski is checkouted in unexpected commit."
fi

# mods wield3d commit check
repodir=$modsdir/wield3d
if [ $(git -C $repodir rev-parse HEAD) != 668ea2682a89d6f6a6a6fdc2326b1db6d69257ac ]; then
  echo "wield3d is checkouted in unexpected commit."
fi

# mods hades_extraores commit check
repodir=$modsdir/hades_extraores
if [ $(git -C $repodir rev-parse HEAD) != b34c719ccf122d2aeb8759535ad3fac613d015ea ]; then
  echo "hades_extraores is checkouted in unexpected commit."
fi

# mods sfence_help commit check
repodir=$modsdir/sfence_help
if [ $(git -C $repodir rev-parse HEAD) != 2c3b0b5f7689975cbfd1cc33299d2e914e02ea31 ]; then
  echo "sfence_help is checkouted in unexpected commit."
fi

# mods sdwalls commit check
repodir=$modsdir/sdwalls
if [ $(git -C $repodir rev-parse HEAD) != 037a23b7b9397b8d31a1206d1c67b34b9d41b024 ]; then
  echo "sdwalls is checkouted in unexpected commit."
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

# mods pole_scaffolding commit check
repodir=$modsdir/pole_scaffolding
if [ $(git -C $repodir rev-parse HEAD) != d52b4f3c4d3a9f54b9bc48e596d7486e9d7483be ]; then
  echo "pole_scaffolding is checkouted in unexpected commit."
fi

# mods pipeworks commit check
repodir=$modsdir/pipeworks
if [ $(git -C $repodir rev-parse HEAD) != e17eb5971664e0141fb794610df35ade2d880099 ]; then
  echo "pipeworks is checkouted in unexpected commit."
fi

# mods palisade commit check
repodir=$modsdir/palisade
if [ $(git -C $repodir rev-parse HEAD) != 0380307e054745325ca607ee5f134215e3700157 ]; then
  echo "palisade is checkouted in unexpected commit."
fi

# mods spyglass commit check
repodir=$modsdir/spyglass
if [ $(git -C $repodir rev-parse HEAD) != 0be414e39cb707e2d7c132ab74e1d01f25429c0c ]; then
  echo "spyglass is checkouted in unexpected commit."
fi

# mods basic_materials commit check
repodir=$modsdir/basic_materials
if [ $(git -C $repodir rev-parse HEAD) != 6146d180bdc53720bc63f2e741b1c8954cfa2ea9 ]; then
  echo "basic_materials is checkouted in unexpected commit."
fi

# mods laptop commit check
repodir=$modsdir/laptop
if [ $(git -C $repodir rev-parse HEAD) != 3e10782c9ccf2684f11948c430343b49c287eabd ]; then
  echo "laptop is checkouted in unexpected commit."
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

# mods hades_cottages commit check
repodir=$modsdir/hades_cottages
if [ $(git -C $repodir rev-parse HEAD) != 7d1c51174072eed91f593b40f67a405b9babf9c3 ]; then
  echo "hades_cottages is checkouted in unexpected commit."
fi

# mods hades_travelnet commit check
repodir=$modsdir/hades_travelnet
if [ $(git -C $repodir rev-parse HEAD) != c197fd4807156eab3d843387986355ff13e58fdd ]; then
  echo "hades_travelnet is checkouted in unexpected commit."
fi

# mods chair_lift commit check
repodir=$modsdir/chair_lift
if [ $(git -C $repodir rev-parse HEAD) != 5f2d3652206245f809d868e01fdd729f920a8cdb ]; then
  echo "chair_lift is checkouted in unexpected commit."
fi

# mods hades_tnt commit check
repodir=$modsdir/hades_tnt
if [ $(git -C $repodir rev-parse HEAD) != 013f2128d0eff9ec4b254585fa1df9d89838d452 ]; then
  echo "hades_tnt is checkouted in unexpected commit."
fi

# mods hades_snow commit check
repodir=$modsdir/hades_snow
if [ $(git -C $repodir rev-parse HEAD) != 12b6feb19daddcfa9374831761f9ea977cb76d1e ]; then
  echo "hades_snow is checkouted in unexpected commit."
fi

# mods hades_xocean commit check
repodir=$modsdir/hades_xocean
if [ $(git -C $repodir rev-parse HEAD) != ebf33ca12acf56f98d9866f1ca10a23acd0c0e5e ]; then
  echo "hades_xocean is checkouted in unexpected commit."
fi

# mods hades_australia commit check
repodir=$modsdir/hades_australia
if [ $(git -C $repodir rev-parse HEAD) != 1bc1624de7832c0041d0e27ef01e6078df3b1b22 ]; then
  echo "hades_australia is checkouted in unexpected commit."
fi

