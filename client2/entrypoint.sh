pip install --upgrade pip

pip install django-mama-cas django-cas-ng

# 判断是否存在client目录，如果不存在则创建django项目client
if [ ! -d "client" ]; then
    django-admin startproject client
fi

# 启动django项目
cd client

python manage.py makemigrations

python manage.py migrate

# 判断是否已有supervisor配置文件，如果没有则创建
if [ ! -f "/etc/supervisor/conf.d/client.conf" ]; then
    # 没有则复制supervisor_client.conf到/etc/supervisor/conf.d/client.conf
    cp ../supervisor_client.conf /etc/supervisor/conf.d/client.conf
else 
    # 有则删除/etc/supervisor/conf.d/client.conf
    rm /etc/supervisor/conf.d/client.conf
    # 复制supervisor_client.conf到/etc/supervisor/conf.d/client.conf
    cp ../supervisor_client.conf /etc/supervisor/conf.d/client.conf
fi

unlink /var/run/supervisor.sock

# 启动supervisor
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf