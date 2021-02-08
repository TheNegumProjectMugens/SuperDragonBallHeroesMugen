;===============
;Teen Gohan SSJ2
;===============

;------------------------------------------------------
;Base: Cyanide
;Progging: HaVoC
;Sprites: Neocide
;------------------------------------------------------

;==========================COMMANDS========================================
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Super KHH_X"
command = ~D, F,x
time = 30

[Command]
name = "Super KHH_Y"
command = ~D, F,y
time = 30

[Command]
name = "Masenko_X"
command = ~D, F,a
time = 30

[Command]
name = "Masenko_Y"
command = ~D, F,b
time = 30

[Command]
name = "U_Sayajin"
command = ~D, F,c
time = 30

;-----------------------------------

;-----------------------------------

;-----------------------------------

;-----------------------------------


;-| Special Motions |------------------------------------------------------


[Command]
name = "S2C"
command = ~D,F,DB,B, a
time = 20

[Command]
name = "S2C"
command = ~D,F,DB,B, b
time = 20


[Command]
name = "Sonic Kick_y"
command =~20$D,U, b
time = 20

[Command]
name = "Sonic Kick_x"
command =~20$D,U, a
time = 20

[Command]
name = "Pin_Missle_X"
command = ~20$B, F, x
time = 20

[Command]
name = "Pin_Missle_Y"
command = ~20$B, F, y
time = 20


[Command]
name = "Needle Rocket Light"
command = ~20$B, F, a
time = 20

[Command]
name = "Needle Rocket"
command = ~20$B, F, b
time = 20

[Command]
name = "Rocket Kick"
command =~D,DF,F,a
time = 20

[Command]
name = "Rocket Kick"
command =~D,DF,F, b
time = 20

[Command]
name = "Flying Bat_y"
command = ~20$D,U, y
time = 20

[Command]
name = "Flying Bat_x"
command = ~20$D,U, x
time = 20


[Command]
name = "Sonic Kick (air)"
command = ~D, DB, B, a
time = 20

[Command]
name = "Sonic Kick (air)"
command = ~D, DB, B, b
time = 20

[command]
name = "Charge"
command = ~D, DF, F,  a
time = 20

[command]
name = "Charge"
command = ~D, DF, F,  b
time = 20

[Command]
name = "KHH"
command = ~D, DF, F, a
time = 20

[Command]
name = "KHH"
command = ~D, DF, F, b
time = 20


[command]
name = "Pin Missle Kick"
command = ~D, DB, B, x
time = 20

[command]
name = "Pin Missle Kick"
command = ~D, DB, B, y
time = 20


;-----------------------------------
;-| AI Activate |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F,x
time = 1
;-----------------------------------

;-----------------------------------

;-----------------------------------

;-----------------------------------

;-| Misc Motions |---------------------------------------------------------


;-| Double Tap |-----------------------------------------------------------



