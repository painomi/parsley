FactoryBot.define do
  factory :album do
    name "MyString"
    description "MyText"
    artist nil
    publish_at "2018-04-29"
    media_type 1
    release_type 1
    production_type 1
  end
end
