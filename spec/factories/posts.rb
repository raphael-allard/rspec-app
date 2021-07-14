FactoryBot.define do
  factory :post do
    sequence(:name) { |i| "Title #{i}" }
    comments_count { 0 }
  end
end
