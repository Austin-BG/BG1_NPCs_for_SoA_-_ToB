BEGIN ~ARENA1~

IF ~Global("ARENAFIGHT","GLOBAL",0)!InParty("7XSHAR")~ THEN BEGIN INTRO1
SAY @0
=
@1
=
@2
IF ~~ THEN EXIT 
END

IF ~Global("ARENAFIGHT","GLOBAL",0)OR(2)IsGabber("7XSHAR")InParty("7XSHAR")~ THEN BEGIN SharCHALLENGE1-a
SAY @3
IF ~~ THEN EXTERN ~7XsharJ~ SharCHALLENGE2
END

IF ~~ THEN BEGIN SharCHALLENGE3
SAY @4
=
@5
IF ~~ THEN EXTERN ~7XsharJ~ SharCHALLENGE4
END

IF ~~ THEN BEGIN SharCHALLENGE5
SAY @6
IF ~~ THEN EXTERN ~7XsharJ~ SharCHALLENGE6
END

IF ~~ THEN BEGIN SharCHALLENGE7
SAY @7
=
@8
=
@9
=
@10
IF ~~ THEN REPLY @11 DO ~SetGlobal("ARENAFIGHT","GLOBAL",98)~ GOTO YLOSS
IF ~~ THEN REPLY @12 GOTO GOOD1
IF ~~ THEN REPLY @13 GOTO GOOD1
IF ~~ THEN REPLY @14 GOTO RULES1
END

IF ~~ THEN BEGIN RULES1
SAY @15
=
@16
IF ~~ THEN REPLY @11 GOTO YLOSS
IF ~~ THEN REPLY @17 DO ~SetGlobal("ARENAFIGHT","GLOBAL",98)~ GOTO YLOSS
IF ~~ THEN REPLY @18 GOTO GOOD1
END

IF ~~ THEN BEGIN GOOD1
SAY @19
IF ~~ THEN REPLY @20 DO ~SetGlobal("ARENAFIGHT","GLOBAL",98)~ GOTO YLOSS
IF ~PartyGoldGT(10000)~ THEN REPLY @21 GOTO TAKEGOLD
IF ~PartyGoldLT(10000)~ THEN REPLY @22 GOTO COMEBACK
END


IF ~~ THEN BEGIN COMEBACK
SAY @23
IF ~~ THEN DO ~SetGlobal("ARENAFIGHT","GLOBAL",98)~EXIT
END

IF ~~ THEN BEGIN TAKEGOLD
SAY @24
IF ~~ THEN DO ~TakePartyGold(10000)DestroyGold(10000)~ GOTO NEXTMOVE1-A
END

IF ~Global("ARENAFIGHT","GLOBAL",99)~ THEN BEGIN NEWARENA2
SAY @25
IF ~~ THEN REPLY @26 GOTO YLOSS
IF ~~ THEN REPLY @27 DO ~SetGlobal("ARENAFIGHT","GLOBAL",1)~ GOTO NEXTMOVE
END

IF ~Global("ARENAFIGHT","GLOBAL",98)~ THEN BEGIN NEWARENA2-a
SAY @28
IF ~~ THEN REPLY @29 GOTO YLOSSGOLD
IF ~~ THEN REPLY @30 GOTO YLOSS
IF ~~ THEN REPLY @27 DO ~SetGlobal("ARENAFIGHT","GLOBAL",1)~ GOTO GOOD1
END

IF ~~ THEN BEGIN YLOSSGOLD
SAY @31
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN NEXTMOVE1-A
SAY @32
IF ~~ THEN REPLY @33 DO ~SetGlobal("ARENAFIGHT","GLOBAL",3)~ GOTO HURRY1
IF ~~ THEN REPLY @34 DO ~SetGlobal("ARENAFIGHT","GLOBAL",4)~ GOTO SOLOFIGHT1
END

IF ~~ THEN BEGIN SOLOFIGHT1
SAY @35
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("ARENA2")~ EXIT
END

IF ~~ THEN BEGIN HURRY1
SAY @36
IF ~~ THEN EXIT
END

IF ~Global("ARENAFIGHT","GLOBAL",3)~ THEN BEGIN SOLOFIGHT2
SAY @37
IF ~~ THEN REPLY @33 DO ~SetGlobal("ARENAFIGHT","GLOBAL",3)~ GOTO HURRY1
IF ~~ THEN REPLY @34 DO ~SetGlobal("ARENAFIGHT","GLOBAL",4)~ GOTO SOLOFIGHT1
END

