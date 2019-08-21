require 'rubygems'
require 'nokogiri'
require 'open-uri'




def scrapper

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	devise = []

	crypto_name = page.xpath('//td[contains(@class, "text-left")]').each do |node|

		devise << node.text

	end

	amount = []
	crypto_currencies = page.xpath('//a[contains(@class, "price")]').each do |node|

		 amount << node.text
	end
		myHash = Hash.new


		myHash  = Hash[devise.zip(amount)]



		 a = []
		 myHash.each do |k,v|
		   hash = {}
		   hash[k] = v
		   a << hash
		
		end	
		p a
end

	scrapper