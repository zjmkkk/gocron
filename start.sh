#!/bin/bash

# 启动 gocron web
start_gocron_web() {
    echo "Starting gocron web on port 面板端口..."
    ./bin/gocron web --port 面板端口 &
}

# 启动 gocron-node
start_gocron_node() {
    echo "Starting gocron-node on port 交互端口..."
    ./bin/gocron-node -s 0.0.0.0:交互端口 &
}

# 启动服务
start_gocron_web
start_gocron_node

echo "Services started."
