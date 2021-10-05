class UsersController < ApplicationController
  def portfolio
    @tracked_stocks = current_user.stocks
  end
  def friends
    @friends = current_user.friends
  end

  def search
     if params[:friend].present?
       @friends = User.search(params[:friend])
       @friends = current_user.except_current_user(@friends)
       byebug
       if @friends
         respond_to do |format|
           format.js { render partial: 'users/friendresult' }
         end
       else
         respond_to do |format|
           flash.now[:alert] = "Couldn't find user"
           format.js { render partial: 'users/friendresult' }
         end
       end
     else
       respond_to do |format|
         flash.now[:alert] = "Please enter a friend name or email to search"
         format.js { render partial: 'users/friendresult' }
       end
     end
   end
end
