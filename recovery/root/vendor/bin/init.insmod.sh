#!/bin/bash

# List of kernel modules
modules=(
goodix_ts.ko
hx9031as.ko
icnl9922c.ko
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
