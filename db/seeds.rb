puts 'Create Users'

Journal.destroy_all
Location.destroy_all
User.destroy_all


u1 = User.create(
    name: "Glimmer",
    username:"Glimmer1",
    email:"glimmer@lovetravel.com",
    password:"glimmer1",
)
u2 = User.create(
    name:"Bow",
    username:"Bow1",
    email:"bow@lovetravel.com",
    password:"bow1",
)
u3 = User.create(
    name:"Adora",
    username:"Adora1",
    email:"adora@lovetravel.com",
    password:"adora1",
)
u4 = User.create(
    name:"Catra",
    username:"Catra1",
    email:"catra@lovetravel.com",
    password:"catra1",
)
u5 = User.create(
    name:"Horde",
    username:"Horde1",
    email:"horde@lovetravel.com",
    password:"horde1",
)

puts "Start States"

l1=Location.create( statename:"Alabama", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-6zEKemPrDRZGyV1i0GvLcB-E7VfCUqFs5Q&usqp=CAU")
l2=Location.create( statename:"Alaska", image: "https://www.travelalaska.com/sites/default/files/2022-02/Aurora-AtigunPass-GettyImages-567448619.jpg")
l3=Location.create( statename:"Arizona", image: "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/F_WYSS_1-2.jpg?crop=0%2C234%2C4000%2C2200&wid=4000&hei=2200&scl=1.0")
l4=Location.create( statename:"Arkansas", image: "https://e6tnk9va8hh.exactdn.com/wp-content/uploads/2022/06/Arkansass-Mountain-Ranges.jpg?strip=all&lossy=1&ssl=1")
l5=Location.create( statename:"California", image: "https://cdn.cnn.com/cnnnext/dam/assets/170606120957-california---travel-destination---shutterstock-220315747.jpg")
l6=Location.create( statename:"Colorado", image: "https://www.state.gov/wp-content/uploads/2022/01/shutterstock_545718292-scaled.jpg")
l7=Location.create( statename:"Florida", image: "https://www.history.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkzMTcwMzU4OTEwNTkyNjcx/gettyimages-643977867.jpg")
l8=Location.create( statename:"Georgia", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Q5dEKknIYrywiqk_o7z1qD5VTl0e6Wcqgg&usqp=CAU")
l9=Location.create( statename:"Hawaii", image: "https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkzMjg1MzA1OTI1NjQyMTQ3/gettyimages-1352563243.jpg")
l10=Location.create( statename:"Idaho", image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/8e/a2/c6/shoshone-falls-twin-falls.jpg?w=700&h=500&s=1")
l11=Location.create( statename:"Illinois", image: "https://cdn.britannica.com/40/94340-050-82047785/Chicago.jpg")
l12=Location.create( statename:"Indiana", image: "https://www.nationsonline.org/gallery/USA/Indiana-State-Capitol-Indianapolis.jpg")
l13=Location.create( statename:"Iowa", image: "https://upload.wikimedia.org/wikipedia/commons/f/f8/Iowa_City_Downtown_June_2021.jpg")
l14=Location.create( statename:"Kansas", image: "https://i.natgeofe.com/k/dc91d821-07b0-4e0b-953d-ac459f7a77ff/kansas-flint-hills.jpg?w=636&h=358")
l15=Location.create( statename:"Kentucky", image: "https://www.kentuckytourism.com/sites/default/files/2020-01/episodic_locardiepisode3_alternative_videothumbnail.jpg")
l16=Location.create( statename:"Louisiana", image: "https://www.planetware.com/photos-large/USLA/louisiana-new-orleans-french-quarter-street-view-day.jpg")
l17=Location.create( statename:"Maine", image: "https://a.cdn-hotels.com/gdcs/production28/d488/a26f9c8c-25e9-47ab-bdbb-e5ec78fd1634.jpg")
l18=Location.create( statename:"Maryland", image: "https://www.visittheusa.com/sites/default/files/styles/hero_l/public/images/hero_media_image/2018-12/94666d240389c46df88438e05cec5216.jpeg?h=a98222f4&itok=DL1kNVeR")
l19=Location.create( statename:"Massachusetts", image: "https://media.timeout.com/images/105239177/image.jpg")
l20=Location.create( statename:"Michigan", image: "https://www.usnews.com/object/image/0000017f-adf2-d582-af7f-eff38a550000/1-intro-stock-edited.jpg?update-time=1647890827289&size=responsive640")
l21=Location.create( statename:"Minnesota", image: "https://a.cdn-hotels.com/gdcs/production111/d252/c83f85c9-8606-47e4-8947-5d4399ae011a.jpg?impolicy=fcrop&w=800&h=533&q=medium")
l22=Location.create( statename:"Mississippi", image: "https://www.gannett-cdn.com/presto/2022/09/08/USAT/96046df6-3394-4bdb-b865-d0d4ee0218ee-CC_Viking_Mississippi_St_Louis_TALL_RND0.jpeg?crop=8752,4923,x171,y0&width=3200&height=1800&format=pjpg&auto=webp")
l23=Location.create( statename:"Missouri", image: "https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc5MDg1MzYyODQ5NTAz/gateway-arch.jpg")

Journal.create(date: "03/23/21", suggestions: "Visit the aquarium", descriptions: "This location has great food", visted: true,user_id: u1.id, location_id: l8.id)
Journal.create(date: "04/24/21", suggestions: "Grab some fresh lobster", descriptions: "I love lobster", visted: true,user_id: u1.id, location_id: l17.id )
Journal.create(date: "08/08/21", suggestions: "Grab fresh poke and visit beautiful beaches", descriptions: "Has the freshest poke", visted: true, user_id: u1.id, location_id: l9.id)
Journal.create(date: "10/03/21", suggestions: "The beignets are to die for ", descriptions: "The beignets are so light and fluffy", visted: true,user_id: u1.id, location_id: l16.id)
Journal.create(date: "12/12/21", suggestions: "Two words .. avocado toast", descriptions: "Yummy avocado toast", visted: true, user_id: u1.id, location_id: l5.id )

puts "Done seeding!"