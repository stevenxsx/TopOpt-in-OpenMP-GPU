#!/bin/bash -l

set -euo pipefail

cd "$(dirname "$0")"

module purge
module load nvhpc/25.9-nompi
module load openblas/0.3.32-serial

export OMP_NUM_THREADS="${OMP_NUM_THREADS:-12}"
export OMP_TARGET_OFFLOAD=MANDATORY

if [[ ! -x ./top3d ]]; then
    printf 'Error: ./top3d was not found or is not executable.\n' >&2
    printf 'Build it with make before running this script.\n' >&2
    exit 1
fi

if [[ $# -eq 0 ]]; then
    set -- -x 16 -y 8 -z 8 -l 4 -w 1
fi

exec ./top3d "$@"