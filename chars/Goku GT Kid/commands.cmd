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


;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

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

;-| Hyper Motions |--------------------------------------------------------



;-| Super Motions |--------------------------------------------------------

[command]
name = "Kamehame-Ha"
command = D,DB,B,F,z
time = 30

;-| Special Motions |------------------------------------------------------

[command]
name = "Firelazer"
command = D,DF,F,z
time = 30

[command]
name = "Super Ball"
command = D,DB,B,z
time = 30

[command]
name = "Run Punchs"
command = D,DF,F,x
time = 30

[command]
name = "Crazy Kicks"
command = D,DF,F,a
time = 30

[command]
name = "Dash Elbow"
command = D,DF,F,y
time = 30

[command]
name = "Bird Kick"
command = D,DF,F,b
time = 30

[command]
name = "Taioken"
command = D,DB,B,x
time = 30

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
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
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

;-| Single Dir |---------------------------------------------------------

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

;-| Hold Boton |--------------------------------------------------------------

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
name = "holdstart"
command = /s
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

;===========================================================================
; Movimientos Hypers
;---------------------------------------------------------------------------



;===========================================================================
; Movimientos Supers
;---------------------------------------------------------------------------
;Kamehame-Ha
[State -1, Kamehame-Ha]
type = ChangeState
value = 2000
triggerall = command = "Kamehame-Ha"
triggerall = numhelper(2020) = 0
triggerall = numhelper(2021) = 0
triggerall = power >= powermax/6;500
trigger1 = ctrl && statetype != A || stateno = [990,995]

;===========================================================================
; Movimientos Esfeciales
;---------------------------------------------------------------------------
;Firelazer
[State -1, Firelazer]
type = ChangeState
value = 950;+random%2
triggerall = command = "Firelazer"
triggerall = power >= 250
triggerall = alive
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,240]) && movecontact

;---------------------------------------------------------------------------
;Super Ball
[State -1, Super Ball]
type = ChangeState
value = 960
triggerall = command = "Super Ball"
triggerall = power >= 250
trigger1 = ctrl && statetype != A || stateno = [990,995]

;---------------------------------------------------------------------------
;Run Punchs
[State -1, Run Punchs]
type = ChangeState
value = 1000
triggerall = command = "Run Punchs"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,240]) && movecontact

;---------------------------------------------------------------------------
;Crazy Kicks
[State -1, Crazy Kicks]
type = ChangeState
value = 1100
triggerall = command = "Crazy Kicks"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,240]) && movecontact

;---------------------------------------------------------------------------
;Dash Elbow
[State -1, Dash Elbow]
type = ChangeState
value = 1200
triggerall = command = "Dash Elbow"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,242]) && movecontact

;---------------------------------------------------------------------------
;Bird Kick
[State -1, Bird Kick]
type = ChangeState
value = 1300
triggerall = command = "Bird Kick"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = stateno = 441 && movecontact

;---------------------------------------------------------------------------
;Taioken
[State -1, Taioken]
type = ChangeState
value = 1500
triggerall = command = "Taioken"
triggerall = power >= 500
triggerall = numhelper(1510) < 1
triggerall = numhelper(1511) < 1
triggerall = p2stateno != 1520
trigger1 = statetype = S && ctrl || stateno = [990,995]
trigger2 = (stateno = [200,240]) && movecontact

