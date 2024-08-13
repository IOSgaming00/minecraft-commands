@echo off
:menu
echo ===============================
echo Minecraft Command Runner
echo ===============================
echo 1. /give
echo 2. /tp
echo 3. /summon
echo 4. /kill
echo 5. /effect
echo 6. /weather
echo 7. /time
echo 8. /gamemode
echo 9. /setblock
echo 10. /fill
echo 11. /clone
echo 12. /execute
echo 13. /title
echo 14. /playsound
echo 15. /gamerule
echo 16. /clear
echo 17. /setworldspawn
echo 18. /worldborder
echo 19. /enchant
echo 20. /xp
echo 21. /spawnpoint
echo 22. /blockdata
echo 23. /difficulty
echo 24. /weather
echo ===============================
set /p choice="Enter the number of the command to run: "

if "%choice%"=="1" goto give
if "%choice%"=="2" goto tp
if "%choice%"=="3" goto summon
if "%choice%"=="4" goto kill
if "%choice%"=="5" goto effect
if "%choice%"=="6" goto weather
if "%choice%"=="7" goto time
if "%choice%"=="8" goto gamemode
if "%choice%"=="9" goto setblock
if "%choice%"=="10" goto fill
if "%choice%"=="11" goto clone
if "%choice%"=="12" goto execute
if "%choice%"=="13" goto title
if "%choice%"=="14" goto playsound
if "%choice%"=="15" goto gamerule
if "%choice%"=="16" goto clear
if "%choice%"=="17" goto setworldspawn
if "%choice%"=="18" goto worldborder
if "%choice%"=="19" goto enchant
if "%choice%"=="20" goto xp
if "%choice%"=="21" goto spawnpoint
if "%choice%"=="22" goto blockdata
if "%choice%"=="23" goto difficulty
if "%choice%"=="24" goto weather

goto end

:give
set /p player="Enter player name: "
set /p item="Enter item: "
set /p amount="Enter amount (optional): "
set /p data="Enter data value (optional): "
echo Running: /give %player% %item% %amount% %data%
pause
goto end

:tp
set /p target="Enter target: "
set /p location="Enter location (x y z): "
echo Running: /tp %target% %location%
pause
goto end

:summon
set /p entity="Enter entity type: "
set /p pos="Enter position (x y z): "
echo Running: /summon %entity% %pos%
pause
goto end

:kill
set /p target="Enter target: "
echo Running: /kill %target%
pause
goto end

:effect
set /p player="Enter player name: "
set /p effect="Enter effect: "
set /p seconds="Enter duration in seconds: "
set /p amplifier="Enter amplifier (optional): "
set /p hideParticles="Hide particles (true/false): "
echo Running: /effect %player% %effect% %seconds% %amplifier% %hideParticles%
pause
goto end

:weather
set /p type="Enter weather type (clear/rain/thunder): "
set /p duration="Enter duration (optional): "
echo Running: /weather %type% %duration%
pause
goto end

:time
set /p action="Enter action (set/add/query): "
set /p value="Enter value: "
echo Running: /time %action% %value%
pause
goto end

:gamemode
set /p mode="Enter game mode: "
set /p player="Enter player name (optional): "
echo Running: /gamemode %mode% %player%
pause
goto end

:setblock
set /p position="Enter position (x y z): "
set /p block="Enter block type: "
echo Running: /setblock %position% %block%
pause
goto end

:fill
set /p from="Enter start position (x y z): "
set /p to="Enter end position (x y z): "
set /p block="Enter block type: "
echo Running: /fill %from% %to% %block%
pause
goto end

:clone
set /p begin="Enter begin position (x y z): "
set /p end="Enter end position (x y z): "
set /p destination="Enter destination position (x y z): "
echo Running: /clone %begin% %end% %destination%
pause
goto end

:execute
set /p target="Enter target: "
set /p position="Enter position (x y z): "
set /p command="Enter command to execute: "
echo Running: /execute %target% %position% %command%
pause
goto end

:title
set /p player="Enter player name: "
set /p action="Enter action (title|subtitle|actionbar): "
set /p text="Enter text: "
echo Running: /title %player% %action% %text%
pause
goto end

:playsound
set /p sound="Enter sound: "
set /p target="Enter target: "
echo Running: /playsound %sound% %target%
pause
goto end

:gamerule
set /p rule="Enter game rule: "
set /p value="Enter value: "
echo Running: /gamerule %rule% %value%
pause
goto end

:clear
set /p player="Enter player name: "
set /p item="Enter item (optional): "
echo Running: /clear %player% %item%
pause
goto end

:setworldspawn
set /p position="Enter spawn position (x y z): "
echo Running: /setworldspawn %position%
pause
goto end

:worldborder
set /p action="Enter action: "
set /p value="Enter value: "
echo Running: /worldborder %action% %value%
pause
goto end

:enchant
set /p player="Enter player name: "
set /p enchantment="Enter enchantment: "
set /p level="Enter level: "
echo Running: /enchant %player% %enchantment% %level%
pause
goto end

:xp
set /p amount="Enter amount: "
set /p player="Enter player name: "
echo Running: /xp %amount% %player%
pause
goto end

:spawnpoint
set /p player="Enter player name: "
set /p pos="Enter position (x y z): "
echo Running: /spawnpoint %player% %pos%
pause
goto end

:blockdata
set /p position="Enter block position (x y z): "
set /p data="Enter data tag: "
echo Running: /blockdata %position% %data%
pause
goto end

:difficulty
set /p level="Enter difficulty (peaceful|easy|normal|hard): "
echo Running: /difficulty %level%
pause
goto end

:weather
set /p type="Enter weather type (clear/rain/thunder): "
set /p duration="Enter duration (optional): "
echo Running: /weather %type% %duration%
pause
goto end

:end
echo Goodbye!
