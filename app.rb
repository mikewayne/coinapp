require('sinatra')
require('sinatra/reloader')
require('./lib/coinapp')
also_reload('lib/**/*.rb')

get('/') do
  #@quarters = " quarters,"
  #@dimes = " dimes,"
  #@nickels = " nickels,"
  #@pennies = " pennies"
  erb(:index)
end

get('/title') do
  @numCents = params.fetch('numCents').to_i
  #@numCents = params.fetch.coinapp()
  #@quarters = params.fetch('numQuarters').to_i
  #@dimes = params.fetch('numDimes').to_i
  #@nickels = params.('numNickels').to_i
  #@pennies = params.extract!('numPennies').to_i
  @numCents = @numCents.coinapp()
  erb(:title)
end






#coin_types = ["quarters," " dimes," " nickels," " pennies"]
#coin_value
