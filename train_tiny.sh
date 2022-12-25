python -m torch.distributed.launch --nproc_per_node=4 \
 --use_env main_act.py --model avit_tiny_patch16_224 \
 --data-path /root/pubdatasets/ILSVRC2012 \
 --output_dir ./results/tiny_softermax \
 --pretrained --batch-size 128 --lr 0.0005 --tensorboard --epochs 100 --gate_scale 10.0 --gate_center 30 \
 --warmup-epochs 5 --ponder_token_scale 0.0005 --distr_prior_alpha 0.001