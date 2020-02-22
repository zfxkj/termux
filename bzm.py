import requests
import json
import sys

url_template = "http://service.picasso.adesk.com/v1/vertical/{}vertical?limit=16&skip={}&adult=false&first=1&order={}"
order='new'
skip = [0 for x in range(17)]
med_url = []
category_dict = {
    '1':["推荐", '',skip[0],'hot'],'2':["最新", '',skip[1],order],
    '3':["美女", 'category/4e4d610cdf714d2966000000/',skip[2],order],
    '4':["动漫", 'category/4e4d610cdf714d2966000003/',skip[3],order],
    '5':["风景", 'category/4e4d610cdf714d2966000002/',skip[4],order],
    '6':["游戏", 'category/4e4d610cdf714d2966000007/',skip[3],order],
    '7':["文字", 'category/5109e04e48d5b9364ae9ac45/',skip[3],order],
    '8':["视觉", 'category/4fb479f75ba1c65561000027/',skip[3],order],
    '9':["情感", 'category/4ef0a35c0569795756000000/',skip[3],order],
    '10':["设计", 'category/4fb47a195ba1c60ca5000222/',skip[3],order],
    '11':["明星", 'category/5109e05248d5b9368bb559dc/',skip[3],order],
    '12':["物语", 'category/4fb47a465ba1c65561000028/',skip[3],order],
    '13':["男人", 'category/4e4d610cdf714d2966000006/',skip[3],order],
    '14':["机械", 'category/4e4d610cdf714d2966000005/',skip[3],order],
    '15':["城市", 'category/4fb47a305ba1c60ca5000223/',skip[3],order],
    '16':["动物", 'category/4e4d610cdf714d2966000001/',skip[3],order],
    '17':["影视", 'category/4e58c2570569791a19000000/',skip[3],order]
}

def xh(url, file_name, start):
    headers = {
        'User-Agent': 'Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36'
    }
#     url_hot = "http://service.picasso.adesk.com/v1/vertical/vertical?limit=16&skip=0&adult=false&first=1&order=hot"
    qq = requests.get(url, headers=headers).text
    qq1 = json.loads(qq)
    qq2 = qq1.get("res").get("vertical")
    #print(qq2)
    q = []
    i = start
    str_fmt = '{}图片_{}.jpg'
    for a in qq2:
        q.append(a.get("img"))
    for u in q:
        print(u)
        fn = str_fmt.format(file_name, i)
        i=i+1
        try:
            picture = requests.get(u).content
            with open('ZFX/' + fn, 'wb')as f:
                f.write(picture)
        except Exception as e:
            print('错误:',e)
        else:
            print("下载成功～～",fn)


if __name__ == '__main__':
    display= ''
    for i in range(1,18):
        display = display + '{}={},'.format(str(i), category_dict[str(i)][0])
    display = display[:-1]
    text = input(display+"\n请输入命令：")
    index = 0
    while True:
        if text == 'q':
            sys.exit('您已正常退出！')
        if text == 'm':
            text = input(display+"\n请输入命令：")
            continue
        elif text == '':
            pass
        elif text in list(category_dict.keys()):
            index = text
        else:
            sys.exit('ERROR！')
        item = category_dict[index]
        url = url_template.format(item[1], item[2], item[3])
        #print(url)
        xh(url, item[0], item[2])
        item[2] = item[2] + 16
        category_dict[index] = item
        text = input('“q”键退出，Enter继续执行，“m”键显示目录\n请输入命令：')
        
