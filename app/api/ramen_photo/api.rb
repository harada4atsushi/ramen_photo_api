class RamenPhoto::API < Grape::API
  format :json

  REKOGNITION_URL = "http://rekognition.com"

  get :decide do
    if params[:image_url].blank?
      {status: "error"} and return
    end
    RamenImage.decide(params[:image_url])
  end
end

