class HashedPasswordsController < ApplicationController
  def index
    redirect_to '/search/'
  end

  def search
    flash[:found] = ''
    if params[:password] && params[:password][:value]
      hashed_string = Digest::SHA1.new.update(params[:password][:value]).to_s.upcase
      hashy_mchash = HashedPassword.where(hash_value: hashed_string)
      if hashy_mchash.empty?
        flash[:found] = "Pool on the roof must have a leak. (Password not found)"
      else
        flash[:found] = "Mess with the best. Die like the rest. (Password found)"
      end
    end
    render 'search'
  end
end