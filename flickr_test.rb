$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/lib"

require "sinatra"

require "services/flickr_service"

get '/' do
  erb :carousel
end


get '/flickr' do
  content_type :json
  @flickr_service = FlickrService.new
  @json = @flickr_service.get_flickr_photos
  @json
end
