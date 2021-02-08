
;-| Hyper Motions |--------------------------------------------------------

[command]
name = "Sword Ki"
command = D,DF,F,D,DB,B,z
time = 30

[command]
name = "Meteor Attack"
command = D,DB,B,F,a
time = 30

[command]
name = "Meteor Attack"
command = D,DB,B,F,b
time = 30

[Command]
name = "SDM"
command = ~F, DF, D, DB, B, F, z
time = 30

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Final Kamehame-Ha"
command = ~D, DB, B, F, z
time = 25

[Command]
name = "Big Bang Attack"
command = ~D, DF, F, DF, F, z
time = 25

[Command]
name = "Super Punch"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "Super Punch"
command = ~D, DF, F, D, DF, F, y
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "Fireball"
command = z
time = 30

[Command]
name = "Mini Galic-Ho"
command = ~D, DF, F, z
time = 30

[Command]
name = "Cannon Beam"
command = ~D, DF, F, z
time = 30

[Command]
name = "Banshee Blast"
command = ~D, DB, B, z
time = 30

[Command]
name = "Slide Attack"
command = ~D, DF, F, x
time = 30

[Command]
name = "Slide Attack 2"
command = ~D, DF, F, y
time = 30

[Command]
name = "Slide Attack EX"
command = ~D, DF, F x+y
time = 30

[Command]
name = "Lateral Kick"
command = ~F, D, DF, a
time = 30

[Command]
name = "Lateral Kick 2"
command = ~F, D, DF, b
time = 30

[Command]
name = "Lateral Kick EX"
command = ~F, D, DF, a+b
time = 30

[Command]
name = "Dancing Kick"
command = ~D, DB, B, a
time = 30

[Command]
name = "Dancing Kick 2"
command = ~D, DB, B, b
time = 30

[Command]
name = "Dancing Kick EX"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "Guard Kick"
command = ~D, DF, F, a
time = 30

[Command]
name = "Guard Kick 2"
command = ~D, DF, F, b
time = 30

[Command]
name = "Guard Kick EX"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "Cutting Kick"
command = ~D, DF, F, a
time = 30

[Command]
name = "Cutting Kick 2"
command = ~D, DF, F, b
time = 30

[Command]
name = "Cutting Kick EX"
command = ~D, DF, F, a+b
time = 30

;-| Misc Motions |---------------------------------------------------------

[Command]
name = "Super Jump"
command = ~D,U
time = 8

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[Command]
name = "fratricide3"
command = /$B, c
time = 10

[Command]
name = "Teleport fwd"
command = D,DF,F, c
time = 30

[Command]
name = "Teleport back"
command = D,DB,B, c
time = 30

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
name = "UF"     
command = UF
time = 10

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

[Command]
name = "start"
command = s
time = 1

;-| Single Dir |--------------------------------------------------------------

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
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
command = /x
time = 1

[Command]
name = "holdy" 
command = /y
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /a
time = 1

[Command]
name = "holdb" 
command = /b
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holds" 
command = /s
time = 1


;-------------------------------------------------------------------------------
;Commands Ejecution
[Statedef -1]

;===========================================================================
;-| Hyper |-----------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Meteor Attack
[State -1, Hyper]
type = ChangeState
value = 3800
triggerall = command = "Meteor Attack"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Sword Ki
[State -1, Hyper]
type = Null;ChangeState
value = 3900+(var(56)=1)*100
triggerall = command = "Sword Ki"
triggerall = power >= 2000
triggerall = prevstateno != 3600
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Super Kamehame-Ha
[State -1, Super Kamehame-Ha]
type = null;ChangeState
value = 998;
triggerall = var(59) != 1
triggerall = command = "SDM"
trigger1 = statetype = S
trigger1 = statetype = S
trigger1 = (power >= 3000) && (life > 100)
trigger1 = ctrl = 1

;===========================================================================
;-| Supers |----------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Final Kamehame-Ha
[State -1, Final Kamehame-Ha]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "Final Kamehame-Ha"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,260]) && movecontact

;---------------------------------------------------------------------------
;Big Bang Attack
[State -1, Big Bang Attack]
type = ChangeState
value = 3100
triggerall = var(59) != 1
triggerall = numhelper(3110) = 0
triggerall = command = "Big Bang Attack"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact
trigger9 = stateno = 420 && movecontact

;---------------------------------------------------------------------------
;Big Bang Attack
[State -1, Big Bang Attack]
type = Null;ChangeState
value = 3150
triggerall = var(59) != 1
triggerall = numhelper(3160) = 0
triggerall = command = "Big Bang Attack"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact
trigger9 = stateno = 420 && movecontact

;---------------------------------------------------------------------------
;Super Punch
[State -1, Super Punch]
type = ChangeState
value = 3200
triggerall = var(59) != 1
triggerall = command = "Super Punch"
triggerall = power >= 1000
;trigger1 = stataetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 1302 && movecontact
trigger8 = stateno = 801 && animelem = 7, >= 2

;===========================================================================
;-| Special |---------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
; EX
[State -1, Lateral Kick]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = command = "Lateral Kick EX"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
; 1°
[State -1, Lateral Kick A]
type = ChangeState
value = 1000
triggerall = var(59) != 1 
triggerall = command = "Lateral Kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
; 2°
[State -1, Lateral Kick A]
type = ChangeState
value = 1001
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno = 1000 && movecontact

;---------------------------------------------------------------------------
; 3°
[State -1, Lateral Kick A]
type = ChangeState
value = 1002
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno = 1001 && movecontact

;---------------------------------------------------------------------------
; 1°
[State -1, Lateral Kick B]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "Lateral Kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
; 2°
[State -1, Lateral Kick B]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno = 1010 && movecontact 
value = 1011

;---------------------------------------------------------------------------
; 3°
[State -1, Lateral Kick B]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno = 1011 && movecontact 
value = 1012

;---------------------------------------------------------------------------
; EX
[State -1, Dancing Kick]
type = ChangeState
value = 1120
triggerall = var(59) != 1
triggerall = command = "Dancing Kick EX"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

