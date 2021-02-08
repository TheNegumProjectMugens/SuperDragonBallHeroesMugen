; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;-| Special Motions |------------------------------------------------------
[Command]
name = "Galick Gun"     ;Required (do not remove)
command = D, B, F, a
time = 20

[Command]
name = "Big Bang Attack"     ;Required (do not remove)
command = D, B, F, b
time = 20

[Command]
name = "Final Flash"     ;Required (do not remove)
command = D, B, F, c
time = 20

[Command]
name = "Final Flash 3,5k"     ;Required (do not remove)
command = D, B, F, y
time = 20

[Command]
name = "Punch Combo"     ;Required (do not remove)
command = D, F, a
time = 20

[Command]
name = "SSJ2 Combo"     ;Required (do not remove)
command = D, F, x
time = 20

[Command]
name = "Teleport Punch"     ;Required (do not remove)
command = D, B, a
time = 20

[Command]
name = "Teleport Kick"     ;Required (do not remove)
command = D, B, b
time = 20

[Command]
name = "Ki Ring"     ;Required (do not remove)
command = D, F, b
time = 20

[Command]
name = "20 Ki ball"     ;Required (do not remove)
command = D, F, c
time = 20

[Command]
name = "Final Shine Attack"     ;Required (do not remove)
command = D, B, F, x
time = 20

[Command]
name = "Teleport"     ;Required (do not remove)
command = a+c
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
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

;-| Hold Dir |--------------------------------------------------------------
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
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holds";Required (do not remove)
command = /$s
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;---------------------------------------------------------------------------
;Galick Gun
[State -1, Galick Gun]
type = ChangeState
value = 6026
triggerall = power >= 1000
triggerall = command = "Galick Gun"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Big Bang Attack
[State -1, Big Bang Attack]
type = ChangeState
value = 6032
triggerall = var(7) > 0
triggerall = power >= 2000
triggerall = command = "Big Bang Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Shine Attack
[State -1, Final Shine Attack]
type = ChangeState
value = 6075
triggerall = var(7) = 3
triggerall = power >= 3000
triggerall = command = "Final Shine Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 6039
triggerall = var(7) > 0
triggerall = power >= 2500
triggerall = command = "Final Flash"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Flash 3,5k
[State -1, Final Flash 3,5k]
type = ChangeState
value = 6060
triggerall = var(7) = 3
triggerall = life >= 400
triggerall = power >= 3000
triggerall = command = "Final Flash 3,5k"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Flash 3,5k
[State -1, Final Flash 3,5k]
type = ChangeState
value = 6090
triggerall = var(7) = 3
triggerall = life < 400
triggerall = power >= 3000
triggerall = command = "Final Flash 3,5k"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch Combo
[State -1, Punch Combo]
type = ChangeState
value = 6050
triggerall = power >= 500
triggerall = command = "Punch Combo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ2 combo
[State -1, SSJ2 combo]
type = ChangeState
value = 6055
triggerall = var(7) > 0
triggerall = var(5) > 0
triggerall = power >= 1000
triggerall = command = "SSJ2 Combo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Ki Ring
[State -1, Ki Ring]
type = ChangeState
value = 6052
triggerall = var(7) > 0
triggerall = var(5) > 0
triggerall = power >= 300
triggerall = command = "Ki Ring"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;20 Ki ball
[State -1, 20 Ki ball]
type = ChangeState
value = 6070
triggerall = power >= 1000
triggerall = command = "20 Ki ball"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Punch
[State -1, Teleport Punch]
type = ChangeState
value = 6051
triggerall = power >= 100
triggerall = command = "Teleport Punch"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Kick
[State -1, Teleport Kick]
type = ChangeState
value = 6084
triggerall = power >= 100
triggerall = command = "Teleport Kick"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Lökés
[State -1, Lökés]
type = ChangeState
value = 6045
triggerall = var(7) > 0
triggerall = var(5) > 0
triggerall = power >= 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 6038
triggerall = power >= 1000
triggerall = command = "Teleport"
trigger1 = movetype = H
;---------------------------------------------------------------------------
;Teleport forward
[State -1, Teleport]
type = ChangeState
value = 6065
triggerall = command = "FF"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport back
[State -1, Teleport]
type = ChangeState
value = 6066
triggerall = command = "BB"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Transform ssj
[State -1, Transform ssj]
type = ChangeState
value = 100000
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Transform ssj2
[State -1, Transform ssj2]
type = ChangeState
value = 200000
triggerall = var(7) = 1
triggerall = var(5) = 0
triggerall = power >= 1000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Transform ssj4
[State -1, Transform ssj4]
type = ChangeState
value = 300000
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = power >= 2000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Charge
[State -1, Charge]
type = ChangeState
value = 6000
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch1
[State -1, Air Punch1]
type = ChangeState
value = 6080
triggerall = command = "a" || command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch2
[State -1, Air Punch2]
type = ChangeState
value = 6081
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Kick1
[State -1, Air Kick1]
type = ChangeState
value = 6082
triggerall = command = "x" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Kick2
[State -1, Air Kick2]
type = ChangeState
value = 6083
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Punch1
[State -1, Normal Punch1]
type = ChangeState
value = 6015
triggerall = var(5) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Normal Punch1]
type = ChangeState
value = 6016
triggerall = var(5) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6015

[State -1, Normal Punch1]
type = ChangeState
value = 6017
triggerall = var(5) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6016
;---------------------------------------------------------------------------
;SSJ2 Punch1
[State -1, SSJ2 Punch1]
type = ChangeState
value = 6015
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SSJ2 Punch1]
type = ChangeState
value = 6016
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6015

