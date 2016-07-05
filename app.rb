require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:index)
end

get('/results') do
  side1 = params.fetch('side1')
  side2 = params.fetch('side2')
  side3 = params.fetch('side3')
  @triangle = Triangle.new(side1, side2, side3)
  erb(:results)
end
