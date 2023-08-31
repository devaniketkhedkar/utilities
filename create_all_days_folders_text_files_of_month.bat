REM Author     : Aniket Khedkar
REM Purpose    : To create Daywise Folder and Text file of each day in Month to write daily notes.
REM How To Use : 
REM 1. Copy paste this utility where you want to create your folders.
REM 2. Run this utility in a folder where you want to create folders and text file for each day in a month.
REM 2. Run this utility and enter Month no in MM format. It will create folders and txt file in it for each day in month.

@echo off

set FirstDay=01
set Year=%date:~6,4%
REM set Month=%date:~3,2%

echo Enter month no in MM format.
set /p Month= Type Month in MM format : 
REM echo Month is: %Month%
REM echo Year is : %Year%
REM pause

set msg=Bhole baba, I thank you for sunshine, Thank you for rain, Thank you for joy, Thank you for pain, It's a beautiful Day. Good Day Boss.

if %Month%==01 set LastDay=31 & goto foundate
if %Month%==02 set LastDay=28 & goto foundate
if %Month%==03 set LastDay=31 & goto foundate
if %Month%==04 set LastDay=30 & goto foundate
if %Month%==05 set LastDay=31 & goto foundate
if %Month%==06 set LastDay=30 & goto foundate
if %Month%==07 set LastDay=31 & goto foundate
if %Month%==08 set LastDay=31 & goto foundate
if %Month%==09 set LastDay=30 & goto foundate
if %Month%==10 set LastDay=31 & goto foundate
if %Month%==11 set LastDay=30 & goto foundate
if %Month%==12 set LastDay=31 & goto foundate


:foundate
echo The year is: %Year%
echo The month is: %Month%
echo First day of this month is: %FirstDay%
echo Last day of this month is: %LastDay%


FOR /L %%X IN (1,1,%LastDay%) DO (
	ECHO %%X
	MKDIR %%X-%Month%-%Year% > NUL
	
	ECHO %msg% >"%%X-%Month%-%Year%\%%X-%Month%-%Year%.txt" 
)