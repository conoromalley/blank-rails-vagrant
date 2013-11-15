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

  describe "Home page" do
    before { visit home_path }
    it { should have_title ("#{base_title} - Home") }
    #it { should have_content ('Welcome to the Animal Diversity Web API')}
    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit home_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
      
      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit home_path
        end

        it { should have_link("0 following", href: following_user_path(user)) }
        it { should have_link("1 followers", href: followers_user_path(user)) }
      end      
      
    end
  end

end

# a feature specs example (just for reference) on the api page
feature "Static Pages" do
  scenario "User expects page to have 'Welcome to the Animal Diversity Web API' somewhere on api page" do
    visit api_path
    expect(page).to have_text("Welcome to the Animal Diversity Web API")
  end
end