FactoryBot.define do

  factory :comment do
    text              {"abc"}
    user
    post
  end

end