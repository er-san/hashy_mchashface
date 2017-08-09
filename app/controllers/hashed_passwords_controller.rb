class HashedPasswordsController < ApplicationController
  def index
    redirect_to '/search/'
  end

  def search
  end

  def show
    hashed_string = Digest::SHA1.hexdigest(params[:password])
    hashy_mchash = HashedPassword.where(hash_value: hashed_string)
    if hashy_mchash.empty?
      flash[:notice] = "Not found"
    else
      flash[:notice] = "Found"
    end
  end
end