[State -1, SSJ2 Punch1]
type = ChangeState
value = 6017
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6016
;---------------------------------------------------------------------------
;SSJ4 Punch1
[State -1, SSJ4 Punch1]
type = ChangeState
value = 6015
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SSJ4 Punch1]
type = ChangeState
value = 6016
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 6
trigger2 = stateno = 6015

[State -1, SSJ4 Punch1]
type = ChangeState
value = 6017
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 6
trigger2 = stateno = 6016
;---------------------------------------------------------------------------
;Normal Punch2
[State -1, Normal Punch2]
type = ChangeState
value = 6018
triggerall = var(5) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Normal Punch2]
type = ChangeState
value = 6019
triggerall = var(5) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6018

[State -1, Normal Punch2]
type = ChangeState
value = 6020
triggerall = var(5) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6019
;---------------------------------------------------------------------------
;SSJ2 Punch2
[State -1, SSJ2 Punch2]
type = ChangeState
value = 6018
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SSJ2 Punch2]
type = ChangeState
value = 6019
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6018

[State -1, SSJ2 Punch2]
type = ChangeState
value = 6020
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6019
;---------------------------------------------------------------------------
;SSJ4 Punch2
[State -1, SSJ4 Punch2]
type = ChangeState
value = 6018
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SSJ4 Punch2]
type = ChangeState
value = 6019
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 6
trigger2 = stateno = 6018

[State -1, SSJ4 Punch2]
type = ChangeState
value = 6020
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 6
trigger2 = stateno = 6019
;---------------------------------------------------------------------------
;Ki blast
[State -1, Ki blast]
type = ChangeState
value = 6021
triggerall = power >= 100
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Ki blast]
type = ChangeState
value = 6022
triggerall = power >= 100
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 10
trigger2 = stateno = 6021

[State -1, Ki blast]
type = ChangeState
value = 6021
triggerall = power >= 100
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 10
trigger2 = stateno = 6022
;---------------------------------------------------------------------------
;Normal Punch3
[State -1, Normal Punch3]
type = ChangeState
value = 6015
triggerall = var(5) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Normal Punch3]
type = ChangeState
value = 6048
triggerall = var(5) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6015

[State -1, Normal Punch3]
type = ChangeState
value = 6049
triggerall = var(5) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6048
;---------------------------------------------------------------------------
;SSJ2 Punch3
[State -1, SSJ2 Punch3]
type = ChangeState
value = 6015
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SSJ2 Punch3]
type = ChangeState
value = 6048
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6015

[State -1, SSJ2 Punch3]
type = ChangeState
value = 6049
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6048
;---------------------------------------------------------------------------
;SSJ4 Punch3
[State -1, SSJ4 Punch3]
type = ChangeState
value = 6015
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SSJ4 Punch3]
type = ChangeState
value = 6048
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 6
trigger2 = stateno = 6015

[State -1, SSJ4 Punch3]
type = ChangeState
value = 6049
triggerall = var(7) = 3
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6048
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
type=VarSet
trigger1 = var(10) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
v = 10
value = 0
Ignorehitpause = 1
;---------------------------------------------------------------------------
;ai Normal - Super Saiyan
[State -1,ai Normal - Super Saiyan]
type = ChangeState
value = 100000
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = life <= 900
triggerall = random < 30
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super Saiyan - Super Saiyan 2
[State -1,Super Saiyan - Super Saiyan 2]
type = ChangeState
value = 200000
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = var(5) = 0
triggerall = power >= 1000
triggerall = life <= 700
triggerall = random < 30
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super Saiyan 2 - Super Saiyan 4
[State -1,Super Saiyan 2 - Super Saiyan 4]
type = ChangeState
value = 300000
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = var(5) = 1
triggerall = power >= 1000
triggerall = life <= 500
triggerall = random < 30
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ai Galick Gun
[State -1,ai Galick Gun]
type = ChangeState
value = 6026
triggerall = var(10) = 1
triggerall = power >= 1000
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 15
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai Big Bang Attack
[State -1,ai Big Bang Attack]
type = ChangeState
value = 6032
triggerall = var(10) = 1
triggerall = var(7) > 0
triggerall = power >= 2000
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 15
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai Final Shine Attack
[State -1,ai Final Shine Attack]
type = ChangeState
value = 6075
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = power >= 2500
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 15
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai Final Flash
[State -1,ai Final Flash]
type = ChangeState
value = 6039
triggerall = var(10) = 1
triggerall = var(7) > 0
triggerall = power >= 2500
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 15
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai Final Flash 3,5k
[State -1,ai Final Flash 3,5k]
type = ChangeState
value = 6060
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = life >= 400
triggerall = power >= 3000
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 50
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai Final Flash 3,5k
[State -1,ai Final Flash 3,5k]
type = ChangeState
value = 6090
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = life < 400
triggerall = power >= 3000
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 50
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai Ki Ring
[State -1,ai Ki Ring]
type = ChangeState
value = 6052
triggerall = var(10) = 1
triggerall = var(7) > 0
triggerall = var(5) > 0
triggerall = power >= 300
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 50
trigger1 = (p2dist x) >= 75
trigger1 = (p2dist x) < 400
;---------------------------------------------------------------------------
;ai SSJ2 combo
[State -1,ai SSJ2 combo]
type = ChangeState
value = 6055
triggerall = var(10) = 1
triggerall = var(7) > 0
triggerall = var(5) > 0
triggerall = power >= 1000
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 15
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
;ai Attack 1
[State -1, ai Attack 1]
type = ChangeState
value = 6015
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random >= 0 && random < 200
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
;ai Attack 2
[State -1, ai Attack 2]
type = ChangeState
value = 6018
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random >= 0 && random < 200
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
;ai Attack 3
[State -1, ai Attack 3]
type = ChangeState
value = 6047
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random >= 0 && random < 200
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
