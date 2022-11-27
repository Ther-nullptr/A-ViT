python main_act.py \
     --model avit_small_patch16_224 --data-path /root/pubdatasets/ILSVRC2012 \
     --output_dir ./results/small_avit \
     --pretrained \
     --batch-size 96 \
     --lr 0.0003 \
     --tensorboard \
     --epochs 100 \
     --gate_scale 10.0 \
     --gate_center 75 \
     --warmup-epochs 5 \
     --ponder_token_scale 0.0005 \
     --distr_prior_alpha 0.001 \
     --eval \
     --finetune /root/kyzhang/yjwang/A-ViT/a-vit-weights/a-vit-weights/small-10-75.pth

