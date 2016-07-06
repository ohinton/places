require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/confirmation") do
  list = params.fetch("place")
  place = Place.new(list)
  place.save()
  erb(:confirmation)
end
