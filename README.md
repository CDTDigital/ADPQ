ADPQ project

[![CircleCI](https://circleci.com/gh/agilesix/ADPQ.svg?style=shield)](https://circleci.com/gh/agilesix/ADPQ)

= Setup

1. Ensure that you have Ruby installed and functional ( https://www.ruby-lang.org/en/ )

2. Install Bundler ( `gem install bundler` )

3. Download the project (`git clone git://github.com/agilesix/ADPQ.git`)

4. Enter the project directory (`cd ADPQ`)

5. Run bundler to download dependencies (`bundle install`)

6. Ensure that you have a current version of PostgreSQL installed (`https://www.postgresql.org/download/` or `apt-get install postgres`)

7. Create the database user (`createuser agilesix-adpq -s`)

8. Set up the database and run the database migrations (`bundle exec rake db:create db:migrate db:seed`)

9. At the prompt, create an admin user of your choice

10. Run the application (`bundle exec rails s`)

11. Visit http://localhost:3000/ and you should see the application running if the steps were completed successfully

