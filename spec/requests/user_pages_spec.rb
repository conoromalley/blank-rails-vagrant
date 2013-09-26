require 'spec_helper'

describe "User Pages" do

  let(:base_title) {"Animal Diversity Web"}

  subject { page }

  describe "Signup Page" do
    before { visit signup_path }
    it { should have_title ("#{base_title} - Sign Up") }
    it { should have_content ('Welcome to the Animal Diversity Web API')}
    it { should have_content ('Sign Up')}

  end
end
