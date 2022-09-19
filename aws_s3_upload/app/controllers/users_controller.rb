class UsersController < ApplicationController
  def create
     resume = params[:pdf]
     params = user_params.except(:pdf)
     user = User.create!(params)
     user.resume.attach(resume) if resume.present? && !!user
     render json: user.as_json(root: false, methods: :resume_url).except("updated_at")
  end

  private
  def user_params
     params.permit(:email, :first_name, :last_name, :pdf)
  end
end
