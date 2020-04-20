# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "rai", password: "rai123", full_name: "Raimundo Diaz", email: "rai@gmail.com", age: 25)
user2 = User.create(username: "lihn", password: "lihn123", full_name: "Vicente Lihn", email: "lihn@gmail.com", age: 21)
user3 = User.create(username: "pepe", password: "peps123", full_name: "Pedro Picapiedra", email: "peps@gmail.com", age: 15)
user4 = User.create(username: "pancho", password: "pacman", full_name: "Francisco Saavedra", email: "pacman@gmail.com", age: 30)

organization1 = Organization.create(name: "UANDES",description: "Universidad de los Andes")
organization2 = Organization.create(name: "WebTech",description: "Curso ICC 2020")
organization3 = Organization.create(name: "ANFP",description: "Asociacion Nacional de Futbol Profesional")

event1 = Event.create(name: "BBQ", description: "BBQ after quarantine", location: "camino la villa", creation_date: 2020-5-10, starting_event_date: 2020-11-11, event_privacy: 1, user: user1)
event2 = Event.create(name: "party", description: "gotta get crazy after quarantine", location: "everywhere", creation_date: 2020-4-9, starting_event_date: 2020-8-8, event_privacy: 0, user: user2)
event3 = Event.create(name: "piano concert", description: "for the man of culture", location: "sydney opera house", creation_date: 2020-1-1, starting_event_date: 2021-3-12, event_privacy: 0, user: user3)
event4 = Event.create(name: "ultra miami", description: "Ultra Music Festival is an annual outdoor electronic music festival that takes place during march in Miami,Florida, USA.", location: "Miami beach", creation_date: 2020-05-11, starting_event_date: 2021-03-03, event_privacy: 0, user: user4)
event5 = Event.create(name: "lolapalusa", description: "brigido", location: "chile", creation_date: 2020-12-1, starting_event_date: 2021-11-11, event_privacy: 1, user: user1)

organization1.events << event1
organization2.events << event2
organization3.events << event3
organization2.events << event4
organization1.events << event5

useronorg1 = UserOnOrganization.create(user_role: 0, user: user1, organization: organization1)
useronorg2 = UserOnOrganization.create(user_role: 1, user: user1, organization: organization2)
useronorg3 = UserOnOrganization.create(user_role: 0, user: user2, organization: organization2)
useronorg4 = UserOnOrganization.create(user_role: 1, user: user2, organization: organization3)
useronorg5 = UserOnOrganization.create(user_role: 1, user: user3, organization: organization1)
useronorg6 = UserOnOrganization.create(user_role: 0, user: user3, organization: organization3)
useronorg7 = UserOnOrganization.create(user_role: 0, user: user4, organization: organization3)
useronorg8 = UserOnOrganization.create(user_role: 1, user: user4, organization: organization1)

systemadmin = SystemAdministrator.create(is_admin: 1, user: user1)
systemadmin = SystemAdministrator.create(is_admin: 1, user: user2)
systemadmin = SystemAdministrator.create(is_admin: 0, user: user3)
systemadmin = SystemAdministrator.create(is_admin: 0, user: user4)

useronevent1 = UserOnEvent.create(status: 0, event: event1, user: user1)
useronevent2 = UserOnEvent.create(status: 0, event: event1, user: user2)
useronevent3 = UserOnEvent.create(status: 1, event: event2, user: user2)
useronevent4 = UserOnEvent.create(status: 1, event: event2, user: user3)
useronevent5 = UserOnEvent.create(status: 2, event: event3, user: user4)
useronevent6 = UserOnEvent.create(status: 2, event: event3, user: user1)
useronevent7 = UserOnEvent.create(status: 2, event: event4, user: user3)
useronevent8 = UserOnEvent.create(status: 1, event: event4, user: user2)
useronevent9 = UserOnEvent.create(status: 0, event: event4, user: user4)

vote1 = DateVote.create(event: event1, user: user1,date_voted: 2020-3-4)
vote2 = DateVote.create(event: event1, user: user2,date_voted: 2020-5-5)
vote3 = DateVote.create(event: event2, user: user2,date_voted: 2020-1-1)
vote4 = DateVote.create(event: event2, user: user3,date_voted: 2020-6-2)
vote5 = DateVote.create(event: event3, user: user4,date_voted: 2020-12-2)
vote6 = DateVote.create(event: event3, user: user1,date_voted: 2020-3-12)
vote7 = DateVote.create(event: event4, user: user3,date_voted: 2020-8-11)
vote8 = DateVote.create(event: event4, user: user2,date_voted: 2020-9-1)

comment1 = Comment.create(message: "please change the date!",event: event1, user: user1)
comment2 = Comment.create(message: "gonna get wasted m8",event: event2, user: user2)
comment3 = Comment.create(message: "Amazing bruh",event: event3, user: user3)
comment4 = Comment.create(message: "cant wait for this!!! :)",event: event4, user: user4)
comment5 = Comment.create(message: "Hope it doesnt postpone more",event: event1, user: user1)
comment6 = Comment.create(message: "probably gonna black out",event: event2, user: user1)
comment7 = Comment.create(message: "gon be mazing mate",event: event3, user: user4)
comment8 = Comment.create(message: "let me in! LET ME INNN",event: event4, user: user2)

reply1 = CommentReply.create(message: "nah man, the date is ok",comment: comment1, user: user2)
reply2 = CommentReply.create(message: "yeah bro me too",comment: comment2, user: user3)
reply3 = CommentReply.create(message: "thas a fact",comment: comment3, user: user4)
reply4= CommentReply.create(message: "it probably gonna get postpone",comment: comment4, user: user2)
reply5 = CommentReply.create(message: "mee too!!",comment: comment5, user: user3)
reply6 = CommentReply.create(message: "sure mate!!",comment: comment6, user: user4)
reply7 = CommentReply.create(message: "dm me bro i can help u",comment: comment7, user: user2)
