# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# WatchList.destroy_all
# Stock.destroy_all
User.destroy_all

u1 = User.create(name: 'Jasper', username: 'jwreed', password: 'zKRy', bio: 'hello', image: 'yup.jpg')
u2 = User.create(name: 'Jackson', username: 'noskcaj', password: 'yRKz', bio: 'hello', image: 'yup.jpg')
u3 = User.create(name: 'Jimmy', username: 'ymmij', password: 'kRYz', bio: 'hello', image: 'yup.jpg')
u4 = User.create(name: 'Josh', username: 'hsoj', password: 'rYZk', bio: 'hello', image: 'yup.jpg')
u5 = User.create(name: 'Jake', username: 'ekaj', password: 'yZKr', bio: 'hello', image: 'yup.jpg')

# s1 = Stock.create(value: 123.45, company: 'apple', industry: 'tech', description: 'good')
# s2 = Stock.create(value: 23.45, company: 'microsoft', industry: 'tech', description: 'dfes')
# s3 = Stock.create(value: 13.45, company: 'tesla', industry: 'tech', description: 'gdf')
# s4 = Stock.create(value: 3.45, company: 'pear', industry: 'tech', description: 'eee')
# s5 = Stock.create(value: 1.45, company: 'lg', industry: 'tech', description: 'hrews')

# wl1 = WatchList.create(title: 'Have', condition: true, user_id: User.first.id, stock_id: Stock.first.id)
# wl2 = WatchList.create(title: 'Want', condition: false, user_id: User.second.id, stock_id: Stock.second.id)