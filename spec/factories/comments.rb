FactoryBot.define do
  factory :comment do
    content { "This is my comment" }

    factory :comment_empty do
      content { "" }
    end
  end
end
