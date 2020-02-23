import requests
import re
import sys
print("如果什么都不输入视为退出\n")
url_name = input('请输入搜索文字:')
if url_name == "":
    sys.exit("您已退出！")

html_url = f'https://image.baidu.com/search/index?tn=baiduimage&word={url_name}'
html = requests.get(html_url).text
tp = re.findall('"objURL":"(.*?)"', html)
#print(tp)
i=1
for tp1 in tp:
    print (tp1)
    try:
        imget = requests.get(tp1).content
        #name = tp1.split('/')[-1]
        suffix = tp1.split('.')[-1]
        name = url_name + "{}.{}".format(i, suffix)
        with open('zfx/' + name, 'wb') as f:
            f.write(imget)
        i=i+1
    except:
        print("链接失效～～")
    else:
        print("成功～～")
