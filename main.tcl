#!/usr/bin/wish

frame .fr

wm title . "Hello, World!"

set width [winfo vrootwidth .]
set height [winfo vrootheight .]

set x [expr { ( [winfo vrootwidth  .] - $width  ) / 2 }]
set y [expr { ( [winfo vrootheight .] - $height ) / 2 }]

wm geometry . ${width}x${height}+${x}+${y}
