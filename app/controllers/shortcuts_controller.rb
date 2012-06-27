class ShortcutsController < ApplicationController
  # GET /shortcuts
  # GET /shortcuts.json
  def index
    @shortcuts = Shortcut.all
    Rails.logger.info(params[:sortBy].class)
    sortByOptions = ["keyword", "number_of_redirects", "owner", "long_url"]
    if params.has_key?(:sortBy)
    	@sortBy = (sortByOptions.include? params[:sortBy]) ? params[:sortBy] : "keyword"
    else @sortBy = "keyword"
    end
    @shortcuts.sort! { |a, b| a.send(@sortBy) <=> b.send(@sortBy) }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shortcuts }
    end
  end

  # GET /shortcuts/1
  # GET /shortcuts/1.json
  def show
    @shortcut = Shortcut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shortcut }
    end
  end

  # GET /shortcuts/new
  # GET /shortcuts/new.json
  def new
    @shortcut = Shortcut.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shortcut }
    end
  end

  # GET /shortcuts/1/edit
  def edit
    @shortcut = Shortcut.find(params[:id])
  end

  # POST /shortcuts
  # POST /shortcuts.json
  def create
    @shortcut = Shortcut.new(params[:shortcut])

    respond_to do |format|
      if @shortcut.save
        format.html { redirect_to @shortcut, notice: 'Shortcut was successfully created.' }
        format.json { render json: @shortcut, status: :created, location: @shortcut }
      else
        format.html { render action: "new" }
        format.json { render json: @shortcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shortcuts/1
  # PUT /shortcuts/1.json
  def update
    @shortcut = Shortcut.find(params[:id])

    respond_to do |format|
      if @shortcut.update_attributes(params[:shortcut])
        format.html { redirect_to @shortcut, notice: 'Shortcut was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shortcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shortcuts/1
  # DELETE /shortcuts/1.json
  def destroy
    @shortcut = Shortcut.find(params[:id])
    @shortcut.destroy

    respond_to do |format|
      format.html { redirect_to shortcuts_url }
      format.json { head :no_content }
    end
  end
end
