
require 'open-uri'
class PetController < ApplicationController
  def get_dog
    i = 0
    doc = Nokogiri::HTML(open("http://terms.naver.com/entry.nhn?docId=1062053&cid=40942&categoryId=32624")) 
    doc.css(".tb_style2//td//a").each do |x|
      c = Cat.new
      c.category = x.inner_text
      c.save
    end
    doc.xpath('//img').each do |img|
      if img['src'].size > 97
        c = Cat.all
        c[i].img_url = "#{img['src']}"
        c[i].save
        i = i+1
      end
    end
  end
end

