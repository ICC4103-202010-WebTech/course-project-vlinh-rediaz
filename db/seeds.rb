# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mailbox1 = MailBox.create(emitter: 1, receiver: 2, message: "What is your deepest desire?")
mailbox2 = MailBox.create(emitter: 2, receiver: 1, message: "Understanding other people. What,would you say, is your strongest quality?")1
mailbox3 = MailBox.create(emitter: 1, receiver: 2, message: "My life is a crazy explosion of shapes and colors. Creativity. What about you?")
mailbox4 = MailBox.create(emitter: 2, receiver: 1, message: "I know what I want. Confidence.")
mailbox5 = MailBox.create(emitter: 3, receiver: 4, message: "What role do you play in your friendships?")
mailbox6 = MailBox.create(emitter: 4, receiver: 3, message: "I like to make my friends laugh. What about you?")
mailbox7 = MailBox.create(emitter: 3, receiver: 4, message: "They always come to me for advice. How often do you work out?")
mailbox8 = MailBox.create(emitter: 4, receiver: 3, message: "The people at the gym know my name. Fitness is life!")
mailbox9 = MailBox.create(emitter: 5, receiver: 6, message: "If you were an animal, what would you be?")
mailbox10 = MailBox.create(emitter: 6, receiver: 5, message: "A Lion. I consider my self 'The King' among others. What about you?")
mailbox11 = MailBox.create(emitter: 5, receiver: 6, message: "Probably a sloth haha. What role do you play in your friendships?")
mailbox12 = MailBox.create(emitter: 6, receiver: 5, message: "As I mention before, as a King, I offer support where I can.")
mailbox13 = MailBox.create(emitter: 7, receiver: 8, message: "What do you dream about when you sleep?")
mailbox14 = MailBox.create(emitter: 8, receiver: 7, message: "Fighting or running away from war. What about you?")
mailbox15 = MailBox.create(emitter: 7, receiver: 8, message: "I often dream of animals. Do you have a bucket list?")
mailbox16 = MailBox.create(emitter: 8, receiver: 7, message: "Yes. I am halfway through it already!")
mailbox17 = MailBox.create(emitter: 9, receiver: 10, message: "What do you currently do in life?")
mailbox18 = MailBox.create(emitter: 10, receiver: 9, message: "Full time student and rockin' it! What about you?")
mailbox19 = MailBox.create(emitter: 9, receiver: 10, message: "I am a traveler. What bad decision did you make that actually turned out to be a good decision?")
mailbox20 = MailBox.create(emitter: 10, receiver: 9, message: "Once I decline a job offer, later that company broke.")
mailbox21 = MailBox.create(emitter: 11, receiver: 12, message: "What's something that when you were learning it, you thought you'd never use it, but in reality, you ended up using it a lot?")
mailbox22 = MailBox.create(emitter: 12, receiver: 11, message: "How to cook haha. What about you?")
mailbox23 = MailBox.create(emitter: 11, receiver: 12, message: "How to calculate an Integral hahaha. Where's the next place you want to visit?")
mailbox24 = MailBox.create(emitter: 12, receiver: 11, message: "Good question. The CARIBE !!!")
mailbox1.save!
mailbox2.save!
mailbox3.save!
mailbox4.save!
mailbox5.save!
mailbox6.save!
mailbox7.save!
mailbox8.save!
mailbox9.save!
mailbox10.save!
mailbox11.save!
mailbox12.save!
mailbox13.save!
mailbox14.save!
mailbox15.save!
mailbox16.save!
mailbox17.save!
mailbox18.save!
mailbox19.save!
mailbox20.save!
mailbox21.save!
mailbox22.save!
mailbox23.save!
mailbox24.save!


