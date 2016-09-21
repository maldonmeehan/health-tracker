FactoryGirl.define do
  factory :user do
    email("test@test.com")
    password("test_password")
  end

  factory(:activity) do
    step(7890)
    calorie(1234)
    minute(99)
  end

  factory(:entry) do
    day("2016/09/21")
  end

end
