class RamenImagesController < ApplicationController
  before_action :set_ramen_image, only: [:show, :edit, :update, :destroy]

  # GET /ramen_images
  def index
    logger.debug
    @ramen_images = RamenImage.all
  end

  def show
    @info = RamenImage.decide(RamenPhotoApi::Application.config.host + "/" + @ramen_image.image.url)
  end

  # GET /ramen_images/new
  def new
    @ramen_image = RamenImage.new
  end

  # GET /ramen_images/1/edit
  def edit
  end

  # POST /ramen_images
  def create
    @ramen_image = RamenImage.new(ramen_image_params)

    if @ramen_image.save
      redirect_to @ramen_image, notice: 'Ramen image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ramen_images/1
  def update
    if @ramen_image.update(ramen_image_params)
      redirect_to @ramen_image, notice: 'Ramen image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ramen_images/1
  def destroy
    @ramen_image.destroy
    redirect_to ramen_images_url, notice: 'Ramen image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ramen_image
      @ramen_image = RamenImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ramen_image_params
      params.require(:ramen_image).permit(:image)
    end
end
