FactoryGirl.define do
  factory :artist do
    name 'Pavement'

    trait :with_album do
      after(:create) do |artist, evaluator|
        create_list :album, 1, artist: artist
      end
    end
  end
end

