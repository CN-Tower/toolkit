#!/usr/bin

# 安装编译git时需要的包
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
yum install  gcc perl-ExtUtils-MakeMaker

# 删除已有的git
yum remove git

# 下载git源码
cd /usr/src
wget https://www.kernel.org/pub/software/scm/git/git-2.0.5.tar.gz
tar xzf git-2.0.5.tar.gz

# 编译安装
cd git-2.0.5
make prefix=/usr/local/git all
make prefix=/usr/local/git install
echo "export PATH=$PATH:/usr/local/git/bin" >> /etc/bashrc
source /etc/bashrc

# 检查一下版本号
git --version
