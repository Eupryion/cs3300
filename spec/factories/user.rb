FactoryBot.define do
    factory :user do
      first_name { 'John' }
      last_name  { 'Doe' }
      email { john@email.com }
      mobile_number { 5555555555 }
    end
  end 