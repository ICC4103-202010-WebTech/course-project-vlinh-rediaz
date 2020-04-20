# README
```diff
+ Raimundo Enrique Diaz Parada
+ Vicente Lihn Gorroño
```
---
## First of all we need to explain how certain model columns work on the seed file
- In the Event model, the "event_privacy" is an integer, 0 means public, 1 means private
- In the UserOnOrganization model, the "user_role" is an integer, 0 means no privilages, 1 means it is admin of the organization
- In the SystemAdministrator model, the "is_admin" is an integer, 0 means no privilages, 1 means it is a System admin
- In the UserOnEvent model, the "status" is an integer, 0 means he hasn't confirmed the assist, 1 means he has confirmed the assist, 2 means he isn't gonna be able to assist the event
- In addition, the DateVote model table is only created when someone has voted in an event, so if someone hasn't voted for the event, there will be no DateVote table for that user.
---
## For a good implementation of our code follow the next steps:
### What we did to see if the database worked properly was enter the following commands:

>> First, we drop in case something spliped through, made the migration and setup:
```shell
$ RAILS_ENV=development rake db:drop
$ RAILS_ENV=development rake db:migrate
$ RAILS_ENV=development rake db:setup
```
> Then we can see the queries that were made into a rake tast:
```shell
$ rake db:model_queries
```
---
### Explanations
- If an event is deleted, then the commments, replies to the comments and DateVotes are deleted because there were part of that event.
- If an organization is deleted, all the events from the organization are deleted as well, because without an organization behind an event the event can not be made. In addition as the event is deleted all its components are deleted as well. (All of this is base on the premise that the organization either pays, rents and manages the event)
 - If a user is deleted only his information and interactions are deleted, like comments, replies, votes, etc. But if he is admin of an organization, and there is no more admins of that organization, then an admin will be selected randomly. In the case of being a System Admin, the Admin privilages will be deleted from the system too.

if you want to see this in action you can invoke the console with `rails c` and paste the following commands:
```shell
$ rails c
$ Event.first.destroy
$ Organization.first.destroy
$ User.first.destroy
```
