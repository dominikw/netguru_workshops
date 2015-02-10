class UsersController < ApplicationController
  
	expose(:user)
	expose_decorated(:reviews) {user.reviews.order("created_at DESC").limit(5)}

  def show
  end
end
