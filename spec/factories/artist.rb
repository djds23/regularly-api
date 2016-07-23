FactoryGirl.define do
  factory :artist do
    name 'Pavement'
    trait :with_album do
      association :album, factory: :album
    end
  end
end

