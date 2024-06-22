#!/bin/bash
mkdir -p qc_reports
fastqc -o qc_reports "$@"

