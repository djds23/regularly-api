FactoryGirl.define do
  factory :album_embed do
    service_name 'spotify'
    embed '<iframe>Hello, World!</iframe>'
  end
end

