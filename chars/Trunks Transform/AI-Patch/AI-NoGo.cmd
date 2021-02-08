; The CMD file.

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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
;

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "Hell Zone Grenade1"
command = ~D, D, B, c
time = 15

[command]
name = "Hell Zone Grenade2"
command = ~D, D, F, c
time = 15

[command]
name = "Destructive Wave1"
command = ~D, D, B, x
time = 15

[command]
name = "Destructive Wave2"
command = ~D, D, F, x
time = 15


;-| Special Motions |------------------------------------------------------

[command]
name = "Clone"
command = D,B,z
time = 10

[command]
name = "Hyper Kick & Bou"
command = D,F,z
time = 10

[command]
name = "Clone1"
command = D,B,y
time = 10

[command]
name = "Hyper Kick & Bou1"
command = D,F,y
time = 10

[command]
name = "Grab Hand Explosion"
command = D,F,b
time = 10

[command]
name = "Light Grenade"
command = D,B,b
time = 10

[command]
name = "Explosive Demon Wave"
command = D,B,x
time = 10

[command]
name = "Goku Tien Gohan Krillin"
command = D,F,x
time = 10

;-| Tripple Tap |-----------------------------------------------------------

[command]
name = "Transform to SSJ3-A"
command = D,F,z
time = 10

[command]
name = "Transform to SSJ3-B"
command = D,F,y
time = 10

[command]
name = "Transform to SSJ1-A"
command = D,F,z
time = 10

[command]
name = "Transform to SSJ1-B"
command = D,F,y
time = 10

[command]
name = "Transform to Norm-A"
command = D,B,z
time = 10

[command]
name = "Transform to Norm-B"
command = D,B,y
time = 10

[command]
name = "Transform SSj3 To SSJ1-A"
command = D,F,z
time = 10

[command]
name = "Transform SSj3 To SSJ1-B"
command = D,F,y
time = 10

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "FD"     ;Required (do not remove)
command = F, D
time = 14

[Command]
name = "FU"     ;Required (do not remove)
command = F, U
time = 14

[Command]
name = "BD"     ;Required (do not remove)
command = B, D
time = 14

[Command]
name = "BU"     ;Required (do not remove)
command = B, U
time = 14

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "Trunks"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

[Command]
name = "holdup1" ;Required (do not remove)
command = /$U
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

[State -1, Transform SSj1 To Normal]
type = ChangeState
value = 100001
triggerall = var(15) = 1 || var(15) = 2
TRIGGERALL = POWER >= 300
triggerall = command = "Transform to Norm-A" || command = "Transform to Norm-B"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Transform Normal To SSJ1]
type = ChangeState
value = 100000
triggerall = var(15) = 0
TRIGGERALL = POWER >= 2000
triggerall = command = "Transform to SSJ1-A" || command = "Transform to SSJ1-B" || command = "Transform to Norm-A" || command = "Transform to Norm-B"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Transform SSj1 To SSJ3]
type = ChangeState
value = 200000
triggerall = var(15) = 1
TRIGGERALL = POWER >= 3000
triggerall = command = "Transform to SSJ3-A" || command = "Transform to SSJ3-B"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Transform SSj3 To SSJ1]
type = ChangeState
value = 200001
triggerall = var(15) = 2
TRIGGERALL = POWER >= 300
triggerall = command = "Transform SSj3 To SSJ1-A" || command = "Transform SSj3 To SSJ1-B"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500


;===========================================================================
[State -1
;===========================================================================

;----------------------------Basic Mode Triggers---------------------------;

;===========================================================================

;---------------------------------------------------------------------------
;Kai Charge
[state -1, Kai Charge]
type = changestate
value = 195
triggerall = power < powermax
triggerall = command = "hold_c"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500


[state -1, Fly Up Standing]
type = changestate
value = 1510
triggerall = power >= 300
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[state -1, Fly Up Super Fast Crouching]
type = changestate
value = 1511
triggerall = power >= 300
triggerall = command = "s"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1, Fly Up Air]
type = changestate
value = 1512
triggerall = power >= 300
triggerall = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1


;--------------------------------------------------------------------------
; Air Run_Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 102
trigger1 = (command = "FF") && statetype = A && ctrl

; Air Run_Back
[State -1, Air Run Bwd]
type = ChangeState
value = 103
trigger1 = command = "BB" && statetype = A && ctrl

;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || command = "Trunks") && pos y = 0
trigger1 = statetype = C && ctrl = 1

;---------------------------------------------------------------------------
[State -1, Quick Evade]
Type = ChangeState
Value = 502
triggerall = power >= 500
Triggerall = Command = "a" || Command = "b"
Triggerall = StateType != A
Trigger1 = StateNo = 5001
Trigger2 = StateNo = 5010
Trigger3 = StateNo = 5011
Trigger4 = StateNo = 5020
Trigger5 = StateNo = 5030
Trigger6 = StateNo = 5035
Trigger7 = StateNo = 5040
Trigger8 = StateNo = 5050
Trigger9 = StateNo = 5070
Trigger10 = StateNo = 5071

;---------------------------------------------------------------------------
[State -1, Teleport]
type = ChangeState
value = 500
triggerall = numhelper(700) = 0
triggerall = power >= 500
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Hop Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1,Combo Punch 1-1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1,Combo Punch 1-2]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = time >= 7
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 1500

[State -1,Combo Kick 1-3]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = time >= 7
trigger1 = stateno = 210 && movecontact
trigger2 = stateno = 1500

[State -1,Combo Kick 1-4]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = time >= 7
trigger1 = stateno = 220 && movecontact
trigger2 = stateno = 1500

[State -1,Combo Elbow 2-1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1,Combo High Kick 2-2]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = time >= 8
trigger1 = stateno = 240 && movecontact
trigger2 = stateno = 1500

[State -1,Combo Sword Slash 2-3]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = time >= 8
trigger1 = stateno = 250 && movecontact
trigger2 = stateno = 1500

[State -1,Combo Upper Kick 3-1]
type = ChangeState
value = 270
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1,Combo Punch Down 3-2]
type = ChangeState
value = 280
triggerall = p2stateno = [5000,5200]
triggerall = power >= 300
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = time > 11
trigger1 = stateno = 270 && movecontact
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
; Crouch Uppercut Kick
[State -1, Crouch Uppercut Kick]
type = ChangeState
value = 400
triggerall = command = "a" || command = "y" || command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

; Crouch Sword Slice
[State -1,  Crouch Sword Slice]
type = ChangeState
value = 410
triggerall = command = "b" || command = "c" || command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
; Air Strike
[state -1,  Air Strike]
type = changestate
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

