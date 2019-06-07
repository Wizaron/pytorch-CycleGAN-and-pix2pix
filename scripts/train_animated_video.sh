data_dir=${1}
name=${2}
checkpointsd=${3}

set -ex
python train.py --dataroot ${data_dir} --name ${name} --model cycle_gan --no_dropout --load_size 520 --crop_size 500 --preprocess scale_height_and_crop --continue_train --display_id 0 --display_freq 100 --checkpoints_dir $checkpointsd --save_epoch_freq 1 --save_latest_freq 100

# scale_height_and_crop
