﻿#!/bin/bash
. ./path.sh || exit 1;

if pgrep -f "auto_task.py" > /dev/null
then
    pgrep -f "auto_task.py" | xargs kill -9
    echo "运行 auto_task.py，正在杀掉进程"
else
    echo "未运行 auto_task.py"
fi

# 在后台运行新的脚本实例，并将输出重定向到 out.log
# nohup /root/miniconda3/envs/cosyvoice/bin/python auto_task.py --book_name 秦史-七月新番 --start_idx 1 --end_idx 100 > out.log 2>&1 &
nohup /root/miniconda3/envs/cosyvoice/bin/python auto_task.py --book_name 择日飞升-宅猪 --start_idx 1001 --end_idx 1200 > out.log 2>&1 &
# nohup /root/miniconda3/envs/cosyvoice/bin/python auto_task.py --book_name srzy --start_idx 1001 --end_idx 1130 > out.log 2>&1 &
# nohup /root/miniconda3/envs/cosyvoice/bin/python auto_task.py --book_name aa --start_idx 1 --end_idx 1 > out.log 2>&1 &
