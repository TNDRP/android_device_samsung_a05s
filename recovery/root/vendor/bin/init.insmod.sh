#!/bin/bash

# List of kernel modules
modules=(
lct_tp.ko
icnl9922c.ko
hx83112f.ko
hx9031as.ko
goodix_ts.ko
atmel_mxt_ts.ko
synaptics_tcm_ts.ko
pt_ts.ko
raydium_ts.ko
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
