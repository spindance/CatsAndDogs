require 'java'

Dir[File.expand_path("vendor/jars/*.jar", Rails.root)].each do |file|
  require file
end

java_import com.spindance.jcatsanddogs.JCatsAndDogs

at_exit do
  JCatsAndDogs.cleanup()
end
