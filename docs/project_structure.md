# Rails App Structure

## App

- assets: Used to handle styles, media, etc...
- channels: Related to websockets, like messaging apps.
- controllers: They are bridges between models and views, and are in charge to pass the data from models to the views and restrict the access and more..
- Helpers: Are use to render HTML using Ruby power.
- Javascript: Related to JS code and settings.
- Jobs: Related to Background jobs.
- Mailers: For sending emails.
- Models: Represents the database, uses ORM.
- views: Represents the views, HTML or JSON, to render. 


## Config

- application.rb: Defines settings for all the environments files that we have defined inside **environments** folder.
- boot.rb: Indicates where are our dependencies and use bootsnap to catch them.
- cable.yml: Where we put our Cable websocket settings. Like reddis.
- credentials.yml.enc: the file that we will decrypt with the **master.key** and save our env variables.
- database.yml: Defines our database configuration.
- puma.rb: Defines how Puma runs (our server).
- routes.rb: Where we set our routes.
- stora.yml: Defines where you can upload files.


## DB

- seeds.rb where we set demo data to run our application localy.

## lib

Here we put extra libraries or create our own tasks.
