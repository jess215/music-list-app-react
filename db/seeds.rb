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

### STRAY KIDS ###
# Bang Chan
thun.performers.create(name:'Bang Chan', age:24, 
    image:'https://lv2-cdn.azureedge.net/straykids/cedde9bc82824e03961b730d105d9ebb-[CLEAN]SKZ_RED_TEASER_BANGCHAN.jpg', 
    bio:'He is the leader, producer, songwriter, composer, lead vocalist, rapper and dancer of the group.')

# Felix
thun.performers.create(name:'Felix', age:21, 
    image:'https://lv2-cdn.azureedge.net/straykids/74018b83700e4781a583e896b6bcdd31-[CLEAN]SKZ_RED_TEASER_FELIX.jpg', 
    bio:'He is the lead dancer, lead rapper and sub-vocalist of the South Korean boy group.')

# Hyunjin
thun.performers.create(name:'Hyunjin', age:22, 
    image:'https://lv2-cdn.azureedge.net/straykids/a8b21cb1fc81492bb784a00f4495bbbe-[CLEAN]SKZ_RED_TEASER_HYUNJIN.jpg', 
    bio:'He is the main dancer, lead rapper, sub-vocalist and the visual of the group.')

# Lee Know
thun.performers.create(name:'Lee Know', age:23, 
    image:'https://lv2-cdn.azureedge.net/straykids/137c8ceacf4f44e7b29fd355c4ab9e95-[CLEAN]SKZ_RED_TEASER_LEEKNOW.jpg', 
    bio:'He is the dance leader, main dancer, vocalist, rapper, and visual of the group.')

# I.N.
thun.performers.create(name:'I.N.', age:21, 
    image:'https://lv2-cdn.azureedge.net/straykids/5b53a040de7148a1b73884655628d3a2-[CLEAN]SKZ_RED_TEASER_I.N.jpg', 
    bio:'He is the vocalist and the maknae of the group.')

# Han
thun.performers.create(name:'Han', age:21, 
    image:'https://lv2-cdn.azureedge.net/straykids/23fa2d1fb9e54a4b9ada0418a2153291-[CLEAN]SKZ_RED_TEASER_HAN.jpg', 
    bio:'He is the main rapper, lead vocalist and producer of the group.')

# Changbin
thun.performers.create(name:'Changbin', age:22, 
    image:'https://lv2-cdn.azureedge.net/straykids/de3233090d8e4715be596af862caaf13-[CLEAN]SKZ_RED_TEASER_CHANGBIN.jpg', 
    bio:'He is the main rapper, sub-vocalist and producer of the group.')

# Seungmin
thun.performers.create(name:'Seungmin', age:21, 
    image:'https://lv2-cdn.azureedge.net/straykids/0cdd78f1762c4f54b4876add44b3db07-[CLEAN]SKZ_RED_TEASER_SEUNGMIN.jpg', 
    bio:'He is the main vocalist of the group.')

### BTS ###
# RM
mik.performers.create(name:'RM', age:27, 
    image:'https://www.allkpop.com/upload/2021/06/content/301114/1625066064-e5i4llbvuaayyi6.jpg', 
    bio:'He is the leader and a rapper.')

# V
mik.performers.create(name:'V', age:26, 
    image:'https://www.allkpop.com/upload/2021/06/content/301115/1625066129-e5i4iysviamluty.jpg', 
    bio:'He is a vocalist, a dancer and a visual.')

# Jungkook
mik.performers.create(name:'Jungkook', age:24, 
    image:'https://www.allkpop.com/upload/2021/06/content/301115/1625066137-e5i4iytucai4qtn.jpg', 
    bio:'He is a vocalist, the center, a dancer, a visual and the maknae.')

# Jimin
mik.performers.create(name:'Jimin', age:26, 
    image:'https://www.allkpop.com/upload/2021/06/content/301115/1625066121-e5i4lkluuaa5n74.jpg', 
    bio:'He is a vocalist and a dancer.')

# Suga
mik.performers.create(name:'Suga', age:29, 
    image:'https://www.allkpop.com/upload/2021/06/content/301114/1625066084-e5i4lk-uyae1gar.jpg', 
    bio:'He is a rapper and producer.')

