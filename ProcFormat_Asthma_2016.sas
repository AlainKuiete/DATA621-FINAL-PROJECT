******************************************************************
** ProcFormat_asthma_2016.SAS                                    *
*                                                                *
* modified:		May 05, 2014, Rick Hu		                     *
* Last modified:	Jul 17, 2014, Rick Hu 		                 *
* Last modified:	Jan 16, 2015, EKelly                         *
*                  - copy over 2013 sas code into 2014 folder    *
*                  - ( Added in AGEG_F3_M )                      *
*                                                                *
*     EKelly Modified AGEG_F3_M to be 18-44, 45-64, 65+          *
*                                                                *
*     EKelly Dec 18, 2015   for Mult Yrs 2011-2013               *
*                                                                *
*     EKelly Feb 01, 2016   added in formats for:                *
*        Inhaler_ID_10	 Inhaler_ID_18	 Inhaler_ID_29           *
*        ILP03_10	     ILP03_18	     ILP03_29                *
*        ILP04_10	     ILP04_18	     ILP04_29                *
*        ILP05_10	     ILP05_18	     ILP05_29                *
*        ILP06_10	     ILP06_18	     ILP06_29                *
*        ILP08_10	     ILP08_18	     ILP08_29                *
*        ILP10_10	     ILP10_18	     ILP10_29                *
*                                                                *
*      EKelly Mar 14, 2016   added in formats for:               *
*        MOSTKNOW, PRESENTALT, KNOWMOST, ALTPRESENT              *   
*****************************************************************;

%let Qdrive  = \\Cdc\project\CCHP_NCCD_DACH_BRFSS;
%let Multiple_year_CYYYY  = 2012_2014;
%let Multiple_year_CYYYY  = 2016;

libname LIBRARY "&Qdrive\BRFSS\Projects\Asthmacell\&Multiple_year_CYYYY\library" ;

ods listing;
PROC PRINTTO; RUN ;

 Proc FORMAT LIBRARY = LIBRARY.LIBRARY;
