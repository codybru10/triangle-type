require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/side-input-form') do
  side1 = (params.fetch("side-one")).to_i
  side2 = (params.fetch("side-two")).to_i
  side3 = (params.fetch("side-three")).to_i

  @triangle = Triangle.new(side1, side2, side3).type?()

  erb(:triangle_output)
end
