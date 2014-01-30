require 'test_helper'

feature "As a visitor to the site, I want to be able to sign in, and then sign out" do

  scenario "User signs in with email address, password, and password confirmation. This is confirmed by a msg. \n
            when user is signed inThen the user clicks on a sign Out button and is logged out" do
  
    visit ("/articles")
    click_on "Sign Up"
    fill_in  'user_email', with: 'jackson@here.net'
    fill_in 'user_password', with: 'pooky'
    fill_in 'user_password_confirmation', with: 'pooky'
    click_button  'Sign Up'
    page.must_have_content("Thank you for signing up!")
    

  end
end
