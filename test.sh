#!/bin/bash

echo "Test stage"

# venv created, sourced
python3 -m venv venv
source venv/bin/activate

# install pip dependencies
pip3 install pytest pytest-cov flask_testing requests_mock
pip3 install -r requirements.txt

mkdir test_reports

# run pytest 
python3 -m pytest application \
    --cov=application \
    --cov-report term-missing \
    --cov-report xml:test_reports/application_coverage.xml \
    --junitxml=test_reports/application_junit_report.xml

# remove venv
deactivate
rm -rf venv
