# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sandwich do
    type "Meaty"
  end

  factory :invalid_sandwich, parent: :sandwich do 
  	type nil
  end
end
