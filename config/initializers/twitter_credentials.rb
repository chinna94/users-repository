require 'twitter'

module MyTwitterModule

  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "v8gVbMe6vQRaqhR3pp7NAC3Hu"
    config.consumer_secret     = "PajgzuySLYRmTjTHBII3NkoCLeKcYeMiFuNN9rKw80RoUwLTKg"
    config.access_token        = "2742505915-pa5qcpgna0T2s9dlvH6oY0kftxcpYbqSqs84VUa"
    config.access_token_secret = "9IhvXk8UejEA2t8MV9qSMlKL1rbYA8D1P1SqCDF58LRNb"

  end
end

