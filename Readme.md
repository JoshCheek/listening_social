ListeningSocial
===============

Not LivingSocial -- please don't sue! >.<

Would you like a social music experience? Good news! Got ya covered :)

Approach
--------

First, we figure out who we're building it this thing for,
then we figure out what they want, so that we can make sure
that we produce a product that takes their needs into consideration.

Then we consider these things and write a feature.

We then choose what to implement by pushing forward on the feature,
only implementing what we need right now, to push forward on the current feature.

We descope a bit, and we avoid doing any work that we aren't sure we actually need.
The criteria for something to be worked on is that there is something that currently
requires it to exist.

We did drop down and do a [model-level test](https://github.com/JoshCheek/listening_social/commit/fb03edb40536a48201d87ae5e4e52637779d359e),
when we realized that we needed a queue. But we chose to not specify too much,
even though we thought there was a pretty good possibility that we needed to have the songs ordered.
We decided to wait, because if we implemented it right now,
that would require us to anticipate what we eventually need,
rather than implementing something that we know what we need,
...because we already need it.

This approach, overall, gets us to a working product very quickly.
We then iterate on it, keeping the entire thing passing on each iteration.
Instead of going from nothing to a finished product,
we make sure to deliver a little bit of value at each stage.

Maybe the next feature will allow users to import SoundCloud songs,
maybe it will allow them to talk to each other,
maybe it will style the site,
maybe it will switch over to some other music api...
maybe it will cause the queue to shuffle better, or add in a "previously played" section
...we don't know what's best, we'll get this thing working and see what we want,
with the product sitting right in front of us.


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

Initial feature:
----------------

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

