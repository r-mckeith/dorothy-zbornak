require 'rails_helper'

describe "Viewing the list of users" do

  it "shows the users" do
    user1 = User.create!(user_attributes(name: "Larry", email: "larry@example.com"))

    sign_in(user1)

    visit users_url
  
    expect(page).to have_link(user1.name)
  
  end

end