;---------------------------------------------------------------------------
; A
[State -1, Dancing Kick]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "Dancing Kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

;---------------------------------------------------------------------------
; B
[State -1, Dancing Kick]
type = ChangeState
value = 1110
triggerall = var(59) != 1
triggerall = command = "Dancing Kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

;---------------------------------------------------------------------------
; EX
[State -1, Guard Kick]
type = ChangeState
value = 1220
triggerall = var(59) != 1
triggerall = command = "Guard Kick EX"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

;---------------------------------------------------------------------------
; A
[State -1, Guard Kick]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = command = "Guard Kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

;---------------------------------------------------------------------------
; B
[State -1, Guard Kick]
type = ChangeState
value = 1210
triggerall = var(59) != 1
triggerall = command = "Guard Kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

;---------------------------------------------------------------------------
; A
[State -1, Slide Attack]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "Slide Attack" ||  command = "Slide Attack 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact

; A 2°
[State -1, Slide Attack]
type = ChangeState
value = 1301
triggerall = var(59) != 1
triggerall = stateno = 1300
triggerall = command = "x" || command = "y"
trigger1 = animelem = 4, > 2

; A 3°
[State -1, Slide Attack]
type = ChangeState
value = 1302
triggerall = var(59) != 1
triggerall = stateno = 1301
triggerall = command = "x"
trigger1 = animelem = 3, > 2

; A Alternativa patada°
[State -1, Slide Attack]
type = ChangeState
value = 1303
triggerall = var(59) != 1
triggerall = stateno = 1301
triggerall = command = "b"
trigger1 = animelem = 3, > 2

; A Alternativa patada°
[State -1, Slide Attack]
type = ChangeState
value = 1304
triggerall = var(59) != 1
triggerall = stateno = 1301
triggerall = command = "a"
trigger1 = animelem = 3, > 2

; A Alternativa punch
[State -1, Slide Attack]
type = ChangeState
value = 1310
triggerall = var(59) != 1
triggerall = stateno = 1301
triggerall = command = "y"
trigger1 = animelem = 3, > 2

;---------------------------------------------------------------------------
; EX
[State -1, Cutting Kick]
type = ChangeState
value = 1420
triggerall = var(59) != 1
triggerall = command = "Cutting Kick EX"
triggerall = power >= 500
trigger1 = statetype = A && ctrl 
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = stateno = 1222 && movecontact; Guard Kick EX
trigger4 = stateno = 1021 && (movecontact || time = [2,6]); Lateral Kick EX

;EX (Taunt)
[State -1, Cutting Kick]
type = ChangeState
triggerall = var(59) != 1
triggerall = stateno = 1424
trigger1 = animtime = 0
trigger2 = command != "holds"
trigger2 = anim = 1424 && animelem = 3, < 0
value = 0
ctrl = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; A
[State -1, Cutting Kick]
type = ChangeState
value = 1400
triggerall = var(59) != 1
triggerall = command = "Cutting Kick" || command = "Cutting Kick 2"
trigger1 = statetype = A && ctrl 
trigger2 = (stateno = [600,640]) && movecontact

;---------------------------------------------------------------------------
; B
[State -1, Cutting Kick]
type = Null;ChangeState
value = 1410
triggerall = var(59) != 1
triggerall = command = "Cutting Kick 2"
trigger1 = statetype = A && ctrl 
trigger2 = (stateno = [600,640]) && movecontact

;---------------------------------------------------------------------------
;Banshee Blast
[State -1, Banshee Blast]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = command = "Banshee Blast"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [2000,2001]) && time >= 8

;---------------------------------------------------------------------------
;Cannon Beam
[State -1, Cannon Beam]
type = ChangeState
value = 2200
triggerall = var(59) != 1
triggerall = command = "Cannon Beam"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 1301 && movecontact

;---------------------------------------------------------------------------
;Mini Galic-Ho
[State -1, Mini Galic-Ho]
type = ChangeState
value = 2300
triggerall = var(59) != 1
triggerall = command = "Mini Galic-Ho"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = stateno = 1401 && animelem = 3, < 0; Cutting Kick
trigger4 = (stateno = [2050,2051]); Air Fireball 

;---------------------------------------------------------------------------
; One
[State -1, Fireball]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "Fireball"
triggerall = power >= 150
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 250 && movecontact

; Two
[State -1, Fireball]
type = ChangeState
value = 2001
triggerall = var(59) != 1
triggerall = command = "Fireball"
triggerall = power >= 150
triggerall = var(33) < 4;	4 veces
triggerall = statetype = S
trigger1 = (stateno = [2000,2001]) && animelem = 2, > 2
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
; One
[State -1, Air Fireball]
type = ChangeState
value = 2050
triggerall = var(59) != 1
triggerall = command = "Fireball"
triggerall = power >= 150
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = stateno = 1401 && animelem = 3, < 0; Cutting Kick

; Two
[State -1, Air Fireball]
type = ChangeState
value = 2051
triggerall = var(59) != 1
triggerall = command = "Fireball"
triggerall = power >= 150
triggerall = var(33) < 4;	4 veces
triggerall = statetype = A
trigger1 = stateno = 2050 && animelem = 3, > 0
trigger2 = stateno = 2051 && animelem = 2, > 0
trigger3 = (stateno = [600,640]) && movecontact

;===========================================================================
;-| Misc |------------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF" && stateNo != [100,101]
trigger1 = statetype != C && ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB" && stateNo != [100,106]
trigger1 = statetype != C && ctrl

;-------------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Jump
[State -1, Launcher]
type = ChangeState
value = 40
triggerall = var(59) !=  1
triggerall = statetype != A
triggerall = command = "UF" || command = "holdup"
trigger1 = stateno = 420 && movecontact 
trigger2 = stateno = 802 && (animelem = 3, >= 0) && movecontact ;Throw Launcher
trigger3 = stateno = 1211 && (animelem = 8, > 0) && movecontact ;Guard Kick B
trigger4 = stateno = 1303 && (animelem = 2, > 0) && movecontact ;Slide Punch

