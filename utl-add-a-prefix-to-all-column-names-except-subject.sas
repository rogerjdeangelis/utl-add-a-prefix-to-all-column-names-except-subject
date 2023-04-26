%let pgm=utl-add-a-prefix-to-all-column-names-except-subject;

Add a prefix to all column names except subject

github
https://tinyurl.com/yh5kyv93
https://github.com/rogerjdeangelis/utl-add-a-prefix-to-all-column-names-except-subject

stackoverflow
https://tinyurl.com/4rmc73c4
https://stackoverflow.com/questions/74460268/add-prefix-to-multiple-column-names-sas

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

data have;
  retain subject 'roger'  A B C D E F G H I J K L 0;
  output;
run;

 /**************************************************************************************************************************/
 /*                                                                                                                        */
 /* Alphabetic List of Variables and Attributes                                                                            */
 /*                                                                                                                        */
 /*  #    Variable    Type    Len                                                                                          */
 /*                                                                                                                        */
 /*  2    A           Num       8                                                                                          */
 /*  3    B           Num       8                                                                                          */
 /*  4    C           Num       8                                                                                          */
 /*  5    D           Num       8                                                                                          */
 /*  6    E           Num       8                                                                                          */
 /*  7    F           Num       8                                                                                          */
 /*  8    G           Num       8                                                                                          */
 /*  9    H           Num       8                                                                                          */
 /* 10    I           Num       8                                                                                          */
 /* 11    J           Num       8                                                                                          */
 /* 12    K           Num       8                                                                                          */
 /* 13    L           Num       8                                                                                          */
 /*  1    SUBJECT     Char      5                                                                                          */
 /*                                                                                                                        */
 /**************************************************************************************************************************/

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

 /**************************************************************************************************************************/
 /*                                                                                                                        */
 /*   Variables in Creation Order                                                                                          */
 /*                                                                                                                        */
 /*  #    Variable      Type    Len                                                                                        */
 /*                                                                                                                        */
 /*  1    SUBJECT       Char      5                                                                                        */
 /*  2    BASELINE_A    Num       8                                                                                        */
 /*  3    BASELINE_B    Num       8                                                                                        */
 /*  4    BASELINE_C    Num       8                                                                                        */
 /*  5    BASELINE_D    Num       8                                                                                        */
 /*  6    BASELINE_E    Num       8                                                                                        */
 /*  7    BASELINE_F    Num       8                                                                                        */
 /*  8    BASELINE_G    Num       8                                                                                        */
 /*  9    BASELINE_H    Num       8                                                                                        */
 /* 10    BASELINE_I    Num       8                                                                                        */
 /* 11    BASELINE_J    Num       8                                                                                        */
 /* 12    BASELINE_K    Num       8                                                                                        */
 /* 13    BASELINE_L    Num       8                                                                                        */
 /*                                                                                                                        */
 /**************************************************************************************************************************/

/*          _       _   _
  ___  ___ | |_   _| |_(_) ___  _ __
 / __|/ _ \| | | | | __| |/ _ \| `_ \
 \__ \ (_) | | |_| | |_| | (_) | | | |
 |___/\___/|_|\__,_|\__|_|\___/|_| |_|

*/

%array(_var,values=%utl_varlist(have,keep=a--l));

%put &=_var3; /*---- _var3=C   ----*/
%put &=_varn; /*---- _varn=12  ----*/

proc datasets ;
  modify have;
   rename
      %do_over(_var, phrase=%str(? = baseline_? ));

run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/* NOTE: Renaming variable A to BASELINE_A.                                                                               */
/* NOTE: Renaming variable B to BASELINE_B.                                                                               */
/* NOTE: Renaming variable C to BASELINE_C.                                                                               */
/* NOTE: Renaming variable D to BASELINE_D.                                                                               */
/* NOTE: Renaming variable E to BASELINE_E.                                                                               */
/* NOTE: Renaming variable F to BASELINE_F.                                                                               */
/* NOTE: Renaming variable G to BASELINE_G.                                                                               */
/* NOTE: Renaming variable H to BASELINE_H.                                                                               */
/* NOTE: Renaming variable I to BASELINE_I.                                                                               */
/* NOTE: Renaming variable J to BASELINE_J.                                                                               */
/* NOTE: Renaming variable K to BASELINE_K.                                                                               */
/* NOTE: Renaming variable L to BASELINE_L.                                                                               */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
