class NumericalsController < ApplicationController
  # GET /numericals
  # GET /numericals.json
  def index
    @numericals = Numerical.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @numericals }
    end
  end

  # GET /numericals/1
  # GET /numericals/1.json
  def show
    @numerical = Numerical.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @numerical }
    end
  end

  # GET /numericals/new
  # GET /numericals/new.json
  def new
    @numerical = Numerical.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @numerical }
    end
  end

  # GET /numericals/1/edit
  def edit
    @numerical = Numerical.find(params[:id])
  end

  # POST /numericals
  # POST /numericals.json
  def create
    @numerical = Numerical.new(params[:numerical])

    respond_to do |format|
      if @numerical.save
        format.html { redirect_to @numerical, notice: 'Numerical was successfully created.' }
        format.json { render json: @numerical, status: :created, location: @numerical }
      else
        format.html { render action: "new" }
        format.json { render json: @numerical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /numericals/1
  # PUT /numericals/1.json
  def update
    @numerical = Numerical.find(params[:id])

    respond_to do |format|
      if @numerical.update_attributes(params[:numerical])
        format.html { redirect_to @numerical, notice: 'Numerical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @numerical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numericals/1
  # DELETE /numericals/1.json
  def destroy
    @numerical = Numerical.find(params[:id])
    @numerical.destroy

    respond_to do |format|
      format.html { redirect_to numericals_url }
      format.json { head :no_content }
    end
  end
end
