#!/usr/bin/env python3
import subprocess
import i3ipc

UNFOCUSED_OPACITY = 0.7   # floating + not focused
FOCUSED_OPACITY = 1.0

i3 = i3ipc.Connection()


def set_opacity(win_id, value):
    if value is None:
        # no override: let picom's opacity-rule / config decide
        subprocess.run(["xprop", "-id", str(win_id), "-remove", "_NET_WM_WINDOW_OPACITY"],
                       stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return
    cardinal = int(value * 0xFFFFFFFF)
    subprocess.run(
        ["xprop", "-id", str(win_id), "-f", "_NET_WM_WINDOW_OPACITY", "32c",
         "-set", "_NET_WM_WINDOW_OPACITY", str(cardinal)],
        stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
    )


def is_floating(con):
    return con.floating in ("user_on", "auto_on")


def refresh_all():
    for con in i3.get_tree().leaves():
        if not con.window:
            continue
        if is_floating(con) and not con.focused:
            set_opacity(con.window, UNFOCUSED_OPACITY)
        else:
            set_opacity(con.window, None)


def on_window_event(conn, event):
    # focus changes, new windows, and float toggles all need a refresh
    refresh_all()


i3.on("window::focus", on_window_event)
i3.on("window::new", on_window_event)
i3.on("window::floating", on_window_event)
i3.on("window::close", on_window_event)

refresh_all()
i3.main()
