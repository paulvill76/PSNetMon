# Service monitor script for PSNetmon
# Description: Script monitors specified services
#Define Server & Services Variable

#Define other variables
If ($checkrep -like "True")
New-Item "C:\inetpub\wwwroot\gen\servicehosts.html" -type file
$HTMLHead = @"
<META http-equiv="refresh" CONTENT="30">
<TITLE> 
PSNetMon - Service Module
</TITLE>
<HEAD>
<LINK REL="STYLEsheet" TYPE="text/css" HREF="../css/theme.css"> 
</HEAD>
#Get Services Status

         $svcName = $serviceStatus.displayname 
         Add-Content $report "<TR>" 
    
                                                   }

	        else 
                                                   { 

         $svcName = $serviceStatus.displayname 
         Add-Content $report "<TR>" 

                                                  } 

             

       } 
 } 
}
#Call Function