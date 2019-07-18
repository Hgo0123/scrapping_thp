require 'rubygems'
require 'nokogiri'
require 'open-uri'

@page = Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes"))


def scrapp_all_name
	array = Array.new
 nom_deputes = @page.xpath('//span[contains(@class, "list_nom")]').each do |nom|
 	p nom.text.gsub(',','-')

 
 end

 end

scrapp_all_name

def scrapp_email

	for handle in scrapp_all_name

	pagel = Nokogiri::HTML(open("https://www.nosdeputes.fr/#{handle}"))

	depute = pagel.xpath('//*[@id="b1"]/ul[2]/li[1]/ul/li[1]/a')
end
	p depute.text
end

scrapp_email
=end