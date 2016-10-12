Given(/^My role is Admin$/) do
  @role_admin = FactoryGirl.create :officer_role_admin
end

Given(/^I am a admin$/) do
  @user_admin = FactoryGirl.create :admin
end

When(/^I visit the Homepage of the Accommodation System$/) do
  visit '/'
end

Then(/^I should see a link for sign in$/) do
  expect(page).to have_link('Sign in', href: '/users/sign_in')
end

When(/^I click the link for sign in$/) do
  visit '/users/sign_in'
end

Then(/^I see a form to fill in my account$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I submit the form$/) do
  fill_in 'Email', with: @user_admin.email
  fill_in 'Password', with: @user_admin.password
  click_button 'Log in'
end

Then(/^I am redirected to the start page$/) do
  visit '/'
end

Then(/^I should see my signed in and a link to sign out$/) do
  save_and_open_page
  expect(page).to have_content "#{@user_admin.email}"
  expect(page).to have_link('Sign out', href: destroy_user_session_path)
end

################################################################################

Given(/^I have a new staff$/) do
  @role_staff = FactoryGirl.create :officer_role_staff
end

Given(/^I want to add the staff$/) do
  @user_staff = FactoryGirl.build :staff
end
