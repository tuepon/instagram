FactoryBot.define do
  factory :follow do
    follower_id { 1 }
    followed_id { 1 }
    accepted { false }
  end
end
