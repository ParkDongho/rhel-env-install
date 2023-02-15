#install java
#sudo yum install default-jdk
sudo dnf install langpacks-en glibc-all-langpacks -y
sudo yum install java-1.8.0-openjdk-devel -y


#install sbt
mkdir tmp && cd tmp
sudo rm -f /etc/yum.repos.d/bintray-rpm.repo || true
curl -L https://www.scala-sbt.org/sbt-rpm.repo > sbt-rpm.repo
sudo mv sbt-rpm.repo /etc/yum.repos.d/
sudo yum install sbt
cd .. && rm -rf tmp


# install verilator
sudo yum install verilator -y

