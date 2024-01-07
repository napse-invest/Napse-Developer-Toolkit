#! /usr/bin/env bash
sudo apt update
sudo apt install git-flow
sudo apt install python3
sudo apt install python3.11-dev
python3.11 -m pip install --upgrade pip
pip3 install --upgrade pip
pip install virtualenv

rm -rf .venv
python3 -m virtualenv .venv --python=python3.11
echo "PYTHONPATH=${PYTHONPATH}:$(pwd)" >> .venv/bin/activate
source .venv/bin/activate
printf "Virtual python environment has been activated.\n"

pip install pip-tools
pip-compile ./backend/requirements/development.txt --output-file ./full-requirements.txt --resolver=backtracking
pip install -r ./full-requirements.txt
pip uninstall pip-tools

printf "Done installing requirements for local .venv!\nHave fun coding!\n"
