FactoryBot.define do
  factory :post do
    caption { "MyString" }
    longitude { 1.5 }
    lattitude { 1.5 }
    user { nil }
    allow_commnents { false }
    show_likes_count { false }
  end
end
