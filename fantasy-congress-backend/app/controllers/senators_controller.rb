class SenatorsController < ApplicationController

# @resp = Faraday.get 'https://api.propublica.org/congress/v1/116/senate/members.json' do |req|
#     req.headers['X-API-Key'] = ENV['ProPublica_API_KEY']
#   end
#   senate_data = JSON.parse(@resp.body)
#   senators = senate_data["results"][0]["members"]

  def index
    render json: Senator.all
  end


  
end
