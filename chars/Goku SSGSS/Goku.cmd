;---------------------------------------------------------------------------
[Command]
name = "Da"     ;Required (do not remove)
command = D,a
time = 20

[Command]
name = "DFa"     ;Required (do not remove)
command = D,F,a
time = 20

[Command]
name = "DBa"     ;Required (do not remove)
command = D,B,a
time = 20

[Command]
name = "Db"     ;Required (do not remove)
command = D,b
time = 20

[Command]
name = "DFb"     ;Required (do not remove)
command = D,F,b
time = 20

[Command]
name = "DBb"     ;Required (do not remove)
command = D,B,b
time = 20

[Command]
name = "Dc"     ;Required (do not remove)
command = D,c
time = 20

[Command]
name = "DFc"     ;Required (do not remove)
command = D,F,c
time = 20

[Command]
name = "DBc"     ;Required (do not remove)
command = D,B,c
time = 20

[Command]
name = "Dx"     ;Required (do not remove)
command = D,x
time = 20

[Command]
name = "DFx"     ;Required (do not remove)
command = D,F,x
time = 20

[Command]
name = "DBx"     ;Required (do not remove)
command = D,B,x
time = 20

[Command]
name = "Dy"     ;Required (do not remove)
command = D,y
time = 20

[Command]
name = "DFy"     ;Required (do not remove)
command = D,F,y
time = 20

[Command]
name = "DBy"     ;Required (do not remove)
command = D,B,y
time = 20

