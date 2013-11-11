class HomeController < ApplicationController
  def index


    if product_name = params[:produto] || 'notebooks'
      words = product_name.split(" ")
      search = words.join('+')

       @crawl = AmericanasCrawler.new.crawl path: "/busca.php?q=#{search}"

    end

  end
end
