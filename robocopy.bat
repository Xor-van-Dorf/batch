REM For Windows Server 2008
robocopy SOURCE \\UNC /MIR /COPYALL /ZB /V /R:1 /W:1 /NP

REM For Windows Server 2016 and up
robocopy SOURCE \\UNC /MIR /COPYALL /ZB /V /R:1 /W:1 /NP /MT:32

REM For Windows Server 2016 and up (TASK)
robocopy SOURCE \\UNC /mt /z /e
