CFA API
=======

"CFA as a service"

An API to access CFA data programmatically.


Live Deploy
-----------

This version accessible via:

http://cfa-api.herokuapp.com/fellows


Usage:
------

### Search Parameters

Search parameters do partial match, so saying "south" will match "South Bend" and "dave" will match the full name.

1. Name - fellow name

Example:
http://cfa-api.herokuapp.com/fellows?name=dave

2. Team - city name

Example:
http://cfa-api.herokuapp.com/fellows?team=south%20bend


