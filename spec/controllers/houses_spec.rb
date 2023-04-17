require 'rails_helper'

RSpec.describe HousesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

    it "returns all the houses in the database" do
      house1 = House.create(name: "House 1", price: 1000, location: "City A")
      house2 = House.create(name: "House 2", price: 2000, location: "City B")

      get :index
      expect(assigns(:houses)).to match_array([house1, house2])
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      house = House.create(name: "House 1", price: 1000, location: "City A")
      get :show, params: { id: house.id }
      expect(response).to be_successful
    end

    it "returns the correct house" do
      house1 = House.create(name: "House 1", price: 1000, location: "City A")
      house2 = House.create(name: "House 2", price: 2000, location: "City B")

      get :show, params: { id: house2.id }
      expect(assigns(:house)).to eq(house2)
    end
  end

  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new house" do
        expect {
          post :create, params: { house: { name: "New House", price: 3000, location: "City C" } }
        }.to change(House, :count).by(1)
      end

      it "returns a success response" do
        post :create, params: { house: { name: "New House", price: 3000, location: "City C" } }
        expect(response).to be_successful
      end
    end

    context "with invalid parameters" do
      it "returns an unprocessable entity response" do
        post :create, params: { house: { name: "New House", price: nil, location: "City C" } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested house" do
      house = House.create(name: "House 1", price: 1000, location: "City A")
      expect {
        delete :destroy, params: { id: house.id }
      }.to change(House, :count).by(-1)
    end
  end
end
