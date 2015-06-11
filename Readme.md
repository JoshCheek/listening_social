ListeningSocial
===============

Not LivingSocial -- please don't sue! >.<

Would you like a social music experience? Good news! Got ya covered :)


Todo
----

- [x] Run [rails new](https://github.com/JoshCheek/listening_social/commit/2ff3800f18069d4532d13597d0dc37e53f4c30fd)
- [x] Turn our feature into a test.
      Initially it looked like [this](https://github.com/JoshCheek/listening_social/commit/6c4620d4ad4bd19116e14abb758f0e2a0991c423),
      by the end, it looked like [this](https://github.com/JoshCheek/listening_social/blob/8661d5328e70f7aaebb1f3e8e72e11132cca46f2/spec/features/unauthenticated_users_can_listen_to_music_spec.rb#L3)
- [x] Maybe schema, maybe figure out where we're getting music from
      [Here](https://gist.github.com/JoshCheek/6a452bc4e39a9aea2088)
      is how we figured out our database using Seeing Is Believing
      (we set language to Ruby, type `s_arb` and press tab).
  * We moved the [migrations](https://gist.github.com/JoshCheek/6a452bc4e39a9aea2088#file-migrations_and_models-rb-L11)
    and [models](https://gist.github.com/JoshCheek/6a452bc4e39a9aea2088#file-migrations_and_models-rb-L28)
    into our app, in [the appropriate files](https://github.com/JoshCheek/listening_social/commit/b5d852c1dd5abdf40dde24f2f3c8063a341d35c7).
  * We [verified that it worked](https://gist.github.com/JoshCheek/6a452bc4e39a9aea2088#file-migrations_and_models-rb-L50)
    by using the [code from our test](https://github.com/JoshCheek/listening_social/commit/4447cee320d0b6afcb4a5fb596dd9a236eaefaa9),
    and edited our schema / models, until it did what we needed it to do.
- [x] Make it work (whatever is currently preventing progress on the feature)
- [ ] Once we have it working, we can look at missing edge cases, and so forth we make those "units", and unit test them


Future
------

- [ ] Works when there are no songs in the playlist


What do our users need / want?
------------------------------

* So they can discover new music
* Sharing music that they enjoy
* Social aspect of collaborating on curate playlists
* Being in a room with someone else, even though they're not in the room

What are we going to build that produces this for them?
-------------------------------------------------------

* Chatroom with music playing
* A play queue per chatroom
* Private chatrooms <-- Descoped for now
  * creator gets to choose who the curators are
  * curators get to choose what the music is
* Public chatrooms based on genre
  * everyone votes what the next song is


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

