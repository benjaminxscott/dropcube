# DropCube
Upload files

[Primary dependency is 'carrierwave'](https://github.com/carrierwaveuploader/carrierwave)
Based on [tutorial](https://www.tutorialspoint.com/ruby-on-rails/rails-file-uploading.htm)

## Local Development

> bundle install

> rails server


## Deployment

> heroku login

> heroku git:clone -a dropcube

> cd dropcube

> git push heroku master

> heroku run rake db:migrate

> heroku open
