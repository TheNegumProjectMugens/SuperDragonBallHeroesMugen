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
; Default value for the "time" parameter of a command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;=================[Level 4]=====================================================
[command]
name = "FinalKameHameHa"
command = D,DB,B,F,b+c
time = 30
;=================[Level 3]=====================================================
[command]
name = "DestelloFinal"
command = D,DB,B,F,x+y
time = 30
[command]
name = "Air-Big-Bang"
command = D,DF,F,B,a+b
time = 30
;=================[Level 2]=====================================================
[command]
name = "Amazing-Impact"
command = D,DF,F,B,a+b
time = 30
[command]
name = "RenzokuKikoha"
command = D,DB,B,D,DB,B,c
time = 30
;=================[Level 1]=====================================================
[command]
name = "BigBang"
command = D,DB,B,F,b
time = 30
[command]
name = "Fukushahado"
command = D,DB,B,D,DB,B,a
time = 30
;=================[Especiales de Ki-XYZ]============================================
[command]
name = "Fire Balls"
command = D,DB,B,x
time = 20
[command]
name = "JishinHa"
command = D,DB,B,y
time = 20
[command]
name = "Atomikku-Burasuto"
command = D,DB,B,z
time = 20
[command]
name = "PhotonBomber"
command = D,DB,B,y
time = 20
[command]
name = "Big-Ball"
command = D,DB,B,z
time = 20
;=================[Especiales de Ki-ABC]============================================
[command]
name = "Kienzan"
command = D,DB,B,a
time = 15
[command]
name = "Crazy-Ball-Ex"
command = D,DB,B,D,DB,B,b
time = 30
[command]
name = "Crazy-Ball"
command = D,DB,B,b
time = 15
[command]
name = "Shyougeki Ha"
command = D,DB,B,c
time = 15
[command]
name = "MaxFlasher"
command =F,DF,D,DB,B,a
time = 50
[command]
name = "MaxFlasher"
command =F,DF,D,DB,B,b
time = 50
[command]
name = "MaxFlasher"
command =F,DF,D,DB,B,c
time = 50
;====================[Especiales de melé-XYZ]=====================================
[command]
name = "ShoryuKen-Débil"
command = F,D,DF,x
time = 20
[command]
name = "ShoryuKen-Medio"
command = F,D,DF,y
time = 20
[command]
name = "ShoryuKen-Fuerte"
command = F,D,DF,z
time = 20
[command]
name = "codazo"
command = D,DF,F,x
time = 15
[command]
name = "codazo2"
command = D,DF,F,y
time = 15
[command]
name = "Burn-Knuckle"
command = D,DF,F,z
time = 15
[command]
name = "Launcher"
command = x+y
time = 1
[command]
name = "Launcher"
command = y+z
time = 1
[command]
name = "Launcher"
command = x+z
time = 1
;====================[Especiales de melé-ABC]=====================================
[command]
name = "ComboPatada1"
command = B,F,a
time = 15
[command]
name = "ComboPatada2"
command = B,F,b
time = 15
[command]
name = "ComboPatada3"
command = B,F,c
time = 15
[command]
name = "Knee-Smash-Debil"
command = F,D,DF,a
time = 20
[command]
name = "Knee-Smash-Medio"
command = F,D,DF,b
time = 20
[command]
name = "Knee-Smash-Fuerte"
command = F,D,DF,c
time = 20
[command]
name = "Raigeki-Shuu-Debil"
command = F,DF,D,a
time = 15
[command]
name = "Raigeki-Shuu-Medio"
command = F,DF,D,b
time = 15
[command]
name = "Raigeki-Shuu-Fuerte"
command = F,DF,D,c
time = 15
;==================[Comandos]============================================

[command]
name = "Super Jump"
command = ~D, U
time = 10

