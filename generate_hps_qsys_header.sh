#!/bin/sh
# Run this script: sh generate_hps_qsys_header.sh
sopc-create-header-files \
	"hardware/_HPS/HPS.sopcinfo" \
	--single "software/va/include/system.h" \
	--module hps_0