*Proc FORMAT LIBRARY = LIBRARY;
  Value  $BIRTHW1z
  "000001" - "003015" = "Pounds/Ounces "
  "777777" = "Don't know "
  "999999" = "Refused "
  " " = "Partial complete "
  ;
 
  Value  $HEIGHT1z
  "0001" - "0811" = "Feet/Inches "
  "7777" = "Don't know "
  "9999" = "Refused "
  " " = "Partial complete "
  ;
 
  Value  $IDAY_F
  "1" - "31" = "Interview day "
  ;
 
  Value  $IMONTH_F
  "1" = "January "
  "2" = "February "
  "3" = "March "
  "4" = "April "
  "5" = "May "
  "6" = "June "
  "7" = "July "
  "8" = "August "
  "9" = "September "
  "10" = "October "
  "11" = "November "
  "12" = "December "
  ;
 
  Value  $IYEAR_F
  "2006" = "Interview year "
  "2007" = "Interview year "
  "2008" = "Interview year "
  "2009" = "Interview year "
  "2010" = "Interview year "
  "2011" = "Interview year "
  "2012" = "Interview year "
  "2013" = "Interview year "
  "2014" = "Interview year "
  "2015" = "Interview year "
  "2016" = "Interview year "
  "2017" = "Interview year "
  "2018" = "Interview year "
  "2019" = "Interview year "
  ;
 
  Value  $IYEAR_FX
  "2011" = "2011 Interview year "
  "2012" = "2012 Interview year "
  "2013" = "2013 Interview year "
  "2014" = "2014 Interview year "
  "2015" = "2015 Interview year "
  "2016" = "2016 Interview year "
  "2017" = "2017 Interview year "
  "2018" = "2018 Interview year "
  "2019" = "2019 Interview year "
  ;

  Value  $QSTLANG_F 
  "1" = "English "
  "2" = "Spanish "
  "3" = "Other "
  " " = "Not asked or missing "
  ;

  Value  QSTLANG_F 
  1 = "English "
  2 = "Spanish "
  3 = "Other "
  . = "Not asked or missing "
  ;

 Value  $QSTLANG_F21
  "1" = "English "
  "2" = "Spanish "
  "3" = "Other "
  " " = "Not asked or missing "
  ;
 
  Value  $WEIGHT1z
  "0001" - "0500" = "Pounds "
  "7777" = "Don't know "
  "9999" = "Refused "
  " " = "Partial complete "
  ;
 
  VALUE WEIGHT                                                                                                                                                                                  
           .               =    "Not asked or Missing"                                                                                                                                         
           .D              =    "DK/NS"                                                                                                                                                        
           .R              =    "REFUSED"                                                                                                                                                      
           50      - 999   =    "Weight (pounds)"                                                                                                                                              
           7777            =    "Don’t know/Not sure"                                                                                                                                          
           9000    - 9998  =    "Weight (kilograms)"                                                                                                                                           
           9999            =    "Refused"                                                                                                                                                      
           ;               
 
  Value  ACTASTH
  1 = "Active Asthma "
  2 = "Inactive Asthma "
  9 = "Don´t know/Not sure "
  . = "Not asked or missing "
  ;
 
  Value  ACT_DAYS30z
  1 = "Not at all "
  2 = "A little "
  3 = "A moderate amount "
  4 = "A lot "
  5 = "No current asthma, nothing happened past year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  ACT_DAYS
  1 = "Not at all "
  2 = "A little "
  3 = "A moderate amount "
  4 = "A lot "
  5 = "No current asthma, nothing happened past year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;

  Value  ADLTCHLD_F
  1 = "Adult "
  2 = "Children "
  . = "Not asked or missing "
  ;
 
  Value  ADLTCHLD
  1 = "Adult "
  2 = "Children "
  . = "Not asked or missing "
  ;

  Value  AGEDXA
  1 -115 = "Age in years "
  888 = "Less than 1 year old "
  777 = "Don´t know "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  AGEDXC
  1 -17 = "Age in years "
  888 = "Less than 1 year old "
  777 = "Don´t know "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  AGEG_F1z
  1 = "Age 18 - 99"
  . = "Missing "
  ;

  Value  AGEG_F2z
  1 = "Age 18 - 44 "
  2 = "Age 45+ "
  . = "Missing "
  ;

  Value  AGEG_F2_M
  1 = "Age 18 - 54 "
  2 = "Age 55+ "
  . = " "
  ;
 
  Value  AGEG_F3z
  1 = "Age 18 - 34 "
  2 = "Age 35 - 54 "
  3 = "Age 55+ "
  . = "Missing "
  ;

  Value  AGEG_F3_M
  1 = "Age 18 - 44 "
  2 = "Age 45 - 64 "
  3 = "Age 65+ "
  . = " "
  ;
 
  Value  AGEG_F4z
  1 = "Age 18 - 34 "
  2 = "Age 35 - 44 "
  3 = "Age 45 - 54 "
  4 = "Age 55+ "
  . = "Missing "
  ;
 
  Value  AGEG_F4_M
  1 = "Age 18 - 44 "
  2 = "Age 45 - 54 "
  3 = "Age 55 - 64 "
  4 = "Age 65+ "
  . = " "
  ;

  Value  AGEG_F4_M2z
  1 = "Age 18 - 34 "
  2 = "Age 35 - 54 "
  3 = "Age 55 - 64 "
  4 = "Age 65+ "
  . = " "
  ;
 
  Value  AGEG_F5z
  1 = "Age 18 - 34 "
  2 = "Age 35 - 44 "
  3 = "Age 45 - 54 "
  4 = "Age 55 - 64 "
  5 = "Age 65+ "
  . = "Missing "
  ;

  Value  AGEG_F5_M
  1 = "Age 18 - 34 "
  2 = "Age 35 - 54 "
  3 = "Age 55 - 64 "
  4 = "Age 65 - 74 "
  5 = "Age 75+ "
  . = " "
  ;
 
  Value  AGEG_F6z
  1 = "Age 18 - 24 "
  2 = "Age 25 - 34 "
  3 = "Age 35 - 44 "
  4 = "Age 45 - 54 "
  5 = "Age 55 - 64 "
  6 = "Age 65+ "
  . = " "
  ;

  Value  AGEG_F6_M
  1 = "Age 18 - 34 "
  2 = "Age 35 - 44 "
  3 = "Age 45 - 54 "
  4 = "Age 55 - 64 "
  5 = "Age 65 - 74 "
  6 = "Age 75+ "
  . = " "
  ;

  Value  AGEG_F7z
  1 = "Age 18 - 24 "
  2 = "Age 25 - 34 "
  3 = "Age 35 - 44 "
  4 = "Age 45 - 54 "
  5 = "Age 55 - 64 "
  6 = "Age 65 - 74 "
  7 = "Age 75+ "
  . = "Missing "
  ;
 
  Value  AIRCLEANER
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  ASLEEP30z
  1 -30 = "Days/Nights "
  66 = "No symptoms past one year, skip filled "
  77 = "Don't know "
  88 = "None "
  99 = "Refused "
  100 = "Symptoms 3 months to 1 year ago, skip filled "
  111 = "No symptoms in the past 30 days, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  ASMDCOST
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  ASRXCOST
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  ASSPCOST
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  ASTHMA3z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  ASTHNOW
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  BATH_FAN
  1 = "Yes "
  2 = "No or “No Fan” "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  BIRTHRF
  0 = "Partial complete "
  1 = "Yes "
  2 = "No "
  7 = "Don't know "
  9 = "Refused "
  . = "Have reported birth weight "
  ;
 
  Value  BRONCH
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAGEG_F1z
  1 = "Age 0 - 17 "
  . = "Missing "
  ;
 
  Value  CAGEG_F2z
  1 = "Age 0 - 9 "
  2 = "Age 10 - 17 "
  . = "Missing "
  ;

  Value  CAGEG_F2_M
  1 = "Age 0 - 9 "
  2 = "Age 10 - 17 "
  . = "Missing "
  ;
 
  Value  CAGEG_F3z
  1 = "Age 0 - 6 "
  2 = "Age 7 - 12 "
  3 = "age 13 - 17 "
  . = "Missing "
  ;
 
  Value  CAGEG_F3A
  1 = "Age 0 - 6 "
  2 = "Age 7 - 12 "
  3 = "Age 13 - 17 "
  . = "Missing "
  ;

  Value  CAGEG_F3_M
  1 = "Age 0 - 9 "
  2 = "Age 10 - 14 "
  3 = "Age 15 - 17 "
  . = "Missing "
  ;

  Value  CAGEG_F4z
  1 = "Age 0 - 4 "
  2 = "Age 5 - 9 "
  3 = "Age 10 - 14 "
  4 = "Age 15 - 17 "
  . = "Missing "
  ;
 
  Value  CALLBACK_F
  1 = "Yes "
  2 = "No "
  . = "Missing "
  ;

  Value  CALLBACK
  1 = "Yes "
  2 = "No "
  . = "Missing "
  ;
 
  Value  CALLBACK_VER
  1 = "Callback using  Protocol (2 weeks) "
  2 = 'Callback conducted "Immediately" '
  . = "Not asked or missing "
  ;
 
  Value  CAM_AROM
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_BR
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_HERB
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_HOME
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_NATR
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_OTHR
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_PRES
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_PUNC
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_REFL
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_VITA
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CAM_YOGA
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CARPET
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  CASTHDX2z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  CASTHDX2_F
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;

  Value  CASTHNO2z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  CASTHNO2_F
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;

  Value  COMPASTH
  1 = "Shorter "
  2 = "Longer "
  3 = "About the same "
  4 = "The most recent attack was actually the first attack "
  6 = "No symptoms past year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  11 = "No episode/asthma attack past year, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  COOK_GAS
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  COPD
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  CRACEG_F
  1 = "Races are collapsed to 1 group "
  . = "Missing "
  ;
 
  Value  CSTATE1_F
  1 = "Yes "
  2 = "No "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  CSTATE
  1 = "Yes "
  2 = "No "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;

  Value  CSTATE1z
  1 = "Yes "
  2 = "No "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;

  Value  CUR_ASTH
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  C_ROACH
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  C_RODENT
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  DAYCARE
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  6 = "Over age ten, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DAYCARE1z
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  5 = "Goes to daycare now, skip filled "
  6 = "Over age ten, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DCARE_ANML
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  5 = "No daycare past year, skip filled "
  6 = "Over age ten, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DCARE_APL
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  4 = "No current asthma, skip filled "
  5 = "No daycare past year, skip filled "
  6 = "Over age ten, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DCARE_MLD
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  5 = "No daycare past year, skip filled "
  6 = "Over age ten, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DCARE_SMK
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  5 = "No daycare past year, skip filled "
  6 = "Over age ten, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DEHUMID
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  DEPRESS
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  DISPCODE_F
  1100 = "Complete "
  1200 = "Partial complete "
  ;
 
  Value  DUR_30D
  1 = "Yes "
  2 = "No "
  6 = "Last symptoms one+ years ago, skip filled "
  7 = "Don't know "
  9 = "Refused "
  10 = "Last symptoms 3 months - 1 year ago, skip filled "
  11 = "No symptoms 'SYMP_30D' skip filled "
  12 = "1-29 'SYMP_30D' skip filled "
  77 = "Don't know 'SYMP_30D' skip filled "
  99 = "Refused 'SYMP_30D' skip filled "
  . = "Not asked or missing "
  ;
 
  Value  DUR_ASTH
  101 -199 = "Minutes "
  201 -299 = "Hours "
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "No symptoms past 1 year, skip filled "
  777 = "Don't know "
  999 = "Refused "
  1111 = "No episode/asthma attack past year, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  EMPHY
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  EMP_EVER1z
  1 = "Yes "
  2 = "No "
  6 = "Now Employed, skip filled "
  7 = "Don´t know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  EMP_STAT
  1 = "Employed full-time "
  2 = "Employed part-time "
  3 = "Not employed "
  7 = "Don´t know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  END_OF_FILE
  1 = "Yes "
  . = "Not asked or missing "
  ;
 
  Value  ENV_MOLD
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  ENV_PETS
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  EPIS_12M
  1 = "Yes "
  2 = "No "
  6 = "No symptoms past 1 year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  EPIS_TP
  1 -100 = "Episodes "
  666 = "No symptoms past 1 year, skip filled "
  777 = "Don't know "
  888 = "None "
  999 = "Refused "
  1111 = "No episode/asthma attack past year, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  ER_TIMES
  1 -365 = "Number "
  555 = "No current asthma, nothing happened past year, skip filled "
  666 = "No MD visit past year, skip filled "
  677 = "MD visit, no ER visit past year, skip filled "
  777 = "Don't know "
  888 = "None "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  ER_VISIT
  1 = "Yes "
  2 = "No "
  5 = "No current asthma, nothing happened past year, skip filled "
  6 = "No MD visit past year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  EVER_ASTH
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  E_PILLOW
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  FLAG1z
  0 = "AGE, AGEDX, and INCIDNT are consistent "
  1 = "AGEDX is greater than AGE "
  2 = "AGE, AGEDX, and INCIDNT are inconsistent "
  . = "Skip filled "
  ;
 
  Value  FLU_SHOT
  1 = "Yes "
  2 = "No "
  7 = "Don’t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  FLU_SPRAY
  1 = "Yes "
  2 = "No "
  7 = "Don’t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  FMONTH_F
  1 = "January "
  2 = "February "
  3 = "March "
  4 = "April "
  5 = "May "
  6 = "June "
  7 = "July "
  8 = "August "
  9 = "September "
  10 = "October "
  11 = "November "
  12 = "December "
  ;
 
  Value  GAS_STOVE
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  GUARDIAN
  1 = "Yes "
  2 = "No "
  7 = "Don’t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  HOSPPLAN
  1 = "Yes "
  2 = "No "
  4 = "MD visit, no symptoms past year, skip filled "
  5 = "No current asthma, nothing happened past year, skip filled "
  6 = "No MD visit past year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  45 = "MD visit, symptoms, no hospital visit past year, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  HOSPTIME
  1 -365 = "Times "
  444 = "MD visit, no symptoms past year, skip filled "
  455 = "MD visit, symptoms, no hospital visit past year, skip filled "
  555 = "No current asthma, nothing happened past year, skip filled "
  666 = "No MD visit past year, skip filled "
  777 = "Don't know "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  HOSP_VST
  1 = "Yes "
  2 = "No "
  4 = "MD visit, no symptoms past year, skip filled "
  5 = "No current asthma, nothing happened past year, skip filled "
  6 = "No MD visit past year, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  HOTWATER
  1 = "Cold "
  2 = "Warm "
  3 = "Hot "
  4 = "Varies "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  ILP03_1z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_43z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

 Value  ILP03_10z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP03_11z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_12z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_13z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_14z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_15z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_16z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_17z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_18z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP03_44z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_19z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_2z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_20z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_21z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_22z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_23z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_24z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_25z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_26z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_27z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_28z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP03_29z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_3z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_30z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_31z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_32z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_33z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_34z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_35z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_36z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_37z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_38z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_39z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_4z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_40z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_41z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_42z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_5z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_6z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_7z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_8z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP03_9z
  1 = "Yes "
  2 = "No "
  3 = "Medication is a dry powder inhaler or disk inhaler, not a canister inhaler "
  4 = "Medication has a built-in spacer/does not need a spacer "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_1z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_43z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP04_10z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP04_11z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_12z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_13z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_14z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_15z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_16z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_17z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_44z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_18z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_19z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_2z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_20z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_21z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_22z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_23z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_24z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_25z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_26z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_27z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_28z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_29z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_3z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_30z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_31z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_32z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_33z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_34z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_35z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_36z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_37z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_38z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_39z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_4z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_40z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_41z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_42z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_5z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_6z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_7z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_8z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP04_9z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_1z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_43z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_10z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP05_11z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_12z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_13z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_14z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_15z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_16z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_17z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_44z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_18z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_19z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_2z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_20z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_21z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_22z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_23z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_24z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_25z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_26z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_27z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_28z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_29z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_3z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_30z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_31z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_32z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_33z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_34z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_35z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_36z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_37z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_38z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_39z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_4z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_40z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_41z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_42z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_5z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_6z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_7z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_8z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP05_9z
  1 = "Yes "
  2 = "No "
  3 = "Didn’t exercise in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_1z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_43z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_10z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP06_11z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_12z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_13z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_14z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_15z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_16z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_17z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_18z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 

  Value  ILP06_44z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_19z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_2z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_20z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_21z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_22z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_23z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_24z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_25z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_26z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_27z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_28z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_29z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP06_3z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_30z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_31z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_32z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_33z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_34z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_35z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_36z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_37z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_38z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_39z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_4z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_40z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_41z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_42z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_5z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_6z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_7z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_8z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP06_9z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_1z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_43z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_10z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP08_11z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_12z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_13z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_14z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_15z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_16z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_17z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_18z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ; 

  Value  ILP08_44z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_19z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_2z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_20z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_21z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_22z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_23z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_24z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_25z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_26z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_27z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_28z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_29z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_3z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_30z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_31z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_32z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_33z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_34z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_35z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_36z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_37z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_38z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_39z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_4z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_40z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_41z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_42z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_5z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_6z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_7z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_8z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP08_9z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_1z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_43z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_10z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP10_11z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_12z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_13z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_14z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_15z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_16z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_17z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_44z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_18z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_19z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_2z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_20z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_21z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_22z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_23z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_24z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_25z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_26z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_27z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_28z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_29z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;

  Value  ILP10_3z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_30z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_31z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_32z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_33z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_34z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_35z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_36z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_37z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_38z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_39z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_4z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_40z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_41z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_42z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_5z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_6z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_7z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_8z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  ILP10_9z
  1 -76 = "01-76 canisters "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Skip filled "
  ;
 
  Value  INCIDNT
  1 = "Within the past 12 months "
  2 = "One to five years ago "
  3 = "More than 5 years ago "
  7 = "Don’t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INHALERE
  1 = "Yes "
  2 = "No "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INHALERH
  1 = "Yes "
  2 = "No "
  5 = "Never took asthma medication, skip filled "
  6 = "Never used prescription inhaler, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INHALERW
  1 = "Yes "
  2 = "No "
  5 = "Never took asthma medication, skip filled "
  6 = "Never used prescription inhaler, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_1z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_43z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_10z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;

  Value  INHALER_ID_11z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_12z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_13z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_14z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_15z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_16z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_17z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_44z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_18z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_19z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_2z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_20z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_21z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_22z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_23z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_24z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_25z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_26z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_27z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_28z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_29z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_3z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_30z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_31z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_32z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_33z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_34z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_35z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_36z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_37z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_38z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_39z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_4z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_40z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_41z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_42z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_5z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_6z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_7z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_7799z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_8z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_ID_9z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  INHALER_TEXT1z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT2z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT3z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT4z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT5z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT6z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT7z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT8z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INHALER_TEXT96z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  INH_AC
  0 -3 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  INH_AI
  0 -2 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  INH_B2AL
  0 -7 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  INH_B2AS
  0 -14 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  INH_CS
  0 -19 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  INH_SCR
  1 = "Yes, inhaler in past 3 months "
  2 = "No inhaler in past 3 months "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  6 = "Asthma med. past 3 months, never used inhaler, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INS1z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INS2z
  1 = "Yes "
  2 = "No "
  5 = "No insurance at time of interview, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  INS_TYP
  1 = "Parent’s employer "
  2 = "Medicaid/Medicare "
  3 = "CHIP {replace with state specific  name} "
  4 = "Other "
  5 = "No insurance at time of interview, skip filled "
  7 = "Don’t know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  KITC_FAN
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  LASTSYMP
  88 = "Never "
  1 = "Less than 1 day ago "
  2 = "1-6 days ago "
  3 = "1 week to less than 3 months ago "
  4 = "3 months to less than 1 year ago "
  5 = "1 year to less than 3 years ago "
  6 = "3 years to 5 years ago "
  7 = "More than 5 years ago "
  77 = "Don´t know "
  99 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  LAST_MD
  88 = "Never "
  4 = "Within the past year "
  5 = "One year to less than 3 years ago "
  6 = "Three years to five years ago "
  7 = "More than five years ago "
  77 = "Don´t know "
  99 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  LAST_MED
  88 = "Never "
  1 = "Less than 1 day ago "
  2 = "1-6 days ago "
  3 = "1 week to less than 3 months ago "
  4 = "3 months to less than 1 year ago "
  5 = "1 year to less than 3 years ago "
  6 = "3 years to 5 years ago "
  7 = "More than 5 years ago "
  77 = "Don´t know "
  99 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  MATTRESS
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  MGT_CLAS
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  MGT_PLAN
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  MISS_DAY
  1 -365 = "Days "
  555 = "No current asthma, nothing happened past year, skip filled "
  777 = "Don't know "
  888 = "Zero "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  MISS_DCAR
  1 -365 = "Days "
  444 = "No current asthma, skip filled "
  555 = "No daycare past year, skip filled "
  666 = "Over age ten, skip filled "
  777 = "Don't know "
  888 = "Zero "
  999 = "Refused "
  3333 = "Home school, skip filled "
  . = "Partial complete "
  ;
 
  Value  MISS_SCHL
  1 -365 = "Days "
  444 = "No school past year, skip filled "
  555 = "Not old enough for school, skip filled "
  666 = "No current asthma, skip filled "
  777 = "Don't know "
  888 = "None "
  999 = "Refused "
  . = "Partial complete "
  ;
 
  Value  MKP_NAME
  1 = "Yes "
  2 = "No "
  ;
 
  Value  MKP_PERS
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
   
  Value  MKP_STATUS
  1 = "BRFSS respondent is the MKP and will continue "
  2 = "Alternate respondent is the MKP and will continue "
  . = "Not asked or missing "
  ;

  Value  MOD_ENV
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  VALUE MSCODE                                                                                                                                                                                  
           .    =    "GU, PR, VI, or cell phone"                                                                                                                                    
           .D   =    "DK/NS"                                                                                                                                                        
           .R   =    "REFUSED"                                                                                                                                                      
           1    =    "In the center city of an MSA"                                                                                                                                 
           2    =    "Outside the center city of an MSA but inside the county containing the center city"                                                                           
           3    =    "Inside a suburban county of the MSA"                                                                                                                          
           4    =    "In an MSA that has no center city"                                                                                                                            
           5    =    "Not in an MSA"                                                                                                                                                
           ;               

  Value  NATTMPTS_F
  1 -15 = "Number of attempts of asthma call-back "
  ;
 
  Value  NEB01_1z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_10z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_11z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_12z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_13z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_14z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_15z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_16z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_17z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_18z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_2z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_3z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_4z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_5z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_6z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_7z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_8z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB01_9z
  1 = "Yes "
  2 = "No "
  3 = "No attack in past 3 months "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_1z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_10z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_11z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_12z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_13z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_14z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_15z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_16z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_17z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_18z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;

  Value  NEB02_2z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_3z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_4z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_5z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_6z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_7z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_8z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB02_9z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_1z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_10z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_11z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_12z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_13z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_14z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_15z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_16z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_17z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;

  Value  NEB03_18z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_2z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_3z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_4z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_5z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_6z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_7z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_8z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB03_9z
  301 -399 = "Days "
  401 -499 = "Weeks "
  555 = "Never "
  666 = "Less often than once a  week "
  777 = "Don´t know/Not sure "
  999 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB_AC
  0 -4 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  NEB_CS
  0 -2 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  NEB_AI
  0 -2 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  NEB_B2A
  0 -11 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  NEB_B2AL
  0 -1 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  NEB_ID_1z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_10z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_11z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_12z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_13z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_14z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_15z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_16z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_17z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_18z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_2z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_3z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_4z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_5z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_6z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_7z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_7799z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_8z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_ID_9z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  NEB_PLCA
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don´t know "
  8 = "No neb. in past 3 months, skip filled "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB_PLCB
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don´t know "
  8 = "No neb. in past 3 months, skip filled "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB_PLCC
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don´t know "
  8 = "No neb. in past 3 months, skip filled "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB_PLCD
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don´t know "
  8 = "No neb. in past 3 months, skip filled "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB_PLCE
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don´t know "
  8 = "No neb. in past 3 months, skip filled "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  NEB_SCR
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  NEB_TEXT1z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT2z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT3z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT4z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT5z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT6z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT7z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT8z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NEB_TEXT96z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  NER_TIME
  1 -365 = "Times "
  555 = "No current asthma, nothing happened past year, skip filled "
  666 = "No MD visit past year, skip filled "
  777 = "Don't know "
  888 = "None "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  NO_SCHL
  1 = "Not old enough "
  2 = "Home schooled "
  3 = "Unable to attend for health  reason "
  4 = "On vacation or break "
  5 = "Other "
  6 = "Now goes to outside school, skip filled "
  7 = "Don’t know/Not sure "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  OTC
  1 = "Yes "
  2 = "No "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  OTHER_INHALER
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  OTHER_NEB
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  OTHER_PILLS
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  OTHER_SYRUP
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  O_STATE
  1 -100 = "2 digit state FIPSCODE "
  . = "Not asked or missing "
  ;
 
  Value  PERMISS
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  PETBEDRM
  1 = "Yes "
  2 = "No "
  3 = "Some are/some aren't "
  6 = "No pets, skip coded "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  PILL01_1z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_11z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_12z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_13z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_14z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_15z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_17z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_18z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_19z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_2z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_21z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_23z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_24z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_25z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_26z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_28z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_3z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_30z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_31z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_32z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_33z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_35z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_37z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_4z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_40z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_42z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_43z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_44z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_45z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_46z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_47z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_48z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_49z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_5z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_7z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILL01_8z
  1 = "Yes "
  2 = "No "
  7 = "Don´t know "
  9 = "Refused "
  . = "Skip filled "
  ;
 
  Value  PILLS
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_1z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_11z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_12z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_13z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_14z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_15z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_17z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_18z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_19z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_2z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_21z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_23z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_24z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_25z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_26z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_28z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_3z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_30z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_31z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_32z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_33z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_35z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_37z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_4z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_40z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_42z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_43z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_44z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_45z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_46z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_47z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_48z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_49z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_5z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_7z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_7799z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_ID_8z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  PILLS_TEXT1z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT2z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT3z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT4z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT5z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT6z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT7z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT8z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILLS_TEXT96z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  PILL_CS
  0 -6 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  PILL_LM
  0 -6 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  PILL_B2A
  0 -9 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  PILL_METH
  0 -15 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;

  Value  QSTVER
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  20 = "20"
  21 = "21"
  22 = "22"
  23 = "23"
   ;
 
  Value  QSTVER_F
  10 = "Landline (No additional version) "
  11 = "Landline (One additional version) "
  12 = "Landline (Two additional versions) "
  13 = "Landline (Three additional versions) "
  20 = "Cell Phone (No additional version) "
  21 = "Cell Phone (One additional version) "
  22 = "Cell Phone (Two additional versions) "
  23 = "Cell Phone (Three additional versions) "
  .  = "Missing"
  ;

  Value  RACEG_F
  1 = "Races are collapsed to 1 group "
  . = "Missing "
  ;
 
  Value  REGION_F
  1 = "Regions are collapsed to 1 region "
  . = "No region collapsed "
  ;
 
  Value  RELATED
  1 = "Parents "
  2 = "Guardian "
  3 = "Other relative "
  4 = "Unrelated "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  RELATION
  1 = "Mother (Birth/Adoptive/Step) "
  2 = "Father (Birth/Adoptive/Step) "
  3 = "Brother/Sister (Step/Foster/Half/Adoptive) "
  4 = "Grandparent (Father/Mother) "
  5 = "Other relative "
  6 = "Unrelated "
  7 = "Don´t know/Not sure "
  . = "Not asked or missing "
  ;
 
  Value  REPEAT
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  RSPSTAT1_F
  1 -100 = "2 digit state FIPSCODE "
  . = "Not asked or missing "
  ;
 
  Value  RSPSTATE
  1 -100 = "2 digit state FIPSCODE "
  . = "Not asked or missing "
  ;

  Value  RSPSTAT1z
  1 -100 = "2 digit state FIPSCODE "
  . = "Not asked or missing "
  ;

  Value  SAMP_NAME
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SAMP_PERS
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SCHGRADE
  1 -12 = "Grade "
  44 = "No school past year, skip filled "
  55 = "Not old enough for school, skip filled "
  66 = "Kindergarten "
  77 = "Don't know "
  88 = "Preschool "
  99 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCHL_12z
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  5 = "Not old enough for school, skip filled "
  6 = "Now goes to outside school, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCH_ANML
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  4 = "No school past year, skip filled "
  5 = "Not old enough for school, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCH_APL
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  4 = "No school past year, skip filled "
  5 = "Not old enough for school, skip filled "
  6 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCH_MED
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  4 = "No school past year, skip filled "
  5 = "Not old enough for school, skip filled "
  6 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCH_MOLD
  1 = "Yes "
  2 = "No "
  3 = "Home school, skip filled "
  4 = "No school past year, skip filled "
  5 = "Not old enough for school, skip filled "
  6 = "No current asthma, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCH_STAT
  1 = "Yes "
  2 = "No "
  7 = "Don’t know/Not sure "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  SCR_MED1z
  1 = "Yes "
  2 = "No "
  3 = "Respondent knows the meds "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  SCR_MED3z
  1 = "Yes, I have all the medications "
  2 = "Yes, I have some of the medications but not all "
  3 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  10 = "Know or no handy asthma medicines, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  SYMPFREE
  1 -14 = "Days/Nights "
  88 = "None "
  77 = "Don´t know "
  99 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  SYMP_30D
  1 -29 = "Days "
  30 = "Every day "
  66 = "No symptoms past one year, skip filled "
  77 = "Don't know "
  88 = "No symptoms in the past 30 days "
  99 = "Refused "
  100 = "Symptoms 3 months to 1 year ago, skip filled "
  . = "Not asked or missing "
  ;
 
  Value  SYRP_B2AS
  0 -5 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  SYRP_CS
  0 -2 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  SYRP_METH
  0 -3 = "Count "
  99 = "Missing "
  . = "Skip filled "
  ;
 
  Value  SYRUP
  1 = "Yes "
  2 = "No "
  4 = "No asthma med. past 3 months, skip filled "
  5 = "Never took asthma medication, skip filled "
  7 = "Don't know "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_1z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_10z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_2z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_3z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_4z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_5z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_6z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_7z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_7799z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_8z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_ID_9z
  1 = "Yes "
  2 = "No "
  . = "Not asked or missing "
  ;
 
  Value  SYRUP_TEXT1z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT2z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT3z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT4z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT5z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT6z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT7z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT8z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  SYRUP_TEXT96z
  1 = "Yes "
  2 = "No "
  3 = "No other medication text filled "
  . = "Skip filled "
  ;
 
  Value  S_INSIDE
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  TCH_MON
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  TCH_RESP
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  TCH_SIGN
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  UNEMP_R
  1 = "Keeping house "
  2 = "Going to school "
  3 = "Retired "
  4 = "Disabled "
  5 = "Unable to work for other health reasons "
  6 = "Looking for work "
  7 = "Laid off "
  8 = "Other "
  66 = "Now Employed, skip filled "
  77 = "Don't know "
  88 = "Unknown Employment, skip filled "
  99 = "Refused "
  . = "Partial complete "
  ;
 
  Value  URG_TIME
  1 -365 = "Number "
  555 = "No current asthma, nothing happened past year, skip filled "
  666 = "No MD visit past year, skip filled "
  777 = "Don't know "
  888 = "None "
  999 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  WOOD_STOVE
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  WORKENV5z
  1 = "Yes "
  2 = "No "
  5 = "Now employed former/inactive/unknown asthma, skip filled "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  10 = "Previously but not currently employed, skip filled "
  . = "Partial complete "
  ;
 
  Value  WORKENV6z
  1 = "Yes "
  2 = "No "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  10 = "Previously but not currently employed, skip filled "
  . = "Partial complete "
  ;
 
  Value  WORKENV7z
  1 = "Yes "
  2 = "No "
  5 = "Caused by current job, skip filled "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  WORKENV8z
  1 = "Yes "
  2 = "No "
  5 = "Caused by current job, skip filled "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  WORKQUIT1z
  1 = "Yes "
  2 = "No "
  5 = "Caused by current job, skip filled "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  55 = "Not made worse or caused in any previous job, skip filled "
  . = "Partial complete "
  ;
 
  Value  WORKSEN3z
  1 = "Yes "
  2 = "No "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  WORKSEN4z
  1 = "Yes "
  2 = "No "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  WORKTALK
  1 = "Yes "
  2 = "No "
  6 = "Never employed, skip filled "
  7 = "Don't know "
  8 = "Past employment unknown, skip filled "
  9 = "Refused "
  . = "Partial complete "
  ;
 
  Value  _CUR_ASTH_C
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  _EVER_ASTH_C
  1 = "Yes "
  2 = "No "
  7 = "Don´t know/Not sure "
  9 = "Refused "
  . = "Not asked or missing "
  ;
 
  Value  _STATE
  1 = "Alabama "
  2 = "Alaska "
  4 = "Arizona "
  5 = "Arkansas "
  6 = "California "
  8 = "Colorado "
  9 = "Connecticut "
  10 = "Delaware "
  11 = "District of Columbia "
  12 = "Florida "
  13 = "Georgia "
  15 = "Hawaii "
  16 = "Idaho "
  17 = "Illinois "
  18 = "Indiana "
  19 = "Iowa "
  20 = "Kansas "
  21 = "Kentucky "
  22 = "Louisiana "
  23 = "Maine "
  24 = "Maryland "
  25 = "Massachusetts "
  26 = "Michigan "
  27 = "Minnesota "
  28 = "Mississippi "
  29 = "Missouri "
  30 = "Montana "
  31 = "Nebraska "
  32 = "Nevada "
  33 = "New Hampshire "
  34 = "New Jersey "
  35 = "New Mexico "
  36 = "New York "
  37 = "North Carolina "
  38 = "North Dakota "
  39 = "Ohio "
  40 = "Oklahoma "
  41 = "Oregon "
  42 = "Pennsylvania "
  44 = "Rhode Island "
  45 = "South Carolina "
  46 = "South Dakota "
  47 = "Tennessee "
  48 = "Texas "
  49 = "Utah "
  50 = "Vermont "
  51 = "Virginia "
  53 = "Washington "
  54 = "West Virginia "
  55 = "Wisconsin "
  56 = "Wyoming "
  66 = "Guam "
  72 = "Puerto Rico "
  78 = "Virgin Islands "
  ;

  value $INDI_LLCP	
    '1'	= "2012,2013,2014 landline and cell phone"
    '2'	= "2012,2013,2014 landline only"
    '3'	= "2012,2013 2014 landline, 2014 cell phone"
    '4'	= "2012,2013,2014 landline, 2013,2014 cell phone"
    ' ' = "Missing"
  ;

  value INDI_LLCPz	
    1 = "2012,2013,2014 landline and cell phone"
    2 = "2012,2013,2014 landline only"
    3 = "2012,2013 2014 landline, 2014 cell phone"
    4 = "2012,2013,2014 landline, 2013,2014 cell phone"
    . = "Missing"
  ;

  Value  SURVEYRz
      2006 = "BRFSS Asthma Call_Back survey year" 
      2007 = "BRFSS Asthma Call_Back survey year" 
      2008 = "BRFSS Asthma Call_Back survey year" 
      2009 = "BRFSS Asthma Call_Back survey year" 
      2010 = "BRFSS Asthma Call_Back survey year" 
      2011 = "BRFSS Asthma Call_Back survey year" 
      2012 = "BRFSS Asthma Call_Back survey year" 
      2013 = "BRFSS Asthma Call_Back survey year" 
      2014 = "BRFSS Asthma Call_Back survey year" 
      2015 = "BRFSS Asthma Call_Back survey year"
	  2016 = "BRFSS Asthma Call_Back survey year" 
      2017 = "BRFSS Asthma Call_Back survey year" 
      2018 = "BRFSS Asthma Call_Back survey year" 
      2019 = "BRFSS Asthma Call_Back survey year"
      .    = "Missing" 
   ; 
				
  value _CSEXG_z
          1	=	"MALE"
          2	=	"FEMALE"
          . =	"Missing"
   ;

  value _CRACEG_z
     1 = "White only"
     2 = "Black or African American only"
     3 = "Other races and Multiracial"
     . = "Missing"
  ;

   value  CHILD_RACE_M_YEARSz
	   1  = "White Respondents who reported their race as white."
       2  = "Black or African American Respondents who reported their race as black."
       3  = "American Indian or Alaskan Native Respondents who reported their race as American Indian or Alaska Native."
       4  = "Asian Respondents who reported their race as Asian."
       5  = "Native Hawaiian or other Pacific Islander Respondents who reported their race as Native Hawaiian or Pacific Islander."
       6  = "Other race Respondents who report they are of some other race group not listed in the question responses."
       7  = "No preferred race Respondents who reported they are of more than one race group but did not report a preference or the preferred race is missing"
       8  = "Multiracial but preferred race not answered Respondents who reported they are of more than one race group but did not answer the question about which race best represents them NOTE: This is a data collection error."
       77 =	"Don’t know/Not sure Respondents who reported they didn´t know their race and did not answer the question about which race best represents them."
       99 =	"Refused Respondents who refused to give their race and did not answer the question about which race best represents them."
       .  =	"Missing"
    ;

   value KNOWMOST
        1 = "Yes "
		2 = "No "
		7 = "Don´t know/Not sure "
		9 = "Refused "
		. =	"Missing"
		;

	value PRESENTALT
		1 = "Yes "
		2 = "No "
		7 = "Don´t know/Not sure "
		9 = "Refused "
		. =	"Missing"
		;

	value MOSTKNOW
		1 = "Yes "
		2 = "No "
		7 = "Don´t know/Not sure "
		9 = "Refused "
		. =	"Missing"
		;

	value ALTPRESENT
		1 = "Yes "
		2 = "No "
		7 = "Don´t know/Not sure "
		9 = "Refused "
		. =	"Missing"
		;

RUN;
