;---------------------------------------------------------------------------
[Command]
name = "Da"     ;Required (do not remove)
command = D,a
time = 20

[Command]
name = "Db"     ;Required (do not remove)
command = D,b
time = 20

[Command]
name = "Dc"     ;Required (do not remove)
command = D,c
time = 20

[Command]
name = "Dx"     ;Required (do not remove)
command = D,x
time = 20

[Command]
name = "Dy"     ;Required (do not remove)
command = D,y
time = 20
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
;---------------------------------------------------------------------------
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
;---------------------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "holds";Required (do not remove)
command = /$s
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;---------------------------------------------------------------------------
[State -1,Da]
type = ChangeState
value = 6230
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Da"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Db]
type = ChangeState
value = 6160
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Db"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dc]
type = ChangeState
value = 6165
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Dc"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1,Garlick Ho]
type = ChangeState
value = 6370
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = command = "Dx"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,ai Garlick Ho]
type = ChangeState
value = 6370
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = random < 20
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dx]
type = ChangeState
value = 6260
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Dx"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,Dy]
type = ChangeState
value = 6240
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dy"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6050
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6050
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6055
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6065
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6060
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6075
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6070
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6080
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6075
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6085
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6080
;---------------------------------------------------------------------------
[State -1,c]
type = ChangeState
value = 6090+(var(5)*5)
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6100
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6105
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6100
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6110
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6105
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6115
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > (15-var(7))
trigger1 = stateno = 6110
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6120
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6125
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6120
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6130
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6125
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6135
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > (10-var(7))
trigger1 = stateno = 6130
;---------------------------------------------------------------------------
[State -1,Aa]
type = ChangeState
value = 6140
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Ab]
type = ChangeState
value = 6145
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Ac]
type = ChangeState
value = 6150
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,FF]
type = ChangeState
value = 6005
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;BB
[State -1,BB]
type = ChangeState
value = 6010
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;AFF
[State -1,AFF]
type = ChangeState
value = 6015
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;BFF
[State -1,BFF]
type = ChangeState
value = 6020
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Power Up]
type = ChangeState
value = 6025
triggerall = var(10) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Transformation SSJ]
type = ChangeState
value = 7000
triggerall = var(10) = 0
triggerall = var(8) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Transformation SSJ2]
type = ChangeState
value = 7010
triggerall = var(10) = 0
triggerall = var(8) = 0
triggerall = var(7) = 1
triggerall = power >= 1000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------
[State -1, AI on]
type = VarSet
triggerAll = Var(10) < 1
triggerAll = RoundState = 2
trigger1 = AILevel > 0
v = 10
value = 1
Ignorehitpause = 1

[State -1, AI OFF]
type = VarSet
trigger1 = var(10) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
v = 10
value = 0
Ignorehitpause = 1
;---------------------------------------------------------------------------
;ai Da
[State -1,ai Da]
type = ChangeState
value = 6230
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 75
;---------------------------------------------------------------------------
;ai Db
[State -1,ai Db]
type = ChangeState
value = 6160
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 75
;---------------------------------------------------------------------------
;ai Dc
[State -1,ai Dc]
type = ChangeState
value = 6165
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 75

[State -1,ai Dx]
type = ChangeState
value = 6260
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 2000
triggerall = random < 20
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;ai Dy
[State -1,ai Dy]
type = ChangeState
value = 6240
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 30
trigger1 = (p2dist x) >= 75
;---------------------------------------------------------------------------
[State -1,ai a]
type = ChangeState
value = 6050
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai b]
type = ChangeState
value = 6070
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai c]
type = ChangeState
value = 6090+(var(5)*5)
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
[State -1,ai x]
type = ChangeState
value = 6100
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai y]
type = ChangeState
value = 6120
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 50
trigger1 = (p2dist x) < 120
;---------------------------------------------------------------------------
[State -1,ai Aa]
type = ChangeState
value = 6140
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
[State -1,ai Ab]
type = ChangeState
value = 6145
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
[State -1,ai Ac]
type = ChangeState
value = 6150
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
[State -1,ai Power Up]
type = ChangeState
value = 6025
triggerall = var(10) = 1
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
[State -1,ai Transformation SSJ]
type = ChangeState
value = 7000
triggerall = var(10) = 1
triggerall = var(8) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
trigger1 = (random%100) < 20
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,ai Transformation SSJ2]
type = ChangeState
value = 7010
triggerall = var(10) = 1
triggerall = var(8) = 0
triggerall = var(7) = 1
triggerall = power >= 1000
trigger1 = (random%100) < 20
trigger1 = statetype = S
trigger1 = ctrl
