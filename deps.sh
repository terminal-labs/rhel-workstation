yum -y check-update
yum -y upgrade

yum -y groupinstall "Development Tools"

yum -y install wget kernel-devel kernel-headers gcc make perl kernel-devel-$(uname -r)
yum -y install binutils qt make patch libgomp glibc-headers glibc-devel dkms

yum -y install redhat-lsb
yum -y install libXScrnSaver

yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E '%{rhel}').noarch.rpm
yum -y install https://$(rpm -E '%{?centos:centos}%{!?centos:rhel}%{rhel}').iuscommunity.org/ius-release.rpm

wget https://www.virtualbox.org/download/oracle_vbox.asc
rpm --import oracle_vbox.asc
wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo
yum install -y "VirtualBox-5.2"
/usr/lib/virtualbox/vboxdrv.sh setup
rm oracle_vbox.asc*

yum -y install python-devel

yum -y install emacs
yum -y install git
