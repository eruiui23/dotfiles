#!/usr/bin/env python3
import subprocess
import time
from i3ipc import Connection, Event

i3 = Connection()

def on_window_focus(i3, e):
    # Fetch full tree to get intact parent/workspace links
    tree = i3.get_tree()
    focused = tree.find_focused()

    if not focused or not focused.window:
        return

    workspace = focused.workspace()
    if not workspace:
        return

    # Count leaves (windows) on current workspace
    windows = workspace.leaves()
    
    # Print statement for debugging in terminal
    # print(f"[DEBUG] Focused: '{focused.name}' | Workspace: '{workspace.name}' | Window Count: {len(windows)}")

    # Only flash if there's more than 1 window
    if len(windows) > 1:
        window_id = hex(focused.window)
        try:
            subprocess.run(["picom-trans", "-w", window_id, "75"], check=False)
            time.sleep(0.08)
            # time.sleep(0.5)
            subprocess.run(["picom-trans", "-w", window_id, "-d"], check=False)
        except Exception as err:
            print(f"[ERROR] {err}")

# Subscribe to focus events
i3.on(Event.WINDOW_FOCUS, on_window_focus)
i3.main()
