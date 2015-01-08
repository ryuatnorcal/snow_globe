
class PecturesController < ApplicationController
  # GET /pectures
  # GET /pectures.json
  def index
    @pectures = Pecture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pectures }
    end
  end

  # GET /pectures/1
  # GET /pectures/1.json
  def show
    @pecture = Pecture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pecture }
    end
  end

  # GET /pectures/new
  # GET /pectures/new.json
  def new
    @pecture = Pecture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pecture }
    end
  end

  # GET /pectures/1/edit
  def edit
    @pecture = Pecture.find(params[:id])
  end

  # POST /pectures
  # POST /pectures.json
  def create
    @pecture = Pecture.new(params[:pecture])

    respond_to do |format|
      if @pecture.save
        format.html { redirect_to @pecture, notice: 'Pecture was successfully created.' }
        format.json { render json: @pecture, status: :created, location: @pecture }
      else
        format.html { render action: "new" }
        format.json { render json: @pecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pectures/1
  # PUT /pectures/1.json
  def update
    @pecture = Pecture.find(params[:id])

    respond_to do |format|
      if @pecture.update_attributes(params[:pecture])
        format.html { redirect_to @pecture, notice: 'Pecture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pectures/1
  # DELETE /pectures/1.json
  def destroy
    @pecture = Pecture.find(params[:id])
    @pecture.destroy

    respond_to do |format|
      format.html { redirect_to pectures_url }
      format.json { head :no_content }
    end
  end
end
