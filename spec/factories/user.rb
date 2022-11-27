FactoryBot.define do
    factory :user do
      first_name { 'John' }
      last_name  { 'Doe' }
      sequence(:email) { |n| "tester#{n}@email.com" } #changed from: email { john@email.com }
      mobile_number { 5555555555 }
    end
  end 