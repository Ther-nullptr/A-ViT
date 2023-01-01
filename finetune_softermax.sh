python -m torch.distributed.launch --nproc_per_node=2 \
 --use_env main_act.py --model avit_tiny_patch16_224 \
 --data-path /data/ImageNet \
 --output_dir ./results/tiny_softermax \
 --pretrained --batch-size 64 --lr 0.0005 --tensorboard --epochs 10 --gate_scale 10.0 --gate_center 30 \
 --warmup-epochs 0 --ponder_token_scale 0.0005 --distr_prior_alpha 0.001 \
 --finetune /home/yujin/projects/A-ViT/a-vit-weights/a-vit-weights/tiny-10-30.pth \
 --num_workers 10 --resume /home/yujin/projects/A-ViT/results/tiny_softermax/checkpoint.pth