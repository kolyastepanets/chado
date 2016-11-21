FactoryGirl.define do
  factory :perfomance do
    title { ["Бумажное шоу", "Шоу фокусов", "Шоу мыльных пузырей", "Дрессированные животные", "Научное шоу"].sample }
    text { Faker::Lorem.paragraph }
    image File.new("#{Rails.root}/spec/support/images/logo.png")
  end
end
