#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.ayardocore/ayardod.pid file instead
ayardo_pid=$(<~/.ayardocore/testnet3/ayardod.pid)
sudo gdb -batch -ex "source debug.gdb" ayardod ${ayardo_pid}