# Jin
mik.performers.create(name:'Jin', age:29, 
    image:'https://www.allkpop.com/upload/2021/06/content/301114/1625066070-e5i4lj-vuamuj62.jpg', 
    bio:'He is a vocalist and a visual.')

# J-Hope
mik.performers.create(name:'J-Hope', age:28, 
    image:'https://www.allkpop.com/upload/2021/06/content/301115/1625066113-e5i4iysvuaczizk.jpg', 
    bio:'He is a rapper and a dancer.')

### NCT DREAM ###
# Mark
fut.performers.create(name:'Mark Lee', age:22, 
    image:'https://pbs.twimg.com/media/FNvPr7DaAAELTE6?format=jpg&name=medium', 
    bio:'Leader, Main Rapper, Main Dancer, Sub Vocalist, Face of the Group.')

# Jaemin
fut.performers.create(name:'Jaemin', age:21, 
    image:'https://pbs.twimg.com/media/FN0ZkRTVkAMADw7?format=jpg&name=medium', 
    bio:'Lead Dancer, Sub Rapper, Sub Vocalist, Visual.')

# Jisung
fut.performers.create(name:'Jisung', age:20, 
    image:'https://pbs.twimg.com/media/FN0aRJOVUAAyCDb?format=jpg&name=medium', 
    bio:'Main Dancer, Sub Vocalist, Sub Rapper, Maknae.')

# Chenle
fut.performers.create(name:'Chenle', age:20, 
    image:'https://pbs.twimg.com/media/FN0Z2P5VUAIL_Uj?format=jpg&name=medium', 
    bio:'Main Vocalist.')

# Haechan
fut.performers.create(name:'Haechan', age:21, 
    image:'https://pbs.twimg.com/media/FN0ZSIJVUAIarb2?format=jpg&name=medium', 
    bio:'Main Vocalist.')

# Renjun
fut.performers.create(name:'Renjun', age:21, 
    image:'https://pbs.twimg.com/media/FNvQJixaMAQ7cxV?format=jpg&name=medium', 
    bio:'Main Vocalist, Lead Dancer.')

# Jeno
fut.performers.create(name:'Jeno', age:21, 
    image:'https://pbs.twimg.com/media/FNvQgvOaUAIItY8?format=jpg&name=medium', 
    bio:'Lead Dancer, Lead Rapper, Sub Vocalist, Visual.')

### SAINT MESA ###
lion.performers.create(name:'Saint Mesa', age:21, 
    image:'https://m.media-amazon.com/images/I/41G7JS15aCL.jpg', 
    bio:'Saint Mesa is the project of singer and songwriter Danny McCook. A native of Mission Viejo, California, McCook began writing songs during an illness in his teens that had him in and out of the hospital for two years.')

### NATHAN EVANS ###
well.performers.create(name:'Nathan Evans', age:27, 
    image:'https://www.scotsman.com/webimg/b25lY21zOjcwZjI2NjQ4LTQyZDYtNDdlMS05ZDkzLTQ4NDA1ODRiNDY1NTpjNGU3OTJkMy02ZDQ4LTQ2NTEtYjNhMi0yYTkyMTg3OGMxNTY=.jpg?width=2048&enable=upscale', 
    bio:'Nathan Evans is a Scottish singer from Airdrie, Scotland, known for singing sea shanties.')

### ONEWE ###
# Yonghoon
part.performers.create(name:'Yonghoon', age:27, 
    image:'https://pbs.twimg.com/media/FHXWwQ2aUAcC3dL?format=jpg&name=4096x4096', 
    bio:'Leader, Main Vocalist, Guitar, Keyboard')

# Dongmyeong
part.performers.create(name:'Dongmyeong', age:22, 
    image:'https://pbs.twimg.com/media/FHYZ-zkaUAI5EAX?format=jpg&name=large', 
    bio:'Lead Vocalist, Keyboard, Visual')

# Kanghyun
part.performers.create(name:'Kanghyun', age:23, 
    image:'https://pbs.twimg.com/media/FHXWwQ2aAAUzhn1?format=jpg&name=4096x4096', 
    bio:'Guitar')

# CyA
part.performers.create(name:'CyA', age:22, 
    image:'https://pbs.twimg.com/media/FHYZ-zuaMAgjPVk?format=jpg&name=large', 
    bio:'Main Rapper, Bass Guitar, Synthesizer, Maknae')

