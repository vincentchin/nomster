require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "humanize rating" do
  	 user = FactoryGirl.create(:user)
     sign_in user

     assert_difference 'Comments.count' do
     post :create, {:comment => {
     	 :message => 'Wow',
     	 :rating => '1_star'
       }
 	 }
 	end
    assert_equal 'one_star', user.comments.rating
   end
end
