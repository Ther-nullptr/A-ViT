python main_act.py \
    --model avit_tiny_patch16_224 --data-path /root/pubdatasets/ILSVRC2012 \
    --output_dir ./results/tiny_avit \
    --pretrained \
    --batch-size 128 \
    --lr 0.0005 \
    --tensorboard \
    --epochs 100 \
    --gate_scale 10.0 \
    --gate_center 20 \
    --warmup-epochs 5 \
    --ponder_token_scale 0.0005 \
    --distr_prior_alpha 0.001 \
    --eval \
    --finetune /root/kyzhang/yjwang/A-ViT/a-vit-weights/a-vit-weights/tiny-10-20.pth

python main_act.py \
    --model avit_tiny_patch16_224 --data-path /root/pubdatasets/ILSVRC2012 \
    --output_dir ./results/tiny_avit \
    --pretrained \
    --batch-size 128 \
    --lr 0.0005 \
    --tensorboard \
    --epochs 100 \
    --gate_scale 10.0 \
    --gate_center 40 \
    --warmup-epochs 5 \
    --ponder_token_scale 0.0005 \
    --distr_prior_alpha 0.001 \
    --eval \
    --finetune /root/kyzhang/yjwang/A-ViT/a-vit-weights/a-vit-weights/tiny-10-40.pth