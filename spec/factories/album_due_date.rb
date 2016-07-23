FactoryGirl.define do
  factory :album_due_date do
    due_date Time.now
    user

    trait :with_album do
      association :album, factory: :album
    end
  end
end

