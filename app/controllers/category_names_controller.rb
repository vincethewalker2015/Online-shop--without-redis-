class CategoryNamesController < ApplicationController
  before_action :set_category_name, only: [:show, :edit, :update, :destroy]

  # GET /category_names
  # GET /category_names.json
  def index
    @category_names = CategoryName.all
  end

  # GET /category_names/1
  # GET /category_names/1.json
  def show
  end

  # GET /category_names/new
  def new
    @category_name = CategoryName.new
  end

  # GET /category_names/1/edit
  def edit
  end

  # POST /category_names
  # POST /category_names.json
  def create
    @category_name = CategoryName.new(category_name_params)

    respond_to do |format|
      if @category_name.save
        format.html { redirect_to @category_name, notice: 'Category name was successfully created.' }
        format.json { render :show, status: :created, location: @category_name }
      else
        format.html { render :new }
        format.json { render json: @category_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_names/1
  # PATCH/PUT /category_names/1.json
  def update
    respond_to do |format|
      if @category_name.update(category_name_params)
        format.html { redirect_to @category_name, notice: 'Category name was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_name }
      else
        format.html { render :edit }
        format.json { render json: @category_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_names/1
  # DELETE /category_names/1.json
  def destroy
    @category_name.destroy
    respond_to do |format|
      format.html { redirect_to category_names_url, notice: 'Category name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_name
      @category_name = CategoryName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_name_params
      params.fetch(:category_name, {})
    end
end