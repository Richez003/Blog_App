require 'rails_helper'

RSpec.describe 'Posts', type: :request do
        context 'GET #index' do
        before(:each) { get '/users/1/posts' } # get(:index)
        it 'it renders succesfully' do
          expect(response).to have_http_status(:ok)
        end

        it "it shows the 'index' template correctly" do
            expect(response).to render_template('index')
          end

          it 'it shows "Here is a list of posts for a given user" correctly' do
            expect(response.body).to include('Here is a list of posts for a given user')
          end
    end

    context  'GET #show' do
        before(:each) { get '/users/1/posts/1' } # gets(:show, params: { id: 2 })
        it 'it renders succesfully' do
          expect(response).to have_http_status(:ok)
        end

        it "it renders 'show' template" do
            expect(response).to render_template('show')
          end
          it 'it shows "Below is the details of a post: Comments and Likes" correctly' do
            expect(response.body).to include('Below is the details of a post: Comments and Likes')
          end
        end
   end
