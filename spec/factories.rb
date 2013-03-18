FactoryGirl.define do
  factory :user do
    name    "Andrew Taber"
    email   "andrewtaber@berkeley.edu"
    password "foobar"
    password_confirmation "foobar"
  end
end
