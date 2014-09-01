require 'spec_helper'
feature 'create a new user' do
  scenario 'access the new user form' do
    visit '/'
    click_link 'SignUp'
    expect(page).to have_content "First name"
    expect(page).to have_content "Last name"
  end
end

feature 'logging in a new user' do
  scenario 'login' do
    user = create(:user)
    visit '/'
    click_link 'Login'
    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "#{user.password}"
    click_button "Log in"
    expect(page).to have_content "Signed in successfully."
  end
end

feature 'edit profile of logged in user' do
  scenario "displaying an edit form" do
    user = create(:user)
    visit '/'
    click_link 'Login'
    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "#{user.password}"
    click_button "Log in"
    click_link "Edit Profile"
    expect(page).to have_content "Edit User"
    expect(page).to have_content "First name"
    expect(page).to have_content "Last name"
    expect(page).to have_content "Cohort"
  end
  scenario "Editing a user" do
user = create(:user)
    visit '/'
    click_link 'Login'
    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "#{user.password}"
    click_button "Log in"
    click_link "Edit Profile"
    fill_in "Email", with: "hethe@berg.com"
    fill_in "Current password", with: "#{user.password}"
    click_button "Update"

    expect(page).to have_content "Your account has been updated successfully."
  end
end

feature 'logging out a user' do
  scenario 'logout' do
    user = create(:user)
    visit '/'
    click_link 'Login'
    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "#{user.password}"
    click_button "Log in"
    click_link 'Logout'
    expect(page).to have_content "Signed out successfully."
  end
end