;---------------------------------------------------------------------------
; Slide Kick 
[State -1, Launcher]
type  = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "a" && command = "x" 
trigger1 = statetype != A && command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 250 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Uppercut
[State -1, Launcher]
type  = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "a" && command = "x"
trigger1 = statetype != A ;&& command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
trigger6 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "a" && command = "b")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist x = [-10,10]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H || p2movetype = H && p2stateno = 2320

;---------------------------------------------------------------------------
;Charge Power
[State -1, Charge Power]
type = ChangeState
value = 900
triggerall = var(59) != 1
triggerall = power < powermax 
triggerall = command = "holdb" && command = "holdy" 
trigger1 = statetype = S 
trigger1 = ctrl = 1 
;trigger2 = command = "holda" && command = "holdx" && stateno = 3100 && command != "holdfwd"

;---------------------------------------------------------------------------
;Fwd
[State -1, Teleport]
type = ChangeState
value = 930
triggerall = var(59) != 1
triggerall = command = "Teleport fwd"
triggerall = power >= 300
trigger1  = ctrl
trigger2  = (stateno = [200,250]) && movecontact

;Back
[State -1, Teleport]
type = ChangeState
value = 931
triggerall = var(59) != 1
triggerall =  command = "Teleport back"
triggerall = power >= 300
trigger1  = ctrl
trigger2  = (stateno = [200,250]) && movecontact

;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 920
triggerall = var(59) != 1
triggerall = numhelper(925) < 8
triggerall = alive
;triggerall = command != "Teleport fwd"
;triggerall = command != "Teleport back"
triggerall = command = "c"
triggerall = power >= 100
triggerall = var(6) = 0
;trigger1 = statetype != A
trigger1  = ctrl && stateno != 921 || (stateno = 921 && time = 9); || stateno = [990,995]
trigger2  = stateno = 200 && movecontact
trigger3  = stateno = 210 && movecontact
trigger4  = stateno = 230 && movecontact
trigger5  = (stateno = [240,241]) && movecontact
trigger6  = stateno = 400 && movecontact
trigger7  = stateno = 410 && movecontact
trigger8  = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = (stateno = [2000,2001]) && (animelem = 2, > 4)
trigger11  = stateno = [120,155]
trigger12 = movetype = H && gethitvar(hitcount) <= 2 && var(5) > 0

;===========================================================================
;-| Basic |-----------------------------------------------------------------
;===========================================================================

; Light
[State 200, Stand Punch]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = p2bodydist x >= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201 && movecontact
value = 200

; Light (closed)
[State 201, Stand Punch]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = p2bodydist x < 3
trigger1 = statetype = S
trigger1 = ctrl
value = 201

;---------------------------------------------------------------------------
; Hard
[State 210, Stand Punch]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "y" 
trigger1 = p2bodydist x >= 3 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 211 && movecontact
trigger3 = p2bodydist x >= 3 
trigger3 = stateno = 200 && movecontact
trigger4 = p2bodydist x >= 3 
trigger4 = stateno = 230 && movecontact
value = 210

; Elbow (closed)
[State 211, Stand Punch]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = p2bodydist x < 3
trigger1 = statetype = S 
trigger1 = ctrl
value = 211

;---------------------------------------------------------------------------
; Light 
[State 230, Stand Kick]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = p2bodydist x >= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 231 && movecontact
trigger3 = p2bodydist x >= 3
trigger3 = stateno = 200 && movecontact
value = 230

; Light (closed) 
[State 231, Stand Kick]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = p2bodydist x < 3
trigger1 = statetype = S
trigger1 = ctrl
value = 231

;---------------------------------------------------------------------------
; Hard 
[State 240, Stand Kick]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "b" 
trigger1 = p2bodydist x >= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 241 && movecontact
trigger3 = p2bodydist x >= 3
trigger3 = stateno = 230 && movecontact
value = 240

;Hard (closed)
[State 241, Stand Kick]
type = ChangeState
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = p2bodydist x < 3
trigger1 = statetype = S
trigger1 = ctrl
value = 241

;===========================================================================
;---------------------------------------------------------------------------
; Crouch Weak Punch 
[State -1, CWP]
type  = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype != A && command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Punch 
[State -1, CMP]
type  = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype != A && command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact


;---------------------------------------------------------------------------
; Crouch Light Kick 
[State -1, CLK]
type  = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype != A && command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Kick 
[State -1, CMK]
type  = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype != A && command = "holddown" && command != "holdfwd"
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact

;===========================================================================
; Air Light Punch
[State -1, ALP]
type = ChangeState
value  = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact
trigger2 = prevstateno != 630

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, AMP]
type = ChangeState
value  = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Double Punch
[State -1, AHP]
type = ChangeState
value  = 620
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = stateno = 610 && movecontact
trigger2 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;Air Light Kick
[State -1, ALK]
type = ChangeState
value  = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger2 = prevstateno != 600

;---------------------------------------------------------------------------
;Air Medium Kick
[State -1, AMK]
type = ChangeState
value  = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Air Hard Kick
[State -1, AMK]
type = ChangeState
value  = 650
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = stateno = 640 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact

;==============================================================================================================

;================================================================================================================================

;---------------------------------------------------------------------------------------------------------------------------------
;AI
[Statedef -3]

[State -3, texto]
type = DisplayToClipboard
trigger1 = 1
text = "var(59) = %d invisible = %d dist x %d dist y %d y precaucion = %d"
params = var(59), var(12),p2bodydist x,p2bodydist y,(lifemax-life)/(lifemax/100)

[State -2, StopAI]
type = VarSet
triggerall = (var(59) > 0)
;trigger1 = (RoundState != 2)
trigger1 = !Alive
var(59) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(59)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(59)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
trigger1 = (var(59) = 1)
trigger2 = (var(0):=0)
var(0) = 1	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI activation concept.
; Feel free to move this controller to your character's intro state for slightly better efficiency.
[State -3, SetAI]
type = VarSet
triggerall = !RoundState
triggerall = IsHomeTeam
trigger1 = (TeamSide = 2)
trigger2 = (MatchNo > 1)
var(59) = 1

