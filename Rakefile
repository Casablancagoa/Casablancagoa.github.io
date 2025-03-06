require 'rake'
require_relative '_plugins/image_processor'

namespace :images do
  desc "Convert images from fulls to thumbs"
  task :convert do
    Jekyll::ImageProcessor.convert_images
  end
end