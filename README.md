# sso_test
sso测试  基于python DJANGO

# 任务需求
    1. 构建一个独立的django sso 应用，可以使用django cas来demo
    2. 所有其他的django 应用都需要经过这个中心认证系统
    3. 一旦得到认证后，其他系统就可以免登录访问，否则不能访问。
    4. 需要明确中心认证系统，其他应用的访问流程和使用流程。
    5. 当前已经有一些框架，做django sso，可以查一下
    6. Django -cas 框架可以参考
    7. https://juejin.cn/post/6844903861904244744
    8. 除了自建系统，需要同时考虑集成使用第三方库，如微信登录
    9. 第三方库可以考虑使用oauth，social auth都可以，主要是演示出单一登录，集中认证，免登录的访问流程
    10. 用户登录注册使用JWT
    11. djangOauth:基于ldap与jwt的统一认证系统（sso）_django统一用户认证资源-CSDN文库

# 核心目标：
    寻找和整合第三方的库， 需要同时满足
    1. JWT
    2. 集中认证
    3. 单点登录
    4. 演示以上流程

# sso_test
sso test based on python DJANGO
# Task requirements
    1. Build a standalone django sso application, you can use django cas to demo
    2. All other django applications need to go through this central authentication system
    3. Once authenticated, other systems can access without logging in, otherwise they cannot access.
    4. It is necessary to clarify the central authentication system and the access and use process of other applications.
    5. There are already some frameworks for django sso, you can take a look
    6. Django -cas framework can refer to
    7. https://juejin.cn/post/6844903861904244744
    8. In addition to building systems, you need to consider integrating third-party libraries at the same time, such as WeChat login
    9. The third-party library can be considered to use oauth, social auth, which can mainly demonstrate the unified login, centralized authentication and access without login process
    10. User login registration uses JWT
    11. djangOauth: unified authentication system (sso) based on ldap and jwt - django unified user authentication resource - CSDN library

# Core objectives:
    Find and integrate third-party libraries that meet the following requirements at the same time
    1. JWT
    2. Centralized authentication
    3. Single sign-on
    4. Demonstrate the above process
    】