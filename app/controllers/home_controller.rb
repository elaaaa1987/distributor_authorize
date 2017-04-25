class HomeController < ApplicationController
  
  def index
	@master_cities_data = master_cities_data
	@country_list = @master_cities_data.group_by {|v| v["country_name"]}
  end

  def get_state_list
	@country_state_list = master_cities_data.find_all {|v| v["country_name"] == params["country_name"]}.collect {|c| c["province_name"]}.uniq.sort
    @form_id = params[:form_id]
    respond_to do |format|
	 unless @country_state_list.nil?
	   format.js
	 end
	end
  end

  def get_city_list
	@country_state_city_list = master_cities_data.find_all {|obj| obj["country_name"] == params["country_name"] && obj["province_name"] == params["province_name"]}.collect {|c| c["city_name"]}.uniq.sort 
    @form_id = params[:form_id]
    respond_to do |format|
	 unless @country_state_city_list.nil?
	   format.js 
	 end
	end
  end
end
