FactoryGirl.define do
  factory :album do
    name 'Slanted and Enchanted'
    association :album_embed, factory: :album_embed
  end
end

