; The CMD file.
[Command]
name = "CPU1"
command = B,F,B,a
time = 0

[Command]
name = "CPU2"
command = B,F,B,b
time = 0

[Command]
name = "CPU3"
command = B,F,B,c
time = 0

[Command]
name = "CPU4"
command = B,F,B,x
time = 0

[Command]
name = "CPU5"
command = B,F,B,y
time = 0

[Command]
name = "CPU6"
command = B,F,B,z
time = 0

[Command]
name = "CPU7"
command = B,D,B,a
time = 0

[Command]
name = "CPU8"
command = B,D,B,b
time = 0

[Command]
name = "CPU9"
command = B,D,B,c
time = 0

[Command]
name = "CPU10"
command = B,D,B,x
time = 0

[Command]
name = "CPU11"
command = B,D,B,y
time = 0

[Command]
name = "CPU12"
command = B,D,B,z
time = 0


;-| AI Activators|-------------------------------------------------------------------

[Command]
name = "CPU"
command = a
time = 1

[Command]
name = "CPU"
command = b
time = 1

[Command]
name = "CPU"
command = c
time = 1

[Command]
name = "CPU"
command = x
time = 1

[Command]
name = "CPU"
command = y
time = 1

[Command]
name = "CPU"
command = z
time = 1

[Command]
name = "CPU"
command = F
time = 1

[Command]
name = "CPU"
command = B
time = 1

[Command]
name = "CPU"
command = U
time = 1

[Command]
name = "CPU"
command = D
time = 1

[Command]
name = "AI1"
command = D, D, D, U, U, U, x, U, U, U, a, U, U, U, U, U, U, U, b, U
time = 1

[Command]
name = "AI2"
command = F, F, F, U, U, U, U, U, x, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI3"
command = B, B, B, U, U, U, U, U, x, U, U, U, z, U, U, U, U, U, U, b
time = 1

[Command]
name = "AI4"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI5"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI6"
command = F, F, F, U, U, U, U, U, U, y, U, U, z, y, U, U, U, U, U, U
time = 1

[Command]
name = "AI7"
command = B, B, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI8"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, y, y, U, U, U, U, U
time = 1

[Command]
name = "AI9"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI10"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI11"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI12"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI13"
command = B, F, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI14"
command = U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI15"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI16"
command = F, B, F, U, U, U, U, U, U, U, F, U, a, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI17"
command = B, F, B, U, U, U, U, a, U, U, B, U, U, U, U, U, c, U, U, b
time = 1

[Command]
name = "AI18"
command = U, D, U, U, U, U, U, z, U, U, U, y, U, y, U, D, U, U, U, U
time = 1

[Command]
name = "AI19"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, D, U, U, U
time = 1

[Command]
name = "AI20"
command = F, B, F, U, U, U, U, U, U, F, B, z, a, U, U, U, D, U, U, U
time = 1

[Command]
name = "AI21"
command = U, U, U, U, U, U, U, U, b, U, a, U, U, U, U, U, c, U, z, U
time = 1

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
name = "Super Explosive Wave"
command = B,F,b
time = 10

[command]
name = "Super Explosive Wave"
command = F,B,b
time = 10

[command]
name = "Mouth Blast"
command = B,F,x
time = 10

[command]
name = "Mouth Blast"
command = F,B,x
time = 10

[command]
name = "Eye Beam"
command = B,F,x
time = 10

[command]
name = "Eye Beam"
command = F,B,x
time = 10

[command]
name = "Special Beam Cannon Charge"
command = D,B,a
time = 10

[command]
name = "Special Beam Cannon"
command = D,F,a
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

[State -1, Namekian Killer AI]
type = VarSet
triggerall = var(55) = 0
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
v = 55
value = 1

[State -1, Demon AI 1]
type = VarSet
triggerall = var(55) = 0
triggerall = statetype = S
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
v = 50
value = 1

[State -1,Demon AI 2]
type = VarSet
triggerall = var(55) = 0
triggerall = statetype = S
triggerall = p2statetype = S
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
v = 55
value = 1

