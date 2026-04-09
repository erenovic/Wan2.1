#!/bin/bash

PROMPT="Summer beach vacation style, a white cat wearing sunglasses sits on a surfboard. The fluffy-furred feline gazes directly at the camera with a relaxed expression. Blurred beach scenery forms the background featuring crystal-clear waters, distant green hills, and a blue sky dotted with white clouds. The cat assumes a naturally relaxed posture, as if savoring the sea breeze and warm sunlight. A close-up shot highlights the feline's intricate details and the refreshing atmosphere of the seaside."
CKPT_DIR="/iopsstor/scratch/cscs/ecetin/MemoryKrea/.cache/huggingface/hub/models--Wan-AI--Wan2.1-I2V-14B-720P/snapshots/8823af45fcc58a8aa999a54b04be9abc7d2aac98"

python generate.py \
    --ckpt_dir $CKPT_DIR \
    --task i2v-14B \
    --frame_num 41 \
    --size 832*480 \
    --sample_steps 20 \
    --offload_model false \
    --prompt "$PROMPT"