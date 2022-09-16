class GeneratorsController < ApplicationController
  before_action :set_generator, only: %i[ show edit update destroy ]

  # GET /generators
  def index
    @generators = Generator.all
  end

  # GET /generators/1
  def show
  end

  # GET /generators/new
  def new
    @generator = Generator.new
  end

  # GET /generators/1/edit
  def edit
  end

  # POST /generators
  def create
    @generator = Generator.create!(generator_params)
    render :new, status: :unprocessable_entity
   
  end

  # PATCH/PUT /generators/1
  def update
    @generator.update!(generator_params)
    render :edit, status: :unprocessable_entity
  end

  # DELETE /generators/1
  def destroy
    @generator.destroy
    redirect_to generators_url, notice: "Generator was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generator
      @generator = Generator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def generator_params
      params.require(:generator).permit(:quotes)
    end
end
