require "faraday"
require "json"

require_relative "service_error"
require 'model/flickr_image'

class FlickrService

  URL = 'http://api.flickr.com/services/feeds/photos_public.gne?tags=bskyb&format=json&tagmode=any'

  def get_flickr_photos

    resp = Faraday.get URL
    if 200 == resp.status

      # get json string from response
      json_string = resp.body.gsub("jsonFlickrFeed\(","").
                              gsub(resp.body[resp.body.length-1],"")
      items = JSON.parse(json_string)["items"]

      # get title, image_url from items
      flick_images = []
      items.each do |item|
        title     = item["title"] # get image title
        image_url = item["media"]["m"].gsub("_m.jpg", ".jpg") # get full-image url
        flick_images << FlickrImage.new(title, image_url).as_json
      end

      # return list of title and image URL
      flick_images.to_json
    else
      raise ServiceError
    end

  end

end