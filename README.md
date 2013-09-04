# Cats and Dogs

This is a quick-and-dirty example of how to use Plain Old Java Objects (POJOs) as models in a JRuby on Rails application. It uses [RABL](https://github.com/nesquena/rabl) and [declarative_authorization](https://github.com/stffn/declarative_authorization) to make a very simple JSON API accessible at:

 * [http://localhost:3000/cats/1.json](http://localhost:3000/cats/1.json)
 * [http://localhost:3000/dogs/1.json](http://localhost:3000/dogs/1.json)

No login required, but your cat and dog have IDs of 1.  Other IDs will give an auth error.

To access cats and dogs with other IDs as an administrator, add the param user_id=2 to your url, such as [http://localhost:3000/dogs/2.json?user_id=2](http://localhost:3000/dogs/2.json?user_id=2).  Other user IDs other than 2 will throw an authorization error, with the exception of user_id = 1 for objects with id of 1.

`Dog.java` needs to be compiled with sbt in JCatsAndDogs.

Files of interest:

 * config/initializers/java_models.rb
 * config/authorization_rules.rb
 * app/controllers/dogs_controller.rb
 * app/views/dogs/show.json.rabl

Compare the Ruby cat version with the Java dog version.