# Harin
part.performers.create(name:'Harin', age:23, 
    image:'https://pbs.twimg.com/media/FHXWwQ1akAcxsr9?format=jpg&name=4096x4096', 
    bio:'Drummer')

### PENTAGON ###
# Hui
shine.performers.create(name:'Hui', age:28, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/hui-2-533x800.jpg', 
    bio:'Leader, Main Vocalist, Lead Dancer, Producer.')

# Hongseok
shine.performers.create(name:'Hongseok', age:27, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Hongseuk-533x800.jpg', 
    bio:'Lead Vocalist.')

# Yuto
shine.performers.create(name:'Yuto', age:24, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Yuto-2-533x800.jpg', 
    bio:'Lead Rapper, Lead Dancer, Sub Vocalist.')

# Wooseok
shine.performers.create(name:'Wooseok', age:24, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Wooseok-2-533x800.jpg', 
    bio:'Main Rapper, Sub Vocalist, Maknae.')

# Yanan
shine.performers.create(name:'Yanan', age:25, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Yanan-2-533x800.jpg', 
    bio:'Vocalist, Visual.')

# Kino
shine.performers.create(name:'Kino', age:24, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Kino-2-533x800.jpg', 
    bio:'Main Dancer, Vocalist, Sub Rapper, Face of the Group.')

# Jinho
shine.performers.create(name:'Jinho', age:29, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Jinho-2-533x800.jpg', 
    bio:'Main Vocalist.')

# Yeo One
shine.performers.create(name:'Yeo One', age:25, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Yeoone-533x800.jpg', 
    bio:'Lead Vocalist.')

# Shinwon
shine.performers.create(name:'Shinwon', age:26, 
    image:'https://kprofiles.com/wp-content/uploads/2016/12/Shinwon-2-533x800.jpg', 
    bio:'Vocalist.')

# E Dawn
shine.performers.create(name:'E Dawn', age:27, 
    image:'https://0.soompi.io/wp-content/uploads/2018/03/26082720/pentagon-edawn.jpg', 
    bio:'Former Main Dancer, Lead Rapper, Sub Vocalist.')

### KREWELLA
# Jahan
green.performers.create(name:'Jahan Yousaf', age:32, 
    image:'https://starsunfolded.com/wp-content/uploads/2016/12/Jahan-Yousaf.jpg', 
    bio:'One of the two female members of Krewella.')

# Yasmine
green.performers.create(name:'Yasmine Yousaf', age:30, 
    image:'http://starsunfolded.com/wp-content/uploads/2016/12/Yasmine-Yousaf-2.jpg', 
    bio:'One of the two female members of Krewella.')

### GLASS ANIMALS ###
# Dave
heat.performers.create(name:'Dave Bayley', age:32, 
    image:'https://pbs.twimg.com/profile_images/1251657274478788608/b75AlKK-_400x400.jpg', 
    bio:'Lead vocals, guitar, keyboards, drums, tambourine.')

# Joe
heat.performers.create(name:'Joe Seaward', age:33, 
    image:'https://ichef.bbci.co.uk/news/557/cpsprodpb/F937/production/_103399736_glass1.jpg', 
    bio:'Drums, percussion.')

# Edmund
heat.performers.create(name:'Edmund Irwin-Singer', age:33, 
    image:'https://static.wikia.nocookie.net/glassanimals/images/a/a3/Edmund_Irwin-Singer.png/revision/latest/scale-to-width-down/350?cb=20180509155619', 
    bio:'Bass guitar, keyboards, backing vocals.')

# Drew
heat.performers.create(name:'Drew MacFarlane', age:33, 
    image:'https://www.coupdemainmagazine.com/sites/default/files/styles/hero_image/public/article/13975/hero-13975-1460614497.jpg?itok=6DJYXFwR', 
    bio:'Guitar, keyboards, backing vocals.')

### HALSEY ###
cas.performers.create(name:'Halsey', age:27, 
    image:'https://www.billboard.com/wp-content/uploads/media/halsey-bb25-2015-billboar-d650.jpg', 
    bio:'Halsey released her debut studio album, Badlands, in 2015.')