[Command]
name = "Dz"     ;Required (do not remove)
command = D,z
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
name = "holds";Required (do not remove)
command = /$s
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;---------------------------------------------------------------------------
[State -1,Da]
type = ChangeState
value = 6120
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Da"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,DFa]
type = ChangeState
value = 6180
triggerall = var(10) = 0
triggerall = command = "DFa"
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,DBa]
type = ChangeState
value = 6185
triggerall = var(10) = 0
triggerall = command = "DBa"
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Db]
type = ChangeState
value = 6130
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Db"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dc0]
type = ChangeState
value = 6140
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dc"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dc1]
type = ChangeState
value = 6300
triggerall = var(7) = 1
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dc"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dx]
type = ChangeState
value = 6150
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Dx"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dy]
type = ChangeState
value = 6160
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dy"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,0a]
type = ChangeState
value = 6020
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,0a]
type = ChangeState
value = 6025
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6020
;---------------------------------------------------------------------------
[State -1,0a]
type = ChangeState
value = 6030
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6025
;---------------------------------------------------------------------------
[State -1,0b]
type = ChangeState
value = 6040
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,0b]
type = ChangeState
value = 6045
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6040
;---------------------------------------------------------------------------
[State -1,0b]
type = ChangeState
value = 6050
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6045
;---------------------------------------------------------------------------
[State -1,c]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,0x]
type = ChangeState
value = 6070
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,0x]
type = ChangeState
value = 6075
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 10
trigger1 = stateno = 6070
;---------------------------------------------------------------------------
[State -1,0x]
type = ChangeState
value = 6080
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 10
trigger1 = stateno = 6075
;---------------------------------------------------------------------------
[State -1,0y]
type = ChangeState
value = 6090
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,0y]
type = ChangeState
value = 6095
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6090
;---------------------------------------------------------------------------
[State -1,0y]
type = ChangeState
value = 6100
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6095
;---------------------------------------------------------------------------
[State -1,1a]
type = ChangeState
value = 6220
triggerall = var(7) = 1
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,1a]
type = ChangeState
value = 6225
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6220
;---------------------------------------------------------------------------
[State -1,1a]
type = ChangeState
value = 6230
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6225
;---------------------------------------------------------------------------
[State -1,1a]
type = ChangeState
value = 6235
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6230
;---------------------------------------------------------------------------
[State -1,1b]
type = ChangeState
value = 6240
triggerall = var(7) = 1
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,1b]
type = ChangeState
value = 6245
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6240
;---------------------------------------------------------------------------
[State -1,1b]
type = ChangeState
value = 6250
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6245
;---------------------------------------------------------------------------
[State -1,1b]
type = ChangeState
value = 6255
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6250
;---------------------------------------------------------------------------
[State -1,1x]
type = ChangeState
value = 6260
triggerall = var(7) = 1
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,1x]
type = ChangeState
value = 6265
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 10
trigger1 = stateno = 6260
;---------------------------------------------------------------------------
[State -1,1x]
type = ChangeState
value = 6270
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 10
trigger1 = stateno = 6265
;---------------------------------------------------------------------------
[State -1,1x]
type = ChangeState
value = 6275
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 20
trigger1 = stateno = 6270
;---------------------------------------------------------------------------
[State -1,1y]
type = ChangeState
value = 6280
triggerall = var(7) = 1
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,1y]
type = ChangeState
value = 6285
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6280
;---------------------------------------------------------------------------
[State -1,1y]
type = ChangeState
value = 6290
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6285
;---------------------------------------------------------------------------
[State -1,1y]
type = ChangeState
value = 6295
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6290
;---------------------------------------------------------------------------
[State -1,Aa]
type = ChangeState
value = 6110
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Ab]
type = ChangeState
value = 6115
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Fz]
type = ChangeState
value = 6170
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Bz]
type = ChangeState
value = 6171
triggerall = var(10) = 0
triggerall = command = "holdback"
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,FF]
type = ChangeState
value = 100
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,BB]
type = ChangeState
value = 105
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,AFF]
type = ChangeState
value = 6005
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,ABB]
type = ChangeState
value = 6006
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Transformation]
type = ChangeState
value = 6200
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dz"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Power Up]
type = ChangeState
value = 6010
triggerall = var(10) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
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
[State -1,ai Da]
type = ChangeState
value = 6120
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 5
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai DFa]
type = ChangeState
value = 6180
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 5
trigger1 = (p2dist x) >= 150
;---------------------------------------------------------------------------
[State -1,ai DBa]
type = ChangeState
value = 6185
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 5
trigger1 = (p2dist x) >= 150
;---------------------------------------------------------------------------
[State -1,ai Db]
type = ChangeState
value = 6130
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 5
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai Dc0]
type = ChangeState
value = 6140
triggerall = var(7) = 0
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai Dc1]
type = ChangeState
value = 6300
triggerall = var(7) = 1
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai Dx]
type = ChangeState
value = 6150
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 5
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai Dy]
type = ChangeState
value = 6160
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai Transformation SSGSS]
type = ChangeState
value = 6200
triggerall = var(7) = 0
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 25
;---------------------------------------------------------------------------
[State -1,ai 0a]
type = ChangeState
value = 6020
triggerall = var(7) = 0
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 0b]
type = ChangeState
value = 6040
triggerall = var(7) = 0
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 0x]
type = ChangeState
value = 6070
triggerall = var(7) = 0
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 0y]
type = ChangeState
value = 6090
triggerall = var(7) = 0
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 1a]
type = ChangeState
value = 6220
triggerall = var(7) = 1
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 1b]
type = ChangeState
value = 6240
triggerall = var(7) = 1
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 1x]
type = ChangeState
value = 6260
triggerall = var(7) = 1
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai 1y]
type = ChangeState
value = 6280
triggerall = var(7) = 1
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
[State -1,ai c]
type = ChangeState
value = 6060
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 5
trigger1 = (p2dist x) >= 80
;---------------------------------------------------------------------------
[State -1,ai Aa]
type = ChangeState
value = 6110
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 25
;---------------------------------------------------------------------------
[State -1,ai Ab]
type = ChangeState
value = 6115
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 25
;---------------------------------------------------------------------------
[State -1,ai FF]
type = ChangeState
value = 101
triggerall = var(10) = 1
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
[State -1,ai Power up]
type = ChangeState
value = 6010
triggerall = var(10) = 1
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 200
