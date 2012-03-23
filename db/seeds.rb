# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all

Post.create(:title => "Hello World", 
           :content => 
           %{
            Hello, I am newbie for Rails, so I am work hard now, hope I can reach the target I planed in my mind. Thx!
           })

Post.create(:title => "Good Day", 
           :content => 
           %{
             You Know I want to learn rails, so I buy some rails books. Emmm.., 
             I found these books are soso...
           })
