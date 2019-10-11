## THE PODCAST APP (Rails Backend)

For experimenting on your local machine, cd to your local backend directory and run

```
git clone git@github.com:bo1623/podcast-api-backend.git
```

Make sure your rails is up to date

```
rails -v
gem update rails
```

Create a new local database in postgresql using the following command:

```
rails new awesome-app --api --database=postgresql
```

Run `bundle install` to install all required dependencies.

Run `rake db:migrate` to create your database according to the migration tables. This is necessary in order for the fetch requests from the frontend to work in the backend.

Visit https://github.com/bo1623/podcast-app-frontend-v2 for instructions on how to set things up on the frontend.

Enjoy coding!
