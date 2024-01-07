brew install python@3.11
python3.11 -m pip install --upgrade pip
pip3 install virtualenv
pip3 install pip-tools
python3 -m virtualenv .venv --python=python3.11
printf "\n===============================================\nVirtual python environment has been created.\n"
source .venv/bin/activate
printf "Virtual python environment has been activated.\n"
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11
printf "Compiling requirements... This may take a few minutes.\n"
pip-compile ./backend/requirements/development.txt --output-file ./full-requirements.txt --resolver=backtracking --strip-extras
pip install -r ./full-requirements.txt
printf "Done installing requirements for local .venv!\nHave fun coding!\n"
