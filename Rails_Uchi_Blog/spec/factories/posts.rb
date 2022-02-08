FactoryBot.define do
  factory :post do
    user
    title { "MyTitle" }
    body { "MyBody" }
  end
end
