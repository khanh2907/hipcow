# hipcow
Ruby gem: cowsay for Hipchat

## Installation

```
gem install hipcow
```

or in your Gemfile

```
gem 'hipcow'
```

## Whispering with cows

```
my_hipchat_api_key = '1234567abcd'
cow = 'dragon-and-cow'
notify = 0
name = 'Puff'
color = 'red'

hipcow = Hipcow.new(my_hipchat_api_key, cow, notify, name, color)

hipcow.get_rooms
room_id = 123456

hipcow.say(room_id, 'Hello world. Moo.')

```
