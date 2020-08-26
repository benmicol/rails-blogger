class TagsController < ApplicationController
	def show
  		@tag = Tag.find(params[:id])
	end
	def index
		@tags = Tag.all
	end
	def destroy
		@tag = Tag.find(params[:id]).destroy
		flash.notice = "Tag '#{@tag.name}' Deleteted!"
		redirect_to action: "index"
	end

end
