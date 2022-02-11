echo off
:start
C:\steamcmd\steamcmd.exe +force_install_dir C:\rust-server\ +login anonymous +app_update 258550 +quit
C:\rust-server\curl\bin\curl.exe -SL -A "Mozilla/5.0" "https://umod.org/games/rust/download" --output oxidemod.zip
C:\rust-server\WinRAR\WinRAR.exe x -ibck -o+ oxidemod.zip C:\rust-server
del oxidemod.zip
RustDedicated.exe -batchmode ^
+server.hostname "DankDen" ^
+server.port 28015 ^
+server.level "Procedural Map" ^
+server.seed 1234 ^
+server.worldsize 4000 ^
+server.maxplayers 10 ^
+server.description "Debauchery" ^
+server.url "" ^
+server.headerimage "" ^
+server.identity "server1" ^
+rcon.port 28016 ^
+rcon.password letmein ^
+rcon.web 1
goto start
