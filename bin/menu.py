#!/usr/bin/env python3

import qprompt, subprocess

def main():
    menu = qprompt.Menu()
    menu.add("e", "eclipse", run, ["eclipse"])
    menu.add("i", "intellij", run, ["intellij"])
    menu.add("c", "chromium", run, ["chromium"])
    menu.main(loop=False)

def run(prog):
    s = subprocess.call(prog)

if __name__=="__main__":
    main()

