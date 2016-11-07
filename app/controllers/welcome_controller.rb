class WelcomeController < ApplicationController

	def index
		@establishments = Establishment.all.order("created_at DESC").limit(3)
	end

	def about
	end

	def post
	end

	def contact
	end
end
