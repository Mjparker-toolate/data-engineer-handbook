#!/usr/bin/env bash
set -euo pipefail

# Idempotent setup for the DataExpert.io data-engineering bootcamp materials.
# Runs from the repository root after the source tree is checked out.

# System packages required to create Python virtualenvs and build native deps.
sudo apt-get update -qq
sudo apt-get install -y -qq python3-venv python3-dev build-essential

# Shared repo-root virtualenv used by the Python bootcamp materials.
python3 -m venv .venv
# shellcheck source=/dev/null
source .venv/bin/activate
python -m pip install --upgrade pip

# Week 3 – Spark fundamentals unit-test suite (pyspark, chispa, pytest).
pip install -r intermediate-bootcamp/materials/3-spark-fundamentals/requirements.txt

# Week 5 – KPIs & experimentation Flask server.
pip install -r intermediate-bootcamp/materials/5-kpis-and-experimentation/requirements.txt

echo "Environment setup complete. Activate with: source .venv/bin/activate"
