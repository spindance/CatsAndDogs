require 'java'

Dir[File.expand_path("vendor/jars/*.jar", Rails.root)].each do |file|
  require file
end
