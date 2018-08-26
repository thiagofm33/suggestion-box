FactoryBot.define do
  factory :suggestion do
    text { Faker::Lorem.paragraph }
  end
end
