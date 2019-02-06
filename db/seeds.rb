# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Trip.delete_all
Suitcase.delete_all
Belonging.delete_all

u1= User.create(name: "Germain Arturo", username: "Arthur", email: "arturo@gamil.com", password_digest: "123")

t1=Trip.create(name: "Leaving for College", date: Date.new(2010, 3, 12), user: u1)
t2=Trip.create(name: "Easter in Venezuela", date: Date.new(2019, 4, 17), user: u1)

# Trip 1
s1=Suitcase.create(name: "Clothes", category: "important", trip: t1)
s2=Suitcase.create(name: "Shoes", category: "gifts", trip: t1)
s3=Suitcase.create(name: "Jackets", category: "winter", trip: t1)

# Trip 2
s4=Suitcase.create(name: "Work documents", category: "important", trip: t2)
s5=Suitcase.create(name: "Makeup", category: "vanity", trip: t2)

# First Trip First Suitcase
b1=Belonging.create(name: "T-shirt", image: "https://www.bing.com/th?id=OIP.RgsfBeaPgiK0appmcl2AswHaHU&pid=Api&w=990&h=979&rs=1&p=0", suitcase: s1)
b2=Belonging.create(name: "Pants", image: "https://i.ebayimg.com/images/g/-U4AAOSwd4tT0kSw/s-l1600.jpg", suitcase: s1)

# First Trip Second Suitcase
b3=Belonging.create(name: "Summer shoes", image: "https://tse4.mm.bing.net/th?id=OIP.1bM61e1a4iU8L2r6c65ttQHaHa&pid=Api&w=1000&h=1000&rs=1&p=0", suitcase: s2)
b4=Belonging.create(name: "Winter boots", image: "http://images.wisegeek.com/black-slip-on-snow-boots.jpg", suitcase: s2)

# First Trip Third Suitcase
b5=Belonging.create(name: "Summer sweater", image: "https://www.bing.com/th?id=OIP.au1bLSNkct59IOH-sG-AswHaHa&pid=Api&w=1800&h=1800&rs=1&p=0", suitcase: s3)
b6=Belonging.create(name: "Winter coats", image: "http://cdn.torontolife.com/wp-content/uploads/2015/11/winter-coats-05.jpg", suitcase: s3)

# Second Trip First Suitcase
b7=Belonging.create(name: "Short", image: "https://tse1.mm.bing.net/th?id=OIP.Kbix0RfZ_UB670Pus-3yeAHaHa&pid=Api", suitcase: s4)
b8=Belonging.create(name: "T-shirts", image: "https://tse2.mm.bing.net/th?id=OIP.JzAj65ATDc2y08Taa-KJPAHaGW&pid=Api&w=1400&h=1200&rs=1&p=0", suitcase_id: s4)

# Second Trip Second Suitcase
b9=Belonging.create(name: "Snicker shoes", image: "http://g02.a.alicdn.com/kf/HTB14o9pJVXXXXaxXFXXq6xXFXXXg/2015-newest-lace-up-snickers-men-shoes-for-winter-autumn-casual-fashion-shoes-euro-size-39.jpg", suitcase: s5)
b10=Belonging.create(name: "Flip flop", image: "https://tse3.mm.bing.net/th?id=OIP.tpp59v4fkgXwUHoOzJzVmgHaHa&pid=Api&w=900&h=900&rs=1&p=0", suitcase: s5)
