
class ScaffordsController < ApplicationController
  # GET /scaffords
  # GET /scaffords.json
  def index
    @scaffords = Scafford.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scaffords }
    end
  end

  # GET /scaffords/1
  # GET /scaffords/1.json
  def show
    @scafford = Scafford.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scafford }
    end
  end

  # GET /scaffords/new
  # GET /scaffords/new.json
  def new
    @scafford = Scafford.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scafford }
    end
  end

  # GET /scaffords/1/edit
  def edit
    @scafford = Scafford.find(params[:id])
  end

  # POST /scaffords
  # POST /scaffords.json
  def create
    @scafford = Scafford.new(params[:scafford])

    respond_to do |format|
      if @scafford.save
        format.html { redirect_to @scafford, notice: 'Scafford was successfully created.' }
        format.json { render json: @scafford, status: :created, location: @scafford }
      else
        format.html { render action: "new" }
        format.json { render json: @scafford.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scaffords/1
  # PUT /scaffords/1.json
  def update
    @scafford = Scafford.find(params[:id])

    respond_to do |format|
      if @scafford.update_attributes(params[:scafford])
        format.html { redirect_to @scafford, notice: 'Scafford was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scafford.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffords/1
  # DELETE /scaffords/1.json
  def destroy
    @scafford = Scafford.find(params[:id])
    @scafford.destroy

    respond_to do |format|
      format.html { redirect_to scaffords_url }
      format.json { head :no_content }
    end
  end
end
