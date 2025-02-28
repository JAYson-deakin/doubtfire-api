require 'grape'

module Api
  class ActivityTypesPublicApi < Grape::API

    desc "Get an activity type details"
    get '/activity_types/:id' do
      present ActivityType.find(params[:id]), with: Api::Entities::ActivityTypeEntity
    end

    desc 'Get all the activity types'
    get '/activity_types' do
      present ActivityType.all, with: Api::Entities::ActivityTypeEntity
    end
  end
end