user1 = User.create(username: "rai", password: "rai123", full_name: "Raimundo Diaz", email: "rai@gmail.com", age: 25, admin: false)
user2 = User.create(username: "lihn", password: "lihn123", full_name: "Vicente Lihn", email: "lihn@gmail.com", age: 21, admin: false)
user3 = User.create(username: "pepe", password: "peps123", full_name: "Pedro Picapiedra", email: "peps@gmail.com", age: 15, admin: false)
user4 = User.create(username: "pancho", password: "pacman", full_name: "Francisco Saavedra", email: "pacman@gmail.com", age: 30, admin: false)
user5 = User.create(username: "speedy", password: "gonzalez", full_name: "Luis Gonzalez", email: "luisg@gmail.com", age: 24, admin: false)
user6 = User.create(username: "antonio", password: "torres", full_name: "Antonio Torres", email: "atorres@gmail.com", age: 25, admin: false)
user7 = User.create(username: "bruno", password: "coquimbo", full_name: "Bruno Coquimbo", email: "brunoc@gmail.com", age: 26, admin: false)
user8 = User.create(username: "claudio", password: "diaz", full_name: "Claudio Diaz", email: "cdiaz@gmail.com", age: 27, admin: false)
user9 = User.create(username: "diego", password: "errores", full_name: "Diego Errores", email: "derrores@gmail.com", age: 28, admin: false)
user10 = User.create(username: "fernanda", password: "silva", full_name: "Fernanda Silva", email: "fsilva@gmail.com", age: 29, admin: false)
user11 = User.create(username: "calvarez", password: "123456", full_name: "Claudio Alvarez", email: "admin@admin.com", age: 0, admin: true)
user12 = User.create(username: "fdco_schez", password: "123456", full_name: "Federico Sanchez", email: "fde@sanchez.com", age: 68, admin: flase)

organization1 = Organization.create(name: "UANDES", description: "Universidad de los Andes", user_id: 1)
organization2 = Organization.create(name: "WebTech", description: "Curso ICC 2020", user_id: 2)
organization3 = Organization.create(name: "ANFP", description: "Asociacion Nacional de Futbol Profesional", user_id: 3)
organization4 = Organization.create(name: "Marketing", description: "Company to promote the buying or selling of a product or service", user_id: 4)
organization5 = Organization.create(name: "Kino", description: "Empresa chilena dedicada a los juegos de azar", user_id: 5)
organization6 = Organization.create(name: "UFC", description: "Ultimate Fighting Championship", user_id: 6)

event1 = Event.create(name: "BBQ", description: "BBQ after quarantine", location: "camino la villa", creation_date: 2020 - 5 - 10, starting_event_date: 2020 - 11 - 11, event_privacy: 1, user_id: user1.id)
event2 = Event.create(name: "party", description: "gotta get crazy after quarantine", location: "everywhere", creation_date: 2020 - 4 - 9, starting_event_date: 2020 - 8 - 8, event_privacy: 0, user_id: user2.id)
event3 = Event.create(name: "piano concert", description: "for the man of culture", location: "sydney opera house", creation_date: 2020 - 1 - 1, starting_event_date: 2021 - 3 - 12, event_privacy: 0, user_id: user3.id)
event4 = Event.create(name: "ultra miami", description: "Ultra Music Festival is an annual outdoor electronic music festival that takes place during march in Miami,Florida, USA.", location: "Miami beach", creation_date: 2020 - 05 - 11, starting_event_date: 2021 - 03 - 03, event_privacy: 0, user_id: user4.id)
event5 = Event.create(name: "lolapalusa", description: "brigido", location: "chile", creation_date: 2020 - 12 - 1, starting_event_date: 2021 - 11 - 11, event_privacy: 1, user_id: user1.id)
event6 = Event.create(name: "UFC 251", description: "próximo evento de artes marciales mixtas", location: "usa", creation_date: 2020 - 4 - 12, starting_event_date: 2021 - 6 - 6, event_privacy: 0, user_id: user5.id)
event7 = Event.create(name: "Sorteo Cuarentena", description: "Sorteo de 12 millones", location: "chile", creation_date: 2020 - 2 - 2, starting_event_date: 2021 - 5 - 5, event_privacy: 0, user_id: user6.id)


organization1.events << event1
organization2.events << event2
organization3.events << event3
organization2.events << event4
organization1.events << event5
organization6.events << event6
organization5.events << event7

