# odin-kittens

This is an excercise in working with APIs in Rails.

## Live Demo

....
  
## Local Installation

### Requirements

- Ruby       '~>2.6.0'
- Bundler    '2.0.0'
- Rails      '~> 6.0.0'

### Getting Started

Clone the repo and then install the needed gems:

```console
 bundle install --without production
```

Create and Migrate the database:

```console
 rails db:create
 rails db:migrate
```
Populate the database [Optional] :

```console
 rails db:seed
```
Setup your Flickr App [Optional] :

```console
 bundle exec figaro install
```

open the  config/application.yml and enter yout flickr_api_key and flickr_shared_secret, for example:

```yaml
flickr_api_key: 'c6****************************2c'
flickr_shared_secret: 6b***********8c7
```

You'll be ready to run the app in a local server:

```console
 rails server
```

Visit <http://localhost:3000/>
