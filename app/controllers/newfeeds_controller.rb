class NewfeedsController < ApplicationController
  def index
    @newfeeds = Newfeed.order('created_at DESC').paginate(page: params[:page], per_page: 10)
  end
end
