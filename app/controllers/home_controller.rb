class HomeController < ApplicationController
  def index


    if product_name = params[:produto] || 'notebooks'
      words = product_name.split(" ")
      @search = words.join('+')

      site = open("http://busca.americanas.com.br/busca.php?q=" + @search)
      document = Nokogiri::HTML(site)


      @titulo = document.css(".cont .url .name").to_a

      #@prods = Hash.new
      #@prods[:titulo] = document.css(".cont .url .name").to_a
      #@prods[:image] = document.css(".prods .url img")


    end

  end
end
