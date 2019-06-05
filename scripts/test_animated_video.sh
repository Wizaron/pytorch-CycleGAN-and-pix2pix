DATA=${1}
OUTPUT=${2}
CHECKPOINTS_DIR=${3}
AR=${4}
GPU_ID=${5}

set -ex
python test.py --dataroot ${DATA} --name animated-video --model cycle_gan --phase test --no_dropout --load_size 500 --preprocess scale_height --checkpoints_dir ${CHECKPOINTS_DIR} --gpu_ids ${GPU_ID} --results_dir ${OUTPUT} --aspect_ratio ${AR}
