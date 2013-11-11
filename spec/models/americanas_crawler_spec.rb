require  'spec_helper'

describe AmericanasCrawler do

  before do
    VCR.use_cassette 'americanos_crawl_noteboot' do
      @crawl = AmericanasCrawler.new.crawl(path: '/busca.php?q=notebooks')
    end
  end

  subject { @crawl }

  it { expect(subject['products']).to_not be_empty }

  describe 'products' do
    subject { @crawl['products'].first }

    it { expect(subject['image']).to match(/http:\/\/.*jpg/)  }
    it { expect(subject['title']).to match(/notebook/i) }

  end



end
