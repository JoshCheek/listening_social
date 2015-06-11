ListeningSocial
===============

Not LivingSocial -- please don't sue! >.<

Would you like a social music experience? Good news! Got ya covered :)


Todo
----

- [x] Rails new
- [ ] Turn our feature into a test
- [ ] Maybe schema, maybe figure out where we're getting music from
- [ ] Make it work (whatever is currently preventing progress on the feature)
- [ ] Once we have it working, we can look at missing edge cases, and so forth we make those "units", and unit test them



What do our users need / want?
------------------------------

* So they can discover new music
* Sharing music that they enjoy
* Social aspect of collaborating on curate playlists
* Being in a room with someone else, even though they're not in the room

What are we going to build that produces this for them?
-------------------------------------------------------

*Chatroom with music playing
*A play queue per chatroom
*Private chatrooms <-- Descoped for now
  *creator gets to choose who the curators are
  *curators get to choose what the music is
*Public chatrooms based on genre
  *everyone votes what the next song is


```
Feature: Unauthenticated user can listen to music
  I am a potential user, considering whether the app is worth my time (I'm not logged in)
  I go to ListeningSocial and see a list of genres (these will be prepopulated)
  I click "Jazz"
  Now I'm in the "Jazz" channel
  I can see see a list of the other "Jazz" enthusiasts with me
  I see that "Our Love Is Here To Stay" is playing
  I see the upcoming queue, the next song is "Autumn Leaves" by "Chet Baker"
  I can hear it playing, a slight syncopation causes me to bob my head
```

