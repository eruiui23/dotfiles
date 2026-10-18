#!/usr/bin/env python3
import i3ipc

TILED = "border pixel 1"
FLOATING = "border normal"

i3 = i3ipc.Connection()

def apply(con):
    if con.floating in ("user_on", "auto_on"):
        con.command(FLOATING)
    else:
        con.command(TILED)

def on_floating(i3, e):
    apply(e.container)

def on_new(i3, e):
    apply(e.container)

# fix up windows that already exist (needed after restart)
for con in i3.get_tree().leaves():
    apply(con)

i3.on("window::floating", on_floating)
i3.on("window::new", on_new)
i3.main()
