RSpec.describe 'Unauthenticated user can listen to music', type: :feature do
  specify 'what the thing says...' do
    # I am a potential user, considering whether the app is worth my time (I'm not logged in)
    # I go to ListeningSocial and see a list of genres (these will be prepopulated)
    # I click "Jazz"
    # Now I'm in the "Jazz" channel
    # I can see see a list of the other "Jazz" enthusiasts with me
    # I see that "Our Love Is Here To Stay" is playing
    # I see the upcoming queue, the next song is "Autumn Leaves" by "Chet Baker"
    # I can hear it playing, a slight syncopation causes me to bob my head
  end
end
