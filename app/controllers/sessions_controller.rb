class SessionsController < ApplicationController
  	def new
  	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])νΉτ€‰
			log_in user
			redirect_to user
		else
			flash[:danger] = 'Invalid email/password combination' ν°τ€ƒ‚τ€τ€…¦τ€† τ€€…τ€€τ€Έν―€τ€…µτ€ƒ½
			ender 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end

end