IF ~Global("ARENAFIGHT","GLOBAL",6)~ THEN BEGIN WONFIRSTFIGHT
SAY @38
=
@39 
=
@40
IF ~~ THEN REPLY @41 DO ~SetGlobal("ARENAFIGHT","GLOBAL",66)~ GOTO HURRY2
IF ~~ THEN REPLY @42 DO ~SetGlobal("ARENABattle","GLOBAL",1)~ GOTO NEXTMOVE
END


IF ~~ THEN BEGIN HURRY2
SAY @36
IF ~~ THEN EXIT
END

IF ~Global("ARENAFIGHT","GLOBAL",66)~ THEN BEGIN HILLSFAR
SAY @37
IF ~~ THEN REPLY @33 GOTO HURRY2
IF ~~ THEN REPLY @34 DO ~SetGlobal("ARENABattle","GLOBAL",1)~ GOTO NEXTMOVE
END

IF ~Global("ARENAFIGHT","GLOBAL",7)~ THEN BEGIN KilledSpiders
SAY @43
=
@44
=
@45
IF ~~ THEN REPLY @41 DO ~SetGlobal("ARENAFIGHT","GLOBAL",77)~ GOTO HURRY2
IF ~~ THEN REPLY @42 DO ~SetGlobal("ARENABattle","GLOBAL",3)~ GOTO NEXTMOVE
END

IF ~Global("ARENAFIGHT","GLOBAL",77)~ THEN BEGIN BasiliskDisplacer
SAY @46
IF ~~ THEN REPLY @33 DO ~SetGlobal("ARENAFIGHT","GLOBAL",77)~GOTO HURRY2
IF ~~ THEN REPLY @34 DO ~SetGlobal("ARENABattle","GLOBAL",3)SetGlobal("ARENAFIGHT","GLOBAL",79)~ GOTO NEXTMOVE
END

IF ~Global("ARENAFIGHT","GLOBAL",22)~ THEN BEGIN NPCGladiators
SAY @47
=
@48
=
@49
IF ~~ THEN REPLY @41 DO ~SetGlobal("ARENAFIGHT","GLOBAL",23)~ GOTO HURRY2
IF ~~ THEN REPLY @42 DO ~SetGlobal("ARENAFIGHT","GLOBAL",24)~ GOTO NEXTMOVE
END

IF ~Global("ARENAFIGHT","GLOBAL",23)~ THEN BEGIN NPCGladiators2
SAY @50
IF ~~ THEN REPLY @33 DO ~SetGlobal("ARENAFIGHT","GLOBAL",23)~GOTO HURRY2
IF ~~ THEN REPLY @34 DO ~SetGlobal("ARENAFIGHT","GLOBAL",24)~ GOTO NEXTMOVE
END


IF ~~ THEN BEGIN NEXTMOVE
SAY @51
IF ~~ THEN DO ~ClearAllActions() StorePartyLocations() StartCutSceneMode()StartCutScene("ARENA1")~ EXIT
END

IF ~~ THEN BEGIN YLOSS
SAY @52
IF ~~ THEN EXIT
END

IF ~Global("ARENAFIGHT","GLOBAL",25)~ THEN BEGIN NewFlonkBattle
SAY @53
=
@54
IF ~~ THEN REPLY @33 DO ~SetGlobal("ARENAFIGHT","GLOBAL",25)~GOTO HURRY2
IF ~~ THEN REPLY @34 DO ~SetGlobal("ARENAFIGHT","GLOBAL",26)~ GOTO NEXTMOVE
END

IF WEIGHT #-5 ~Global("ARENAFIGHT","GLOBAL",2)Dead("7XCRE14")Dead("7XCRE15")Dead("7XCRE16")~
THEN BEGIN FIGHTDONE2
SAY @55
=
@56
IF ~~ THEN DO ~AddexperienceParty(27000)EscapeArea()AddJournalEntry(@1773,QUEST_DONE)~ EXIT
END


APPEND 7XsharJ
IF ~~ THEN BEGIN SharCHALLENGE2
SAY @57
IF ~~ THEN EXTERN ~ARENA1~ SharCHALLENGE3
END
END


APPEND 7XsharJ
IF ~~ THEN BEGIN SharCHALLENGE4
SAY @58
IF ~~ THEN EXTERN ~ARENA1~ SharCHALLENGE5
END
END

APPEND 7XsharJ
IF ~~ THEN BEGIN SharCHALLENGE6
SAY @59
IF ~~ THEN EXTERN ~ARENA1~ SharCHALLENGE7
END
END