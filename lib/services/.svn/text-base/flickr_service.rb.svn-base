require "faraday"
require "json"

require_relative "service_error"

class FlickrService

  URL = 'http://api.flickr.com/services/feeds/photos_public.gne?tags=bskyb&format=json&tagmode=any'

  def get_flickr_photos

    resp = Faraday.get URL
    if 200 == resp.status
      #resp.body
    else
      raise ServiceError
    end

  end

end