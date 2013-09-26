require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Animal Diversity Web"}

  subject { page }

  describe "API page" do
    before { visit api_path }
    it { should have_title ("#{base_title} - API") }
    it { should have_content ('Welcome to the Animal Diversity Web API')}
  end

  describe "Collection Builder page" do
    before{ visit collection_builder_path }
    it { should have_title ("#{base_title} - Collection Builder") }
    it { should have_content ('Collection Builder') }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_title ("#{base_title} - Contact") }
    it { should have_content ('Contact Us') }
  end

  describe "Developers page" do
    before { visit developers_path }
    it { should have_title ("#{base_title} - Developers") }
    it { should have_content('Developers') }
  end

end

# a feature specs example (just for reference) on the api page
feature "Static Pages" do
  scenario "User expects page to have 'Welcome to the Animal Diversity Web API' somewhere on api page" do
    visit api_path
    expect(page).to have_text("Welcome to the Animal Diversity Web API")
  end
end