class AdministrationController < ApplicationController

  before_action :authenticate_user!, :except => [:userlist]
  # load_and_authorize_resource :only => [:banuser, :activeuser]
  authorize_resource class: false
  def userlist
    @user = User.all.order('created_at DESC')
    @role = OfficerRole.all
  end

  def banuser
    whichuser = params[:which_user]
    @user = User.find(whichuser)
    respond_to do |format|
      if @user.update(status: 'non-active')
        format.html { redirect_to administration_userlist_path, notice: 'User was successfully updated.' }
      else
        format.html { redirect_to administration_userlist_path, notice: 'User cannot be updated.' }
      end
    end
  end

  def activeuser
    whichuser = params[:which_user]
    @user = User.find(whichuser)
    respond_to do |format|
      if @user.update(status: 'active')
        format.html { redirect_to administration_userlist_path, notice: 'User was successfully updated.' }
      else
        format.html { redirect_to administration_userlist_path, notice: 'User cannot be updated.' }
      end
    end
  end
end
