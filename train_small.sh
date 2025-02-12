python -m torch.distributed.launch --nproc_per_node=4 --use_env main_act.py \
--model avit_small_patch16_224 --data-path /data/ImageNet/ \
--output_dir ./results/tiny_softermax --pretrained --batch-size 96 \
--lr 0.0003 --tensorboard --epochs 100 --gate_scale 10.0 --gate_center 75 \
--warmup-epochs 5 --ponder_token_scale 0.0005 --distr_prior_alpha 0.001