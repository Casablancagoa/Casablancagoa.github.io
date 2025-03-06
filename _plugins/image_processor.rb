require 'fileutils'

module Jekyll
  class ImageProcessor
    def self.convert_images
      full_dir = File.join(Dir.pwd, 'assets', 'images', 'fulls')
      thumb_dir = File.join(Dir.pwd, 'assets', 'images', 'thumbs')

      Dir.mkdir(thumb_dir) unless Dir.exist?(thumb_dir)

      Dir.glob(File.join(full_dir, '*.{jpg,jpeg,png,gif}')).each do |image_path|
        image_name = File.basename(image_path)
        thumb_path = File.join(thumb_dir, image_name)

        system("convert #{image_path} -resize 360x247 #{thumb_path}")
        puts "Converted #{image_name} to thumbnail."
      end
    end
  end
end