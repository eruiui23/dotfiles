##!/bin/bash
#echo 'for_window [urgent="latest"] focus' >~/.config/i3/dynamic.conf
#i3-msg reload

#!/bin/bash
printf '%s\n%s\n' \
  'for_window [urgent="latest"] focus' \
  'focus_on_window_activation focus' >~/.config/i3/dynamic.conf
i3-msg reload