; Feel free to move this controller to your character's intro state for slightly better efficiency.
; Note that it may give P2 a slight unfair advantage in simul team vs mode, so you
; may want to disable it.  But then, since when has Mugen been about fairness? =P
[State -3, Unfair]; Is this reliable?
type = VarSet
trigger1 = !RoundState
trigger1 = (var(59) != 1)
trigger1 = NumPartner
trigger1 = (ID > Partner,ID)
trigger1 = (TeamSide = 2)
var(59) = 1

[State -3, AI Helper (Compatibly Partnered Version)]
type = Helper
trigger1 = !var(59)
trigger1 = !NumHelper(9742)
trigger1 = (RoundState = 2)
trigger1 = Alive
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 999999999
SuperMoveTime = 999999999

; If you want to use the Guard mode, Dummy mode, Distance, or Button jam dummy control
; options in Training mode without activating the dummy's AI while working on your
; character, then all you need to do is temporarily disable this controller.
; Or, if you want to permanently disable this controller in Training mode,
; then you could use the Training mode detection code available on my site
; ( http://www.shinmugen.net/winane/ ), and then just add a "(var(59)&63)>30"
; triggerall to this controller.

[State -3, AI Helper]
type = Helper
triggerall = !var(59)
triggerall = !NumHelper(9741)
triggerall = (RoundState = 2)
triggerall = Alive
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 999999999,999999999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 999999999
SuperMoveTime = 999999999

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = (var(59) = -2)
trigger1 = (RoundState = 2)
trigger1 = Alive
var(59) = 1

[State -3, HitPauseTime Helper]
type = Helper
triggerall = var(59)!=1
triggerall = !NumHelper(9743)
triggerall = (RoundState = 2)
triggerall = Alive
trigger1 = (MatchNo = 1)
trigger2 = NumPartner
trigger2 = (ID > Partner,ID)
HelperType = normal
name = "HitPauseTime"
ID = 9743
pos = 9999999,99999
StateNo = 9743
PauseMoveTime = 999999999
SuperMoveTime = 999999999

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = 1
fvar(30) = GameTime
IgnoreHitPause = 1

[State -1, Launcher - Jump]
type = ChangeState
value = 40
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2movetype = H
trigger1 = stateno = 420 && movecontact
trigger2 = stateno = 802 && (animelem = 3, >= 0) && movecontact ;Throw Launcher
trigger3 = stateno = 1211 && (animelem = 8, > 0) && movecontact ;Guard Kick B
trigger4 = stateno = 1303 && (animelem = 2, > 0) && movecontact ;Slide Punch

[State 40, fwd]
type = VarSet
triggerall = var(59) > 0
triggerall = stateno = 40
trigger1 = p2bodydist x > 0
trigger1 = p2movetype = H
trigger2 = p2bodydist x > 60
trigger2 = p2movetype != A
sysvar(1) = 1

[State 40, back]
type = VarSet
triggerall = var(59) > 0
triggerall = stateno = 40
trigger1 = p2bodydist x < 30
trigger1 = p2movetype = A 
sysvar(1) = -1

[State 0, ataque combo al azar]
type = VarRandom
trigger1 = 1
v = 57
range = 0,100

[State 0, ataque al azar]
type = VarRandom
trigger1 = 1
v = 58
range = 0,10

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) > 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist y = [-15,15]
trigger1 = random < 1000
trigger1 = p2bodydist x = [-10,10]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -3, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) > 0
triggerall = stateno != 100
triggerall = statetype = S && ctrl
trigger1 = p2bodydist x > 20
trigger1 = p2movetype != A
trigger1 = facing != enemynear, facing
trigger2 = p2bodydist x > 20
trigger2 = facing = enemynear, facing

[State 100, Run Fwd terminar]
type = CtrlSet
triggerall = var(59) > 0
triggerall = stateno = 100
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != A

trigger2 = p2bodydist x < 20
trigger2 = p2movetype = A
trigger2 = facing = enemynear, facing

trigger3 = p2bodydist x < 160
trigger3 = p2movetype = A
trigger3 = facing != enemynear, facing

value = 1

[State 100, Run Fwd terminar]
type = ChangeState
triggerall = var(59) > 0
triggerall = stateno = 100
triggerall = BackEdgeBodyDist >= 1

trigger1 = p2bodydist x < 20
trigger1 = p2movetype != A

trigger2 = p2bodydist x < 20
trigger2 = p2movetype = A
trigger2 = facing = enemynear, facing

trigger3 = p2bodydist x < 160
trigger3 = p2movetype = A
trigger3 = facing != enemynear, facing

;trigger4 = roundstate > 2
value = 101

[State 100, Run Fwd terminar]
type = CtrlSet
triggerall = var(59) > 0
triggerall = stateno = 100
triggerall = BackEdgeBodyDist >= 1

trigger1 = p2bodydist x < 20
trigger1 = p2movetype != A

trigger2 = p2bodydist x < 20
trigger2 = p2movetype = A
trigger2 = facing = enemynear, facing

trigger3 = p2bodydist x < 160
trigger3 = p2movetype = A
trigger3 = facing != enemynear, facing

value = 1

;----------------------------------
; Light
[State 200, Stand Punch]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
trigger1 = var(58) = 1
trigger1 = p2bodydist x >= 3
trigger1 = statetype = S && ctrl
trigger2 = stateno = 201 && movecontact
value = 200

; Light (closed)
[State 201, Stand Punch]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
triggerall = p2bodydist x < 3
trigger1 = var(58) = 1
trigger1 = statetype = S
trigger1 = ctrl
value = 201

;---------------------------------------------------------------------------
; Hard
[State 210, Stand Punch]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
trigger1 = var(58) = 2
trigger1 = p2bodydist x >= 3 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = random < 333
trigger2 = stateno = 211 && movecontact
trigger3 = random = [333,655]
trigger3 = p2bodydist x >= 3 
trigger3 = stateno = 200 && movecontact
trigger4 = random > 655
trigger4 = p2bodydist x >= 3 
trigger4 = stateno = 230 && movecontact
value = 210

