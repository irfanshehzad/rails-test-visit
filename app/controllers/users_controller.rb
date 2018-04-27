class UsersController < ApplicationController
	
	def index
		@users = User.order(:name)
	end

	def read_csv
    if User.import(params[:csv])
  	  redirect_to users_path , notice: "Records Imported Successfully."
    else
  	  redirect_to users_path , error: "Something went wrong"
    end
	end

end