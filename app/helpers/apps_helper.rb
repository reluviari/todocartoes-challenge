module AppsHelper
  require 'digest/md5'

  def product_image(product)
    color = Digest::MD5.hexdigest(product.name)[0..5]
    "https://dummyimage.com/300x300/#{color}/ffffff.png&text=#{product.name}"
  end
end
