# 使用 Ubuntu 作为基础镜像
FROM ubuntu:latest

# 安装 ICU 库和wget
RUN apt-get update -y && apt-get install -y libicu-dev wget jq curl unzip

# 设置工作目录
WORKDIR /tokenpay

# 获取最新发布
RUN wget $(curl -s https://api.github.com/repos/LightCountry/TokenPay/releases/latest | jq -r '.assets[] | select(.name | contains("release-linux-x64.zip")) | .browser_>

# 解压下载的文件
RUN unzip -o tokenpay.zip && rm tokenpay.zip

COPY ./appsettings.json /tokenpay/

# 设置执行权限
RUN chmod +x ./*

# 设置 ENTRYPOINT 以启动容器时自动执行 TokenPay
#ENTRYPOINT ["/bin/bash"]

# 使用脚本作为启动命令
 CMD ["./TokenPay"]