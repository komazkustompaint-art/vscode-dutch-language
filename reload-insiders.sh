#!/bin/sh

CODE_INSIDERS_PID=$(pgrep -f "/Applications/Visual Studio Code - Insiders.app/Contents/MacOS/Electron")

kill $CODE_INSIDERS_PID &> /dev/null
rm -v *.vsix
vsce package
code-insiders --install-extension ./*.vsix
code-insiders test-workspace
