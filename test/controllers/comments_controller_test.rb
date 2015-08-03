require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment posted success" do
  	 user = FactoryGirl.create(:user)
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

     assert_equal 1, user.comments.count
     assert_redirected_to place_path(1)
   end
end
