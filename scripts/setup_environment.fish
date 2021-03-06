#! /usr/local/bin/fish

tmux send-keys "npm run dev" C-m 
tmux split-window -v
tmux send-keys "nova ."