#!/bin/sh
# Verifikasi manual entry terhadap RULES.txt (sealed scorer di server hanya
# mengecek: UTF-8, 1-140 karakter, bukan hanya whitespace).
# Kit ini TIDAK menyediakan checker lokal untuk entry teks, jadi cek di sini
# meniru aturan gate itu persis + cek format satu baris.
set -e
cd "$(dirname "$0")"
python3 main.py
python3 - <<'PY'
import os
p = "output/entry.txt"
raw = open(p, "rb").read()
text = raw.decode("utf-8")  # gagal kalau bukan UTF-8 valid
assert 1 <= len(text) <= 140, f"panjang {len(text)} di luar 1-140"
assert text.strip(), "entry hanya whitespace"
assert "\n" not in text.strip(), "entry harus satu baris"
assert text == text.strip(), "ada whitespace di ujung"
print(f"OK: {len(text)} karakter, {len(raw)} byte, UTF-8 valid, satu baris, tanpa whitespace ujung")
print(f"ISI: {text}")
PY