; Elbow (closed)
[State 211, Stand Punch]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
triggerall = p2bodydist x < 3
trigger1 = var(58) = 2
trigger1 = statetype = S 
trigger1 = ctrl
value = 211

;---------------------------------------------------------------------------
; Light 
[State 230, Stand Kick]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
trigger1 = var(58) = 3
trigger1 = p2bodydist x >= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = random < 499
trigger2 = stateno = 231 && movecontact
trigger3 = random >= 499
trigger3 = p2bodydist x >= 3
trigger3 = stateno = 200 && movecontact
value = 230

; Light (closed) 
[State 231, Stand Kick]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
triggerall = p2bodydist x < 3
trigger1 = var(58) = 3
trigger1 = statetype = S
trigger1 = ctrl
value = 231

;---------------------------------------------------------------------------
; Hard 
[State 240, Stand Kick]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
trigger1 = var(58) = 4
trigger1 = p2bodydist x >= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = random < 499
trigger2 = stateno = 241 && movecontact
trigger3 = random >= 499
trigger3 = p2bodydist x >= 3
trigger3 = stateno = 230 && movecontact
value = 240

;Hard (closed)
[State 241, Stand Kick]
type = ChangeState
triggerall = var(59) > 0
triggerall = p2bodydist x < 20
triggerall = p2statetype != L
triggerall = p2bodydist y = [-15,15]
triggerall = p2bodydist x < 3
trigger1 = var(58) = 4
trigger1 = statetype = S
trigger1 = ctrl
value = 241

[State -1,  Launcher - Slide Kick]
type  = ChangeState
value = 450
triggerall = var(59) > 0
triggerall = p2bodydist x < 60
triggerall = p2bodydist y = [-10,10]
trigger1 = var(58) = 8
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 250 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact

[State -1,  Launcher - Uppercut]
type  = ChangeState
value = 420
triggerall = var(59) > 0
triggerall = p2statetype != L
triggerall = p2bodydist x < 8
triggerall = p2bodydist y = [-10,10]
trigger1 = var(58) = 9
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
trigger6 = stateno = 450 && movecontact

[State -1, Air Light Punch]
type = ChangeState
value  = 600
triggerall = var(59) > 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-20,20]
trigger1 = random < 500
trigger1 = ctrl && statetype = A
trigger2 = random >= 500
trigger2 = stateno = 630 && movecontact

[State -1, Air Medium Punch]
type = ChangeState
value  = 610
triggerall = var(59) > 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-20,20]
trigger1 = random < 500
trigger1 = ctrl && statetype = A
trigger2 = random < 500
trigger2 = stateno = 600 && movecontact
trigger3 = random >= 500
trigger3 = stateno = 630 && movecontact
 
[State -1, Double Punch]
type = ChangeState
value  = 620
triggerall = var(59) > 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-20,20]
trigger1 = random < 500
trigger1 = ctrl && statetype = A
trigger2 = random < 500
trigger2 = stateno = 610 && movecontact
trigger3 = random >= 500
trigger3 = stateno = 640 && movecontact

[State -1, Air Light Kick]
type = ChangeState
value  = 630
triggerall = var(59) > 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-20,20]
trigger1 = random < 500
trigger1 = ctrl && statetype = A
trigger2 = random < 500
trigger2 = stateno = 600 && movecontact

[State -1, Air Medium Kick]
type = ChangeState
value  = 640
triggerall = var(59) > 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-20,20]
trigger1 = random < 500
trigger1 = ctrl && statetype = A
trigger2 = random < 500
trigger2 = stateno = 630 && movecontact

[State -1, Air Hard Kick]
type = ChangeState
value  = 650
triggerall = var(59) > 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist y = [-20,20]
trigger1 = random < 500
trigger1 = ctrl && statetype = A
trigger2 = random < 500
trigger2 = stateno = 640 && movecontact
trigger1 = random >= 500
trigger3 = stateno = 610 && movecontact

[State -1, Fireball]
type = ChangeState
value = 2000
triggerall = var(59) > 0
triggerall = power >= 150
triggerall = p2bodydist y = [-60,60]
triggerall = ctrl || (stateno = 921 && time = 9) || ((stateno = [200,240]) && movecontact)
trigger1 = random < 100
trigger1 = p2bodydist x > 120
trigger1 = p2movetype != A
trigger2 = random < 50
trigger2 = p2movetype = A
trigger2 = random < 50
trigger2 = p2movetype = H

[State -1, Fireball 2]
type = ChangeState
value = 2001
triggerall = var(59) > 0
triggerall = power >= 150
triggerall = p2bodydist y = [-60,60]
triggerall = var(33) < 4
triggerall = ((stateno = [2000,2001]) && animelem = 2, > 2) || (stateno = 921 && time = 9) || ((stateno = [200,240]) && movecontact)
trigger1 = random < 50
trigger1 = p2movetype = H
trigger2 = random < 100
trigger2 = helper(2010), movehit
trigger2 = random < 50
trigger2 = power > 600

[State -1, Air Fireball]
type = ChangeState
value = 2050
triggerall = var(59) > 0
triggerall = power >= 150
triggerall = p2bodydist x > 30 && p2bodydist x > -30

trigger1 = statetype = A && ctrl
trigger1 = random < 100
trigger1 = p2bodydist x > 120
trigger1 = power > 600
trigger1 = p2movetype != A

trigger2 = statetype = A && ctrl
trigger2 = random < 50
trigger2 = p2movetype = A

trigger3 = stateno = [600,640]
trigger3 = random < 100
trigger3 = movehit
trigger3 = p2movetype = H

[State -1, Air Fireball 2]
type = ChangeState
value = 2051
triggerall = var(59) > 0
triggerall = power >= 150
triggerall = p2bodydist x > 60 && p2bodydist x > -30
triggerall = var(33) < 4
triggerall = (stateno = 2050 && animelem = 3, > 0) || (stateno = 2051 && animelem = 2, > 0)

