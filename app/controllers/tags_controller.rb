class TagsController < ApplicationController
	before_filter: :require_login, only: [:destroy]

	def index
		@tag = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tagging = Tagging.where(tag_id: [@tag.id]).destroy_all
		# @tagging.destroy
		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' Deleted"

		redirect_to tags_path
	end

end