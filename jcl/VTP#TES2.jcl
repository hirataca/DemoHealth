//VTP#TES2  JOB ,NOTIFY=&SYSUID,REGION=0M
//*  Run VTP for HCPA
//*       SET FELJOB=ZUNITGO
//RUNNER   EXEC PGM=BZUPLAY,PARM='TRACE=N,STOP=E'
//*PLAYBK   EXEC PGM=BZUPLAY,PARM='TRACE=Y,STOP=E'
//STEPLIB  DD DISP=SHR,DSN=BZU100.SBZULOAD
//* not used   DD DISP=SHR,DSN=EMPOT.ZMOBILE.TEST.LOAD
//             DD DISP=SHR,DSN=IBMUSER.GIT.ZMOBILE.LOAD
//BZUPLAY  DD DISP=SHR,DSN=IBMUSER.HCPA.VTP.PLAYBACK
//SYSOUT   DD SYSOUT=*
//BZUMSG  DD SYSOUT=*
//