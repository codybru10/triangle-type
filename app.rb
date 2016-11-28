require('sinatra')
require('sinatra/reloader')
require('./lib/largest_prime')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/number-input-form') do
  @number_input = (params.fetch('first_num')).to_i
  @number2_input = (params.fetch('second_num')).to_i
  @prime_output = (@number_input).find_primes(@number2_input)
  erb(:prime_output)
end