useronorg1 = UserOnOrganization.create(user_role: 0, user_id: user1.id, organization: organization1)
useronorg2 = UserOnOrganization.create(user_role: 1, user_id: user1.id, organization: organization2)
useronorg3 = UserOnOrganization.create(user_role: 0, user_id: user2.id, organization: organization2)
useronorg4 = UserOnOrganization.create(user_role: 1, user_id: user2.id, organization: organization3)
useronorg5 = UserOnOrganization.create(user_role: 1, user_id: user3.id, organization: organization1)
useronorg6 = UserOnOrganization.create(user_role: 0, user_id: user3.id, organization: organization3)
useronorg7 = UserOnOrganization.create(user_role: 0, user_id: user4.id, organization: organization3)
useronorg8 = UserOnOrganization.create(user_role: 1, user_id: user4.id, organization: organization1)
useronorg9 = UserOnOrganization.create(user_role: 0, user_id: user5.id, organization: organization1)
useronorg10 = UserOnOrganization.create(user_role: 0, user_id: user5.id, organization: organization3)
useronorg11 = UserOnOrganization.create(user_role: 1, user_id: user5.id, organization: organization6)
useronorg12 = UserOnOrganization.create(user_role: 0, user_id: user6.id, organization: organization2)
useronorg13 = UserOnOrganization.create(user_role: 0, user_id: user6.id, organization: organization4)
useronorg14 = UserOnOrganization.create(user_role: 1, user_id: user6.id, organization: organization5)
useronorg15 = UserOnOrganization.create(user_role: 0, user_id: user7.id, organization: organization4)
useronorg16 = UserOnOrganization.create(user_role: 0, user_id: user7.id, organization: organization5)
useronorg17 = UserOnOrganization.create(user_role: 0, user_id: user7.id, organization: organization6)
useronorg18 = UserOnOrganization.create(user_role: 0, user_id: user8.id, organization: organization4)
useronorg19 = UserOnOrganization.create(user_role: 0, user_id: user8.id, organization: organization5)
useronorg20 = UserOnOrganization.create(user_role: 0, user_id: user8.id, organization: organization6)
useronorg21 = UserOnOrganization.create(user_role: 0, user_id: user9.id, organization: organization4)
useronorg22 = UserOnOrganization.create(user_role: 0, user_id: user9.id, organization: organization5)
useronorg23 = UserOnOrganization.create(user_role: 0, user_id: user9.id, organization: organization6)
useronorg24 = UserOnOrganization.create(user_role: 0, user_id: user10.id, organization: organization4)
useronorg25 = UserOnOrganization.create(user_role: 0, user_id: user10.id, organization: organization5)
useronorg26 = UserOnOrganization.create(user_role: 0, user_id: user10.id, organization: organization6)

systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user1.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user2.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user3.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user4.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user5.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user6.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user7.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user8.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user9.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user10.id)

useronevent1 = UserOnEvent.create(status: 0, event: event1, user_id: user1.id)
useronevent2 = UserOnEvent.create(status: 0, event: event1, user_id: user2.id)
useronevent3 = UserOnEvent.create(status: 1, event: event2, user_id: user2.id)
useronevent4 = UserOnEvent.create(status: 1, event: event2, user_id: user3.id)
useronevent5 = UserOnEvent.create(status: 2, event: event3, user_id: user4.id)
useronevent6 = UserOnEvent.create(status: 2, event: event3, user_id: user1.id)
useronevent7 = UserOnEvent.create(status: 2, event: event4, user_id: user3.id)
useronevent8 = UserOnEvent.create(status: 1, event: event4, user_id: user2.id)
useronevent9 = UserOnEvent.create(status: 0, event: event4, user_id: user4.id)

vote1 = DateVote.create(event: event1, user_id: user1.id, date_voted: 2020 - 3 - 4)
vote2 = DateVote.create(event: event1, user_id: user2.id, date_voted: 2020 - 5 - 5)
vote3 = DateVote.create(event: event2, user_id: user2.id, date_voted: 2020 - 1 - 1)
vote4 = DateVote.create(event: event2, user_id: user3.id, date_voted: 2020 - 6 - 2)
vote5 = DateVote.create(event: event3, user_id: user4.id, date_voted: 2020 - 12 - 2)
vote6 = DateVote.create(event: event3, user_id: user1.id, date_voted: 2020 - 3 - 12)
vote7 = DateVote.create(event: event4, user_id: user3.id, date_voted: 2020 - 8 - 11)
vote8 = DateVote.create(event: event4, user_id: user2.id, date_voted: 2020 - 10 - 6)
vote9 = DateVote.create(event: event5, user_id: user5.id, date_voted: 2020 - 4 - 3)
vote10 = DateVote.create(event: event6, user_id: user6.id, date_voted: 2020 - 8 - 8)
vote11 = DateVote.create(event: event7, user_id: user7.id, date_voted: 2020 - 9 - 9)
vote12 = DateVote.create(event: event6, user_id: user8.id, date_voted: 2020 - 11 - 7)
vote13 = DateVote.create(event: event5, user_id: user9.id, date_voted: 2020 - 12 - 6)
vote14 = DateVote.create(event: event5, user_id: user10.id, date_voted: 2020 - 7 - 10)
vote15 = DateVote.create(event: event6, user_id: user8.id, date_voted: 2020 - 5 - 11)
vote16 = DateVote.create(event: event7, user_id: user7.id, date_voted: 2020 - 9 - 11)

