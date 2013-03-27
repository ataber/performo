FactoryGirl.define do
  factory :user do
    name    "Andrew Taber"
    email   "andrewtaber@berkeley.edu"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :performer do
    name "Pink Floyd"
    description "I'm pink floyd"
    user
  end
end
