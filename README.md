# How to setup cat-bots (for dummies)

## Please, follow the instructions and you shouldn't have any problems installing/using cat-bots (at least if you use Ubuntu 16.04)

1. You **must** have cathook installed (and you should be able to compile/inject it at least once)
2. Locate your steamapps folder (usually in `/home/yourname/.local/share/Steam/steamapps`, to see hidden folders/files press Ctrl+H) and copy this path somewhere
3. Locate your cathook folder (probably in `/home/yourname/cathook`), this is the folder with injection scripts, etc. Save the path
4. Open terminal (Ctrl+Alt+T)
5. Run this command: `git clone https://github.com/nullifiedcat/catbot-setup && cd catbot-setup` (next commands will just be in `monospace blocks`, you have to run them). **Remember that you can auto-complete the command in bash by pressing** `Tab`
6. `./01-usergroup.sh`
7. You have to log out (or restart the PC)
8. `./02-steamapps.sh "/path/to/steamapps"` (you got path in step 2)
9. `./03-create-12-users.sh`
10. `./04-locate-cathook.sh "/path/to/cathook"` (step 3)
11. Run scripts `./05-get-ipc-server.sh`, `./06-rebuild-ipc-server.sh`, `./07-build-textmode.sh`
12. Choose the amount of bots you will run, it's better to start with something like 1 (to test) or 3. My i5 3570k @ 3.8GHz and 16GB RAM could run 9 cat-bots.
13. `./08-recommended-settings.sh` - this script will copy chatspam (`botspam` file) and recommended config to your Team Fortress 2 installation
14. `./09-start-ipc-server.sh`
15. You have to open new terminal window. Do not close the IPC server, you need it to see bots' status
16. `./10-start-steams.sh 4` (replace `4` with amount of bots you want to start)
17. You have to accept Steam's license terms, wait for it to install, etc.
18. Create Steam accounts (or log in) in these Steam windows
19. You have to launch Team Fortress 2, open Casual matchmaking menu and **select only those maps for which you have walkbot paths installed (these path files must be named `default`). Bot abandons the game if there is no default path for map.**
20. Click "Save" button above map selection menu. You can close TF2 now.
21. `./11-start-games.sh 4` - again, replace `4` with number of bots
22. Wait at least 30 seconds (or a minute)
23. `./12-inject-cathook.sh`
24. Bots should work now, check IPC server console to see their status.
25. When an update is released, run `./13-update.sh`

# TIPS

1. You can run console commands on bots' games. If you are in catbot-setup folder, type `cd cathook-ipc-server/bin`, then you can use either `./exec <bot ID> <command>` or `./exec_all <command>` (will run a command on one bot or all bots, for example `./exec_all say hello` or `./exec 1 kill`
2. Bots crashed/frozen? Use `./99-kill-everything.sh` to kill all bots/steam instances, stop IPC server and start over from step 14.