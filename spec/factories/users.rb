FactoryBot.define do

  factory :user do
    nickname              {"abc"}
    email                 {"nakamura@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end
end