[State -1,Demon AI 3]
type = VarSet
triggerall = var(55) = 0
triggerall = statetype = A
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
v = 55
value = 1

[State -1, Activate AI]
type = VarSet
trigger1 = var(55) = 2
trigger1 = RoundState != 3
v = 55
value = 1

[State -1, Deactivate AI]
type = VarSet
triggerall = var(55) != 0
trigger1 = RoundState = 3
v = 55
value = 2

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1,Clone]
type = ChangeState
value = 700
triggerall = numhelper(700) = 0
TRIGGERALL = POWER >= 1000
triggerall = command = "Clone" || command = "Clone1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1,Hyper Kick & Bou]
type = ChangeState
value = 300
triggerall = power >= 200
triggerall = numhelper(700) = 0
triggerall = command = "Hyper Kick & Bou" || command = "Hyper Kick & Bou1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1,Grab Hand Explosion]
type = ChangeState
value = 805
triggerall = power >= 1200
triggerall = numhelper(700) = 0
triggerall = command = "Grab Hand Explosion"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Light Grenade]
type = ChangeState
value = 812
triggerall = power >= 1000
triggerall = numhelper(700) = 0
triggerall = command = "Light Grenade"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Hell Zone Grenade]
type = ChangeState
value = 815
triggerall = power >= 1500
triggerall = numhelper(700) = 0
triggerall = command = "Hell Zone Grenade1" || command = "Hell Zone Grenade2"
trigger1 = (statetype = s) && ctrl

[State -1, Explosive Demon Wave]
type = ChangeState
value = 823
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = command = "Explosive Demon Wave"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Destructive Wave]
type = ChangeState
value = 826
triggerall = power >= 2000
triggerall = numhelper(700) = 0
triggerall = command = "Destructive Wave1" || command = "Destructive Wave2"
trigger1 = (statetype = s) && ctrl

[State -1, Special Beam Cannon]
type = ChangeState
value = 843
triggerall = power >= 1100
triggerall = numhelper(700) = 0
triggerall = command = "Special Beam Cannon"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Special Beam Cannon Charge]
type = ChangeState
value = 835
triggerall = power >= 1700
triggerall = command = "Special Beam Cannon Charge"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1, Super Explosive Wave]
type = ChangeState
value = 829
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = command = "Super Explosive Wave"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1,Non - Cape - Mouth Blast]
type = ChangeState
value = 831
triggerall = Var(15) = 0
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = command = "Mouth Blast"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1,Cape - Eye Beam]
type = ChangeState
value = 833
triggerall = Var(15) = 1
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = command = "Eye Beam"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1500

[State -1,Non - Cape - Goku Tien]
type = ChangeState
value = 850
triggerall = Var(15) = 0
triggerall = numhelper(700) = 0
triggerall = numhelper(851) = 0
triggerall = numhelper(855) = 0
triggerall = power >= 700
triggerall = command = "Goku Tien Gohan Krillin"
trigger1 = (statetype = s) && ctrl

[State -1,Cape - Gohan Krillin]
type = ChangeState
value = 879
triggerall = Var(15) = 1
triggerall = numhelper(700) = 0
triggerall = numhelper(860) = 0
triggerall = numhelper(865) = 0
triggerall = power >= 700
triggerall = command = "Goku Tien Gohan Krillin"
trigger1 = (statetype = s) && ctrl

