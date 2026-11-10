#!/usr/bin/env python3
import i3ipc

TILED = "border pixel 2"
FLOATING = "border normal 0"
TABBED = "border pixel 0"

i3 = i3ipc.Connection()


def apply(con):
    if not con or not con.window:
        return
    if con.floating in ("user_on", "auto_on"):
        con.command(FLOATING)
    elif con.parent and con.parent.layout in ("tabbed", "stacked"):
        con.command(TABBED)
    else:
        con.command(TILED)


def refresh_all():
    for con in i3.get_tree().leaves():
        apply(con)


def on_window(i3, e):
    # event containers have no parent info, so re-fetch from the full tree
    apply(i3.get_tree().find_by_id(e.container.id))


def on_binding(i3, e):
    refresh_all()


refresh_all()
i3.on("window::new", on_window)
i3.on("window::floating", on_window)
i3.on("window::move", on_window)
i3.on("window::focus", on_window)
i3.on("binding", on_binding)
i3.main()
