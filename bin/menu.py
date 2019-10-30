#!/usr/bin/env python3

import qprompt, subprocess

def main():
    menu = qprompt.Menu()
    menu.add("k", "code", run, ["code"])
    menu.add("e", "eclipse", run, ["eclipse"])
    menu.add("i", "intellij", run, ["intellij-idea-community"])
    menu.add("f", "firefox", run, ["firefox"])
    menu.add("c", "chromium", run, ["chromium"])
    menu.add("y", "insomnia", run, ["insomnia"])
    menu.add("g", "gvim", run, ["gvim"])
    menu.add("l", "lyx", run, ["lyx"])
    menu.add("m", "meld", run, ["meld"])
    menu.add("e", "emacs", run, ["emacs"])
    menu.add("n", "notepad++", run, ["notepad-plus-plus"])
    menu.add("b", "netbeans", run, ["netbeans"])
    menu.add("p", "pcmanfm", run, ["pcmanfm"])
    menu.add("s", "stacer", run, ["stacer"])
    menu.main(loop=False)

def run(prog):
    s = subprocess.call(prog)

if __name__=="__main__":
    main()

