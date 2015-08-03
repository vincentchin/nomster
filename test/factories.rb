FactoryGirl.define do
  
  factory :comment do
    message 'Wow'
    rating '1_star'
  end

  factory :user do
   email 'email@gmail.com'
   password 'password'

   factory :owner do
   	email 'owner@place.com'
   end
  end

  factory :place do
   name 'Home'
   description 'home sweet home'
   address '6903 3rd Avenue, Brooklyn, NY 11209'
   association :user, factory: :owner
  end
  
end