;-| Double Tap |-----------------------------------------------------------
[command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "dodge"
command = a+x
time = 1

[command]
name = "Zero-Counter"
command = b+y
time = 1

[command]
name = "SSJ2"
command = z+c
time = 1

[command]
name = "charge"
command = /b
time = 1

[command]
name = "charge 1"
command = /y
time = 1

[command]
name = "hold_a"
command = /a
time = 1

[command]
name = "hold_b"
command = /b
time = 1

[command]
name = "hold_c"
command = /c
time = 1

[command]
name = "hold_x"
command = /x
time = 1

[command]
name = "hold_y"
command = /y
time = 1

[command]
name = "fly"
command = a+b
time = 1

[command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[command]
name = "holda"
command = /a
time = 1

[command]
name = "holdb"
command = /b
time = 1

[command]
name = "FF"
command = F, F
time = 15

[command]
name = "BB"
command = B, B
time = 15

[command]
name = "UU"
command = U, U
time = 15

[command]
name = "DD"
command = D, D
time = 15



;-| Dir + Button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

[command]
name = "forward"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[command]
name = "holddf";Required (do not remove)
command = /$DF
time = 1

[command]
name = "holddb";Required (do not remove)
command = /$DB
time = 1

[command]
name = "holdub";Required (do not remove)
command = /$UB
time = 1

[command]
name = "holduf";Required (do not remove)
command = /$UF
time = 1

[command]
name = "holda";Required (do not remove)
command = /a
time = 1

[command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Statedef -1]
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

;===================================================================================
;---------------- Supers -----------------------------------------------------------
;===================================================================================
;FinalKameHameHa
[State -1, FinalKameHameHa]
type = ChangeState
value = 4500
triggerall = p3name = "[Necromancer's] Goku" || p1name = "[Necromancer's] Goku"
triggerall = partner, alive && partner, name = "[Necromancer's] Goku"
trigger1 = command = "FinalKameHameHa" && Power >=2000
trigger1 = (statetype != A && ctrl)
;FinalKameHameHa
[State -1, FinalKameHameHa]
type = ChangeState
value = 4500
triggerall = p3name = "[Necromancer's] Goku" || p1name = "[Necromancer's] Goku"
triggerall = partner, alive && partner, name = "[Necromancer's] Goku"
trigger1 = partner, stateno = 4500 && stateno !=4500
trigger1 = statetype != A && ctrl
;DestelloFinal
[State -1, DestelloFinal]
type = ChangeState
value = 3200
triggerall = command = "DestelloFinal" && Power >=ifelse(var(56)=1,2500,3000)
trigger1 = (statetype = A && ctrl)
;DestelloFinal
[State -1, DestelloFinal]
type = ChangeState
value = 3250
triggerall = command = "DestelloFinal" && Power >=ifelse(var(56)=1,1500,2000)
trigger1 = (statetype != A && ctrl)
;Air-Big-Bang
[State -1, Big Bang]
type = ChangeState
value = 3500
triggerall = command = "Air-Big-Bang" && Power >=ifelse(var(56)=1,1500,2000) && prevstateno != 3500
trigger1 = statetype = A && ctrl
;Amazing-Impact
[State -1, Amazing-Impact]
type = ChangeState
value = 3300
triggerall = command = "Amazing-Impact" && Power >=ifelse(var(56)=1,1500,2000)
trigger1 = (statetype = S && ctrl)
;RenzokuKikoha
[State -1, RenzokuKikoha]
type = ChangeState
value = 3400
triggerall = command = "RenzokuKikoha" && Power >=ifelse(var(56)=1,500,1000)
trigger1 =(statetype = S && ctrl)
;BigBang
[State -1, Big Bang]
type = ChangeState
value = 3000
triggerall = command = "BigBang" && Power >=ifelse(var(56)=1,500,1000) && prevstateno != 3000
trigger1 = (statetype = S && ctrl)
;Air-Fukushahado
[State -1, Fukushahado]
type = ChangeState
value = 3150
triggerall = command = "Fukushahado"
triggerall = Power >=ifelse(var(56)=1,500,1000)
triggerall = prevstateno != 3150
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 620) && movecontact
trigger3 = (stateno = 630 || stateno = 640 || stateno = 650) && movecontact
;Fukushahado
[State -1, Fukushahado]
type = ChangeState
value = 3100
triggerall = command = "Fukushahado"
triggerall = Power >=ifelse(var(56)=1,500,1000)
triggerall = prevstateno != 3100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
;===================================================================================
;---------------- Specials Ki -----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;rodillazo1
[State -1, Rodillazo-Debil]
type = ChangeState
value = 920
triggerall = command = "Knee-Smash-Debil"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

[State -1, Rodillazo-Fuerte]
type = ChangeState
value = 930
triggerall = command = "Knee-Smash-Medio"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

[State -1, Rodillazo-Fuerte]
type = ChangeState
value = 940
triggerall = command = "Knee-Smash-Fuerte"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit
;ShoryuKen-Débil
[State -1, ShoryuKen-Débil]
type = ChangeState
value = 1600
triggerall = command = "ShoryuKen-Débil"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;ShoryuKen-Medio
[State -1, ShoryuKen-Medio]
type = ChangeState
value = 1610
triggerall = command = "ShoryuKen-Medio"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;ShoryuKen-Fuerte
[State -1, ShoryuKen-Fuerte]
type = ChangeState
value = 1620
triggerall = command = "ShoryuKen-Fuerte"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;Jishin-Ha
[State -1, Jishin-Ha]
type = ChangeState
value = 2500
triggerall = command = "JishinHa"
triggerall = power >= 350
triggerall = prevstateno != 1250
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;Photon-Bomber
[State -1, Big-Ball]
type = ChangeState
value = 2600
triggerall = command = "Big-Ball"
triggerall = power >= 400
triggerall = numhelper(2610)=0
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10

;PhotonBomber
[State -1, PhotonBomber]
type = ChangeState
value = 2701
triggerall = command = "PhotonBomber"
triggerall = power >= 250
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Crazy-Ball
[State -1, Crazy-Ball]
type = ChangeState
value = 2102
triggerall = command = "Crazy-Ball-Ex"
triggerall = numhelper(2110) >=1 && power >= 100
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Crazy-Ball
[State -1, Crazy-Ball]
type = ChangeState
value = 2100
triggerall = command = "Crazy-Ball"
triggerall = power >= 100
triggerall = numhelper(2110) <ifelse(var(56)=1,8,6)
triggerall = prevstateno != 2100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================


;codazo
[State -1, Codazo]
type = ChangeState
value = 1500
triggerall = command = "codazo"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger5 = stateno = 990 && movehit
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact

;codazo2
[State -1, Codazo Fuerte]
type = ChangeState
value = 1510
triggerall = command = "codazo2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit


;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 1000
triggerall = power >= 200
triggerall = command = "Fire Balls"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;Shyougeki Ha
[State -1, Shyougeki Ha]
type = ChangeState
value = 2000
triggerall = power >= 400
triggerall = command = "Shyougeki Ha"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;Kienzan
[State -1, Kienzan]
type = ChangeState
value = 2400
triggerall = power >= 250
triggerall = command = "Kienzan"
triggerall = numhelper(2420)=0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;Atomikku-Burasuto
[State -1, Atomikku-Burasuto]
type = ChangeState
value = 2300
triggerall = power >= 500
triggerall = numhelper(2320)=0
triggerall = command = "Atomikku-Burasuto"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movehit

;Air-Fire Balls
[State -1, Air-Fire Balls]
type = ChangeState
value = 1050
triggerall = power >= 200
triggerall = command = "Fire Balls"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;==================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================
;Ki Charge
[State -1,Ki Charge]
type 			= ChangeState
value 		= 7030
triggerall = (power < 3000) || power > 3000
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger1 = (StateType = S) && (Ctrl)
;-------------------------------------------------------------------------------
;Launcher
[State -1, Launcher]
type = ChangeState
value = 1200
triggerall = command = "Launcher"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact

;Burn-Knuckle
[State -1,Burn-Knuckle]
type = ChangeState
value = 1300
triggerall = command = "Burn-Knuckle"
trigger1= (StateType = S) && (Ctrl)
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact

;Raigeki-Shuu-Debil
[State -1,Raigeki-Shuu-Debil]
type = ChangeState
value = 1400
triggerall = command = "Raigeki-Shuu-Debil"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;Raigeki-Shuu-Medio
[State -1,Raigeki-Shuu-Medio]
type = ChangeState
value = 1425
triggerall = command = "Raigeki-Shuu-Medio"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10

;Raigeki-Shuu-Fuerte
[State -1,Raigeki-Shuu-Fuerte]
type = ChangeState
value = 1450
triggerall = command = "Raigeki-Shuu-Fuerte"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 930) && movecontact && animelem = 3,>= 0
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Dash Adelante
[State -1,Air Dash Adelante]
type = ChangeState
value = 107
triggerall = (command = "FF")
trigger1 = (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;Air Dash Atras
[State -1,Air Dash Atras]
type = ChangeState
value = 108
triggerall = (command = "BB")
trigger1 = (StateType = A) && (Ctrl)
;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================
;Patada al correr
[State -1, Patada al correr]
type = ChangeState
value = 790
triggerall = command = "a" || command = "b" || command ="c"
triggerall = stateno = 100
trigger1 = statetype != A
trigger1 = ctrl = 1

;Runing codazo
[State -1, Golpe al correr]
type = ChangeState
value = 990
triggerall = command = "x" || command = "y" || command ="z"
triggerall = stateno = 100
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, SSJ2-Off]
type = ChangeState
triggerall = var(56)=1
trigger1 = command = "SSJ2"; && command = "x"; && (command != "holdback" || command != "holdfwd")
trigger1 = statetype = S && ctrl
value = 762
ctrl = 0

