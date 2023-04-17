require 'rails_helper'

RSpec.describe Reservation do
  it 'should be valid' do
    reservation = Reservation.create(start_date: 'Date.today',
                                     end_date: 'Date.tomorrow')
    expect(reservation). to_not be_valid
  end

  it 'should contain a start date' do
    user = User.create!(name: 'robert', email: '123@gmail.com', password: '123456')
    house = House.create!(name: 'The Tides At Arverne By The Sea', image: 'https://photos.zillowstatic.com/fp/00ca20c0f040f67e66bfc6738275e5fa-cc_ft_1152.webp', price: '3100', location: '190 Beach 69th St, Arverne, NY 11692', description: 'A new architectural masterpiece now dazzles the shores of the Rockaways with the addition of THE TIDES at Arverne By The Sea. Spectacular beachfront, affordable & luxurious apartments, offering modern open living spaces and high-end finishes.Amenities will include a roof deck with pool and lounge, indoor and outdoor dining experiences, private parking available for a fee, bike storage and more.', bedroom_number: 3, user_id: user.id)
    reservation = Reservation.create(start_date: '2023/05/19',
                                     end_date: '2023/05/20',
                                     user_id: user.id,
                                     house_id: house.id)
    expect(reservation.start_date.strftime("%a, %d %b %Y")).to eq('Fri, 19 May 2023')
  end

  it 'should contain an end date' do
    user = User.create!(name: 'robert', email: '123@gmail.com', password: '123456')
    house = House.create!(name: 'The Tides At Arverne By The Sea', image: 'https://photos.zillowstatic.com/fp/00ca20c0f040f67e66bfc6738275e5fa-cc_ft_1152.webp', price: '3100', location: '190 Beach 69th St, Arverne, NY 11692', description: 'A new architectural masterpiece now dazzles the shores of the Rockaways with the addition of THE TIDES at Arverne By The Sea. Spectacular beachfront, affordable & luxurious apartments, offering modern open living spaces and high-end finishes.Amenities will include a roof deck with pool and lounge, indoor and outdoor dining experiences, private parking available for a fee, bike storage and more.', bedroom_number: 3, user_id: user.id)
    reservation = Reservation.create(start_date: '2023/05/19',
                                     end_date: '2023/05/20',
                                     user_id: user.id,
                                     house_id: house.id)
    expect(reservation.end_date.strftime("%a, %d %b %Y")).to eq('Sat, 20 May 2023')
  end
end
