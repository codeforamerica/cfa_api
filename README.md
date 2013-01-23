CFA API
=======

"CFA as a service"

An API to access CFA data programmatically. Currently provides data on 2013 fellows in JSON format.


Live Deploy
-----------

This version accessible via:

http://cfa-api.herokuapp.com/v0/fellows

Local Deployment
----------------

`bundle install` #to install all the required gems

If you are deploying locally for the first time:

`rake db:create db:schema:load load_data`

If you already created the Fellows table before 1/23/13:

`rake db:reset db:schema:load load_data`

Launch the local server:

`rails-api s`

Go to [http://localhost:3000/v0/fellows](http://localhost:3000/v0/fellows) to see a JSON output of all the 2013 fellows

Usage
-----

Search parameters do partial match, so saying "south" will match "South Bend" and "dave" will match the full name.

### Name

Example:
http://cfa-api.herokuapp.com/v0/fellows?name=dave

### Team

Example:
http://cfa-api.herokuapp.com/v0/fellows?team=south%20bend


