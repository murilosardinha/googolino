class AmericanasCrawler
  include Wombat::Crawler

  base_url "http://busca.americanas.com.br"

  search_name css: '.searchName'

  products'css=.prods ul li', :iterator do
    title 'css=.cont .name'
    image 'css=.url', :html do |url|
      url.match(/src\=\"(http\:\/\/.*\.jpg)\"\slongdesc/)
      $1
    end

  end


end

