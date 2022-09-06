require 'rails_helper'

RSpec.describe 'Users', type: :request do
        context 'GET #index' do
        before(:each) { get 'users_path(1)' } # get(:index)
        it 'it renders succesfully' do
          expect(response).to have_http_status(:ok)
        end
    end