trigger1 = p2movetype = H
trigger1 = random < 50

trigger2 = p2movetype = H
trigger2 = random < 100
trigger2 = helper(2060), movehit

[State -1, Hyper - Meteor Attack]
type = ChangeState
value = 3800
triggerall = var(59) > 0
triggerall = power >= 3000
triggerall = p2bodydist y = [-60,60]
triggerall = p2bodydist x = [-60,60]
trigger1 = random < 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = random < 25
trigger2 = (stateno = [200,260]) && movecontact

[State -1, Final Kamehame-Ha]
type = ChangeState
value = 3000
triggerall = var(59) > 0
triggerall = power >= 1000
triggerall = p2bodydist y = [-60,60]
trigger1 = random < 25
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = random < 25
trigger2 = (stateno = [200,260]) && movecontact

[State -1, Big Bang Attack]
type = ChangeState
value = 3100
triggerall = var(59) > 0
triggerall = numhelper(3110) = 0
triggerall = power >= 1000
triggerall = p2bodydist y = [-120,120]
trigger1 = random < 25
trigger1 = ctrl
trigger2 = random < 125
trigger2 = stateno = 200 && movecontact
trigger3 = random = [125,249]
trigger3 = stateno = 210 && movecontact
trigger4 = random = [250,324]
trigger4 = stateno = 220 && movecontact
trigger5 = random = [325,499]
trigger5 = stateno = 230 && movecontact
trigger6 = random = [500,624]
trigger6 = stateno = 240 && movecontact
trigger7 = random = [625,749]
trigger7 = stateno = 250 && movecontact
trigger8 = random = [750,874]
trigger8 = stateno = 260 && movecontact
trigger9 = random = [875,999]
trigger9 = stateno = 420 && movecontact

[State -1, Super Punch]
type = ChangeState
value = 3200
triggerall = var(59) > 0
triggerall = power >= 1000
triggerall = p2bodydist y = [-60,60]
;trigger1 = statetype != C
trigger1 = random < 200
trigger1 = ctrl = 1
trigger1 = p2bodydist x > 60
trigger2 = random = [0,149]
trigger2 = (stateno = [200,201]) && movecontact
trigger3 = random = [150,299]
trigger3 = (stateno = [210,211]) && movecontact
trigger4 = random = [300,449]
trigger4 = (stateno = [220,221]) && movecontact
trigger5 = random = [450,599]
trigger5 = (stateno = [230,231]) && movecontact
trigger6 = random = [600,749]
trigger6 = (stateno = [240,241]) && movecontact
trigger7 = random = [750,999]
trigger7 = (stateno = [1300,1305]) && movecontact

[State -1, Lateral Kick A-B - 1°]
type = ChangeState
value = 1000+(random%2)*10
triggerall = var(59) > 0
trigger1 = statetype = S
triggerall = p2bodydist y = [0,90]
triggerall = p2bodydist x = [-30,30]
triggerall = p2statetype != L
trigger1 = random < 100
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A
trigger2 = random < 499
trigger2 = stateno = 220 && movecontact
trigger3 = random >= 500
trigger3 = stateno = 250 && movecontact

[State -1, Lateral Kick A - 2°]
type = ChangeState
value = 1001
triggerall = var(59) > 0
trigger1 = statetype = A
trigger1 = stateno = 1000 && movehit

[State -1, Lateral Kick A - 3°]
type = ChangeState
value = 1002
triggerall = var(59) > 0
trigger1 = statetype = A
trigger1 = stateno = 1001 && movehit

[State -1, Lateral Kick B - 2°]
type = ChangeState
triggerall = var(59) > 0
trigger1 = statetype = A
trigger1 = stateno = 1010 && movecontact 
value = 1011

[State -1, Lateral Kick B - 3°]
type = ChangeState
triggerall = var(59) > 0
trigger1 = statetype = A
trigger1 = stateno = 1011 && movecontact 
value = 1012

[State -1, Lateral Kick EX]
type = ChangeState
value = 1020
triggerall = var(59) > 0
triggerall = p2bodydist y = [0,90]
triggerall = p2bodydist x = [-30,30]
triggerall = power >= 500
trigger1 = random < 400
trigger1 = statetype = S && ctrl
trigger2 = random < 499
trigger2 = stateno = 220 && movecontact
trigger3 = random >= 500
trigger3 = stateno = 250 && movecontact

[State -1, Dancing Kick A-B]
type = ChangeState
value = 1100+(random%2)*10
triggerall = var(59) > 0
triggerall = p2bodydist y = [-30,30]
triggerall = p2bodydist x = [-60,60]
triggerall = p2statetype != L
trigger1 = random < 100
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A
trigger2 = random < 499
trigger2 = stateno = 220 && movecontact
trigger3 = random >= 500
trigger3 = stateno = 250 && movecontact

[State -1, Dancing Kick EX]
type = ChangeState
value = 1120
triggerall = var(59) > 0
triggerall = power >= 500
triggerall = p2bodydist y = [-30,30]
triggerall = p2bodydist x = [-60,60]
triggerall = p2statetype != L
trigger1 = random < 75
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A
trigger2 = random < 499
trigger2 = stateno = 220 && movecontact
trigger3 = random >= 500
trigger3 = stateno = 250 && movecontact

[State -1, Guard Kick]
type = ChangeState
value = 1200+(random%2)*10
triggerall = var(59) > 0
triggerall = p2bodydist y = [0,120]
triggerall = p2bodydist x = [-30,30]
triggerall = p2statetype != L
trigger1 = random < 200
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A
trigger2 = random < 100
trigger2 = statetype = S && ctrl
trigger2 = p2movetype != A
trigger3 = random < 333
trigger3 = stateno = 220 && movecontact
trigger4 = random = [333,665]
trigger4 = stateno = 250 && movecontact
trigger5 = random = [666,999]
trigger5 = stateno = 260 && movecontact

