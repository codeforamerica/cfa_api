CFA API
=======

"CFA as a service"

An API to access CFA data programmatically. Currently provides data on 2013 fellows in JSON format.


Live Deploy
-----------

This version accessible via:

http://cfa-api.herokuapp.com/fellows

Local Deployment
----------------

`bundle install` #to install all the required gems

`rake db:migrate` #to create the "fellows" table in the db

`rake load_data:fellows` #to populate the db with the fellows info. this rake task is defined in /lib/tasks/load_data.rake

`rails-api s` #to launch the local server

Go to [http://localhost:3000/fellows](http://localhost:3000/fellows) to see a JSON output of all the 2013 fellows

Usage
-----

Search parameters do partial match, so saying "south" will match "South Bend" and "dave" will match the full name.

### Name

Example:
http://cfa-api.herokuapp.com/fellows?name=dave

### Team

Example:
http://cfa-api.herokuapp.com/fellows?team=south%20bend


