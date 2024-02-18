& accelerate launch --mixed_precision bf16 --num_cpu_threads_per_process 2 stable_cascade_train_stage_c.py `
  --mixed_precision bf16 --save_precision bf16 --max_data_loader_n_workers 0 --persistent_data_loader_workers `
  --gradient_checkpointing --learning_rate 1e-4 `
  --optimizer_type adafactor --optimizer_args "scale_parameter=False" "relative_step=False" "warmup_init=False" `
  --max_train_epochs 10 --save_every_n_epochs 1 --save_precision bf16 `
  --output_dir e:\model\test --output_name sc_test `
  --stage_c_checkpoint_path "E:\models\stable_cascade\stage_c_bf16.safetensors" `
  --effnet_checkpoint_path "E:\models\stable_cascade\effnet_encoder.safetensors" `
  --previewer_checkpoint_path "E:\models\stable_cascade\previewer.safetensors" `
  --dataset_config "D:\kohya_ss\examples\stable_cascade\test_dataset.toml" `
  --sample_every_n_epochs 1 --sample_prompts "D:\kohya_ss\examples\stable_cascade\prompt.txt" `
  --adaptive_loss_weight
  