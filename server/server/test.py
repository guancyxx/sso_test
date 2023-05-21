import requests

proxyip = "http://storm-xiwutech_session-xiwutech_life-120:cj4f7X96TenRC9G@proxy.stormip.cn:1000"
url = "https://myip.ipip.net"
proxies={
    'http':proxyip,
    'https':proxyip,
}
data = requests.get(url=url,proxies=proxies)
print(data.text)
