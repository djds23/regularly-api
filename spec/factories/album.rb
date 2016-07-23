FactoryGirl.define do
  factory :album do
    name 'Slanted and Enchanted'

    after(:create) do |album, evaluator|
      create_list :album_embed, 1, album: album
    end
  end
end