[State -1, Slide Punch]
type = ChangeState
value = 1300;+(random%2)*10
triggerall = var(59) > 0
triggerall = p2bodydist y = [0,30]
triggerall = p2bodydist x = [-30,30]
triggerall = p2statetype != L
trigger1 = random < 200
trigger1 = statetype = S && ctrl
trigger2 = random < 499
trigger2 = (stateno = [220,221]) && movecontact
trigger3 = random >= 499
trigger3 = (stateno = [240,241]) && movecontact

[State -1, Slide Punch A - 2°]
type = ChangeState
value = 1301
triggerall = var(59) > 0
triggerall = stateno = 1300
triggerall = p2bodydist y = [0,30]
triggerall = p2bodydist x = [-30,30]
triggerall = animelem >= 4, > 4
trigger1 = movehit

[State -1, Slide Punch A - 3°]
type = ChangeState
value = 1302
triggerall = var(59) > 0
triggerall = stateno = 1301
triggerall = p2bodydist y = [0,30]
triggerall = p2bodydist x = [-30,30]
triggerall = animelem >= 3, > 4
trigger1 = random < 200
trigger1 = movehit


[State -1, Slide Punch - A Alternativa patada]
type = ChangeState
value = 1303
triggerall = var(59) = 1
triggerall = stateno = 1301
triggerall = p2bodydist y = [0,30]
triggerall = p2bodydist x = [-30,30]
trigger1 = random = [200,399]
trigger1 = animelem = 3, > 2

[State -1, Slide Punch - A Alternativa patada]
type = ChangeState
value = 1304
triggerall = var(59) = 1
triggerall = stateno = 1301
triggerall = p2bodydist y = [0,30]
triggerall = p2bodydist x = [-30,30]
trigger1 = random = [400,599]
trigger1 = animelem = 3, > 2

; B
[State -1, Slide Attack]
type = ChangeState
value = 1310
triggerall = var(59) > 0
triggerall = stateno = 1301
triggerall = p2bodydist y = [0,30]
triggerall = p2bodydist x = [-30,30]
trigger1 = random >= 600
trigger1 = animelem = 3, > 2

[State -1, Cutting Kick]
type = ChangeState
value = 1400
triggerall = var(59) > 0
triggerall = p2bodydist y = [-20,40]
triggerall = p2bodydist x = [-10,30]
trigger1 = random < 25
trigger1 = statetype = A && ctrl
trigger2 = random < 100
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = random < 100
trigger3 = (stateno = [2050,2051]) 

[State -1, Cutting Kick EX]
type = ChangeState
value = 1420
triggerall = var(59) > 0
triggerall = p2bodydist y = [-10,120]
triggerall = p2bodydist x = [-5,120]
triggerall = p2statetype != L
triggerall = power >= 500

trigger1 = random < 200
trigger1 = statetype = A && ctrl

trigger2 = random < 300
trigger2 = (stateno = [600,640]) && movecontact

trigger3 = random < 100
trigger3 = (stateno = [2050,2051])

trigger4 = random < 100
trigger4 = stateno = 1222 && movecontact; Guard Kick EX

trigger5 = random < 100
trigger5 = stateno = 1021 && (movecontact || time = [2,6]); Lateral Kick EX

;EX (Taunt)
[State -1, Cutting Kick]
type = ChangeState
triggerall = var(59) > 0
triggerall = stateno = 1424
trigger1 = animtime = 0
trigger2 = random < 333
trigger2 = p2movetype != H
trigger2 = life < (enemy, life)
trigger2 = anim = 1424 && animelem = 3, < 0
value = 0
ctrl = 1
ignorehitpause = 1

[State -1, Banshee Blast]
type = ChangeState
value = 2100
triggerall = var(59) > 0
triggerall = p2bodydist y = [-10,10]
triggerall = power >= 500
trigger1 = random < 100
trigger1 = statetype = S && ctrl
trigger1 = p2bodydist x > 60

trigger2 = random < 25
trigger2 = (stateno = [2000,2001]) && time >= 8
trigger2 = p2movetype = H

trigger3 = random < 100
trigger3 = statetype = S && ctrl
trigger3 = facing = enemynear, facing

[State -1, Cannon Beam]
type = ChangeState
value = 2200
triggerall = var(59) > 0
triggerall = p2bodydist y = [-10,10]
triggerall = power >= 500
trigger1 = random < 100
trigger1 = statetype = S && ctrl
trigger1 = ifelse(p2movetype = A, p2bodydist x > 120, p2movetype != A)
trigger2 = random < 250
trigger2 = stateno = 200 && movecontact
trigger3 = random = [250,499]
trigger3 = stateno = 250 && movecontact
trigger4 = random = [500,749]
trigger4 = stateno = 260 && movecontact
trigger5 = random > 750
trigger5 = stateno = 1301 && movecontact

[State -1, Mini Galic Ho]
type = ChangeState
value = 2300
triggerall = var(59) > 0
triggerall = p2bodydist y = [-20,40]
triggerall = p2bodydist x = [-10,30]
triggerall = power >= 500
trigger1 = random < 25
trigger1 = statetype = A && ctrl
trigger2 = random < 100
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = random < 100
trigger3 = (stateno = [2050,2051]) 

[State -1, Stand-Parry]
type = HitOverride
triggerall = var(59) > 0
triggerall = statetype = S
triggerall = ctrl || stateno = 700
trigger1 = random < ((lifemax-life)/(lifemax/100))+10
trigger1 = p2movetype = A
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = 8
forceair = 0

[State -1, Air-Parry]
type = HitOverride
triggerall = var(59) > 0
triggerall = statetype = A
triggerall = ctrl || stateno = 701
trigger1 = random < ((lifemax-life)/(lifemax/100))+10
trigger1 = p2movetype = A
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 701
time = 8
forceair = 0

