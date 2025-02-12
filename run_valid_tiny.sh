python -m torch.distributed.launch --nproc_per_node=1 --master_port 9994 --use_env main_act.py  \
    --model avit_tiny_patch16_224 --data-path /data/ImageNet \
    --output_dir ./results/tiny_avit \
    --pretrained \
    --batch-size 128 \
    --lr 0.0005 \
    --tensorboard \
    --epochs 100 \
    --gate_scale 10.0 \
    --gate_center 30 \
    --warmup-epochs 5 \
    --ponder_token_scale 0.0005 \
    --distr_prior_alpha 0.001 \
    --eval \
    --finetune /home/yujin/projects/A-ViT/a-vit-weights/a-vit-weights/tiny-10-30.pth