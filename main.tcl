#!/usr/bin/wish

frame .fr

set width [winfo vrootwidth .]
set height [winfo vrootheight .]

set x [expr { ( [winfo vrootwidth  .] - $width  ) / 2 }]
set y [expr { ( [winfo vrootheight .] - $height ) / 2 }]

pack .fr -fill both -expand 1

frame .fr.pnl -relief raised -borderwidth 1
pack .fr.pnl -fill both -expand 1

ttk::button .fr.cb -text "Exit" -command { exit  }
pack .fr.cb -padx 5 -pady 5 -side right

ttk::button .fr.ok -text "OK"
pack .fr.ok -side right

wm title . "TIMP - or  TIMe Planner! (By Platon Kralin & Evan Lee)"

#button .hello -text "Quit" -command { exit }
#place .hello -x 50 -y 50 # This is absolute button placement.

#button .hello -text "Fullscreen" -command { set width [winfo vrootwidth .]; set height [winfo vrootheight .] }
#place .hello -x 50 -y 50

wm geometry . ${width}x${height}+${x}+${y}

