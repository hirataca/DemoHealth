       PROCESS NODLL,NODYNAM,TEST(NOSEP),NOCICS,NOSQL,PGMN(LU)
      *+---------------------------------------------------------------+
      *| Thcipdb0                                                      |
      *| Product: IBM Developer for z/OS                               |
      *| Component: IBM z/OS Automated Unit Testing Framework (zUnit)  |
      *|   for Enterprise COBOL and PL/I                               |
      *| Program: Enterprise COBOL zUnit Test Case for Dynamic Runner  |
      *| Date Generated: 02/22/2021 19:34                              |
      *| ID: f5efa266-00b7-4a39-a2f9-81d240238bd9                      |
      *+---------------------------------------------------------------+
      *+---------------------------------------------------------------+
      *| TEST_INQ01                                                    |
      *|     This program is for Test INQ01                            |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'TEST_INQ01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PROGRAM-NAME   PIC X(8)  VALUE 'HCIPDB01'.
       01 AZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  AZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  AZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  AZ-P3 PIC X(3) VALUE 'AZU'.
       01 AZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 ASSERT-ST.
         03 ASSERT-RC PIC 9(9) BINARY VALUE 4.
         03 ASSERT-TEXT PIC 9(4) BINARY VALUE 0.
       01 AZ-TEST-NAME-LEN       PIC S9(9) COMP-5 EXTERNAL.
       01 AZ-TEST-NAME           PIC X(254) EXTERNAL.
       1 AZ-TEST-EXPECTED-DATA-VALUE.
          3 ZUT00000000.
            5 PIC X(6) DISPLAY VALUE '01IPAT'.
          3 ZUT00000001.
            5 PIC X(10) DISPLAY VALUE '9627811234'.
          3 ZUT00000002.
            5 PIC X(5) DISPLAY VALUE 'Ralph'.
            5 PIC X(5) DISPLAY VALUE SPACES.
          3 ZUT00000003.
            5 PIC X(8) DISPLAY VALUE 'DAlmeida'.
            5 PIC X(12) DISPLAY VALUE SPACES.
          3 ZUT00000004.
            5 PIC X(10) DISPLAY VALUE '1980-07-11'.
          3 ZUT00000005.
            5 PIC X(14) DISPLAY VALUE '34 Main Street'.
            5 PIC X(6) DISPLAY VALUE SPACES.
          3 ZUT00000006.
            5 PIC X(7) DISPLAY VALUE 'Toronto'.
            5 PIC X(13) DISPLAY VALUE SPACES.
          3 ZUT00000007.
            5 PIC X(7) DISPLAY VALUE 'M5H 1T1'.
            5 PIC X(3) DISPLAY VALUE SPACES.
          3 ZUT00000008.
            5 PIC X(12) DISPLAY VALUE '077-123-9987'.
            5 PIC X(8) DISPLAY VALUE SPACES.
          3 ZUT00000009.
            5 PIC X(14) DISPLAY VALUE 'RalphD@ibm.com'.
            5 PIC X(36) DISPLAY VALUE SPACES.
          3 ZUT0000000A.
            5 PIC X(6) DISPLAY VALUE 'ralphd'.
            5 PIC X(4) DISPLAY VALUE SPACES.
          3 ZUT0000000B.
            5 PIC X(32302) DISPLAY VALUE SPACES.
       1 AZ-COMPARE.
         3 AZ-COMPARE-ITEM-NAME-PTR  POINTER.
         3 AZ-COMPARE-ITEM-NAME-LEN  PIC S9(9) COMP-5.
         3 AZ-COMPARE-ITEM-VALUE-PTR POINTER.
         3 AZ-COMPARE-ITEM-VALUE-LEN PIC S9(9) COMP-5.
         3 AZ-COMPARE-ITEM-EXP-VALUE-PTR POINTER.
         3 AZ-COMPARE-ITEM-EXP-VALUE-LEN PIC S9(9) COMP-5.
       LOCAL-STORAGE SECTION.
       1 AZ-COMPARE-ITEM-NAMES.
         3 ZUT0000000C.
            5 PIC X(20) DISPLAY VALUE 'CA-REQUEST-ID OF DFH'.
            5 PIC X(8) DISPLAY VALUE 'COMMAREA'.
         3 ZUT0000000E.
            5 PIC X(20) DISPLAY VALUE 'CA-RETURN-CODE OF DF'.
            5 PIC X(9) DISPLAY VALUE 'HCOMMAREA'.
         3 ZUT00000010.
            5 PIC X(20) DISPLAY VALUE 'CA-PATIENT-ID OF DFH'.
            5 PIC X(8) DISPLAY VALUE 'COMMAREA'.
         3 ZUT00000012.
            5 PIC X(20) DISPLAY VALUE 'CA-INS-CARD-NUM OF C'.
            5 PIC X(20) DISPLAY VALUE 'A-PATIENT-REQUEST OF'.
            5 PIC X(12) DISPLAY VALUE ' DFHCOMMAREA'.
         3 ZUT00000014.
            5 PIC X(20) DISPLAY VALUE 'CA-FIRST-NAME OF CA-'.
            5 PIC X(20) DISPLAY VALUE 'PATIENT-REQUEST OF D'.
            5 PIC X(10) DISPLAY VALUE 'FHCOMMAREA'.
         3 ZUT00000016.
            5 PIC X(20) DISPLAY VALUE 'CA-LAST-NAME OF CA-P'.
            5 PIC X(20) DISPLAY VALUE 'ATIENT-REQUEST OF DF'.
            5 PIC X(9) DISPLAY VALUE 'HCOMMAREA'.
         3 ZUT00000018.
            5 PIC X(20) DISPLAY VALUE 'CA-DOB OF CA-PATIENT'.
            5 PIC X(20) DISPLAY VALUE '-REQUEST OF DFHCOMMA'.
            5 PIC X(3) DISPLAY VALUE 'REA'.
         3 ZUT0000001A.
            5 PIC X(20) DISPLAY VALUE 'CA-ADDRESS OF CA-PAT'.
            5 PIC X(20) DISPLAY VALUE 'IENT-REQUEST OF DFHC'.
            5 PIC X(7) DISPLAY VALUE 'OMMAREA'.
         3 ZUT0000001C.
            5 PIC X(20) DISPLAY VALUE 'CA-CITY OF CA-PATIEN'.
            5 PIC X(20) DISPLAY VALUE 'T-REQUEST OF DFHCOMM'.
            5 PIC X(4) DISPLAY VALUE 'AREA'.
         3 ZUT0000001E.
            5 PIC X(20) DISPLAY VALUE 'CA-POSTCODE OF CA-PA'.
            5 PIC X(20) DISPLAY VALUE 'TIENT-REQUEST OF DFH'.
            5 PIC X(8) DISPLAY VALUE 'COMMAREA'.
         3 ZUT00000020.
            5 PIC X(20) DISPLAY VALUE 'CA-PHONE-MOBILE OF C'.
            5 PIC X(20) DISPLAY VALUE 'A-PATIENT-REQUEST OF'.
            5 PIC X(12) DISPLAY VALUE ' DFHCOMMAREA'.
         3 ZUT00000022.
            5 PIC X(20) DISPLAY VALUE 'CA-EMAIL-ADDRESS OF '.
            5 PIC X(20) DISPLAY VALUE 'CA-PATIENT-REQUEST O'.
            5 PIC X(13) DISPLAY VALUE 'F DFHCOMMAREA'.
         3 ZUT00000024.
            5 PIC X(20) DISPLAY VALUE 'CA-USERID OF CA-PATI'.
            5 PIC X(20) DISPLAY VALUE 'ENT-REQUEST OF DFHCO'.
            5 PIC X(6) DISPLAY VALUE 'MMAREA'.
         3 ZUT00000026.
            5 PIC X(20) DISPLAY VALUE 'CA-ADDITIONAL-DATA O'.
            5 PIC X(20) DISPLAY VALUE 'F CA-PATIENT-REQUEST'.
            5 PIC X(15) DISPLAY VALUE ' OF DFHCOMMAREA'.
       1 AZ-COMPARE-WORK-ITEMS.
          3 ZUT0000000D PIC X(6) OCCURS 2.
          3 ZUT0000000F PIC 9(2) OCCURS 2.
          3 ZUT00000011 PIC 9(10) OCCURS 2.
          3 ZUT00000013 PIC X(10) OCCURS 2.
          3 ZUT00000015 PIC X(10) OCCURS 2.
          3 ZUT00000017 PIC X(20) OCCURS 2.
          3 ZUT00000019 PIC X(10) OCCURS 2.
          3 ZUT0000001B PIC X(20) OCCURS 2.
          3 ZUT0000001D PIC X(20) OCCURS 2.
          3 ZUT0000001F PIC X(10) OCCURS 2.
          3 ZUT00000021 PIC X(20) OCCURS 2.
          3 ZUT00000023 PIC X(50) OCCURS 2.
          3 ZUT00000025 PIC X(10) OCCURS 2.
          3 ZUT00000027 PIC X(32302) OCCURS 2.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-COMPARE-ITEM-NAME      PIC X(254).
       01 AZ-COMPARE-ITEM-VALUE     PIC X(254).
       01 AZ-COMPARE-ITEM-EXP-VALUE PIC X(254).
       1 DFHEIBLK.
         2 EIBTIME PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBDATE PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRNID PICTURE X(4).
         2 EIBTASKN PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRMID PICTURE X(4).
         2 DFHEIGDI PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCPOSN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCALEN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBAID PICTURE X(1).
         2 EIBFN PICTURE X(2).
         2 EIBRCODE PICTURE X(6).
         2 EIBDS PICTURE X(8).
         2 EIBREQID PICTURE X(8).
         2 EIBRSRCE PICTURE X(8).
         2 EIBSYNC PICTURE X.
         2 EIBFREE PICTURE X.
         2 EIBRECV PICTURE X.
         2 EIBSEND PICTURE X.
         2 EIBATT PICTURE X.
         2 EIBEOC PICTURE X.
         2 EIBFMH PICTURE X.
         2 EIBCOMPL PICTURE X(1).
         2 EIBSIG PICTURE X(1).
         2 EIBCONF PICTURE X(1).
         2 EIBERR PICTURE X(1).
         2 EIBERRCD PICTURE X(4).
         2 EIBSYNRB PICTURE X.
         2 EIBNODAT PICTURE X.
         2 EIBRESP PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRESP2 PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRLDBK PICTURE X(1).
       1 DFHCOMMAREA.
         3 CA-REQUEST-ID PIC X(6).
         3 CA-RETURN-CODE PIC 9(2).
         3 CA-PATIENT-ID PIC 9(10).
         3 CA-REQUEST-SPECIFIC PIC X(32482).
         3 CA-PATIENT-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-INS-CARD-NUM PIC X(10).
         5 CA-FIRST-NAME PIC X(10).
         5 CA-LAST-NAME PIC X(20).
         5 CA-DOB PIC X(10).
         5 CA-ADDRESS PIC X(20).
         5 CA-CITY PIC X(20).
         5 CA-POSTCODE PIC X(10).
         5 CA-PHONE-MOBILE PIC X(20).
         5 CA-EMAIL-ADDRESS PIC X(50).
         5 CA-USERID PIC X(10).
         5 CA-ADDITIONAL-DATA PIC X(32302).
         3 CA-PATIENT-USER-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-USERNAME PIC X(10).
         5 CA-USERPASSWORD PIC X(14).
         5 CA-ADDITIONAL-DATA PIC X(32458).
         3 CA-MEDICATION-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-DRUG-NAME PIC X(50).
         5 CA-STRENGTH PIC X(20).
         5 CA-AMOUNT PIC 9(03).
         5 CA-ROUTE PIC X(20).
         5 CA-FREQUENCY PIC X(20).
         5 CA-IDENTIFIER PIC X(20).
         5 CA-BIOMED-TYPE PIC X(2).
         5 CA-START-DATE PIC X(10).
         5 CA-END-DATE PIC X(10).
         5 CA-PRESCRIPTION-ID PIC 9(10).
         5 CA-ADDITIONAL-DATA PIC X(32317).
         3 CA-MEDITATION-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-MEDITATION-NAME PIC X(50).
         5 CA-MEDITATION-TYPE PIC X(20).
         5 CA-RELIEF PIC X(20).
         5 CA-POSTURE PIC X(20).
         5 CA-HOW-OFTEN PIC X(20).
         5 CA-ADDITIONAL-DATA PIC X(32352).
         3 CA-THRESHOLD-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-HR-THRESHOLD PIC X(10).
         5 CA-BP-THRESHOLD PIC X(10).
         5 CA-MS-THRESHOLD PIC X(10).
         5 CA-ADDITIONAL-DATA PIC X(32452).
         3 CA-VISIT-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-VISIT-DATE PIC X(10).
         5 CA-VISIT-TIME PIC X(10).
         5 CA-HEART-RATE PIC X(10).
         5 CA-BLOOD-PRESSURE PIC X(10).
         5 CA-MENTAL-STATE PIC X(10).
         5 CA-ADDITIONAL-DATA PIC X(32432).
       PROCEDURE DIVISION USING AZ-TEST
                      DFHEIBLK DFHCOMMAREA.
      * START
           DISPLAY 'TEST_INQ01 Started...'
           MOVE 0 TO AZ-TEST-NAME-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-NAME-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
           MOVE AZ-TEST TO AZ-TEST-NAME.
      * SET INPUT VALUE
      * CALL TEST PROGRAM
           DISPLAY 'CALL HCIPDB01'
           CALL PROGRAM-NAME
           USING DFHEIBLK DFHCOMMAREA
           .
      * EVALUATE OUTPUT VALUE
             IF CA-REQUEST-ID OF DFHCOMMAREA = ZUT00000000 THEN
               CONTINUE
             ELSE
               MOVE CA-REQUEST-ID OF DFHCOMMAREA TO ZUT0000000D(1)
               MOVE ZUT00000000 TO ZUT0000000D(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT0000000C
               MOVE LENGTH OF ZUT0000000C TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT0000000D(1)
               MOVE 6 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT0000000D(2)
               MOVE 6 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF (CA-RETURN-CODE OF DFHCOMMAREA IS NUMERIC)
                 AND (CA-RETURN-CODE OF DFHCOMMAREA = 0) THEN
               CONTINUE
             ELSE
               MOVE CA-RETURN-CODE OF DFHCOMMAREA TO ZUT0000000F(1)
               MOVE 0 TO ZUT0000000F(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT0000000E
               MOVE LENGTH OF ZUT0000000E TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT0000000F(1)
               MOVE 2 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT0000000F(2)
               MOVE 2 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF (CA-PATIENT-ID OF DFHCOMMAREA IS NUMERIC)
                 AND (CA-PATIENT-ID OF DFHCOMMAREA = 0000000001) THEN
               CONTINUE
             ELSE
               MOVE CA-PATIENT-ID OF DFHCOMMAREA TO ZUT00000011(1)
               MOVE 0000000001 TO ZUT00000011(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000010
               MOVE LENGTH OF ZUT00000010 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000011(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000011(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-INS-CARD-NUM OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000001 THEN
               CONTINUE
             ELSE
               MOVE CA-INS-CARD-NUM OF CA-PATIENT-REQUEST OF
           DFHCOMMAREA TO ZUT00000013(1)
               MOVE ZUT00000001 TO ZUT00000013(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000012
               MOVE LENGTH OF ZUT00000012 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000013(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000013(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-FIRST-NAME OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000002 THEN
               CONTINUE
             ELSE
               MOVE CA-FIRST-NAME OF CA-PATIENT-REQUEST OF DFHCOMMAREA
           TO ZUT00000015(1)
               MOVE ZUT00000002 TO ZUT00000015(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000014
               MOVE LENGTH OF ZUT00000014 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000015(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000015(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-LAST-NAME OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000003 THEN
               CONTINUE
             ELSE
               MOVE CA-LAST-NAME OF CA-PATIENT-REQUEST OF DFHCOMMAREA
           TO ZUT00000017(1)
               MOVE ZUT00000003 TO ZUT00000017(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000016
               MOVE LENGTH OF ZUT00000016 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000017(1)
               MOVE 20 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000017(2)
               MOVE 20 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-DOB OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000004 THEN
               CONTINUE
             ELSE
               MOVE CA-DOB OF CA-PATIENT-REQUEST OF DFHCOMMAREA TO
           ZUT00000019(1)
               MOVE ZUT00000004 TO ZUT00000019(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000018
               MOVE LENGTH OF ZUT00000018 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000019(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000019(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-ADDRESS OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000005 THEN
               CONTINUE
             ELSE
               MOVE CA-ADDRESS OF CA-PATIENT-REQUEST OF DFHCOMMAREA TO
           ZUT0000001B(1)
               MOVE ZUT00000005 TO ZUT0000001B(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT0000001A
               MOVE LENGTH OF ZUT0000001A TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT0000001B(1)
               MOVE 20 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT0000001B(2)
               MOVE 20 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-CITY OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000006 THEN
               CONTINUE
             ELSE
               MOVE CA-CITY OF CA-PATIENT-REQUEST OF DFHCOMMAREA TO
           ZUT0000001D(1)
               MOVE ZUT00000006 TO ZUT0000001D(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT0000001C
               MOVE LENGTH OF ZUT0000001C TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT0000001D(1)
               MOVE 20 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT0000001D(2)
               MOVE 20 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-POSTCODE OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000007 THEN
               CONTINUE
             ELSE
               MOVE CA-POSTCODE OF CA-PATIENT-REQUEST OF DFHCOMMAREA
           TO ZUT0000001F(1)
               MOVE ZUT00000007 TO ZUT0000001F(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT0000001E
               MOVE LENGTH OF ZUT0000001E TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT0000001F(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT0000001F(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-PHONE-MOBILE OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT00000008 THEN
               CONTINUE
             ELSE
               MOVE CA-PHONE-MOBILE OF CA-PATIENT-REQUEST OF
           DFHCOMMAREA TO ZUT00000021(1)
               MOVE ZUT00000008 TO ZUT00000021(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000020
               MOVE LENGTH OF ZUT00000020 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000021(1)
               MOVE 20 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000021(2)
               MOVE 20 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-EMAIL-ADDRESS OF CA-PATIENT-REQUEST OF DFHCOMMAREA
           = ZUT00000009 THEN
               CONTINUE
             ELSE
               MOVE CA-EMAIL-ADDRESS OF CA-PATIENT-REQUEST OF
           DFHCOMMAREA TO ZUT00000023(1)
               MOVE ZUT00000009 TO ZUT00000023(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000022
               MOVE LENGTH OF ZUT00000022 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000023(1)
               MOVE 50 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000023(2)
               MOVE 50 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-USERID OF CA-PATIENT-REQUEST OF DFHCOMMAREA =
           ZUT0000000A THEN
               CONTINUE
             ELSE
               MOVE CA-USERID OF CA-PATIENT-REQUEST OF DFHCOMMAREA TO
           ZUT00000025(1)
               MOVE ZUT0000000A TO ZUT00000025(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000024
               MOVE LENGTH OF ZUT00000024 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000025(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000025(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
             IF CA-ADDITIONAL-DATA OF CA-PATIENT-REQUEST OF
           DFHCOMMAREA = ZUT0000000B THEN
               CONTINUE
             ELSE
               MOVE CA-ADDITIONAL-DATA OF CA-PATIENT-REQUEST OF
           DFHCOMMAREA TO ZUT00000027(1)
               MOVE ZUT0000000B TO ZUT00000027(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000026
               MOVE LENGTH OF ZUT00000026 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000027(1)
               MOVE 254 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000027(2)
               MOVE 254 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF AZ-ASSERT
               STRING
                 'Compare failed in PROCEDURE DIVISION.'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF AZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF AZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF AZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
      * END
           DISPLAY 'TEST_INQ01 Successful.'
           GOBACK.
       THROW-ASSERTION.
           SET ADDRESS OF AZ-COMPARE-ITEM-NAME TO
           AZ-COMPARE-ITEM-NAME-PTR.
           SET ADDRESS OF AZ-COMPARE-ITEM-VALUE TO
           AZ-COMPARE-ITEM-VALUE-PTR.
           SET ADDRESS OF AZ-COMPARE-ITEM-EXP-VALUE TO
           AZ-COMPARE-ITEM-EXP-VALUE-PTR.
      *    display error message and ends test
           DISPLAY '****************************************************
      -    '****************************'
           DISPLAY 'AZU2001W The test "' AZ-TEST(1:AZ-TEST-NAME-LEN) '"
      -    'failed due to an assertion.'
           DISPLAY 'AZU1101I ' MESSAGE-TXT OF AZ-ASSERT(1:MESSAGE-LEN
           OF AZ-ASSERT)
           DISPLAY ' Data item name : '
           AZ-COMPARE-ITEM-NAME(1:AZ-COMPARE-ITEM-NAME-LEN)
           DISPLAY '  Value         : '
           AZ-COMPARE-ITEM-VALUE(1:AZ-COMPARE-ITEM-VALUE-LEN)
           DISPLAY '  Expected value: '
           AZ-COMPARE-ITEM-EXP-VALUE(1:AZ-COMPARE-ITEM-EXP-VALUE-LEN)
           DISPLAY '****************************************************
      -    '****************************'
           CALL BZUASSRT USING AZ-P1 AZ-P2 AZ-P3 AZ-ASSERT
           MOVE 1 TO TRACE-LEN OF AZ-TRACE
           STRING 'ITEM NAME='
           AZ-COMPARE-ITEM-NAME(1:AZ-COMPARE-ITEM-NAME-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF AZ-TRACE
               WITH POINTER TRACE-LEN OF AZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF AZ-TRACE
           CALL BZUTRACE USING AZ-TRACE
           MOVE 1 TO TRACE-LEN OF AZ-TRACE
           STRING 'VALUE='
           AZ-COMPARE-ITEM-VALUE(1:AZ-COMPARE-ITEM-VALUE-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF AZ-trace
               WITH POINTER TRACE-LEN OF AZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF AZ-TRACE
           CALL BZUTRACE USING AZ-TRACE
           MOVE 1 TO TRACE-LEN OF AZ-TRACE
           STRING 'EXPECTED VALUE='
           AZ-COMPARE-ITEM-EXP-VALUE(1:AZ-COMPARE-ITEM-EXP-VALUE-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF AZ-TRACE
               WITH POINTER TRACE-LEN OF AZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF AZ-TRACE
           CALL BZUTRACE USING AZ-TRACE
           EXIT.
       END PROGRAM TEST_INQ01.
      *+---------------------------------------------------------------+
      *| BZU_INIT                                                     |
      *|     Initial Procedure                                         |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'BZU_INIT'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AZ-TEST-NAME-LEN      PIC S9(9) COMP-5.
       01 AZ-TESTCASE-ID        PIC X(36)
           VALUE 'f5efa266-00b7-4a39-a2f9-81d240238bd9'.
       LINKAGE SECTION.
       01 AZ-TEST               PIC X(80).
       01 AZ-TEST-ID            PIC X(80).
       PROCEDURE DIVISION USING AZ-TEST AZ-TEST-ID.
           MOVE 0 TO AZ-TEST-NAME-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-NAME-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
           DISPLAY 'BZU_INIT : ' AZ-TEST(1:AZ-TEST-NAME-LEN)
           MOVE AZ-TESTCASE-ID TO AZ-TEST-ID
           GOBACK.
       END PROGRAM BZU_INIT.
      *+---------------------------------------------------------------+
      *| BZU_TERM                                                      |
      *|     Termination Procedure                                     |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'BZU_TERM'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AZ-TEST-NAME-LEN      PIC S9(9) COMP-5.
       LINKAGE SECTION.
       01 AZ-TEST               PIC X(80).
       PROCEDURE DIVISION USING AZ-TEST.
           MOVE 0 TO AZ-TEST-NAME-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-NAME-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
           DISPLAY 'BZU_TERM : ' AZ-TEST(1:AZ-TEST-NAME-LEN)
           GOBACK.
       END PROGRAM BZU_TERM.
      *+---------------------------------------------------------------+
      *| EVALOPT                                                       |
      *|   Function to evaluate that the bit of option data            |
      *|   (1) Take AND of group common mask and option in Arg0        |
      *|   (2) Check if the group mask is equal to (1)                 |
      *|       If equal,    RTN01 is 0                                 |
      *|       If no equal, RTN01 is 1                                 |
      *+---------------------------------------------------------------+
       ID DIVISION.
       PROGRAM-ID. EVALOPT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  OUT1-REC.
         05 OUT1-DATA                PIC X(1) OCCURS 8.
       01 OUT1-DATA-R REDEFINES OUT1-REC.
         05 OUT1-DATA-UP             PIC X(4).
         05 OUT1-DATA-DOWN           PIC X(4).
       01  OUT2-REC.
         05  OUT2-DATA               PIC X(1) OCCURS 8.
       01  OUT2-DATA-R REDEFINES OUT2-REC.
         05 OUT2-DATA-UP             PIC X(4).
         05 OUT2-DATA-DOWN           PIC X(4).
       01  WORK1-REC.
         05  WORK1-DATA              PIC X(1) OCCURS 8.
       01  WORK1-DATA-R REDEFINES WORK1-REC.
         05 WORK1-DATA-UP            PIC X(4).
         05 WORK1-DATA-DOWN          PIC X(4).
       01  WORK-AREA.
         05  WORK-HEX-UP             PIC 9(4)  COMP.
         05  WORK-HEX-DOWN           PIC 9(4)  COMP.
       01  HEX-CHG-BEF.
         05  HEX-CHANGE-LV           PIC X(1) VALUE LOW-VALUE.
         05  HEX-CHANGE-BEFORE       PIC X(1).
       01  HEX-CHG-AFT      REDEFINES  HEX-CHG-BEF.
         05  HEX-CHANGE-AFTER        PIC 9(4)  COMP.
       01  TBL-CHANGE-DATA.
          05  FILLER                 PIC  X(004) VALUE '0000'.
          05  FILLER                 PIC  X(001) VALUE '0'.
          05  FILLER                 PIC  X(004) VALUE '0001'.
          05  FILLER                 PIC  X(001) VALUE '1'.
          05  FILLER                 PIC  X(004) VALUE '0010'.
          05  FILLER                 PIC  X(001) VALUE '2'.
          05  FILLER                 PIC  X(004) VALUE '0011'.
          05  FILLER                 PIC  X(001) VALUE '3'.
          05  FILLER                 PIC  X(004) VALUE '0100'.
          05  FILLER                 PIC  X(001) VALUE '4'.
          05  FILLER                 PIC  X(004) VALUE '0101'.
          05  FILLER                 PIC  X(001) VALUE '5'.
          05  FILLER                 PIC  X(004) VALUE '0110'.
          05  FILLER                 PIC  X(001) VALUE '6'.
          05  FILLER                 PIC  X(004) VALUE '0111'.
          05  FILLER                 PIC  X(001) VALUE '7'.
          05  FILLER                 PIC  X(004) VALUE '1000'.
          05  FILLER                 PIC  X(001) VALUE '8'.
          05  FILLER                 PIC  X(004) VALUE '1001'.
          05  FILLER                 PIC  X(001) VALUE '9'.
          05  FILLER                 PIC  X(004) VALUE '1010'.
          05  FILLER                 PIC  X(001) VALUE 'A'.
          05  FILLER                 PIC  X(004) VALUE '1011'.
          05  FILLER                 PIC  X(001) VALUE 'B'.
          05  FILLER                 PIC  X(004) VALUE '1100'.
          05  FILLER                 PIC  X(001) VALUE 'C'.
          05  FILLER                 PIC  X(004) VALUE '1101'.
          05  FILLER                 PIC  X(001) VALUE 'D'.
          05  FILLER                 PIC  X(004) VALUE '1110'.
          05  FILLER                 PIC  X(001) VALUE 'E'.
          05  FILLER                 PIC  X(004) VALUE '1111'.
          05  FILLER                 PIC  X(001) VALUE 'F'.
          01  TBL-DATA REDEFINES TBL-CHANGE-DATA.
           05  TBL-CHG  OCCURS  16 TIMES.
             10  TBL-BIT-CHAR        PIC  X(004).
             10  TBL-HEX-CHAR        PIC  X(001).
       01 BIT-COUNT                  PIC 9(1).
       01 I                          PIC S9(8) COMP.
       LINKAGE SECTION.
       01 G-MASK.
         03 D-G-MASK                 PIC X(1) OCCURS 19.
       01 COM-MASK.
         03 D-COM-MASK               PIC X(1) OCCURS 19.
       01 O-ARG0.
         03 D-O-ARG0                 PIC X(1) OCCURS 19.
       01 BYTE-COUNT                 PIC S9(8) COMP.
       01 RTN01                      PIC 9(1).
       PROCEDURE DIVISION USING G-MASK COM-MASK O-ARG0 BYTE-COUNT
            RTN01.
            MOVE 0 TO RTN01
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > BYTE-COUNT
              PERFORM ANDCOMMASK
              IF RTN01 = 1 THEN
                GOBACK
              END-IF
            END-PERFORM.
            EXIT PROGRAM.
       ANDCOMMASK.
      * CONVERT GROUP COMMON MASK TO BIT
            MOVE D-COM-MASK(I) TO HEX-CHANGE-BEFORE.
            DIVIDE 16 INTO HEX-CHANGE-AFTER GIVING WORK-HEX-UP
                                         REMAINDER WORK-HEX-DOWN.
            MOVE TBL-BIT-CHAR(WORK-HEX-UP + 1)   TO OUT1-DATA-UP.
            MOVE TBL-BIT-CHAR(WORK-HEX-DOWN + 1) TO OUT1-DATA-DOWN.
      * CONVERT OPTION IN ARG0 TO BIT
            MOVE D-O-ARG0(I) TO HEX-CHANGE-BEFORE.
            DIVIDE 16 INTO HEX-CHANGE-AFTER GIVING WORK-HEX-UP
                                         REMAINDER WORK-HEX-DOWN.
            MOVE TBL-BIT-CHAR(WORK-HEX-UP + 1)   TO OUT2-DATA-UP.
            MOVE TBL-BIT-CHAR(WORK-HEX-DOWN + 1) TO OUT2-DATA-DOWN.
      * CREATE EVAL BIT FROM GROUP COMMON MASK BIT AND ARG0 BIT
            PERFORM VARYING BIT-COUNT FROM 1 BY 1 UNTIL BIT-COUNT > 8
              IF OUT1-DATA(BIT-COUNT) = '1' AND
                 OUT2-DATA(BIT-COUNT) = '1' THEN
                MOVE '1' TO WORK1-DATA(BIT-COUNT)
              ELSE
                MOVE '0' TO WORK1-DATA(BIT-COUNT)
              END-IF
            END-PERFORM.
      * CONVERT GROUP MASK TO BIT DATA
            MOVE D-G-MASK(I) TO HEX-CHANGE-BEFORE.
            DIVIDE 16 INTO HEX-CHANGE-AFTER GIVING WORK-HEX-UP
                                         REMAINDER WORK-HEX-DOWN.
            MOVE TBL-BIT-CHAR(WORK-HEX-UP + 1)   TO OUT1-DATA-UP.
            MOVE TBL-BIT-CHAR(WORK-HEX-DOWN + 1) TO OUT1-DATA-DOWN.
      * CHECK IF EQUAL BETWEEN EVAL BIT AND GROUP MASK BIT
            IF WORK1-DATA-UP = OUT1-DATA-UP AND
               WORK1-DATA-DOWN = OUT1-DATA-DOWN THEN
              CONTINUE
            ELSE
              MOVE 1 TO RTN01
            END-IF
            EXIT.
       END PROGRAM 'EVALOPT'.
      *+---------------------------------------------------------------+
      *| AZU_GENERIC_CICS_DB2                                          |
      *|   Generic callback exit point                                 |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'AZU_GENERIC_CICS_DB2'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * DB2_INPT.
           ENTRY 'DB2_INPT'.
           DISPLAY 'DB2_INPT ...'
           MOVE 4 TO RETURN-CODE.
           GOBACK.
      * DB2_OUTP.
           ENTRY 'DB2_OUTP'.
           DISPLAY 'DB2_OUTP ...'
           MOVE 4 TO RETURN-CODE.
           GOBACK.
      * CICS_INPT.
           ENTRY 'CICS_INPT'.
           DISPLAY 'CICS_INPT ...'
           MOVE 4 TO RETURN-CODE.
           GOBACK.
      * CICS_OUTP.
           ENTRY 'CICS_OUTP'.
           DISPLAY 'CICS_OUTP ...'
           MOVE 4 TO RETURN-CODE.
           GOBACK.
      * CICS_INPT_0E08 FOR RETURN.
           ENTRY 'CICS_INPT_0E08'.
           DISPLAY 'CICS_INPT_0E08 ...'
           MOVE 0 TO RETURN-CODE.
           GOBACK.
       END PROGRAM 'AZU_GENERIC_CICS_DB2'.
      *+---------------------------------------------------------------+
      *| Program for EXEC CICS RETURN                                  |
      *|    Function code: 0E08                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'CICS_0E08_HCIPDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  AZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  AZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  AZ-P3 PIC X(3) VALUE 'AZU'.
       01 AZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TEST-LEN       PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
       01 AZ-OPT-MASK-DATA2  PIC X(2).
       01 AZ-OPT-MASK-DATA9  PIC X(9).
       01 AZ-OPT-MASK-DATA11 PIC X(11).
       01 AZ-OPT-MASK-DATA19 PIC X(19).
       01 AZ-OPT-BYTECOUNT   PIC S9(8) COMP.
       01 AZ-OPT-RC          PIC 9(1) VALUE 0.
       01 AZ-OPT-COMMASK.
         03  AZ-OPT-COMMASK-DATA2  PIC X(2) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA9  PIC X(9) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA11 PIC X(11) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA19 PIC X(19) OCCURS 1.
       01 AZ-LINE-BYTE      PIC S9(2) COMP.
       01 AZ-LINE-NUM       PIC 9(5).
       01 AZ-LINE-NUM-R   REDEFINES AZ-LINE-NUM.
         03 AZ-LINE-NUM-RD  PIC 9(1) OCCURS 5.
       01 AZ-LINE-I         PIC S9(8) COMP.
       01 AZ-LINE-J         PIC S9(8) COMP.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-MODX                   PIC X(4).
       01 AZ-DFHEIBLK.
         03 FILLER                  PIC X(85).
       01 AZ-DFHCOMMAREA.
         03 FILLER                  PIC X(1).
       01 AZ-COMPARE-ITEM-NAME      PIC X(254).
       01 AZ-COMPARE-ITEM-VALUE     PIC X(254).
       01 AZ-COMPARE-ITEM-EXP-VALUE PIC X(254).
       01 ARG0.
         03 ARG0-1        PIC X(2).
         03 ARG0-A        PIC X(28).
         03 ARG0-B REDEFINES ARG0-A.
           05 ARG0-2      PIC X(9).
           05 FILLER      PIC X(19).
         03 ARG0-C REDEFINES ARG0-A.
           05 FILLER      PIC X(6).
           05 ARG0-D.
             07 ARG0-3    PIC 9(1) OCCURS 22.
       01 ARG1            POINTER.
       01 ARG2            POINTER.
       01 ARG3            POINTER.
       01 ARG4            POINTER.
       01 ARG5            POINTER.
       01 ARG6            POINTER.
       01 ARG7            POINTER.
       01 ARG8            POINTER.
       01 ARG9            POINTER.
       01 ARG10           POINTER.
       01 AZ-CICS-TARGET-NAME-DEF4 PIC X(4).
       01 AZ-CICS-TARGET-NAME-DEF7 PIC X(7).
       01 AZ-CICS-TARGET-NAME-DEF8 PIC X(8).
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT_0E08_HCIPDB01.
           ENTRY 'CICS_INPT_0E08_HCIPDB01' USING AZ-TEST
           AZ-INFO-BLOCK AZ-DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2
           ARG3 ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10.
           DISPLAY 'CICS_0E08_HCIPDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'0000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS RETURN X'0000'
           IF ARG0-1 = X'0E08'
             MOVE X'0000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS RETURN X''0000'''
                ' L=' AZ-LINE-NUM
               ADD 1 TO AZ-RECORD-COUNT-OT(1)
               EVALUATE AZ-TEST(1:AZ-TEST-LEN)
                 WHEN SPACE
                   CONTINUE
                 WHEN 'INQ01'
                   PERFORM O0E080-INQ01
                   CONTINUE
                 WHEN OTHER
                   CONTINUE
                 END-EVALUATE
             END-IF
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * CICS_OUTP_0E08_HCIPDB01.
           ENTRY 'CICS_OUTP_0E08_HCIPDB01' USING AZ-TEST
           AZ-INFO-BLOCK AZ-DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2
           ARG3 ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10.
           DISPLAY 'CICS_0E08_HCIPDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'0000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS RETURN X'0000'
           IF ARG0-1 = X'0E08'
             MOVE X'0000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS RETURN X''0000'''
                ' L=' AZ-LINE-NUM
               ADD 1 TO AZ-RECORD-COUNT-IN(1)
               EVALUATE AZ-TEST(1:AZ-TEST-LEN)
                 WHEN SPACE
                   CONTINUE
                 WHEN 'INQ01'
                   CONTINUE
                 WHEN OTHER
                   CONTINUE
                 END-EVALUATE
             END-IF
           END-IF.
           PERFORM TEARDOWN.
       O0E080-INQ01.
           IF AZ-RECORD-COUNT-OT(1) = 0 THEN
             CONTINUE
           ELSE
             CONTINUE
           END-IF.
       GETLINENUM.
           MOVE 1 TO AZ-LINE-J
           PERFORM VARYING AZ-LINE-I FROM AZ-LINE-BYTE BY 1
             UNTIL AZ-LINE-I > AZ-LINE-BYTE + 5
             MOVE ARG0-3(AZ-LINE-I) TO AZ-LINE-NUM-RD(AZ-LINE-J)
             ADD 1 TO AZ-LINE-J
           END-PERFORM
           EXIT.
      * END
       TEARDOWN.
           DISPLAY 'CICS_0E08_HCIPDB01 Successful.'
           GOBACK.
       END PROGRAM 'CICS_0E08_HCIPDB01'.
