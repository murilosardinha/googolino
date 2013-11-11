require 'spec_helper'

describe 'product search' do

  before do
    VCR.use_cassette "americanas_search_notebook" do
      visit root_path produto: 'notebook'
    end
  end

  it { expect(page.first('.product-description')).to have_content(/notebook/i) }

end
