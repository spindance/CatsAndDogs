# Cats and Dogs

This is a quick-and-dirty example of how to use Plain Old Java Objects (POJOs) as models in a JRuby on Rails application. It uses [RABL](https://github.com/nesquena/rabl) and [declarative_authorization](https://github.com/stffn/declarative_authorization) to make a very simple JSON API accessible at:

 * [http://localhost:3000/cats/1.json](http://localhost:3000/cats/1.json)
 * [http://localhost:3000/dogs/1.json](http://localhost:3000/dogs/1.json)

No login required, but your cat and dog have IDs of 1.  Other IDs will give an auth error.

`Dog.java` needs to be compiled with `javac lib/java_models/Dog.java`.

Files of interest:

 * config/initializers/java_models.rb
 * config/authorization_rules.rb
 * lib/java_models/Dog.java
 * app/controllers/dogs_controller.rb
 * app/views/dogs/show.json.rabl

Compare the Ruby cat version with the Java dog version.