[State -1, SSJ2-On]
type = ChangeState
triggerall = var(56)=0 && power >= 1000
trigger1 = command = "SSJ2"; && command = "x"; && (command != "holdback" || command != "holdfwd")
trigger1 = statetype = S && ctrl
value = 760
ctrl = 0

[State -1, Zero-Counter]
type = ChangeState
triggerall = command = "Zero-Counter" && power >=500
trigger1 = stateno = [130,155]
trigger2 = stateno = 700 && animelem >= 2
value = 740
ctrl = 0
;ignorehitpause = 
;persistent = 

[State -1, Dodge]
type = ChangeState
triggerall = command = "dodge" && power >=250 && var(56)!=1
trigger1 = ctrl && stateno !=[700,720]
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 990 && movecontact
trigger6 = stateno = [130,155]
value = 710
ctrl = 0
;ignorehitpause = 
;persistent = 

[State -1, Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "forward" && command != "down" && command != "up" && command != "back" 
trigger1 = ctrl || stateno = 700
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = ifelse(var(56)=1,12,6)
forceair = 0
;ignorehitpause = 
;persistent = 

;===================================================================================
;---------------- Básicos ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;200-Codo-Stand
[State -1, 200-Codo-Stand]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;201-Puño-Stand
[State -1, 201-Puño-Stand]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
;-------------------------------------------------------------------------------
;210-Gancho-Stand
[State -1, 210-Gancho-Stand]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 201) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;211-Puño-Stand
[State -1, 211-Puño-Stand]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;220-Puñetazo
[State -1, 220-Puñetazo]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;230-Rodilla-Stand
[State -1, 230-Rodilla-Stand]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;231-Patada-Stand
[State -1, 231-Patada-Stand]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211 || stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;240-Patadita-Stand
[State -1, 240-Patadita-Stand]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = p2bodydist x < 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;241-Patadon-Stand
[State -1, 241-Patadon-Stand]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = p2bodydist x >= 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;250-Fukushahado-Debil
[State -1, 250-Fukushahado-Debil]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430) && movehit
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440) && movehit
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430) && movehit
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440) && movehit
;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger3 = (stateno = [107,108]) && time >=10
;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630|| stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger3 = (stateno = [107,108]) && time >=10
;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;---------------------------------------------------------------------------
;Jump-Strong-Kick
[State -1, Jump-Strong-Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630|| stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
