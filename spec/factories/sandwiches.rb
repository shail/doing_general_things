# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sandwich do
    sandwich_type "Meaty"
  end

  factory :invalid_sandwich, parent: :sandwich do 
  	sandwich_type nil
  end
end
