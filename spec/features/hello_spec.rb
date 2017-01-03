require 'rails_helper'

RSpec.describe "hello", :type => :view do
  it "welcome user" do
    visit '/login'
    fill_in 'name', with: 'Ali'
    click_button 'login'
    expect(page.body).to include 'Hi, Ali.'
  end
  it "shows a link to logout user and redirects to login page after logout" do
    visit '/login'
    fill_in 'name', with: 'Ali'
    click_button 'login'
    click_button 'logout'
   expect(page.current_path).to eq("/login")
 end
end
