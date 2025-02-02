DATA=${1}
OUTPUT=${2}
CHECKPOINTS_DIR=${3}
GPU_ID=${4}

set -ex
python test.py --dataroot ${DATA} --name animated-video --model test --phase test --no_dropout --no_flip --load_size 500 --preprocess scale_height --checkpoints_dir ${CHECKPOINTS_DIR} --gpu_ids ${GPU_ID} --results_dir ${OUTPUT} --dataset_mode single --num_test -1 --aspect_ratio -1.0
