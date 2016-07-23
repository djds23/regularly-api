FactoryGirl.define do
  factory :album_due_date do
    due_date Time.now
    user

    trait :with_album do
      after(:create) do |album_due_date, evaluator|
        album_due_date.album = create(:artist, :with_album).albums.first
        album_due_date.save!
      end
    end
  end
end

