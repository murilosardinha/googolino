class AmericanasCrawler
  include Wombat::Crawler

  base_url "http://busca.americanas.com.br"

  products "css=.products-area .single-product", :iterator do
    title 'css=.prodTitle'

    image 'css=.productImg .url', :html do |data|
      data.to_s.match(/src\=\"(http\:\/\/.*\.jpg)\"/)
      $1
    end

    price 'css=.price-area', :html do |p|
      p
    end

  end



end

