admin = User.create(name: "admin", role: "admin", email: "admin2023@gmail.com", password: "soesandarwin19052001")

house1 = House.create!(
     name: "Avalon Dublin Station",
     image: "https://photos.zillowstatic.com/fp/427d925165aa3105ceb2fa8a08ab251f-cc_ft_1152.webp",
     price: 2240 ,
     location: "5200 Iron Horse Pkwy, Dublin, CA 94568",
     description: "Special offer! * Start your lease by 4/30 for half a month free! * Terms and conditions apply.
     * $250 security deposit when you apply by 4/16! * Terms and conditions apply.",
     bedroom_number: 2,
     user: admin
)

house2 = House.create!(
     name: "eaves Dublin",
     image: "https://photos.zillowstatic.com/fp/9e739f31f1199fe137556374508fe9c0-cc_ft_1152.webp",
     price: 2077 ,
     location: "7904 Fall Creek Rd, Dublin, CA 94568",
     description: "Special offer! * $250 deposit when you apply by 4/30! * Terms and conditions apply.
     * Start your lease by 4/30 for 1 month free! * Terms and conditions apply.",
     bedroom_number: 3,
     user: admin
)

house3 = House.create!(
     name: "Stoneridge",
     image: "https://photos.zillowstatic.com/fp/f02754346cf3a089eb67feb577cf3261-cc_ft_1152.webp",
     price: 2356 ,
     location: "6250 Stoneridge Mall Rd, Pleasanton, CA 94588",
     description: "Special offer! Up to 4 Weeks on Select Homes and $1,500 Look and Lease on All Available Homes!",
     bedroom_number: 3,
     user: admin
)

house4 = House.create!(
     name: "Crow Canyon",
     image: "https://photos.zillowstatic.com/fp/0e6c8a1c030f2d02337aaef799298fa7-cc_ft_1152.webp",
     price: 2299 ,
     location: "1700 Promontory Ln, San Ramon, CA 94583",
     description: "Special offer! Sign a new lease and get $500 off your rent this weekend only! Valid on select homes for new applicants with approved credit on 12+ month lease terms. Subject to availability and conditions apply. Expires 4/17/23.",
     bedroom_number: 3,
     user: admin
)

house5 = House.create!(
     name: "Single family Residence",
     image: "https://photos.zillowstatic.com/fp/e35ac2732d266f504b78b844f503426d-cc_ft_1152.webp",
     price: 5300 ,
     location: "6325 Murdock Way, San Ramon, CA 94582",
     description: "Great home in one of most desirable parts of Windemere San Ramon! Granite kitchen with GE appliances! Fully landscaped front and rear yards. Opposite to Ramona park and most highly sought after schools in east bay! 
     - Upgraded hardwood downstairs
     - SOLAR system installed from Sunpower
     - Tankless water heater",
     bedroom_number: 4,
     user: admin
)

house5 = House.create!(
     name: "Bridges at San Ramon",
     image: "https://photos.zillowstatic.com/fp/a66db299ade3b184ba2ac3ef7108deae-cc_ft_1152.webp",
     price: 3500 ,
     location: "309 Springfield Dr, San Ramon, CA 94583",
     description: "The Bridges at San Ramon offers its residents an enriched lifestyle: A selection of luxurious rental homes, impeccable service, appealing amenities and an outstanding location.",
     bedroom_number: 2,
     user: admin
)

house6 = House.create!(
     name: "Canyon Ridge at Napa Junction",
     image: "https://photos.zillowstatic.com/fp/d0a8c16f9ea712f3beb24f3157e3155a-cc_ft_1152.webp",
     price: 2800 ,
     location: "800 Reliant Way, American Canyon, CA 94503",
     description: "Indulge in comfort and style with Canyon Ridge in American Canyon. Located at the gateway to wine country, Canyon Ridge offers luxuriously appointed one and two bedroom apartment homes. Our premium location is located within walking distance of prime retail, you'll never want to leave home!",
     bedroom_number: 3,
     user: admin
)

house7 = House.create!(
     name: "family home",
     image: "https://photos.zillowstatic.com/fp/5e1b4016551b373a7e17d6a943647c0c-cc_ft_1152.webp",
     price: 2900 ,
     location: "139 Crestwood Ln, American Canyon, CA 94503",
     description: "Beautiful 3 bedroom, 2 bath ranch home in American Canyon.",
     bedroom_number: 3,
     user: admin
)

