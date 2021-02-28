require "http"

# HTTP.get("URL goes here")

response = HTTP.get("https://data.cityofnewyork.us/resource/43nn-pn8j.json")
markets = response.parse
# Note: parse, here, gives you the 'body' portion of the return from the server ...

# p markets[0]
# we're calling the first entry in the array

# p markets[0]["zipcode"]
# we're now calling something in the 'hashed' data for this array index
