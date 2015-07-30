FactoryGirl.define do
  factory :user do
   email "vincent.ch91@gmail.com"
   password "password"

   factory :owner do
     email "owner@place.com"
   end
  end

  factory :place do
   name      'Home'
   description 'home sweet home'
   address   '6903 3rd Avenue, Brooklyn, NY 11209'
   association :user, factory: :owner
  end

end