comment1 = Comment.create(message: "please change the date!", event: event1, user_id: user1.id)
comment2 = Comment.create(message: "gonna get wasted m8", event: event2, user_id: user2.id)
comment3 = Comment.create(message: "Amazing bruh", event: event3, user_id: user3.id)
comment4 = Comment.create(message: "cant wait for this!!! :)", event: event4, user_id: user4.id)
comment5 = Comment.create(message: "Hope it doesnt postpone more", event: event1, user_id: user3.id)
comment6 = Comment.create(message: "probably gonna black out", event: event2, user_id: user1.id)
comment7 = Comment.create(message: "gon be mazing mate", event: event3, user_id: user4.id)
comment8 = Comment.create(message: "let me in! LET ME INNN", event: event4, user_id: user2.id)
comment9 = Comment.create(message: "the date is just for my birthday!", event: event5, user_id: user5.id)
comment10 = Comment.create(message: "there will be bathrooms?", event: event6, user_id: user6.id)
comment11 = Comment.create(message: "Yes! yes yes", event: event6, user_id: user7.id)
comment12 = Comment.create(message: "lockers room??", event: event7, user_id: user8.id)
comment13 = Comment.create(message: "finally!!!", event: event5, user_id: user9.id)
comment14 = Comment.create(message: "Littt !!! :)", event: event6, user_id: user10.id)
comment15 = Comment.create(message: "this is mine, trust me", event: event7, user_id: user9.id)
comment16 = Comment.create(message: "Chill and enjoy", event: event6, user_id: user8.id)
comment17 = Comment.create(message: "im going to sneak into", event: event5, user_id: user7.id)
comment18 = Comment.create(message: "im gonna win", event: event7, user_id: user6.id)
comment19 = Comment.create(message: "lollapalooooozaaaa", event: event5, user_id: user10.id)

reply1 = CommentReply.create(message: "nah man, the date is ok", comment_id: comment1.id, user_id: user2.id)
reply2 = CommentReply.create(message: "yeah bro me too", comment_id: comment2, user_id: user3.id)
reply3 = CommentReply.create(message: "thas a fact", comment_id: comment3, user_id: user4.id)
reply4 = CommentReply.create(message: "it probably gonna get postpone", comment_id: comment4, user_id: user2.id)
reply5 = CommentReply.create(message: "mee too!!", comment_id: comment5, user_id: user3.id)
reply6 = CommentReply.create(message: "sure mate!!", comment_id: comment6, user_id: user4.id)
reply7 = CommentReply.create(message: "dm me bro i can help u", comment_id: comment7, user_id: user2.id)
reply8 = CommentReply.create(message: "nobody cares", comment_id: comment9, user_id: user5.id)
reply9 = CommentReply.create(message: "of course !!", comment_id: comment10, user_id: user6.id)
reply10 = CommentReply.create(message: "dont think so", comment_id: comment12, user_id: user7.id)
reply11 = CommentReply.create(message: "hahaha in your dreams", comment_id: comment15, user_id: user8.id)
reply12 = CommentReply.create(message: "you dreamer haha its already mine", comment_id: comment18, user_id: user9.id)
reply13 = CommentReply.create(message: "aaaa chiiileeeee mom im fine", comment_id: comment19, user_id: user10.id)
reply14 = CommentReply.create(message: "im so fast im gonna catch you", comment_id: comment17, user_id: user5.id)


