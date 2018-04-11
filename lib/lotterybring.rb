require 'nokogiri'
require 'rest-client'
require 'pry'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.nlotto.co.kr/gameResult.do?method=byWin"))

a = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > img:nth-child(1)')[0]['alt']
a.to_i

b = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > img:nth-child(2)')[0]['alt']
b.to_i

c = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > img:nth-child(3)')[0]['alt']
c.to_i

d = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > img:nth-child(4)')[0]['alt']
d.to_i

e = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > img:nth-child(5)')[0]['alt']
e.to_i

f = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > img:nth-child(6)')[0]['alt']
f.to_i

lotteryresult = a, b, c, d, e, f

print a + " ," + b + " ," + c + " ," + d + " ," + e + " ," + f