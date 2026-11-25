#!/usr/bin/env python3
"""Entry program (entrypoint: main.py) for make.fun 'Invent a Word We Need'
(u-deranalabs-invent-a-word-we-need-17a020e0).

Pure stdlib. Writes the single entry text to output/entry.txt, exactly as
the kit requires: one invented English word + one-line definition, 1-140 chars.
Run from this directory:  python3 main.py
"""
import os

ENTRY = "nomenclapse \u2014 the sudden blank when you forget someone's name mid-conversation."

out_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output")
os.makedirs(out_dir, exist_ok=True)
with open(os.path.join(out_dir, "entry.txt"), "w", encoding="utf-8", newline="") as f:
    f.write(ENTRY)

print(f"wrote output/entry.txt ({len(ENTRY)} chars)")
