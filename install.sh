#!/bin/bash
echo "[info] pdiff installation starts"
sudo cp -r ./pdiff /usr/bin/pdiff
[ $? -eq 0 ] && sudo cp -r ./pdiff_ /usr/bin/pdiff_
[ $? -eq 0 ] && echo "[info] pdiff installation is complete"
