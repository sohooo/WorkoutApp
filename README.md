# WorkoutApp

## Intro
A simple webapp to log your workout and track progress. You create a new “workout” on the fly, and then add “exercises” to it. The workout logs date and location, the exercises track weight, sets/reps, and so on.


## Create Users
By default, user registration is turned off. Create a new user via the `rails console`:

    ➡ rails c
    user = User.create! do |u|
      u.email = 'sample@sample.com'
      u.password = 'password'
      u.password_confirmation = 'password'
    end

