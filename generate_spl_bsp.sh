#!/bin/sh
# Run this script: sh generate_spl_bsp.sh
echo "######## Gen/Regen spl_bsp ########"
bsp-create-settings \
	--type "spl" \
	--settings "software/spl_bsp/settings.bsp" \
	--preloader-settings-dir "hardware/hps_isw_handoff/HPS_hps_0" \
	--bsp-dir "software/spl_bsp" \
	--set spl.boot.WATCHDOG_ENABLE 0
	
echo "######## All Options ########"
bsp-query-settings \
	--settings "software/spl_bsp/settings.bsp" \
	--get-all \
	--show-names \
