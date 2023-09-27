#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

export CYPHAL_PATH="/opt/public_regulated_data_types"
export UAVCAN__CAN__IFACE='socketcan:can0'
export UAVCAN__CAN__MTU=8
export UAVCAN__NODE__ID=$(yakut accommodate)  # Pick an unoccupied node-ID automatically for this shell session.
echo "Auto-selected node-ID for this session: $UAVCAN__NODE__ID"

yakut monitor
