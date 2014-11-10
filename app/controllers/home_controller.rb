class HomeController < ApplicationController
  def index


    @product = params[:produto] || 'notebooks'
    if product_name = @product
      words = product_name.split(" ")
      search = words.join('+')

       @crawl = AmericanasCrawler.new.crawl path: "/busca.php?q=#{search}&sort=2"


    end

  end
end
