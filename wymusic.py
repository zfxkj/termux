import requests
import re
import sys
headers = {
        'User-Agent': 'Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36'
}
print("如果什么都不输入就视为退出")
urlaq = input('请入链接：')
if urlaq == "":
        sys.exit("您已退出！")
        
url_fg = 'https://music.163.com/playlist?id='
id_fx = urlaq.split('=')[-1]
url = url_fg + id_fx
#url = urlaq.replace('/#','')
url1 = 'http://music.163.com/song/media/outer/url?id='
qq = requests.get(url, headers=headers).text
ids = re.findall('<ul class="f-hide">.*?</ul>', qq)
for ids2 in ids:
    ids1 = re.findall('<a href="/song\?id=([0-9]{8,14})">(.{4,30})</a>', ids2)
    for qqq in ids1:
        name = qqq[1]+'.mp3'
        sumx = qqq[0]
        url2 = url1 + sumx + '.mp3'
        print(url2)
        
        try:
            music = requests.get(url2).content
            with open('zfx/music/' + name, 'wb')as f:
                f.write(music)
        except Exception as e:
            print('错误:',e)
        else:
            print("下载成功～～")
"""
本程序由ZFX编辑，
转载请标明出处！

"""
