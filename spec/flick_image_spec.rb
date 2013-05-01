require "rspec"
require "webmock/rspec"

require "model/flickr_image"


describe "Flickr Image" do

  before(:each) do
    @title = "Lorem ipsum dolores."
    @image_url = "http://example.com/image.jpg"
  end

  it "should create flick image with title and image URL" do
    @flick_image = FlickrImage.new(@title, @image_url)
    @flick_image.title.should == @title
    @flick_image.image_url.should == @image_url
  end

  it "should return JSON data" do
    @flick_image = FlickrImage.new(@title, @image_url)
    json = @flick_image.as_json
    json[:title].should == @title
    json[:image_url].should == @image_url
  end

end

