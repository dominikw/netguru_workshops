class UserDecorator < Draper::Decorator
  delegate_all

  def fullname
  	model.firstname + " " + model.lastname
  end

end
