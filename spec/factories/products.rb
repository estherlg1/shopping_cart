FactoryGirl.define do

    factory :product do

        name Faker::Commerce.product_name
        description Faker::Lorem.paragraph
        price {rand(10..999)}

    end

end