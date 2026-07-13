#!/usr/bin/env python3
import i3ipc
import sys
import time
import threading
import os  # Tambahkan ini untuk jalanin perintah shell

i3 = i3ipc.Connection()

# Ambil ID window yang lagi lu pake sekarang pas startup
initial_focused = i3.get_tree().find_focused()
initial_id = initial_focused.id if initial_focused else None

def revert_focus(i3_conn, event):
    # Kalau ada window baru minta fokus, paksa balikin ke window awal kita
    if initial_id and event.container.id != initial_id:
        i3_conn.command(f"[con_id={initial_id}] focus")

# Daftarkan event penangkap window baru
i3.on("window::focus", revert_focus)

# Jalankan timer di background buat restart i3wm dan matiin script setelah 15 detik
def stop_script():
    time.sleep(10)
    
    # Trigger restart i3wm agar membaca ulang config asli tanpa interupsi script lagi
    os.system("i3-msg restart")
    
    i3.main_quit()
    sys.exit(0)

threading.Thread(target=stop_script, daemon=True).start()

# Mulai monitoring
i3.main()
