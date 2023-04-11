 user = User.create!(name: 'robert')
  house = House.create!(name: 'The Tides At Arverne By The Sea', image: 'https://photos.zillowstatic.com/fp/00ca20c0f040f67e66bfc6738275e5fa-cc_ft_1152.webp', price: '3100', location: '190 Beach 69th St, Arverne, NY 11692', description: 'A new architectural masterpiece now dazzles the shores of the Rockaways with the addition of THE TIDES at Arverne By The Sea. Spectacular beachfront, affordable & luxurious apartments, offering modern open living spaces and high-end finishes.

 Amenities will include a roof deck with pool and lounge, indoor and outdoor dining experiences, private parking available for a fee, bike storage and more.', bedroom_number: 3, user: user)
Reservation.create!(start_date: '2023/05/19', end_date: '2023/05/20', user: user, house: house)

user_three = User.create!(name: 'peter')
house_three = House.create!(name: 'The Tides At Arverne By The Sea', image: 'https://photos.zillowstatic.com/fp/00ca20c0f040f67e66bfc6738275e5fa-cc_ft_1152.webp', price: '3100', location: '190 Beach 69th St, Arverne, NY 11692', description: 'A new architectural masterpiece now dazzles the shores of the Rockaways with the addition of THE TIDES at Arverne By The Sea. Spectacular beachfront, affordable & luxurious apartments, offering modern open living spaces and high-end finishes.

Amenities will include a roof deck with pool and lounge, indoor and outdoor dining experiences, private parking available for a fee, bike storage and more.', bedroom_number: 3, user: user_three)
Reservation.create!(start_date: '2023/05/19', end_date: '2023/05/20', user: user_three, house: house_three)