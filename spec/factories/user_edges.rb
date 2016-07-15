FactoryGirl.define do
  factory :user_edge do
    user
    edge 1

    trait :two do
      association :user, factory: :user, username: 'FRIEND-2'
      edge 1
    end
  end
end

