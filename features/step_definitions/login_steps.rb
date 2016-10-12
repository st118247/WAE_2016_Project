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
  # save_and_open_page
  expect(page).to have_content "#{@user_admin.email}"
  expect(page).to have_link('Sign out', href: destroy_user_session_path)
end

################################################################################

Given(/^I am a user$/) do
  @no_role = FactoryGirl.create :officer_no_role
end

Given(/^I want to register account$/) do
  @user_staff = FactoryGirl.build :staff
end

# When(/^I visit the Homepage of the Accommodation System$/) do
#   visit '/'
# end

Then(/^I should see a link for sign up$/) do
  expect(page).to have_link('Sign up', href: '/users/sign_up')
end

When(/^I click the link for sign up$/) do
  visit '/users/sign_up'
end

Then(/^I see a form to fill in my registration detail$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I submit the registration form$/) do
  fill_in 'Email', with: @user_staff.email
  fill_in 'Password', with: @user_staff.password
  fill_in 'Password confirmation', with: @user_staff.password_confirmation
  click_button 'Sign up'
end

# Then(/^I am redirected to the start page$/) do
#   visit '/'
# end

Then(/^I should see my signed in with my role$/) do
  # save_and_open_page
  expect(page).to have_content "#{@user_staff.email}"
  expect(page).to have_content "#{@no_role.role}"
end
