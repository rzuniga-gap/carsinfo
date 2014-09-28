class BrandModelsController < ApplicationController
  # GET /brand_models
  # GET /brand_models.json
  def index
    @brand_models = BrandModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brand_models }
    end
  end

  # GET /brand_models/1
  # GET /brand_models/1.json
  def show
    @brand_model = BrandModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brand_model }
    end
  end

  # GET /brand_models/new
  # GET /brand_models/new.json
  def new
    @brands = Brand.all
    @brand_model = BrandModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brand_model }
    end
  end

  # GET /brand_models/1/edit
  def edit
    @brands = Brand.all
    @brand_model = BrandModel.find(params[:id])
  end

  # POST /brand_models
  # POST /brand_models.json
  def create
    @brand_model = BrandModel.new(params[:brand_model])

    respond_to do |format|
      if @brand_model.save
        format.html { redirect_to @brand_model, notice: 'Brand model was successfully created.' }
        format.json { render json: @brand_model, status: :created, location: @brand_model }
      else
        format.html { render action: "new" }
        format.json { render json: @brand_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brand_models/1
  # PUT /brand_models/1.json
  def update
    @brand_model = BrandModel.find(params[:id])

    respond_to do |format|
      if @brand_model.update_attributes(params[:brand_model])
        format.html { redirect_to @brand_model, notice: 'Brand model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brand_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_models/1
  # DELETE /brand_models/1.json
  def destroy
    @brand_model = BrandModel.find(params[:id])
    @brand_model.destroy

    respond_to do |format|
      format.html { redirect_to brand_models_url }
      format.json { head :no_content }
    end
  end
end
