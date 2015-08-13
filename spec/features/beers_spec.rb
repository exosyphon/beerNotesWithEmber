require 'spec_helper'

describe '#beers', :js => true do
  it 'has content on the homepage' do
    visit root_path

    page.should have_content 'Beer Notes'
  end
end