[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "ff"     
command = F, F
time = 12
buffer.time = 7

[Command]
name = "bb"     
command = B, B
time = 12
buffer.time = 7

[Command]
name = "DD"     
command = D, D
time = 12
buffer.time = 7

[Command]
name = "UU"     
command = U, U
time = 12
buffer.time = 7

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[command]
name = "zancount"
command = ~D, DB, B, z
time = 15


;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------
[command]
name = "launch light"
command = /DF, x

[command]
name = "launch hard"
command = /DF, y

[Command]
name = "superj"
command = $D, $U
time = 10
buffer.time = 10

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y



;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx" 
command = /y
time = 1

[Command]
name = "holdy" 
command = /x
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /b
time = 1

[Command]
name = "holdb" 
command = /a
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holds" 
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------
;---------------------------------------------------------------------------


;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd AIR
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 60
triggerall 		= (Command = "FF") && (StateNo != [60,61])
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run BACK AIR
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 65
triggerall 		= (Command = "BB") && (StateNo != [65,66])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;===========================================================================
;-| Super|------------------------------------------------------------------
;Super KHH
[State -1,]
type = ChangeState
value = 2300
triggerall = (command="Super KHH_Y"||command="Super KHH_X")&&power>=1000
trigger1 =  roundstate=2
trigger1 =  statetype=S&&ctrl
trigger2 =  stateno=200&& movecontact
trigger3 =  stateno=213&& movecontact
trigger4 =  stateno=210&& movecontact
trigger5 =  stateno=214&& movecontact
trigger6 =  stateno=220&& movecontact
trigger7 =  stateno=230&& movecontact
trigger8 =  stateno=235&& movecontact
trigger9 =  stateno=300&& movecontact
trigger10 = stateno=320&& movecontact
trigger11 = stateno=330&& movecontact
trigger12 = stateno=265&& movecontact
trigger13 = stateno=275&& movecontact
;------------------------------------------------------------------------------
;Masenko
[State -1,]
type = ChangeState
value = 2400
triggerall = (command="Masenko_Y"||command="Masenko_X")&&power>=1000
trigger1 = roundstate=2
trigger1 = statetype=S&&ctrl
trigger2 =  stateno=200&& movecontact
trigger3 =  stateno=213&& movecontact
trigger4 =  stateno=210&& movecontact
trigger5 =  stateno=214&& movecontact
trigger6 =  stateno=220&& movecontact
trigger7 =  stateno=230&& movecontact
trigger8 =  stateno=235&& movecontact
trigger9 =  stateno=300&& movecontact
trigger10 = stateno=320&& movecontact
trigger11 = stateno=330&& movecontact
trigger12 = stateno=265&& movecontact
trigger13 = stateno=275&& movecontact
trigger14 = stateno=2302&& movecontact

;-------------------------------------------------------------------------------
;U. Sayajin
[State -1,]
type = ChangeState
value = 2600
triggerall = (command="U_Sayajin")&&power>=2000
trigger1 = roundstate=2
trigger1 = statetype=S&&ctrl
trigger2 =  stateno=200&& movecontact
trigger3 =  stateno=213&& movecontact
trigger4 =  stateno=210&& movecontact
trigger5 =  stateno=214&& movecontact
trigger6 =  stateno=220&& movecontact
trigger7 =  stateno=230&& movecontact
trigger8 =  stateno=235&& movecontact
trigger9 =  stateno=300&& movecontact
trigger10 = stateno=320&& movecontact
trigger11 = stateno=330&& movecontact




;===========================================================================
;-| Special |---------------------------------------------------------------

;--------------------------------------------------------------------

;Pin Missle(light)
[State -1,]
type = ChangeState
value = 261
triggerall = command ="Pin_Missle_X"
trigger1 = statetype=S&&ctrl
trigger2 = (stateno=200||stateno=210)&&movecontact
trigger3 = (stateno=230||stateno=235)&&movecontact
trigger4 = (stateno=213||stateno=220)&&movecontact
trigger5 =  stateno=214&& movecontact


;-----------------------------------------------------------------------
;Pin Missle(hard)
[State -1,]
type = ChangeState
value = 271
triggerall = command ="Pin_Missle_Y"
trigger1 = statetype=S&&ctrl
trigger2 = (stateno=200||stateno=210)&&movecontact
trigger3 = (stateno=230||stateno=235)&&movecontact
trigger4 = (stateno=213||stateno=220)&&movecontact
trigger5 =  stateno=214&& movecontact


;-----------------------------------------------------------------------

;Super 2 counter
[State -1,]
type = ChangeState
value = 730
triggerall = command ="S2C"
triggerall = power>=100
trigger1 = statetype=S&&ctrl
trigger2 = stateno = [150,156]
trigger2 = (stateno=200||stateno=210)&&movecontact
trigger3 = (stateno=230||stateno=240)&&movecontact
trigger4 = (stateno=213||stateno=220)&&movecontact


;-----------------------------------------------------------------------
;Flying Bat
[State -1,]
type = ChangeState
value = 7500
triggerall = command="Flying Bat_x"
trigger1 = statetype!=A&&(stateno=[0,40])
trigger2 =  stateno=200&& movecontact
trigger3 =  stateno=213&& movecontact
trigger4 =  stateno=210&& movecontact
trigger5 =  stateno=214&& movecontact
trigger6 =  stateno=220&& movecontact
trigger7 =  stateno=230&& movecontact
trigger8 =  stateno=235&& movecontact
trigger9 =  stateno=300&& movecontact
trigger10 = stateno=320&& movecontact
trigger11 = stateno=330&& movecontact
trigger12 = stateno=265&& movecontact
trigger13 = stateno=275&& movecontact

;------------------------------------------------------------------------

;Flying Bat
[State -1,]
type = ChangeState
value = 7501
triggerall = command="Flying Bat_y"
trigger1 = statetype!=A&&(stateno=[0,40])
trigger2 =  stateno=200&& movecontact
trigger3 =  stateno=213&& movecontact
trigger4 =  stateno=210&& movecontact
trigger5 =  stateno=214&& movecontact
trigger6 =  stateno=220&& movecontact
trigger7 =  stateno=230&& movecontact
trigger8 =  stateno=235&& movecontact
trigger9 =  stateno=300&& movecontact
trigger10 = stateno=320&& movecontact
trigger11 = stateno=330&& movecontact
trigger12 = stateno=265&& movecontact
trigger13 = stateno=275&& movecontact


;----------------------------------------------------------------------------
;Sonic Kick
[State -1,]
type = ChangeState
value = 463
triggerall = ((command="Sonic Kick_y")||(command="Sonic Kick_x"))
trigger1 = statetype!=A&&(stateno=[0,40])
trigger2 =  stateno=200&& movecontact
trigger3 =  stateno=213&& movecontact
trigger4 =  stateno=210&& movecontact
trigger5 =  stateno=214&& movecontact
trigger6 =  stateno=220&& movecontact
trigger7 =  stateno=230&& movecontact
trigger8 =  stateno=235&& movecontact
trigger9 =  stateno=300&& movecontact
trigger10 = stateno=320&& movecontact
trigger11 = stateno=330&& movecontact
trigger12 = stateno=265&& movecontact
trigger13 = stateno=275&& movecontact


;----------------------------------------------------------------------------
;Sonic Kick  (air)
[State -1,]
type = ChangeState
value = 468
triggerall = command="Sonic Kick (air)"
trigger1 = statetype=A&&ctrl
trigger2 =  stateno=400&& movecontact
trigger3 =  stateno=410&& movecontact
trigger4 =  stateno=420&& movecontact
trigger5 =  stateno=430&& movecontact

;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
;Needle Rocket (light)
[State -1,]
type = ChangeState
value = 2109
triggerall = command="Needle Rocket Light"
trigger1 = statetype=S&&ctrl


[State -1,]
type = Changestate
value = 702
triggerall= command="Rocket Kick"
trigger1 = stateno=2110&&movehit&&time<25
;----------------------------------------------------------------------------
;Needle Rocket (hard)
[State -1,]
type = ChangeState
value = 701
triggerall = command="Needle Rocket"
trigger1 = statetype=S&&ctrl


[State -1,]
type = Changestate
value = 702
triggerall= command="Rocket Kick"
trigger1 = stateno=2108&&movehit&&time<25
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
;shoulder barge
[State -1,]
type = ChangeState
value = 7005
triggerall = command="Charge"
trigger1 = statetype=S&&ctrl
trigger2 = (stateno=200||stateno=210)&&movecontact
trigger3 = (stateno=213||stateno=220)&&movecontact
trigger4 = (stateno=230||stateno=240)&&movecontact


[State -1,]
type = Changestate
value = 471
triggerall= command="KHH"
trigger1 = stateno=7005&&movehit&&time<20
;-----------------------------------------------------------------------------

;=============================================================================
;-| Basic |-----------------------------------------------------------------
;grab
[State -1, SWP]
type = ChangeState
triggerall      = (command = "holdfwd") && (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A) && (P2bodydist X <= 8)
value = 749
;--------------------crouching------------------------------------------------------
;Crouch Weak punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x" && command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno=300&&movecontact
trigger3 = stateno=213&&movecontact
trigger4 = stateno=200&&movecontact
trigger5 = stateno=220&&movecontact
trigger6 = stateno=230&&movecontact
trigger7 = stateno=210&&movecontact


value = 300

;----------------------------------------------------------------------------
;uppercut
[State -1, SWP]
type = ChangeState
triggerall = command = "y" && command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno=300&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=213&&movecontact
trigger5 = stateno=220&&movecontact
trigger6 = stateno=320&&movecontact
trigger7 = stateno=330&&movecontact

value = 310

;-----------------------------------------------------------------------------
;Crouch Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno=300&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=210&&movecontact
trigger5 = stateno=213&&movecontact
trigger6 = stateno=230&&movecontact
value = 320

;----------------------------------------------------------------------------
;Crouch SLIDE Kick
[State -1, SWP]
type = ChangeState
triggerall = command ="b"&&command="holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno=300&&movecontact
trigger3 = stateno=320&&movecontact
trigger4 = stateno=200&&movecontact
trigger5 = stateno=210&&movecontact
trigger6 = stateno=213&&movecontact
trigger7 = stateno=230&&movecontact

value = 330

;------------------------------------STANDING-------------------------------------
;Stand Elbow Punch
[State -1, SEP]
type = ChangeState
Triggerall = (p2bodydist x <= 10) && command != "holddown" && (command = "x")
trigger1 = ctrl && statetype = S
trigger2 =(StateNo = 213)&&AnimElem= 3 && movecontact
trigger4 = stateno=220&&MoveContact
trigger2 = stateno=200&&animelem =2
value = 213

;Stand Light Punch
[State -1, SLP]
type = ChangeState
triggerall = command="x"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 =  (StateNo=200)&&(AnimElem=2,>5||MoveContact&&AnimElem=2)
trigger3 =   (StateNo=213)&& AnimElem=3,< 4 && MoveContact
value = 200
;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, SMP]
type = ChangeState
triggerall = p2bodydist x<5&&command="y"&&command!="holddown"
trigger1 = ctrl&&statetype = S
value = 214

