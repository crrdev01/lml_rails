class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @stories = Story.paginate(page: params[:page], per_page: 20)
  end
end
