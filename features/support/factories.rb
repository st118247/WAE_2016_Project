FactoryGirl.define do
  factory :officer_role, class: OfficerRole do
    id '1'
    role 'Admin'
  end

  factory :admin, class: User do
    email 'admin@ait.asia'
    password 'password'
    password_confirmation 'password'
    officer_role_id '1'
  end
end