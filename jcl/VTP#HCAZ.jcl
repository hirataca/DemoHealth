//VTP#HCAZ  JOB ,NOTIFY=&SYSUID,REGION=0M
//*  Run VTP for HCAZ
//*  BZU100.ZUNIT.PLAYBACK is your recording
//*  IBMUSER.HCAZ.VTP.PLAYBACK  is a copy of this in case of mistakes
//*RUNNER   EXEC PGM=BZUPLAY,PARM='TRACE=N,STOP=E'
//*
//RUNNER   EXEC PGM=BZUPLAY,PARM='TRACE=Y,STOP=E'
//STEPLIB  DD DISP=SHR,DSN=BZU100.SBZULOAD
//         DD DISP=SHR,DSN=EMPOT.ZMOBILE.TEST.LOAD
//         DD DISP=SHR,DSN=IBMUSER.GIT.ZMOBILE.LOAD
//BZUPLAY  DD DISP=SHR,DSN=BZU100.ZUNIT.PLAYBACK
//*
//* In case you ahve wrong results due bad recording..
//* Remove the * on the line 14 (below) and comment the line 10 (above)
//*BZUPLAY  DD DISP=SHR,DSN=IBMUSER.HCAZ.VTP.PLAYBACK
//SYSOUT   DD SYSOUT=*
//BZUMSG  DD SYSOUT=*
//