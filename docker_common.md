## 容器管理

    docker run -t -i ubuntu /bin/bash

1. -t：分配一个 pseudo-TTY
2. -i：--interactive参数缩写，表示交互模式，如果没有 attach 保持 STDIN 打开状态
3. ubuntu：运行的镜像名称，默认为latest 标签
4. /bin/bash：容器中运行的应用

在这个bash下，我们可以进行各种Ubuntu系统上的操作，当然因为Docker本身的限制，有些涉及到磁盘、网络、设备等Linux特权命令是无法执行的，可以试试reboot命令，会提示你shutdown: Unable to shutdown system。

*如何退出，一下两种方法的效果完全不同*

1. 直接exit，这时候bash程序终止，容器进入到停止状态
2. 使用组合键退出，仍然保持容器运行，我们可以随时回来到这个bash中来，组合键是Ctrl-p Ctrl-q，你没有看错，是两组组合键，先同时按下Ctrl和p，再按Ctrl和q。就可以退出到我们的宿主机了。

