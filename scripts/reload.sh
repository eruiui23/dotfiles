#!/bin/bash
echo 'for_window [urgent="latest"] focus' >~/.config/i3/dynamic.conf
i3-msg reload
