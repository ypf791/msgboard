class MainController < ApplicationController
	def index
		@posts = Post.all
		@new_post = Post.new

		respond_to do |format|
			format.html
			format.json { render :json => @posts }
		end
	end

	def create
		@post = Post.new(params[:post])

		respond_to do |format|
			if @post.save
				format.html { render :nothing => true }
				format.js
			else
				format.html { render :nothing => true }
				format.js { render :nothing => true }
				#format.json
			end
		end
	end

	def update
		@id = params[:id]
		@post = Post.find(@id)

		respond_to do |format|
			if @post.update_attributes(params[:post])
				format.html { redirect_to main_index_path }
				format.js
				#format.json
			else
				format.html { redirect_to main_index_path }
				format.js { render :nothing => true }
				#format.json
			end
		end
	end

	def destroy
		@id = params[:id]
		@post = Post.find(@id)
		@post.destroy

		respond_to do |format|
			format.html { redirect_to main_index_path }
			format.js
			#format.json
		end
	end
end