;===========================================================================
[State -1
;===========================================================================

;--------------------------Movelist Mode Triggers--------------------------;

;===========================================================================
;Movelist
[State -1, Movelist]
type = ChangeState
value = 1999
triggerall = Var(55) != 1
triggerALL =  command = "c" && command = "y" && command = "s"
triggerall = command = "holddown"
trigger1 = (statetype = C) && ctrl

;===========================================================================
[State -1
;===========================================================================

;----------------------------Basic Mode Triggers---------------------------;

;===========================================================================
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

;---------------------------------------------------------------------------
[State -1, Quick Evade]
Type = ChangeState
Value = 504
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

[State -1,Combo 1 Punch 1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1,Combo 1 Punch 2]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = time >= 6
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 1500

[State -1,Combo 1 Punch 3]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = time >= 7
trigger1 = stateno = 210 && movehit
trigger2 = stateno = 1500

[State -1,Combo 2 Palm]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1,Combo 2 Kick 1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = time >= 5
trigger1 = stateno = 230 && movehit
trigger2 = stateno = 1500

[State -1,Combo 2 Kick 2]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = time >= 7
trigger1 = stateno = 240 && movehit
trigger2 = stateno = 1500

[State -1,Combo 3 Kick 1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1,Combo 3 Kick 2]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = time >= 5
trigger1 = stateno = 240 && movehit
trigger2 = stateno = 1500

[State -1,Combo 3 Air Strike]
type = ChangeState
value = 600
triggerall = power >= 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = time >= 11
trigger1 = stateno = 260 && movehit
trigger2 = stateno = 1500

;Kai Blast
[State -1,Kai Blast]
type = ChangeState
value = 800
triggerall = numhelper(700) = 0
triggerall = numhelper(801) = 0
triggerall = power >= 300
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[state -1, Air Teleport Strike 1]
type = changestate
value = 610
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = p2stateno != [5000,5900]
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

[state -1, Air Teleport Strike 2]
type = changestate
value = 640
triggerall = power >= 300
triggerall = numhelper(700) = 0
triggerall = p2stateno != [5000,5900]
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

[state -1, Air Mid-Kick]
type = changestate
value = 620
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

[state -1, Air Upper-Kick]
type = changestate
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Crouch Punch
[State -1,Crouch Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Crouch Upper-Kicker
[State -1,Crouch Upper-Kicker]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Crouch Mid-Kicker
[State -1,Crouch Mid-Kicker]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1, Muti-Ball Blast 1]
type = ChangeState
value = 803
triggerall = numhelper(700) = 0
triggerall = command = "z"
triggerall = power >= 5
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1500


[State -1, Muti-Ball Blast 2]
type = ChangeState
value = 804
triggerall = numhelper(700) = 0
triggerall = command = "z"
triggerall = power >= 5
triggerall = Time > 13
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = stateno = 803
trigger2 = stateno = 1500

[State -1, Muti-Ball Blast 3]
type = ChangeState
value = 803
triggerall = numhelper(700) = 0
triggerall = command = "z"
triggerall = power >= 5
triggerall = Time > 13
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = stateno = 804
trigger2 = stateno = 1500

;===========================================================================
[State -1
;===========================================================================

;----------------------------AI Neutral Triggers---------------------------;

;===========================================================================
[State -1
;===========================================================================

; AI Kai Blast
[State -1, AI Kai Blast]
type = ChangeState
value = 800
triggerall = numhelper(700) = 0
triggerall = numhelper(801) = 0
triggerall = power >= 300
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI combo
[State -1, AI Combo 1 Punch 1]
type = ChangeState
value = 200
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI combo1
[State -1, AI Combo 1 Punch 2]
type = ChangeState
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 1500
value = 210

; AI combo2
[State -1, AI Combo 1 Punch 3]
type = ChangeState
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 1500
value = 220

; AI combo
[State -1, AI Combo 2 Palm]
type = ChangeState
value = 230
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI combo1
[State -1, AI Combo 2 Kick 1]
type = ChangeState
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 1500
value = 240

; AI combo2
[State -1, AI Combo 2 Kick 2]
type = ChangeState
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 1500
value = 250

; AI combo
[State -1, AI Combo 3 Kick 1]
type = ChangeState
value = 240
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI combo1
[State -1, AI Combo 3 Kick 2]
type = ChangeState
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 1500
value = 260

; AI combo2
[State -1, AI Combo 3 Air Strike]
type = ChangeState
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 260 && movecontact
trigger3 = stateno = 1500
value = 600

[State -1, AI Clone]
type = ChangeState
value = 700
triggerall = numhelper(700) = 0
TRIGGERALL = POWER >= 1000
triggerall = Var(55) = 1
triggerall = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Hyper Kick & Bou]
type = ChangeState
value = 300
triggerall = power >= 200
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Grab Hand Explosion]
type = ChangeState
value = 805
triggerall = power >= 1200
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Light Grenade]
type = ChangeState
value = 812
triggerall = power >= 1000
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Hell Zone Grenade]
type = ChangeState
value = 815
triggerall = power >= 1500
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 50
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Explosive Demon Wave]
type = ChangeState
value = 823
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

