#!/bin/bash

if [ ! -d ./venv ]
then
    python3 -m venv venv
fi

if [ ! $? -eq 0 ]
then
    echo "Problem setting up virtual env"
    exit 1
fi

source venv/bin/activate
pip install -r requirements.txt
alias daisy="$(which python) $(pwd)/daisy.py"