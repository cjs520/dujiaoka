# dujiaoka

docker-compose.yml
修改MYSQL_ROOT_PASSWORD数据库root密码
修改MYSQL_PASSWORD数据库用户密码
用户名和数据库名不用修改
如服务器8000端口可能被占用,需修改epusdt映射端口,例如58000:8000
epusdt.conf
修改第 3 行app_uri为上文为epusdt准备的独立域名
修改第 24 行mysql_passwd为上节MYSQL_PASSWORD的用户密码(注意:非 root 密码)
修改第 55 行api_auth_token=xxxx创建一个密码用于dujiaoka 支付设置中使用.
注意:因为本项目是独立部署到 docker compose 内,所以第 21,33 行已经修改为db,redis,不能使用 127.0.0.1.
修改第 48 行tg_bot_token=为上文创建的 Telegram Bot 的Token
修改第 52 行tg_manage=为上文创建的 Telegram Bot 的ID
初始化数据库 ```sh insert.sh```

商户ID修改为上述创建的密码api_auth_token的值
商户密钥填写API地址 https://上文准备的usdt域名.com/api/v1/order/create-transaction