;AI Destructive Wave
[State -1,AI Destructive Wave]
type = ChangeState
value = 826
triggerall = power >= 2000
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Special Beam Cannon]
type = ChangeState
value = 843
triggerall = power >= 1100
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Special Beam Cannon Charge]
type = ChangeState
value = 835
triggerall = power >= 1700
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Super Explosive Wave]
type = ChangeState
value = 829
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Non - Cape - Mouth Blast]
type = ChangeState
value = 831
triggerall = Var(15) = 0
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Cape - Eye Beam]
type = ChangeState
value = 833
triggerall = Var(15) = 1
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

[State -1, AI Non - Cape - Goku Tien]
type = ChangeState
value = 850
triggerall = Var(15) = 0
triggerall = numhelper(700) = 0
triggerall = numhelper(851) = 0
triggerall = numhelper(855) = 0
triggerall = power >= 700
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Cape - Gohan Krillin]
type = ChangeState
value = 879
triggerall = Var(15) = 1
triggerall = numhelper(700) = 0
triggerall = numhelper(860) = 0
triggerall = numhelper(865) = 0
triggerall = power >= 700
triggerall = Var(55) = 1
trigger1 = random = [0,200]
triggerall = p2life > 0
triggerall = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl

; Fly Up Standing
[State -1, AI Fly Up Standing]
type = changestate
value = 1510
triggerall = power >= 300
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

; AI Fly Up Super Fast Crouching
[State -1, AI Fly Up Super Fast Crouching]
type = ChangeState
value = 1511
triggerall = power >= 300
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

; Air Fly Up Air
[State -1, AI Fly Up Air]
type = ChangeState
value = 1512
triggerall = power >= 300
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

; AI Teleport
[State -1, AI Teleport]
type = ChangeState
value = 500
triggerall = Var(55) = 1
triggerall = numhelper(700) = 0
triggerall = power >= 500
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < !700
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500


;AI Air Teleport Strike 1
[state -1,AI Air Teleport Strike 1]
type = changestate
value = 610
triggerall = power >= 500
triggerall = numhelper(700) = 0
triggerall = p2stateno != [5000,5900]
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

;AI Air Teleport Strike 1
[state -1,AI Air Teleport Strike 2]
type = changestate
value = 640
triggerall = power >= 300
triggerall = numhelper(700) = 0
triggerall = p2stateno != [5000,5900]
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

;AI Air Mid-Kick
[state -1,AI Air Mid-Kick]
type = changestate
value = 620
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = A
trigger1 = ctrl

;AI Air Mid-Kick
[state -1,AI Air Upper-Kick]
type = changestate
value = 630
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = A
trigger1 = ctrl

; AI Crouch Punch
[State -1, AI Crouch Punch]
type = ChangeState
value = 400
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI Crouch Upper-Kicker
[State -1, AI Crouch Upper-Kicker]
type = ChangeState
value = 420
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI Crouch Mid-Kicker
[State -1, AI Crouch Mid-Kicker]
type = ChangeState
value = 410
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI Muti-Ball Blast 1
[State -1, AI Muti-Ball Blast 1]
type = ChangeState
value = 803
triggerall = power >= 5
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1500

; AI Muti-Ball Blast 2
[State -1, AI Muti-Ball Blast 2]
type = ChangeState
triggerall = numhelper(700) = 0
triggerall = Var(55) = 1
triggerall = power >= 5
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 803
trigger3 = stateno = 1500
value = 804

; AI Muti-Ball Blast 3
[State -1, AI Muti-Ball Blast 3]
type = ChangeState
triggerall = Var(55) = 1
triggerall = numhelper(700) = 0
triggerall = power >= 5
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 804
trigger3 = stateno = 1500
value = 803

