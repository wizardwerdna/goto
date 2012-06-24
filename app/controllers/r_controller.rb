class RController < ApplicationController
  def show
    @shortcut = Shortcut.find_by_keyword params[:id]
    if @shortcut
      @shortcut.update_attributes number_of_redirects: @shortcut.number_of_redirects + 1
      redirect_to @shortcut.long_url
    else  
      raise ActiveRecord::RecordNotFound
    end
  end
end
