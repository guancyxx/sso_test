pip install --upgrade pip

pip install django django-mama-cas django-cas-ng

# 判断是否存在server目录，如果不存在则创建django项目server
if [ ! -d "server" ]; then
    django-admin startproject server
fi

# 启动django项目
cd server

python manage.py makemigrations

python manage.py migrate

# python3 manage.py collectstatic --noinput

# python3 manage.py runserver --noreload 

# 判断是否已有supervisor配置文件，如果没有则创建
if [ ! -f "/etc/supervisor/conf.d/server.conf" ]; then
    # 没有则复制supervisor_server.conf到/etc/supervisor/conf.d/server.conf
    cp ../supervisor_server.conf /etc/supervisor/conf.d/server.conf
else 
    # 有则删除/etc/supervisor/conf.d/server.conf
    rm /etc/supervisor/conf.d/server.conf
    # 复制supervisor_server.conf到/etc/supervisor/conf.d/server.conf
    cp ../supervisor_server.conf /etc/supervisor/conf.d/server.conf
fi

unlink /var/run/supervisor.sock

# 启动supervisor
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf