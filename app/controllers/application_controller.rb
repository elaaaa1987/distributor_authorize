class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def master_cities_data
 json_data = File.read('config/cities.json')
 data_hash = JSON.parse(json_data)
end
#data_hash.group_by {|i| [i["country_code"]]}
#data_hash.select {|x| x["country_code"] == "US" && x["province_code"] == "NY"}
#country_data = data_hash.map {|c| [c["country_code"], c["country_name"]]}
#p country_data.uniq


end
