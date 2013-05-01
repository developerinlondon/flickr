class FlickrImage

  attr_accessor :title, :image_url

  def initialize(title, image_url)
    @title     = title
    @image_url = image_url
  end

  def as_json
    {
      title: @title,
      image_url: @image_url
    }
  end
end