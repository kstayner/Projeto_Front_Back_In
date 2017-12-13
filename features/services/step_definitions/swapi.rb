Given('I send the GET verb in the endpoint films') do
  @response_body = ApiSwapi.new.search_films
end

Given('I send the GET verb in the endpoint planets') do
  @response_body = ApiSwapi.new.search_planets
end

When('I store the count in a variable and a new GET using the variable') do
  @cont = @response_body['count']
  @randon = Faker::Number.between(1, 10)
  @num = (@cont + @randon)
  @response = HTTParty.get("http://swapi.co/api/planets/#{@num}")
end
