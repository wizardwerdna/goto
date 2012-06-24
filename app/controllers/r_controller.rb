class RController < ApplicationController
  def show
    @shortcut = Shortcut.find_by_keyword params[:id]
    if @shortcut
      redirect_to @shortcut.long_url
    else  
      raise ActiveRecord::RecordNotFound
    end
  end
end
