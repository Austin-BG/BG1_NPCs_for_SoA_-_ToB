BEGIN ~7XMONT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN MONTI1
   SAY @0
IF ~~ THEN REPLY @1 GOTO MONTI2
IF ~~ THEN REPLY @2 GOTO MONTI3       
END

IF ~~ THEN BEGIN MONTI2
   SAY @3
       IF ~~ THEN DO ~SetGlobal("MontiQuest","GLOBAL",1)SetGlobal("MONTIInParty","LOCALS",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN MONTI3
   SAY @4
       IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN MONTI4
   SAY @5
       IF ~~ THEN REPLY @6 GOTO MONTI2
       IF ~~ THEN REPLY @7 GOTO MONTI3
END

BEGIN ~7XMONTP~

IF ~Global("MONTIInParty","LOCALS",1)~ THEN BEGIN KickOutMONTI
SAY @8
IF ~~ THEN REPLY @9 GOTO OUT2
IF ~~ THEN REPLY @10 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @11  GOTO OUT1
END

IF ~~ THEN BEGIN OUT2
SAY @12 
=
@13
IF ~~ THEN DO ~SetGlobal("MONTIInParty","LOCALS",0)~
EXIT
END

IF ~~ THEN BEGIN OUT1
SAY @12
=
@14
IF ~~ THEN DO ~EscapeAreaMove("AR0407",270,433,11)SetGlobal("MONTIInParty","LOCALS",0)~
EXIT
END

IF ~Global("MONTIInParty","LOCALS",0)
!InParty("7XMONT")~ THEN BEGIN RejoinMONTI
SAY @15
IF ~~ THEN REPLY @16 EXIT
IF ~~ THEN REPLY @17 DO ~SetGlobal("MONTIInParty","LOCALS",1)
JoinParty()~ EXIT
END
