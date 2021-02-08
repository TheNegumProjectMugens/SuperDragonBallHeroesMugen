; The CMD file.

;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.


command.buffer.time = 1

;-| IA |------------------------------------------------------

[Command]
name = "IA_1"
command = a,a,a,a,a,a,a,a,a
time = 1

[Command]
name = "IA_2"
command = b,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_3"
command = a,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_4"
command = a,b,c,b,b,b,b,b,b
time = 1

[Command]
name = "IA_5"
command = a,b,c,x,b,b,b,b,b
time = 1

[Command]
name = "IA_6"
command = a,b,c,x,y,b,b,b,b
time = 1

[Command]
name = "IA_7"
command = a,b,c,x,y,z,b,b,b
time = 1

[Command]
name = "IA_8"
command = a,b,c,x,y,z,a,b,b
time = 1

[Command]
name = "IA_9"
command = a,b,c,x,y,z,a,b,c
time = 1

[Command]
name = "IA_10"
command = x,b,c,x,y,z,a,b,c
time = 1

;-| Special Motions |------------------------------------------------------

;-| Basic Attack Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[command]
name = "masenko"
command = D,DF,F,a
time = 15

[command]
name = "masenko 2"
command = D,DF,F,b
time = 15

[command]
name = "kameha"
command = D,DF,F,x+y
time = 15

[command]
name = "especial"
command = a+y
time = 15



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "s"
command = s
time = 1

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
name = "start"
command = s
time = 1

[Command]
name = "DFC"
command = D,DF,F,c
time = 15

[Command]
name = "DBC"
command = D,DB,B,c
time = 15



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

;===================|
;--[ Hold Button ]--|
;===================|

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_start"
command = /s
time = 1

;==================|
;--[ Super Jump ]--|
;==================|

[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpF"
command = ~$D,UF
time = 15
[command]
name = "superjumpB"
command = ~$D,UB
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
[State -1, IA]
type = VarSet
triggerall = var(40) != 1
trigger1 = command = "IA_1"
trigger2 = command = "IA_2"
trigger3 = command = "IA_3"
trigger4 = command = "IA_4"
trigger5 = command = "IA_5"
trigger6 = command = "IA_6"
trigger7 = command = "IA_7"
trigger8 = command = "IA_8"
trigger9 = command = "IA_9"
trigger10 = command = "IA_10"
var(40) = 1

;This is not a move, but it sets up var(1) to be 1 if conditions are right
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;-------------------------------------------------------------------------------
;Help Menu
[State -1, Help Menu]
type = ChangeState
value = 8499
triggerall = var(40) = 0
triggerall = command = "start" && command = "holddown"
trigger1 = statetype = c && ctrl

;---------------------------------------------------------------------------
;------------------------Special Moves--------------------------------------
;---------------------------------------------------------------------------

;Hand Stop
[State -1, Hand Stop]
type = ChangeState
value = 3000
triggerall = command = "hold_a" && command = "hold_x" && var(18) > 1
trigger1 = (statetype = S || statetype = A || statetype = C) && ctrl

;-------------------------------------------------------------------------------
; Super Jump Extraido de Highlight Vegeta by Duende Macabro
;-------------------------
[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 110

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 112

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 114

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Air Down
[State -1, Run Air Down]
type = ChangeState
value = 107
trigger1 = command = "DD"
trigger1 = statetype = A

;Run Air Up
[State -1, Run Air Up]
type = ChangeState
value = 109
triggerall = pos y > -320
trigger1 = command = "UU"
trigger1 = statetype = A

;KameHameHa!
[State -1, KameHameHa!]
type = ChangeState
value = 1000
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = power >= 250
triggerall = stateno != 1000
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = [200,205]
Trigger2 = Movehit

;masenko
[State -1, masenko]
type = ChangeState
value = 1500
triggerall = command = "masenko"
triggerall = power >= 800
triggerall = stateno != 1000
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = [200,205]
Trigger2 = Movehit

;masenko 2
[State -1, masenko 2]
type = ChangeState
value = 2000
triggerall = command = "masenko 2"
triggerall = power >= 800
triggerall = stateno != 1000
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = [200,205]
Trigger2 = Movehit

;kameha
[State -1, kameha]
type = ChangeState
value = 2500
triggerall = command = "kameha"
triggerall = power >= 2000
triggerall = stateno != 1000
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = [200,205]
Trigger2 = Movehit

;especial
[State -1, especial]
type = ChangeState
value = 3500
triggerall = command = "especial"
triggerall = power >= 2500
triggerall = stateno != 1000
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = [200,205]
Trigger2 = Movehit
;---------------------------------------------------------------------------
;Light Punch/Kick Combo
[State -1, Light Punch/Kick Combo]
type = ChangeState
value = 200+random%5
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Strong Punch/Kick
[State -1, Strong Punch/Kick]
type = ChangeState
value = 340
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = [200,205]
Trigger2 = Movehit

;Air Fireball
[State -1, Air FireBall]
type = ChangeState
value = 254
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 254

;FireBall2
[State -1, FireBall2]
type = ChangeState
value = 251
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 10 && stateno = 250

;FireBall
[State -1, FireBall]
type = ChangeState
value = 250
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Time > 10 && stateno = 251

;FireBall Crouch
[State -1, FireBall Crouch]
type = ChangeState
value = 252
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 252

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

; Power Charge
[State -1, Full Power Charge]
type = ChangeState
value = 735
triggerall = command = "hold_b" && command = "hold_y" && power = 5000 && var(18) = 0
trigger1 = statetype = S || Statetype = A
trigger1 = ctrl = 1

; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = command = "hold_b" && command = "hold_y" && var(18) = 0 && var(40) = 0
trigger1 = statetype = S || Statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 430
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 240 || stateno = 211)
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 230 || stateno = 231)

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 240 || stateno = 241)
;---------------------------------------------------------------------------
;AirCombo
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(21) < 20
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;AirStrong Kick/Punch
[State -1, Jump Strong Punch Down]
type = ChangeState
value = 611
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610 || stateno = 640) && movehit
