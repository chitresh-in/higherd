class User::JobApplicationController < ApplicationController
  def index
    @user=User.where(id: current_user.id).first
    @applications=@user.openings
  end

  def create

    
      @application=JobApplication.create(user_id: current_user.id , opening_id: params[:opening_id])
        
      redirect_to request.referrer
      
      
      
  end
end

