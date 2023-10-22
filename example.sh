# 训练
CUDA_VISIBLE_DEVICES=0 python main.py --cuda --do_train --do_test\
  --data_path data/PW/123order/1 -n 1 -b 512 -d 64 -g 60 \
  -lr 0.0002 --max_steps 15001 --cpu_num 10   --beta_mode "[1024,2]" \
  --log_steps 100  --save_checkpoint_steps  100000  \