[State -1, Zanzoken]
type = ChangeState
value = 920
triggerall = var(59) > 0
triggerall = power >= 100
triggerall = numhelper(925) < 8
;triggerall = var(6) = 0
;trigger1 = statetype != A
triggerall  = ctrl || (stateno = [990,995]) || (stateno = [940,941]) && time >= 8 || (stateno = [120,155]) || (stateno = 901 && time > 0) || (movetype = H && gethitvar(hitcount) <= 2 && var(5) > 0); ||  (stateno = [200,240]) && movecontact && stateno != 420
triggerall = facing != enemynear, facing
trigger1 = random < 200
trigger1 = p2movetype = A
trigger1 = p2bodydist x < 160
trigger2 = random < 25
trigger2 = p2movetype != A
trigger2 = p2bodydist x > 120
trigger2 = p2bodydist y > -60
;trigger3 = random < 100
trigger3 = movecontact
trigger3 = p2bodydist x < 60
trigger3 = p2bodydist y > -60

[State -1, Teleport - Fwd]
type = ChangeState
value = 930
triggerall = var(59) > 0
triggerall = power >= 250
triggerall = ctrl
triggerall = facing != enemynear, facing
trigger1 = random < 500
trigger1 = p2movetype = A
trigger1 = p2bodydist x >= 120
trigger1 = p2bodydist y = [-60,60]
trigger2 = random < 50
trigger2 = p2bodydist y > -60
trigger2 = p2movetype = I
trigger2 = power >= 300*ifelse(random<800,(random%10),0)

[State -1, Teleport - Back]
type = ChangeState
value = 931
triggerall = var(59) > 0
triggerall = power >= 250
triggerall = ctrl
triggerall = backedgebodydist > 30
trigger1 = random < 500
trigger1 = p2movetype = A
trigger1 = p2bodydist x < 120
trigger1 = p2bodydist y = [-60,60]
trigger2 = random < 100
trigger2 = (stateno = [200,250]) && movecontact
trigger2 = power < 300
trigger3 = random < 50
trigger2 = p2bodydist y > -60
trigger3 = p2bodydist x < 60
trigger3 = power >= 300*ifelse(random<800,(random%10),0)

[State -2, Cargar poder]
type = ChangeState
value = 900
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A && ctrl 
triggerall = power < powermax
triggerall = enemy, HitDefAttr != SCA,NP,SP,HP
;menos poder, mas posibilidad
triggerall = random < (powermax-power)/(powermax/100)
;enemigo no atacando
trigger1 = p2movetype != A
trigger1 = power < powermax/2;la mitad de poder
trigger1 = p2bodydist x != [-(lifemax-life)/(lifemax/200),(lifemax-life)/(lifemax/200)]
trigger1 = p2bodydist y != [-(lifemax-life)/(lifemax/200),(lifemax-life)/(lifemax/200)]
;
trigger2 = p2movetype = H
trigger2 = power >= powermax/2;la mitad de poder
trigger3 = p2movetype != A
trigger3 = power < powermax/3
trigger3 = p2bodydist x != [-(lifemax-life)/(lifemax/200),(lifemax-life)/(lifemax/200)]

[State -2, terminar cargar]
type = ChangeState
triggerall = var(59) > 0
triggerall = stateno = 900
triggerall = animelem = 3, >= 4
;poder al maximo
trigger1 = power >= powermax
;cerca del enemigo
trigger2 = p2bodydist x = [-(lifemax-life)/(lifemax/200),(lifemax-life)/(lifemax/200)]
trigger2 = p2bodydist y = [-(lifemax-life)/(lifemax/200),(lifemax-life)/(lifemax/200)]
trigger2 = p2movetype != H
trigger2 = p2statetype != L
;enemigo atacando (mas posibilidad si tiene menos vida)
trigger3 = p2movetype = A
trigger3 = random < (lifemax-life)/(lifemax/100)
;projectiles enemigos
trigger4 = enemy, numproj > 0
;otros projectiles enemigos
;trigger5 = enemynear, ID > 58
trigger5 = enemynear, HitDefAttr = SCA,NP,SP,HP
;enemigo atacando y con mucho poder
trigger6 = random < (power/(powermax/100))/2
trigger6 = p2movetype = A
;enemigo esta atras
trigger7 = p2bodydist x < -20
;con mucho poder
trigger8 = random < (powermax-power)/(powermax/100)
trigger8 = p2bodydist x < (lifemax-life)/(lifemax/100)
;enemigo golpeado
trigger9 = power >= powermax/2
trigger9 =  p2movetype = H
value = 901



; Within StateDef -3, none of your own AI-related code should come after the code
; provided here (and putting it before the code is also generally a bad idea).
; It's better to use State -1 (or, in special circumstances, State -2) instead.
;-----------------------------------------------------











































[State -3, VarAdd]
type = Varadd
triggerall = (GetHitVar(HitShakeTime) = 5)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 1
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
triggerall = (GetHitVar(HitShakeTime) = 10)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 2
ignorehitpause = 1

[State -3, VarAdd]
type = Varadd
triggerall = (GetHitVar(HitShakeTime) = 15)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 3
ignorehitpause = 1

;This is used, to recover from the effect if the character is not blocking, or getting hit by an attack...

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5000) && (Alive)
trigger1 = (Anim = 5000) || (Anim = 5001) || (Anim = 5010) || (Anim = 5011)
var(0) = -3
ignorehitpause = 1

;...and this is used when the character has reached his/her limit.

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 5) && (!Time) && (StateNo = 5010) && (Alive)
trigger1 = (Anim = 5020) || (Anim = 5021)
var(0) = -3
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5000) && (Alive)
trigger1 = (Anim = 5002) || (Anim = 5012)
var(0) = -6
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && (!Time) && (StateNo = 5010) && (Alive) && (Anim = 5022)
var(0) = -6
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && (!Time) && (StateNo = 5100) && (Alive)
var(0) = -9
ignorehitpause = 1
 
;A code is needed, to recover from the effect if the character is not blocking, nor getting hit by an attack.

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 5) && ((GameTime%5) = 0) && (MoveType != H) && (StateNo != [130,160])
var(0) = -1
ignorehitpause = 1

[State -3, ChangeState]
type = ChangeState
trigger1 = var(0) >= 35
value = 5300
ctrl = 0
ignorehitpause = 1





;-------------------------------------------------------------------------------------------------------------------------------------------
