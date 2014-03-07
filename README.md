#Vacancy Engine

The Vacancy Engine provides a models and active admin templates to your app.

##Installation

We maintain our gems versions using [bundler](http://bundler.io)

In your Gemfile add:

    `gem 'vacancy', :git => 'git://github.com/madebymade/made-vacancy-engine.git'`

We recommend also lock the version by adding either a commit reference (`:ref =>`) or git tag (`:tag =>`).

To install the migrations:

    `bundle exec rake railties:install:migrations`

Migrate Database

    `bundle exec rake db:migrate`

##Dependencies

* [Active Admin](https://github.com/gregbell/active_admin)
* [Paperclip](https://github.com/thoughtbot/paperclip)
* [Stringex](https://github.com/rsl/stringex)

##Configuration

Configure the Case Study engine with an initializer named `vacancy.rb`

###Available Configuration

* `item_cache_sweeper`, your cache sweeper for the case studies, is used in the active admin template. Default: `false`
* `category_cache_sweeper`, your cache sweeper for the case study categories, is used in the active admin template. Default: `false`
* `tag_cache_sweeper`, your cache sweeper for the case study tags, is used in the active admin template. Default: `false`
* `engine_active_admin `, Set to false if you want to use your own active admin templates. Default: `true`
* `engine_routing`, Set to false if you want to use your own routes. Default: `true`
* `image_styles`, Paperclip image [post processing](https://github.com/thoughtbot/paperclip#post-processing) styles. Default: `{}`
* `logo_styles`, Paperclip image [post processing](https://github.com/thoughtbot/paperclip#post-processing) styles. Default: `{}`

##Credits

Developed and maintained by [Made](http://www.madetech.co.uk?ref=github&repo=vacancy_engine).

[![made](https://s3-eu-west-1.amazonaws.com/made-assets/googleapps/google-apps.png)](http://www.madetech.co.uk?ref=github&repo=vacancy_engine)

Key contributions:

* [Chris Blackburn](https://github.com/chrisblackburn)
* [Seb Ashton](https://github.com/sebashton)

##License

Licensed under [New BSD License](http://opensource.org/licenses/BSD-3-Clause)
