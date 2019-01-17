#!/bin/sh

files=`cat weights/ckpts.list`
for ckpt in $files; do
    echo "Evaluating ckpt: $ckpt..."
    python eval.py --trained_model weights/${ckpt} --voc_root /home/avisek/kv/datasets/VOCdevkit/
done

