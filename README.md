## JW Exchange  
[ ![Codeship Status for codeship/scripts](https://app.codeship.com/projects/969e7d00-639d-0137-513b-1256e5107357/status?branch=master)](https://codeship.com/projects/344672)

Currency conversion project using Ruby on Rails with automated testing using RSpec.
<br></br>
[DEMO](https://jw-exchange.herokuapp.com/)
<br></br>
<br></br>


## Quick start

- If you do not have Docker on your computer, follow the installation instructions on Docker's Github([more info here](https://github.com/docker/docker-install)).

Clone the project in your directory of choice.
```
git clone https://github.com/jonatawilliam/jw_exchange.git
cd your-project-name
```

Run the Docker command for build.
```
docker-compose build
```

Now upload the the service created in Docker
```
docker up
```


Access the app by:
[http://localhost:3000](http://localhost:3000)


<br></br>

The project is running with Docker, if you want to run local without Docker, follow the instructions below.

- Install ruby version 2.3.0 and set it with your ruby environment manager ([more info here](https://www.ruby-lang.org/en/documentation/installation/)).
- Install Postgres and start the PostgreSQL server in the foreground ([more info here](https://wiki.postgresql.org/wiki/Detailed_installation_guides)).
- Clone the repository and get inside it:

```
git clone https://github.com/jonatawilliam/jw_exchange.git
cd your-project-name
```

- Execute command in directory project:

```
rake db:create db:migrate db:seed
rails s
```
<br></br>
<br></br>