require 'spec_helper'

describe "Static pages" do

	let(:basetitle) {"Ruby on Rails Project"}
  describe "Home page" do

    it "should have the h1 selector with content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=> 'Sample App')
    
    end
    
    it "should have the ttitle 'Ruby on Rails Project'" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text=>"#{basetitle}")
    	
    	end
    	
    it "should not have a custom title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text=> "Home")
    end
  end
  describe "Help page" do
  	it "should have the h1 selector content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1',:text=>'Help')
  		
  	end
  	
  	 it "should have the ttitle 'Ruby on Rails Project|Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text=>"#{basetitle}|Help")
    	
    	end
  end
  
  describe "About page" do
  	it "should have the h1 selector with content 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text=>'About')
  	end
  	
  	 it "should have the ttitle 'Ruby on Rails Project|about'" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text=>"#{basetitle}|About")
    	
    	end
  end
  
  describe "Contact Page" do
  	it "should have the h1 selector with content 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', :text=>'Contact')
  	end
  	it "should have the title 'Ruby on Rails Project|Contact'" do
  	  visit '/static_pages/contact'
  	  page.should have_selector('title', :text=>"#{basetitle}|Contact")
    end
  end
end
