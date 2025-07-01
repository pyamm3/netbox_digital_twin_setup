#!/bin/bash
echo "--- Cloning Netreplica ---"
git clone https://github.com/netreplica/nrx.git --recursive
mkdir -p ~/.venv
python3.10 -m venv ~/.venv/nrx
source ~/.venv/nrx/bin/activate
pip install nrx
echo "--- Installing requirements ---"
source ./venv/bin/activate
pip3 install -r ./nrx/requirements.txt
