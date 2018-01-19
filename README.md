# docker_learn

## Docker概念
### 容器技术
> 容器通过对操作系统的资源访问进行限制，构建成独立的资源池，让应用运行在一个相对隔离的空间里，同时容器间也可以进行通信。

1. 容器技术对比虚拟化技术，容器比虚拟化更轻量级，对资源的消耗小很多。容器操作也更便捷，启动和停止都要比虚拟机快。

2. 但Docker容器需要与主机共享操作系统内核，不能像虚拟机那样运行独立的内核。

### 镜像
> Docker的镜像概念类似于虚拟机里的镜像，是一个只读的模板，一个独立的文件系统，包括运行容器所需的数据，可以用来创建新的容器。

### 容器
> Docker容器是由Docker镜像创建的运行实例。

Docker容器类似虚拟机，可以支持的操作包括启动，停止，删除等。每个容器间是相互隔离的，但隔离的效果比不上虚拟机。容器中会运行特定的应用，包含特定应用的代码及所需的依赖文件。

在Docker容器中，每个容器之间的隔离使用Linux的CGroups和Namespaces技术实现的。其中CGroups对CPU，内存，磁盘等资源的访问限制，Namespaces提供了环境的隔离。

### 仓库
> Docker仓库相当于一个github上的代码库。

Docker仓库是用来包含镜像的位置，Docker提供一个注册服务器(Registry)来保存多个仓库，每个仓库又可以包含多个具备不同tag的镜像。Docker运行中使用的默认仓库

### 安装
    
    $ sudo apt-get update
    $ sudo apt-get install apt-transport-https ca-certificates
    $ sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

添加文件/etc/apt/sources.list.d/docker.list，然后向文件中写入下面的内容
    deb https://apt.dockerproject.org/repo ubuntu-trusty main

再次执行

    sudo apt-get update
    sudo apt-get install docker-engine

查看　docker执行状态

    teng@teng-E400 ~ $ sudo service docker status
    ● docker.service - Docker Application Container Engine
    Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
    Active: active (running) since Fri 2018-01-19 09:33:12 CST; 44min ago
        Docs: http://docs.docker.com
    Main PID: 880 (docker)
    CGroup: /system.slice/docker.service
            └─880 /usr/bin/docker -d -H fd://

    Jan 19 09:33:38 teng-E400 docker[880]: time="2018-01-19T09:33:38+08:00" level=info msg="L...t."
    Jan 19 09:33:39 teng-E400 docker[880]: ......................
    Jan 19 09:33:39 teng-E400 docker[880]: time="2018-01-19T09:33:39+08:00" level=info msg="L...e."
    Jan 19 09:33:39 teng-E400 docker[880]: time="2018-01-19T09:33:39+08:00" level=info msg="d...fs"
    Jan 19 09:33:39 teng-E400 docker[880]: time="2018-01-19T09:33:39+08:00" level=info msg="+...()"
    Jan 19 09:33:39 teng-E400 docker[880]: time="2018-01-19T09:33:39+08:00" level=info msg="-...0)"
    Jan 19 09:33:39 teng-E400 docker[880]: time="2018-01-19T09:33:39+08:00" level=info msg="D...on"
    Jan 19 10:08:38 teng-E400 docker[880]: time="2018-01-19T10:08:38+08:00" level=info msg="G...on"
    Jan 19 10:08:38 teng-E400 docker[880]: time="2018-01-19T10:08:38+08:00" level=info msg="+...()"
    Jan 19 10:08:38 teng-E400 docker[880]: time="2018-01-19T10:08:38+08:00" level=info msg="-...0)"
    Hint: Some lines were ellipsized, use -l to show in full.

查看docker的帮助

    docker command --help

Docker服务
>配置Docker服务启动选项，可以通过修改文件/etc/default/docker

- 停止Docker服务

    sudo service docker stop
- 启动Docker服务

    sudo service docker start