house8 = House.create!(
     name: "single family home",
     image: "https://photos.zillowstatic.com/fp/4aabaaa96c336de04ec74dd17d0c90d0-cc_ft_1152.webp",
     price: 3000 ,
     location: "180 Dartmouth Ave, Vallejo, CA 94589",
     description: "Welcome to your dream home at 180 Dartmouth Street! This beautiful single-family home boasts 4 bedrooms, 2 bathrooms, and an attached 2-car garage. Built in 1967, this home sits on a spacious lot size of 5662 sf. As you step through the front door, you'll immediately notice the Luxury",
     bedroom_number: 4,
     user: admin
)

house9 = House.create!(
     name: "House for rent",
     image: "https://photos.zillowstatic.com/fp/4ca19d9f3c7edc70369ccfe8a5f7e32e-cc_ft_1152.webp",
     price: 3000 ,
     location: "235 Emily St, Vallejo, CA 94589",
     description: "Take a look at this beautiful home featuring 4 bedrooms, 2.5 bathrooms, and approximately 2,410 square feet. Enjoy the freedom of a virtually maintenance free lifestyle while residing in a great community. This home is professionally managed and maintained by Tricon Residential. ",
     bedroom_number: 2,
     user: admin
)

house10 = House.create!(
     name: "House for rent",
     image: "https://photos.zillowstatic.com/fp/4ca19d9f3c7edc70369ccfe8a5f7e32e-cc_ft_1152.webp",
     price: 3790 ,
     location: "235 Emily St, Vallejo, CA 94589",
     description: "Take a look at this beautiful home featuring 4 bedrooms, 2.5 bathrooms, and approximately 2,410 square feet. Enjoy the freedom of a virtually maintenance free lifestyle while residing in a great community. This home is professionally managed and maintained by Tricon Residential. ",
     bedroom_number: 2,
     user: admin
)

house11 = House.create!(
     name: "Staten Island Urby",
     image: "https://photos.zillowstatic.com/fp/78c1a798994661258f2dcb0e7f6cb21e-cc_ft_1152.webp",
     price: 2870 ,
     location: "7 Navy Pier Ct, Staten Island, NY 10304",
     description: "Step off the ferry and into your new favorite neighborhood. Urby's location on the North Shore makes it the perfect place to put down roots and keeps you close to what matters. Spacious apartments overlooking a courtyard urban farm make for a new kind of city living, right on the waterfront.
     ",
     bedroom_number: 1,
     user: admin
)

house12 = House.create!(
     name: "Atlas New York",
     image: "https://photos.zillowstatic.com/fp/bfd154ead9a649582970cbd35a107f15-cc_ft_1152.webp",
     price: 2650 ,
     location: "66 W 38th St, Manhattan, NY 10018",
     description: "Atlas New York is in the Midtown South neighborhood in Manhattan, NY.",
     bedroom_number: 1,
     user: admin
)

house12 = House.create!(
     name: "The Chelsea",
     image: "https://photos.zillowstatic.com/fp/c279950e4482537bd44ef4f9f34deff6-cc_ft_1152.webp",
     price: 4978 ,
     location: "160 W 24th St, New York, NY 10011",
     description: "The Chelsea is a boutique-style residence offering condominium-quality apartments and hotel-inspired services and amenities in the heart of Chelsea. Enjoy premium amenities including terraces, a study lounge, a pet salon, and a state-of-the-art fitness center. All this while being just moments away from some of the best restaurants and cultural attractions the city has to offer.",
     bedroom_number: 2,
     user: admin
)

house13 = House.create!(
     name: "Avalon Clinton",
     image: "https://photos.zillowstatic.com/fp/a875d8136b9e924ec4eceecfee94ab58-cc_ft_1152.webp",
     price: 3136 ,
     location: "515 W 52nd St, New York, NY 10019",
     description: "Avalon Clinton, in the midst of Manhattan features studio, 1, and 2 bedroom New York City apartments. These pet friendly, green living apartments include spectacular views, spacious floorplans, washer and dryer (select apartments), granite countertops, wood flooring, and large closets. Avalon Clinton offers two fitness centers, WiFi in common areas, on-site laundry, and two rooftop sky decks with views of the Hudson River and Midtown Manhattan. Conveniently located in New York City, surrounded by world class shopping, restaurants, and nightlife.",
     bedroom_number: 2,
     user: admin
)

