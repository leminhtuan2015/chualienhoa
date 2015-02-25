class NewfeedsController < ApplicationController
  def index
    @newfeeds = Newfeed.all
  end
end
