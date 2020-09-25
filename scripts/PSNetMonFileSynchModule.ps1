﻿# PSNetMon - File Synch Script
# Written by Brad Voris
# Description: file version consistency checker
# Instructions for changes:
# To change the amount of time that the files are scrutinized change the number of addminutes in the $time variable
# Keep in mind the frequency that this script will run in the task scheduler could put timing slightly off
# Modify the path variable to the correct path

# application Variables
$Time = (Get-Date).AddMinutes(-10)
$Datefilemon = ([datetime]::Now)
$Path = "C:\folder"

#Expression
$Data = Get-ChildItem -Path $Path -Recurse -Force | ` Where-Object {$_.LastWriteTime -le $Time} | Select FULLNAME, LastWriteTime | ConvertTo-Html

#HTML Head
$HTMLHeadFSM = @"
<!DOCTYPE html>
<HEAD>
<META charset="UTF-8">
<TITLE>PSNetMon - File Synch  Module</TITLE>
<CENTER>
<LINK rel="STYLEsheet" type="text/css" href="./css/theme.css"> 
"@
$HTMLBodyFSM = @"
<Font size=4><B>File Synch Module</B></font></BR>
#Export to HTML