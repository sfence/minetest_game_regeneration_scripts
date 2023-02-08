# Regeneration scripts

Bash regeneration scripts for minetest game.

## License

BSD, see LICENSE file for details

## System requirements

This is tested only under Linux. But it should be runnable from other unix systems without bigger problems and also from windows via mingw or cygwin environment.

## Using

It is HIGLY recomended to backup your game/mods directory before updating them by this generic scripts.

Game regeneration can force update game and mods obtained via ContentDB. Game and mods obtained via GIT should not be force removed and updated. But it can change HEADS of these mods by using git merge and git checkout.

This script is target to help you with moving you game with mods from one server to another or similar. It may require some manual actions after running it. Specially when script hints that some mods has been checkouted in unexpected git commit.

Optimal solution for new user or users who know what they are doing:
  `hades_developing.sh hades_developing /home/USERNAME/.minetest/games /home/USERNAME/.minetest/mods`
  

## Script generation

1) You need pythoni 3 with lupa package.
2) Add mod `sfence_help` into you minetest game. You can get this mod from `https://github.com/sfence/sfence_help`.
3) Start minetest world with `sfence_help` mod.
4) Get debug privilege.
5) Use in-game command `print_mods target_file_name`
6) Use script `YOUR_MODS_DIR/sfence_help/scripts/generate_game_bash_script.py YOUR_WORLD_DIR/target_file_name output_bash_script_name follow_commit`
  Etc.: `/home/sfence/.minetest/mods/sfence_help/scripts/generate_game_bash_script.py /home/sfence/.minetest/worlds/hades_master/mods_file /home/sfence/hades_developing.sh follow_commit`