house14 = House.create!(
     name: "Sven LIC",
     image: "https://photos.zillowstatic.com/fp/6d8c867225296ddf734ce644bfc54896-cc_ft_1152.webp",
     price: 3256 ,
     location: "29-59 Northern Blvd, Long Island City, NY 11101",
     description: "Sven Leasing Center: 29-59 Northern Boulevard, Long Island City, Queens
     Leasing Hours: Mon-Sun 10:00AM-6:00PM
     Please call or email for an appointment or schedule a tour online.",
     bedroom_number: 1,
     user: admin
)

house15 = House.create!(
     name: "AVA High Line",
     image: "https://photos.zillowstatic.com/fp/593abecd0fac595b7d3709a8300f5127-cc_ft_1152.webp",
     price: 3470 ,
     location: "5 Lincoln Ave, Bronx, NY 11454",
     description: "AVA High Line, located in West Chelsea, steps from the High Line, features brand new studio, 1, and 2 bedroom Manhattan apartments.",
     bedroom_number: 2,
     user: admin
)

house16 = House.create!(
     name: "Lincoln at Bankside",
     image: "https://photos.zillowstatic.com/fp/c1c0c415d1a086fd697e9a1356d719c7-cc_ft_1152.webp",
     price: 3650 ,
     location: "5 Lincoln Ave, Bronx, NY 10454",
     description: "Sven Leasing Center: 29-59 Northern Boulevard, Long Island City, Queens
     Leasing Hours: Mon-Sun 10:00AM-6:00PM
     Please call or email for an appointment or schedule a tour online.",
     bedroom_number: 2,
     user: admin
)

house17 = House.create!(
     name: "The Aldyn",
     image: "https://photos.zillowstatic.com/fp/708eac06d634c96ea1d7f151fa1ac0c5-cc_ft_1152.webp",
     price: 4075,
     location: "60 Riverside Blvd, New York, NY 10069",
     description: "12 to 24 -month lease terms available. Rates will vary by the lease term. Best available rate is advertised.
     Pricing and availability change daily. Terms and conditions apply.",
     bedroom_number: 2,
     user: admin
)

house18 = House.create!(
     name: "Anagram Nomad",
     image: "https://photos.zillowstatic.com/fp/2296a4eb10ef325f4ba13e04d0e3afed-cc_ft_576.webp",
     price: 5065,
     location: "10 E 29th St, New York, NY 10016",
     description: "Neighborhood: Flatiron District",
     bedroom_number: 2,
     user: admin
)

house19 = House.create!(
     name: "La Vida Melrose",
     image: "https://photos.zillowstatic.com/fp/c5fc0192e6f1b39225be9dd1812d82fd-cc_ft_1152.webp",
     price: 3979 ,
     location: "4864 Melrose Ave, Los Angeles, CA 90029",
     description: "Near the Melrose Hill Historic District, Lemon Grove Recreation Center, Hollywood Studio district, Hollywood Forever Cemetery, and Melrose Avenue West shopping.",
     bedroom_number: 2,
     user: admin
)

house20 = House.create!(
     name: "The Melrose",
     image: "https://photos.zillowstatic.com/fp/fd50719da089da0c34b90c6a72359f91-cc_ft_1152.webp",
     price: 3200 ,
     location: "700 N Spaulding Ave, Los Angeles, CA 90046",
     description: "Special offer! Unit A4 Furnished: BRAND NEW 2021 CONSTRUCTION - MAY - 2022 MOVE IN SPECIAL UP TO 10 WEEKS FREE RENT
     BRAND NEW 2021 CONSTRUCTION - MAY - 2022 MOVE IN SPECIAL UP TO 10 WEEKS FREE RENT
     Unit A1: BRAND NEW 2021 CONSTRUCTION - MAY - 2022 MOVE IN SPECIAL UP TO 10 WEEKS FREE RENT",
     bedroom_number: 2,
     user: admin
)
