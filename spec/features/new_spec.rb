require 'rails_helper'

RSpec.describe "login", :type => :view do
  it "show simple login form to login user" do
    visit '/login'
    fill_in 'name', with: 'Ali'
    click_button 'login'
    expect(page.body).to include 'Hi, Ali.'
  end
end
