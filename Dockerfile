# 使用官方的CentOS 7基础镜像
FROM centos:7

# 安装必要的工具
RUN yum -y update && yum -y install wget

# 下载并安装v2ray
RUN wget https://install.direct/go.sh && bash go.sh

# 暴露v2ray端口
EXPOSE 10086

# 启动v2ray
CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
