require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "humanize rating" do
  	 user =  FactoryGirl.create(:user)
  	 place = FactoryGirl.create(:place)
     sign_in user

     assert_difference 'Comment.count' do
       post :create, {:place_id => place.id,
                      :comment => {
         :message => 'Wow',
         :rating => '1_star'
       }
       }
     end
     assert_equal '1_star', user.comments.first.rating
   end
end