;===============================================================================
;Movimientos Normales
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [990,995]

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = Null;ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;-------------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
;trigger2 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Stand Light Punch 2°
[State -1, Stand Light Punch 2°]
type = ChangeState
value = 201
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch 2°
[State -1, Stand Strong Punch 2°]
type = ChangeState
value = 211
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick 2°
[State -1, Stand Light Kick 2°]
type = ChangeState
value = 231
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick 3°
[State -1, Stand Light Kick 3°]
type = ChangeState
value = 232
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 231 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick 4°
[State -1, Stand Light Kick 4°]
type = ChangeState
value = 233
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = stateno = 232 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = stateno = 232 && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick 2°
[State -1, Standing Strong Kick 2°]
type = ChangeState
value = 241
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick 3°
[State -1, Standing Strong Kick 3°]
type = ChangeState
value = 242
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 241 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick 4°
[State -1, Standing Strong Kick 4°]
type = ChangeState
value = 243
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 242 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick 5°
[State -1, Standing Strong Kick 5°]
type = ChangeState
value = 244
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = stateno = 243 && movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch 2°
[State -1, Crouching Light Punch 2°]
type = ChangeState
value = 401
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 401 && movecontact
trigger3 = stateno = 211 && movecontact
trigger4 = stateno = 241 && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch 2°
[State -1, Crouching Strong Punch 2°]
type = ChangeState
value = 411
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = stateno = 410 && movecontact
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 244 && movecontact
trigger4 = stateno = 440 && movecontact
trigger5 = stateno = 641 && movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 401 && movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick 2°
[State -1, Crouching Light Kick 2°]
type = ChangeState
value = 431
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 401 && movecontact
trigger3 = stateno = 411 && movecontact
trigger4 = stateno = 431 && movecontact
trigger5 = (stateno = [241,243]) && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick 2°
[State -1, Crouching Strong Kick 2°]
type = ChangeState
value = 441
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = stateno = 440 && movecontact
trigger2 = stateno = 244 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 641 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" || (stateno = [990,995]) && command = "holddown" && command = "x"
trigger1 = (statetype = A && ctrl) || (stateno = [990,995]) && command = "holddown"
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y" || (stateno = [990,995]) && command = "x"
trigger1 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump Super Fireball
[State -1, Jump Super Fireball]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = power >= 250
trigger1 = stateno = 244 && movecontact
trigger2 = (stateno = [440,441]) && movecontact
trigger3 = stateno = 1104 && movecontact;Crazy Kicks (golpe final)
trigger4 = stateno = 1302 && anim = 1302;Bird Kick (contacto)
trigger5 = stateno = 641 && movecontact
;trigger6 = stateno = 410 && movecontact
;trigger7 = stateno = 611 && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b" || (stateno = [990,995]) && command = "holddown" && command = "a"
trigger1 = (statetype = A && ctrl) || (stateno = [990,995]) && command = "holddown"
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Kick 2°
[State -1, Jump Strong Kick 2°]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = stateno = 640 && movecontact
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 1104 && movecontact;Crazy Kicks (golpe final)
trigger4 = stateno = 1302 && anim = 1302;Bird Kick (contacto)
;---------------------------------------------------------------------------
;Charge Ki
[State -1, Charge Ki]
type = ChangeState
value = 900
triggerall = AILevel = 0
triggerall = command = "holdb"
triggerall = command = "holdy"
triggerall = power < powermax
trigger1 = statetype != A && ctrl || stateno = [990,995]

;Auto Chage Ki
[State -1, Auto Chage Ki]
type = PowerAdd
value = powermax/2000
trigger1 = movetype != A
trigger1 = var(6) = 0

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 920
triggerall = AILevel = 0
triggerall = command = "c"
triggerall = power > 100
triggerall = numhelper(925) < 8
triggerall = alive
triggerall = var(6) = 0
;trigger1 = statetype != A
trigger1  = ctrl && stateno != 921 || (stateno = 921 && time = 9) || stateno = [990,995]
trigger2  = stateno = 200 && movecontact
trigger3  = stateno = 210 && movecontact
trigger4  = stateno = 230 && movecontact
trigger5  = (stateno = [240,241]) && movecontact
trigger6  = stateno = 400 && movecontact
trigger7  = stateno = 410 && movecontact
trigger8  = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = (stateno = [940,941]) && (animelem = 2, > 4)
trigger11  = stateno = [120,155]
trigger12 =  stateno = 901 && time > 0
trigger13  = movetype = H && gethitvar(hitcount) <= 2 && var(5) > 0

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 940+random%2
triggerall = command = "z"
triggerall = power >= 100
triggerall = alive
;triggerall = numhelper(925) < 8
;trigger1 = statetype != A
trigger1 = ctrl || (stateno = 921 && time = 9) || stateno = [990,995]
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Fly
[State -1, Fly Start]
type = ChangeState
value = 989
triggerall = AILevel = 0
triggerall = command = "holda"
triggerall = command = "holdb"
trigger1  = ctrl

[State -1, Fly End]
type = ChangeState
value = 50
triggerall = stateno = [990,995]
trigger1 = AILevel = 0
trigger1 = command = "holda"
trigger1 = command = "holdb"
trigger1 = command = "holddown"
trigger2 = win || lose || roundstate = 3

