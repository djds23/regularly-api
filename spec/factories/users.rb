FactoryGirl.define do
  factory :user do
    username 'FRIEND-1'

    trait :two do
      username 'FRIEND-2'
    end
  end
end

