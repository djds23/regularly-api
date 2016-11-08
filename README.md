# Backend for Regularly app

This is the backend for an app that keeps track of friends that share albums with each other every week.

TODO: 

  - Add some docs to `CalendarConstructor`
  - Add facebook auth with devise

For deployment:

  - `RAILS_ENV=production bundle exec rake db:migrate`
  - seed with `bundle exec rake db:seed`
  - seed due dates with `bundle exec rake calendar:create StartingEdge=1`
  - copy seed_album_lists.rb into a rails console
  - start server with `RAILS_ENV=production rails s Puma -b 127.0.0.1 -p 3001 -d`

  - *If there are issues loading models, run `spring stop`*
