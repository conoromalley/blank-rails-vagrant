require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Animal Diversity Web"}
  
  describe "API page" do

    it "should have the right title" do
      visit 'api'
      expect(page).to have_title("#{base_title} - API")
    end

    it "should have the content 'Welcome to the Animal Diversity Web API'" do
    # these functions provided by Capybara
      visit 'api'
      expect(page).to have_content('Welcome to the Animal Diversity Web API')
    end
  end

  describe "Collection Builder page" do
    it "should have the content 'Collection Builder'" do
      visit 'collection_builder'
      expect(page).to have_content('Collection Builder')
    end
  end
  
  describe "Contact page" do
    
    it "should have the right title" do
      visit 'contact'
      expect(page).to have_title("#{base_title} - Contact")
    end
    
    it "should have the content 'Contact Us'" do
      visit 'contact'
      expect(page).to have_content('Contact Us')
    end
  end

  describe "Developers page" do
    it "should have the right title" do
      visit 'developers'
      expect(page).to have_title("#{base_title} - Developers")
    end
    
    it "should have the content 'Developers'" do
      visit 'developers'
      expect(page).to have_content('Developers')
    end
  end

end

# a feature specs example (just for reference) on the api page
feature "Static Pages" do
  scenario "User expects page to have 'Welcome to the Animal Diversity Web API' somewhere on api page" do
    visit "api"
    expect(page).to have_text("Welcome to the Animal Diversity Web API")
  end
end