;Stand Medium Punch
[State -1, SMP]
type = ChangeState
triggerall = command="y"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno=213&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=220&&movecontact

value = 210
-------------------------------------------------
;Stand light Kick
[State -1, SWP]
type = ChangeState
triggerall = command ="a"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno=213&&movecontact
trigger3 = stateno=200&&movecontact
value = 220

;----------------------------------------------------------------------------
;Stand Hard swift kick
[State -1, SWP]
type = ChangeState
triggerall = command ="holdback"&&command="b"
trigger1 = ctrl && statetype = S
trigger2 = stateno=220&&(movecontact&&Animelem=3,2)
trigger3 = stateno=213&&movecontact
trigger4 = stateno=200&&movecontact
trigger5 = stateno=220&&movecontact
trigger6 = stateno=210&&movecontact
value = 235

;----------------------------------------------------------------------------

;Stand Hard Kick
[State -1, SWP]
type = ChangeState
triggerall = command ="b"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno=220&&(movecontact&&Animelem=3,2)
trigger3 = stateno=213&&movecontact
trigger4 = stateno=200&&movecontact
trigger5 = stateno=220&&movecontact
trigger6 = stateno=210&&movecontact
value = 230

;-------------------------air---------------------------------------------
;Air light Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 420 && movecontact


value = 400

;----------------------------------------------------------------------------
;Air hard Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "y"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 420 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 430 && movecontact
value = 410

;-------------------------------------------------------------------------------

;Air light kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
value = 420

;----------------------------------------------------------------------------
;Air hard kick
[State -1, SWP]
type = ChangeState
triggerall = command = "b"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact
value = 430
;---------------------------------------------------------------------------

;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall      = ((command = "holdy") && (command = "holdb"))
triggerall	= Power != 3000
trigger1        = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, SpriteSet1.Var]
type = VarSet
triggerall=Var(1)=0
trigger1= Palno= 2
v=1
value=1

[State -1, SpriteSet2.Var]
type = VarSet
triggerall=Var(1)=0
trigger1=PalNo=3
v=1
value=2


