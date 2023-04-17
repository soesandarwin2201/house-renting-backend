require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'GET /users/:id' do
    let!(:user) { create(:user) }
    let!(:token) { JsonWebToken.encode(user_id: user.id) }
    let(:headers) { { 'Authorization' => "Bearer #{token}" } }

    context 'when requesting a user with a valid id' do
      before { get "/users/#{user.id}", headers: }

      it 'returns status 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when not providing a valid token' do
      before { get "/users/#{user.id}" }

      it 'returns status 401' do
        expect(response).to have_http_status(401)
      end
    end
  end

  describe 'POST /users' do
    let(:valid_params) do
      {
        user: {
          name: 'John Doe',
          email: 'john.doe@example.com',
          password: 'password'
        }
      }
    end

    context 'when creating a user with valid parameters' do
      before { post '/users', params: valid_params }

      it 'returns status 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when creating a user with invalid parameters' do
      before { post '/users', params: { user: { name: '', email: 'invalid', password: '' } } }

      it 'returns status 422' do
        expect(response).to have_http_status(422)
      end
    end
  end
end
