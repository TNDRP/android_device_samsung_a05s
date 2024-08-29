#!/bin/bash

# List of kernel modules
modules=(
fsa4480-i2c.ko
goodixfp.ko
chipone_fp.ko
icc-test.ko
tz_log_dlkm.ko
nt36xxx-i2c.ko
tp_info.ko
lct_tp.ko
ilitek.ko
icnl9922c.ko
hx83112f.ko
hx9031as.ko
goodix_ts.ko
atmel_mxt_ts.ko
synaptics_tcm_ts.ko
pt_ts.ko
pt_i2c.ko
pt_device_access.ko
raydium_ts.ko
icnss2.ko
i2c-msm-geni.ko
)

# Directory where modules are located
module_dir="/vendor/lib/modules"

# Load each module
for module in "${modules[@]}"; do
    echo "Loading $module..."
    insmod "$module_dir/$module"
    if [ $? -eq 0 ]; then
        echo "$module loaded successfully."
    else
        echo "Failed to load $module."
    fi
done

echo "Module loading complete."
