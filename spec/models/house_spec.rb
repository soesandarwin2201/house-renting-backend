require 'rails_helper'

RSpec.describe House do
  it 'should be valid' do
    house = House.create(name: '',
                         image: '',
                         price: '',
                         location: '',
                         description: '')
    expect(house).to_not be_valid
  end

  it 'should have a house name' do
    house = House.create(name: 'The Tides At Arverne By The Sea',
        image: 'https://photos.zillowstatic.com/fp/00ca20c0f040f67e66bfc6738275e5fa-cc_ft_1152.webp',
        price: '3100',
        location: '190 Beach 69th St, Arverne, NY 11692',
        description: 'A new architectural masterpiece now dazzles the shores of the Rockaways with the addition of THE TIDES at Arverne By The Sea. Spectacular beachfront, affordable & luxurious apartments, offering modern open living spaces and high-end finishes.')
      expect(house.name).to eql('The Tides At Arverne By The Sea')
    end

    it 'should have a location' do
      house = House.create(name: 'The Tides At Arverne By The Sea',
          image: 'https://photos.zillowstatic.com/fp/00ca20c0f040f67e66bfc6738275e5fa-cc_ft_1152.webp',
          price: '3100',
          location: '190 Beach 69th St, Arverne, NY 11692',
          description: 'A new architectural masterpiece now dazzles the shores of the Rockaways with the addition of THE TIDES at Arverne By The Sea. Spectacular beachfront, affordable & luxurious apartments, offering modern open living spaces and high-end finishes.')
        expect(house.location).to eql('190 Beach 69th St, Arverne, NY 11692')
      end
  end
