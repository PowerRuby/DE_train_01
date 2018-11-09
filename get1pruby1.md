You can (adapt and) compile the following CL source and submit the resulting program in batch like this: `SBMJOB CMD(CALL PGM(QGPL/GET1PRUBY1))`. 


```
 FMT **  ...+... 1 ...+... 2 ...+... 3 ...+... 4 ...+... 5 ...+... 6 ...+... 7 ...+... 8
        *************** Beginning of data **********************************************
0001.00              PGM                                                                
0002.00              DLTLIB     LIB(PR_TEST)                                            
0003.00              MONMSG     MSGID(CPF2110)                                          
0004.00              CRTLIB     LIB(PR_TEST)                                            
0005.00              CRTSAVF    FILE(PR_TEST/PRUBY_BASE)                                
0006.00              CRTSAVF    FILE(PR_TEST/PRUBY_0001)                                
0007.00              CRTSAVF    FILE(PR_TEST/PRUBY_0002)                                
0008.00              CRTSAVF    FILE(PR_TEST/PRUBY_0006)                                
0009.00              CHGENVVAR  ENVVAR(QIBM_MULTI_THREADED) VALUE(Y)                    
0010.00              MONMSG     MSGID(CPFA981) EXEC(ADDENVVAR +                         
0011.00                           ENVVAR(QIBM_MULTI_THREADED) VALUE(Y))                 
0012.00              QSH        CMD('/PowerRuby/oss/bin/curl -L -s -o +                 
0013.00                           /QSYS.LIB/PR_TEST.LIB/PRUBY_BASE.FILE +               
0014.00                           https://github.com/PowerRuby/DE_train_01/re+          
0015.00                           leases/download/V2R0M0/pruby_base.savf')              
0016.00              QSH        CMD('/PowerRuby/oss/bin/curl -L -s -o +                 
0017.00                           /QSYS.LIB/PR_TEST.LIB/PRUBY_0001.FILE +               
0018.00                           https://github.com/PowerRuby/DE_train_01/re+          
0019.00                           leases/download/V2R0M0/pruby_0001.savf')              
0020.00              QSH        CMD('/PowerRuby/oss/bin/curl -L -s -o +                 
0021.00                           /QSYS.LIB/PR_TEST.LIB/PRUBY_0002.FILE +               
0022.00                           https://github.com/PowerRuby/DE_train_02/re+          
0023.00                           leases/download/V2R0M0/pruby_0002.savf')              
0024.00              QSH        CMD('/PowerRuby/oss/bin/curl -L -s -o +                 
0025.00                           /QSYS.LIB/PR_TEST.LIB/PRUBY_0006.FILE +               
0026.00                           https://github.com/PowerRuby/DE_train_01/re+          
0027.00                           leases/download/V2R0M0/pruby_0006.savf')              
0028.00              DSPLIB     LIB(PR_TEST) OUTPUT(*PRINT)                             
0029.00              ENDPGM                                                             
        ****************** End of data *************************************************
```

Once executed you will have the following printed output:

```
                                  Display Spooled File     
File  . . . . . :   QPDSPLIB                                                    
Control . . . . .                                                               
Find  . . . . . .                                                               
*...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8
 5770SS1 V7R2M0  140418                   Display Library                       
 Library . . . . . . . . . . . . . . . . :   PR_TEST                            
 Type  . . . . . . . . . . . . . . . . . :   PROD                               
 Number of objects . . . . . . . . . . . :            4                         
 Library ASP number  . . . . . . . . . . :       1                              
 Library ASP device  . . . . . . . . . . :   *SYSBAS                            
 Library ASP group   . . . . . . . . . . :   *SYSBAS                            
 Create authority  . . . . . . . . . . . :   *SYSVAL                            
 Text description  . . . . . . . . . . . :                                      
   Object      Type      Attribute             Size  Description                
   PRUBY_BASE  *FILE     SAVF             126951424                             
   PRUBY_0001  *FILE     SAVF                577536                             
   PRUBY_0002  *FILE     SAVF             237740032                             
   PRUBY_0006  *FILE     SAVF              89485312                             
                     Total size :         454828032                             
                   * * * * *   E N D   O F   L I S T I N G   * * * * *          
                                                                                
```
