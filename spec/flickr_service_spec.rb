require "rspec"
require "webmock/rspec"

require "services/flickr_service"


describe "Flickr Service" do

  before(:each) do
    @flickr_service = FlickrService.new
  end

  it "should throw exception when flicker is unavailable" do
    stub_request(:get, /.*/).to_return(:status => [500, "Service Unavailable"], :body => "Internal Server Error")

    expect{@flickr_service.get_flickr_photos}.to raise_error (ServiceError)
  end

  it "returns as list of titles and images" do
    response = File.read "#{File.dirname(__FILE__)}/responses/flickr_service/ok_response.json"
    stub_request(:get, /.*/).to_return(:status => [200, "Ok"], :body => response)


    pending
  end

end

