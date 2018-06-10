# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! :email => 'enriqueflorendo@yahoo.com', :password => 'password123', :password_confirmation => 'password123'

address_list = [
  ["Birmingham","Alabama","1430 Gadsden Hwy","Ste 116","Birmingham","AL","35235", "USA", "1"  ],
  ["Little Rock","Arkansas","6834 Cantrell Road","","Little Rock","AR","72207", "USA", "1"  ],
  ["Phoenix","Arizona","3104 E Camelback Rd","","Phoenix","AZ","85016", "USA", "1"  ],
  ["Scottsdale","Arizona","9393 N 90th Street","Suite #102","Scottsdale","AZ","85258", "USA", "1"  ],
  ["Tuscon","Arizona","1718 E Speedway Blvd","","Tuscon","AZ","85719", "USA", "1"  ],
  ["Los Angeles","California","3003 W. Olympic Blvd.","STE 106","Los Angeles","CA","90006", "USA", "1"  ],
  ["San Diego","California","2358 University Avenue","","San Diego","CA","92104", "USA", "1"  ],
  ["San Francisco","California","237 Kearny Street","","San Francisco","CA","94108", "USA", "1"  ],
  ["San Jose","California","2066 N. Capitol Ave","","San Jose","CA","95132", "USA", "1"  ],
  ["Denver","Colorado","1312 17th Street","","Denver","CO","80202", "USA", "1"  ],
  ["Avon","Connecticut","304 West Main St","","Avon","CT","06001", "USA", "1"  ],
  ["Washington","District of Columbia","712 H Street NE","","Washington","DC","20002", "USA", "1"  ],
  ["Wilmington","Delaware","3616 Kirkwood Highway","Suite A","Wilmington","DE","19808", "USA", "1"  ],
  ["Fort Lauderdale","Florida","2269 S University Drive","","Fort Lauderdale","FL","33324", "USA", "1"  ],
  ["Miami","Florida","13727 SW 152 Street","","Miami","FL","33177", "USA", "1"  ],
  ["West Palm Beach","Florida","7750 Okeechobee Boulevard","Suite #4","West Palm Beach","FL","33411", "USA", "1"  ],
  ["Atlanta","Georgia","400 West Peachtree Street NW","Suite #4","Atlanta","GA","30308", "USA", "1"  ],
  ["Chicago","Illinois","1440 W. Taylor St","","Chicago","IL","60607", "USA", "1"  ],
  ["Indianapolis","Indiana","5868 E. 71st Street","Suite E","Indianapolis","IN","46220", "USA", "1"  ],
  ["Overland Park","Kansas","12641 Antioch Road","","Overland Park","KS","66213", "USA", "1"  ],
  ["Louisville","Kentucky","10428 Bluegrass Parkway","","Louisville","KY","40299", "USA", "1"  ],
  ["New Orleans","Louisiana"," 3157 Gentilly Blvd","","New Orleans","LA","70122", "USA", "1"  ],
  ["Boston","Massachusetts","6 Liberty Square","","Boston","MA","02109", "USA", "1"  ],
  ["Baltimore","Maryland","822 Guilford Avenue","","Baltimore","MD","21202", "USA", "1"  ],
  ["Augusta","Maine","126 Western Avenue","","Augusta","ME","04330", "USA", "1"  ],
  ["Grand Rapids","Michigan","1971 E. Beltline NE","Suite 106","Grand Rapids","MI","49525", "USA", "1"  ],
  ["Minneapolis","Minnesota","701 Washington Ave N","Ste 111","Minneapolis","MN","55401", "USA", "1"  ],
  ["Saint Louis","Missouri","1200 Lake Saint Louis Blvd","","Lake Saint Louis","MO","63367", "USA", "1"  ],
  ["Billings","Montana","100 24th Street W","Suite 1","Billings","MT","59102", "USA", "1"  ],
  ["Charlotte","North Carolina","9805 Statesville Road","","Charlotte","NC","28269", "USA", "1"  ],
  ["Raleigh","North Carolina","3201 Edwards Mill Rd","Ste 141","Raleigh","NC","27612", "USA", "1"  ],
  ["Fargo","North Dakota","19 8th Street South","","Fargo","ND","58103", "USA", "1"  ],
  ["Omaha","Nebraska","3157 Farnam Street","Suite 7104","Omaha","NE ","68131", "USA", "1"  ],
  ["Bedford","New Hampshire","1 Hardy Road","","Bedford","NH","3110", "USA", "1"  ],
  ["Newark","New Jersey","146-B Ferry St","","Newark","NJ","07105", "USA", "1"  ],
  ["Santa Fe","New Mexico","1704 Llano St","Ste B","Santa Fe","NM","87505", "USA", "1"  ],
  ["Las Vegas","Nevada","8465 W Sahara Avenue","Suite 111","Las Vegas","NV","89117", "USA", "1"  ],
  ["Reno","Nevada","3495 Lakeside Drive","","Reno","NV","89509", "USA", "1"  ],
  ["New York City - Brooklyn","New York","223 Bedford Avenue","","New York City","NY","11211", "USA", "1"  ],
  ["New York City - Manhattan","New York","82 Nassau St","","New York City","NY","10038", "USA", "1"  ],
  ["Cincinnati","Ohio","6539 Harrison Avenue","","Cincinnati","OH","45247", "USA", "1"  ],
  ["Columbus","Ohio","1985 Henderson Rd.","","Columbus","OH","43220", "USA", "1"  ],
  ["Oklahoma City","Oklahoma","6608 N Western Avenue","","Oklahoma City","OK","73116", "USA", "1"  ],
  ["Portland","Oregon","3055 NW Yeon Ave","","Portland","OR","97210", "USA", "1"  ],
  ["Philadelphia","Pennsylvania","8001 Castor Avenue","","Philadelphia","PA","19152", "USA", "1"  ],
  ["Newport","Rhode Island","270 Bellevue Avenue","","Newport","RI","02840", "USA", "1"  ],
  ["Columbia","South Carolina","1304 Sunset Blvd","","West Columbia","SC","29169", "USA", "1"  ],
  ["Sioux Falls","South Dakota","401 E. 8th St Ste 214","","Sioux Falls","SD","57103", "USA", "1"  ],
  ["Memphis","Tennessee","1910 Madison Avenue","","Memphis","TN","38104", "USA", "1"  ],
  ["Nashville","Tennessee","6339 Charlotte Pike","","Nashville","TN","37209", "USA", "1"  ],
  ["Austin","Texas","13359 North Highway 183","Suite 406","Austin","TX","78750", "USA", "1"  ],
  ["Dallas","Texas","12895 Josey Lane","Suite #124","Dallas","TX","75234", "USA", "1"  ],
  ["Houston","Texas","5300 N Braeswood Blvd STE 4","","Houston","TX","77096", "USA", "1"  ],
  ["San Antonio","Texas","13423 Blanco Road","","San Antonio","TX","78216", "USA", "1"  ],
  ["Salt Lake City","Utah","3556 S 5600 W","","Salt Lake City","UT","84120", "USA", "1"  ],
  ["Alexandria","Virginia","1602 Belle View Blvd","","Alexandria","VA","22307", "USA", "1"  ],
  ["Seattle","Washington","12345 Lake City Way NE","","Seattle","WA","98125", "USA", "1"  ],
  ["Milwaukee","Wisconsin","333 West Brown Deer Road","G","Milwaukee","WI","53217", "USA", "1"  ],
  ["Hurricane","West Virginia","117 State Route 34","","Hurricane","WV","25526", "USA", "1"  ],
  ["Cheyenne","Wyoming","2232 Dell Range Blvd.","Suite 245","Cheyenne","WY","82009", "USA", "1"  ]
]

address_list.each do |display_city, display_state, street, street_2, city, state, zip, country, status|
  Address.create( display_city: display_city, display_state: display_state, street: street, street_2: street_2, city: city, state: state, zip: zip, country: country, status: status)
end