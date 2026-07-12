# VHS tape → renders assets/demo.gif
# Install VHS: brew install vhs   (pulls ttyd + ffmpeg)
# Render:      vhs assets/demo.tape
Output assets/demo.gif

Require bash

Set Shell bash
Set FontSize 20
Set Width 1200
Set Height 760
Set Padding 24
Set Theme "Dracula"
Set PlaybackSpeed 1.0

Hide
Type "clear" Enter
Show
Sleep 500ms
Type "bash assets/demo_play.sh" Enter
Sleep 34s
