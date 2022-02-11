10 RANDOMIZE TIMER: SCREEN 0, 0, 0: WIDTH 80: KEY OFF: CLS
20 PRINT "This is a Civil War simulation."
30 PRINT "To play, enter a response when asked."
40 PRINT "Note that all factors are interrelated and that your responses"
50 PRINT "can change history.  Facts and figures user are based on the"
60 PRINT "actual occurence.  Though battles tend to result as they did in"
70 PRINT "the Civil War, the results depend on you!"
80 PRINT : PRINT "You are the Union.": PRINT
90 FOR A = 1 TO 14
100 READ M2, M1, C2, C1, M, B$, L$
110 I1 = 10 + (L - W) * 2
120 I2 = 10 + (W - L) * 2
130 D1 = 100 * INT(M1 * (100 - I1) / 2000 * (1 + (R1 - Q1) / (R1 + 1)) + .5)
140 D2 = 100 * INT(M2 * (100 - I2) / 2000 + .5)
150 F1 = 5 * M1 / 6
160 PRINT
170 PRINT "This is the battle of "; B$; "."
180 PRINT L$
190 PRINT
200 PRINT TAB(20); "Union"; TAB(40); "Confederacy"
210 PRINT "Men"; TAB(21); INT(M1 * (1 + (P1 - T1) / (M3 + 1))); TAB(41); INT(M2 * (1 + (P2 - T2) / (M4 + 1)))
220 PRINT "Money"; TAB(20); "$"; D1; TAB(40); "$"; D2
230 PRINT "Inflation"; TAB(21); I1 + 15; "%"; TAB(41); I2; "%"
240 INPUT "How much will you spend on food"; F
250 IF F < 0 OR F > D1 THEN 240
260 INPUT "How much will you spend on salaries"; S
270 IF S < 0 OR S > D1 THEN 260
280 INPUT "How much will you spend on ammunition"; B
290 IF B < 0 OR B > D1 THEN 280
300 IF F + S + B > D1 THEN PRINT "No deficits are allowed.  You have only $"; D1; "to spend.": GOTO 240
310 O = (2 * F * F + S * S) / F1 / F1 + 1
320 PRINT "Morale is ";
330 IF O < 5 THEN PRINT "poor.";  ELSE IF O < 10 THEN PRINT "fair.";  ELSE PRINT "high.";
340 PRINT "  "; : ON M GOTO 370, 360, 350
350 PRINT "You are on the defensive.": GOTO 380
360 PRINT "Both sides are on the offensive.": GOTO 380
370 PRINT "You are on the offensive.": GOTO 380
380 INPUT "What is your strategy (0=help)"; Y: Y = INT(Y + .5): IF Y < 0 OR Y > 5 THEN 380
390 IF Y > 0 THEN 550
400 IF M < 3 THEN 480
410 PRINT "Defensive strategies:"
420 PRINT "1. Artillery attack"
430 PRINT "2. Fortification against frontal attack"
440 PRINT "3. Fortification against flanking maneuvers"
450 PRINT "4. Fall back"
460 PRINT "5. Surrender"
470 GOTO 380
480 PRINT "Offensive strategies:"
490 PRINT "1. Artillery attack"
500 PRINT "2. Frontal attack"
510 PRINT "3. Flanking maneuver"
520 PRINT "4. Encirclement"
530 PRINT "5. Surrender"
540 GOTO 380
550 IF Y = 5 THEN PRINT "The Union has surrendered.": GOTO 1090
560 PRINT TAB(20); "Union"; TAB(40); "Confederacy"
570 C5 = 2 * C1 / 5 * (1 + 1 / (2 * (ABS(INT(4 * RND) + 1 - Y) + 1)))
580 C5 = INT(C5 * (O + 1) / O * (1.279999 + F1 / (B + 1)) + .5)
590 IF C5 + 100 / O < M1 * (1 + (P1 - T1) / (M3 + 1)) THEN 630
600 C5 = INT(13 * M1 / 20 * (1 + (P1 - T1) / (M3 + 1)))
610 E = 7 * C5 / 13
620 U = 1: GOTO 640
630 E = 100 / O
640 PRINT "Casualties"; TAB(20); C5; TAB(40); INT(17 * C2 * C1 / C5 / 20 + .5)
650 PRINT "Desertions"; TAB(20); INT(E); TAB(40); INT(5 * O)
660 PRINT "You suffered"; INT(100 * C5 / C1 + .5); "% casualties compared to the actual": PRINT "casualties at "; B$; ".  You ";
670 IF U = 1 THEN PRINT "lost "; : U = 0: L = L + 1: GOTO 690
680 PRINT "won "; : W = W + 1
690 PRINT B$; "."
700 PRINT
710 IF W > L AND W > 9 AND RND > .5 THEN PRINT "The Confederacy has surrendered.": GOTO 1060
720 T1 = T1 + C5 + E
730 T2 = T2 + 17 * C2 * C1 / C5 / 20 + 5 * O
740 P1 = P1 + C1
750 P2 = P2 + C2
760 Q1 = Q1 + F + S + B
770 R1 = R1 + M1 * (100 - I1) / 20
780 M3 = M3 + M1
790 M4 = M4 + M2
800 NEXT A
810 DATA 18000,18500,1967,2708,1,"Bull Run"
820 DATA"July 21, 1861: General Beauregard, commanding the South, met the Union forces   with General McDowell in a premature battle at Bull Run.  General Jackson       helped push back the Union attack."
830 DATA 40000,44894,10699,13047,3,"Shiloh"
840 DATA"April 6-7, 1862: The Confererate surprise attack at Shiloh failed due to poor   organization."
850 DATA 95000,115000,20614,15849,3,"Seven Days"
860 DATA"June 25-July 1, 1862: General Lee (CSA) upheld the offensive throughout the     battle and forced General McClellan and the Union forces away from Richmond."
870 DATA 54000,63000,10000,14000,2,"The Second Bull Run"
880 DATA"August 29-30, 1862: The combined Confederate forces under Lee and Jackson drove the Union forces back to Washington."
890 DATA 40000,50000,10000,12000,3,"Antietam"
900 DATA"September 17, 1862: The South failed to incorporate Maryland into the           Confederacy."
910 DATA 75000,120000,5377,12653,1,"Fredericksburg"
920 DATA"December 13, 1862: The Confederacy, under Lee, successfully repulsed an attack  by the Union, under General Burnside."
930 DATA 38000,45000,11000,12000,1,"Murfreesboro"
940 DATA"December 31, 1862: The South, under General Bragg, won a close battle."
950 DATA 32000,90000,13000,17197,2,"Chancellorsville"
960 DATA"May 1-6, 1863: The South had a costly victory and lost one of their outstanding generals, 'Stonewall' Jackson."
970 DATA 50000,70000,12000,19000,1,"Vicksburg"
980 DATA"July 4, 1863: Vicksburg was a costly defeat for the South since it gave the     Union access to the Mississippi."
990 DATA 72500,85000,20000,23000,3,"Gettysburg"
1000 DATA"June 30, 1863: A Southern mistake by General Lee at Gettysburg cost them one of the most crucial battles of the war."
1010 DATA 66000,60000,18000,16000,2,"Chickamauga"
1020 DATA"September 15, 1863: Confusion in a forest near Chickamauga led to a costly      Southern victory."
1030 DATA 37000,60000,6700,5800,2,"Chattanooga"
1040 DATA"November 25, 1863: After the South had sieged General Rosencrans' army for threemonths, General Grant broke the siege."
1050 DATA 62000,110000,17723,18000,2,"Spotsylvania"
1060 DATA"May 5, 1864: Grant's plan to keep Lee isolated began to fail here, and continuedat Cold Harbor and Petersburg."
1070 DATA 65000,100000,8500,3700,1,"Atlanta"
1080 DATA"August, 1864: Sherman and three veteran armies converged on Atlanta and dealt   the death blow to the Confederacy."
1090 PRINT "You won"; W; "battles and lost"; L; "battles."
1100 IF Y = 5 OR L > W THEN PRINT "The Confederacy has won the war.": GOTO 1120
1110 PRINT "The Union has won the war."
1120 END

