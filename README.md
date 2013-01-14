CFA API
=======

"CFA as a service"

An API to access CFA data programmatically. Currently provides data on 2013 fellows in JSON format.


Live Deploy
-----------

This version accessible via:

http://cfa-api.herokuapp.com/fellows


Usage
-----

Search parameters do partial match, so saying "south" will match "South Bend" and "dave" will match the full name.

### Name

Example:
http://cfa-api.herokuapp.com/fellows?name=dave

### Team

Example:
http://cfa-api.herokuapp.com/fellows?team=south%20bend


