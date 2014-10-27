require 'json'
require 'curb'

data = {"user_email" => "ccfiel@surebooked.com", "user_token" => "BUuqDCDPyUoGSvtCoFzX", "mobile_number" => "+639177048787", "message" => "test", "pay" => true};                                                                    

http = Curl::Easy.http_post("http://staging.smsblastr.com/api/v1/send_number", data.to_json ) do |curl|
  curl.headers['Accept'] = 'application/json'
  curl.headers['Content-Type'] = 'application/json'
  curl.headers['Api-Version'] = '2.2'
end
result =  JSON.parse(http.body_str)
puts result;

