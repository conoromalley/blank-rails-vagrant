class StaticPagesController < ApplicationController
  def api
  end

  def collection_builder
  end

  def contact
  end

  def developers
  end
  
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  
end
