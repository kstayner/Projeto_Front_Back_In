Then('will be returned status code {string}') do |status_code|
  expect(@response_body.code.to_s).to eq status_code
end

Then('I show the title of all the movies') do
  @response_body['results'].each_with_index do |item, _index|
    puts "Title:#{item['title']}"
  end
end

Then('will be returned status code error {string}') do |status_code|
  expect(@response.code.to_s).to eq status_code
end

Then('will be returned message {string}') do |message|
  expect(@response['detail']).to eq(message)
end

Then('show all films from George Lucas and Rick McCallum') do
  @response_body['results'].each_with_index { |item, _index| puts "Title:#{item['title']}" if (item['director']).to_s == 'George Lucas' || (item['producer']).to_s == 'Rick McCallum' }
end
