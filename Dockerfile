FROM centos:centos7

RUN rpm -Uvhi http://www003.upp.so-net.ne.jp/hat/files/netatalk-3.1.10-0.1.2.fc25.src.rpm
WORKDIR /root/rpmbuild/SPECS
RUN yum install -y rpm-build gcc make
RUN yum install -y  avahi-devel \
  bison \
  cracklib-devel \
  dbus-devel \
  dbus-glib-devel \
  docbook-style-xsl \
  flex \
  libacl-devel \
  libattr-devel \
  libdb-devel \
  libevent-devel \
  libgcrypt-devel \
  libxslt \
  krb5-devel \
  mysql-devel \
  openldap-devel \
  openssl-devel \
  pam-devel \
  quota-devel \
  systemtap-sdt-devel \
  tcp_wrappers-devel \
  libtdb-devel \
  tracker-devel
CMD rpmbuild -bb netatalk.spec
