class UsersController < ApplicationController
  
	expose(:user)
	expose(:reviews) {user.reviews.order("created_at DESC").limit(5)}

  def show
  end
end
