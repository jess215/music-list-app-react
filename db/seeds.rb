# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# SEED FILE IN ONE LINE
# Song.create([{title: 'Thunderous', artist: 'Stray Kids', album: 'https://upload.wikimedia.org/wikipedia/en/5/59/Stray_Kids_-_Noeasy_%28Digital%29.jpeg'}, {title: 'Mikrokosmos', artist: 'BTS', album: 'https://m.media-amazon.com/images/I/51wUYZ1HYmL._SL1200_.jpg'}, {title: 'Hello Future', artist: 'NCT DREAM', album: 'https://i.scdn.co/image/ab67616d0000b273e6d118f2ad157bf0bbfb83cf'}, {title: 'Lion', artist: 'Saint Mesa', album: 'https://m.media-amazon.com/images/I/81gn0vk-YKL._SS500_.jpg'}, {title: 'Wellerman', artist: 'Nathan Evans', album: 'https://i1.sndcdn.com/artworks-9mbzFxHNT4IEsl3D-aEyVbA-t500x500.jpg'}, {title: 'Parting', artist: 'ONEWE', album: 'https://m.media-amazon.com/images/I/91R1zG2dUDL._SS500_.jpg'}, {title: 'Shine', artist: 'PENTAGON', album: 'https://upload.wikimedia.org/wikipedia/en/e/ef/Pentagon_-_Positive_%28EP%29.jpg'}, {title: 'Greenlights', artist: 'Krewella', album: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Greenlights_%282021_song%29.jpg/220px-Greenlights_%282021_song%29.jpg'}, {title: 'Heat Waves', artist: 'Glass Animals', album: 'https://thecentraltrend.com/wp-content/uploads/2021/02/heatwaves-900x900.jpg'}, {title: 'Castle', artist: 'Halsey', album: 'https://upload.wikimedia.org/wikipedia/en/4/4c/Halsey_-_Badlands.png'}])

thun = Song.create(title: 'Thunderous', artist: 'Stray Kids', album: 'https://upload.wikimedia.org/wikipedia/en/5/59/Stray_Kids_-_Noeasy_%28Digital%29.jpeg')
mik = Song.create(title: 'Mikrokosmos', artist: 'BTS', album: 'https://m.media-amazon.com/images/I/51wUYZ1HYmL._SL1200_.jpg')
fut = Song.create(title: 'Hello Future', artist: 'NCT DREAM', album: 'https://i.scdn.co/image/ab67616d0000b273e6d118f2ad157bf0bbfb83cf')
lion = Song.create(title: 'Lion', artist: 'Saint Mesa', album: 'https://m.media-amazon.com/images/I/81gn0vk-YKL._SS500_.jpg')
well = Song.create(title: 'Wellerman', artist: 'Nathan Evans', album: 'https://i1.sndcdn.com/artworks-9mbzFxHNT4IEsl3D-aEyVbA-t500x500.jpg')
part = Song.create(title: 'Parting', artist: 'ONEWE', album: 'https://m.media-amazon.com/images/I/91R1zG2dUDL._SS500_.jpg')
shine = Song.create(title: 'Shine', artist: 'PENTAGON', album: 'https://upload.wikimedia.org/wikipedia/en/e/ef/Pentagon_-_Positive_%28EP%29.jpg')
green = Song.create(title: 'Greenlights', artist: 'Krewella', album: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Greenlights_%282021_song%29.jpg/220px-Greenlights_%282021_song%29.jpg')
heat = Song.create(title: 'Heat Waves', artist: 'Glass Animals', album: 'https://thecentraltrend.com/wp-content/uploads/2021/02/heatwaves-900x900.jpg')
cas = Song.create(title: 'Castle', artist: 'Halsey', album: 'https://upload.wikimedia.org/wikipedia/en/4/4c/Halsey_-_Badlands.png')

thun.performer.create(name:'Bang Chan')
thun.performer.create(name:'Felix')
thun.performer.create(name:'Hyunjin')
thun.performer.create(name:'Lee Know')
thun.performer.create(name:'I.N.')
thun.performer.create(name:'Han')
thun.performer.create(name:'Changbin')
thun.performer.create(name:'Seungmin')

mik.performer.create(name:'RM')
mik.performer.create(name:'V')
mik.performer.create(name:'Jungkook')
mik.performer.create(name:'Jimin')
mik.performer.create(name:'Suga')
mik.performer.create(name:'Jin')
mik.performer.create(name:'J-Hope')

fut.performer.create(name:'Jaemin')
fut.performer.create(name:'Jisung')
fut.performer.create(name:'Mark Lee')
fut.performer.create(name:'Chenle')
fut.performer.create(name:'Haechan')
fut.performer.create(name:'Renjun')
fut.performer.create(name:'Jeno')

lion.performer.create(name:'Saint Mesa')

part.performer.create(name:'Yonghoon')
part.performer.create(name:'Dongmyeong')
part.performer.create(name:'Kanghyun')
part.performer.create(name:'Cya')
part.performer.create(name:'Harin')

shine.performer.create(name:'E Dawn')
shine.performer.create(name:'Yang Hong-seok')
shine.performer.create(name:'Adachi Yuto')
shine.performer.create(name:'Wooseok')
shine.performer.create(name:'Yan An')
shine.performer.create(name:'Kino')
shine.performer.create(name:'Hul')
shine.performer.create(name:'Jinho')
shine.performer.create(name:'Yeo One')
shine.performer.create(name:'Shinwon')

green.performer.create(name:'Krewella')

heat.performer.create(name:'Dave Bayley')
heat.performer.create(name:'Joe Seaward')
heat.performer.create(name:'Edmund Irwin-Singer')
heat.performer.create(name:'Drew MacFarlane')

cas.performer.create(name:'Halsey')