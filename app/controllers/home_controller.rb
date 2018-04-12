class HomeController < ApplicationController

  def homepage
  end

  def lotterypage

  #Require Gems
    require 'nokogiri'
    require 'rest-client'
    require 'pry'
    require 'open-uri'

  #801회차 로또번호 불러오기 (g변수가 보너스 번호)

    doc = Nokogiri::HTML(open("http://www.nlotto.co.kr/gameResult.do?method=byWin"))

    a = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p >
        img:nth-child(1)')[0]['alt']
    a.to_i

    b = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p >
        img:nth-child(2)')[0]['alt']
    b.to_i

    c = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p >
        img:nth-child(3)')[0]['alt']
    c.to_i

    d = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p >
        img:nth-child(4)')[0]['alt']
    d.to_i

    e = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p >
        img:nth-child(5)')[0]['alt']
    e.to_i

    f = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p >
        img:nth-child(6)')[0]['alt']
    f.to_i

    g = doc.css('body > section > article > article > div > div.lotto_win_number.mt12 > p > span.number_bonus > img')[0]['alt']
    g.to_i

  #상금 값 불러오기

    @firstprize = doc.css('body > section > article > article > div > table.tblType1.f12.mt40 > tbody > tr:nth-child(2) > td:nth-child(2) > strong').text
    @secondprize = doc.css('body > section > article > article > div > table.tblType1.f12.mt40 > tbody > tr:nth-child(3) > td:nth-child(2) > strong').text
    @thirdprize = doc.css('body > section > article > article > div > table.tblType1.f12.mt40 > tbody > tr:nth-child(4) > td:nth-child(2) > strong').text
    @fourthprize = doc.css('body > section > article > article > div > table.tblType1.f12.mt40 > tbody > tr:nth-child(5) > td:nth-child(2) > strong').text
    @fifthprize = doc.css('body > section > article > article > div > table.tblType1.f12.mt40 > tbody > tr:nth-child(6) > td:nth-child(2) > strong').text

  #당첨 번호 불러온거 변수화

    @lotterybring_view = a + " ," + b + " ," + c + " ," + d + " ," + e + " ," + f
    @lotteryarray = [a.to_i ,b.to_i, c.to_i, d.to_i, e.to_i, f.to_i]
    @bonusnumberincluded= [a.to_i ,b.to_i, c.to_i, d.to_i, e.to_i, f.to_i, g.to_i]
    @g = [g.to_i]
  end

end
