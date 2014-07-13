class RamenImage < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  REKOGNITION_URL = "http://rekognition.com"

  def self.decide(image_url)
      conn = Faraday.new(:url => REKOGNITION_URL) do |faraday|
        faraday.request  :url_encoded
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end

      response = conn.get "/func/api/?api_key=#{ENV['REKOGNITION_KEY']}&api_secret=#{ENV['REKOGNITION_SECRET']}&jobs=scene_understanding_3&urls=#{image_url}"
      result = JSON.parse(response.body)
      matches = result["scene_understanding"]["matches"]

      point = matches.inject(0) do |point, match|
        case match["tag"]
        when "mashed potato"
          point += match["score"] * 2
        when "sliced"
          point += match["score"] * 2
        when "frying pan"
          point += match["score"] * 1.5
        when "soup bowl"
          point += match["score"]
        when "dinner"
          point += match["score"]
        else
          point += 0
        end
      end
      {ramen: point > 0.6, point: point, status: "success"}
    end
end
