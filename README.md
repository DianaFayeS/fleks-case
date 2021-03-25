# README

Considering applications functionality, I have chosen Ruby on Rails, because it's fast for most of the categories of application. Rails supports rapid application development(RAD). The Modal View Controller (MVC) in RoR is beautifully implemented to focus on DRY. Such modularity makes the code read, understand and debug easier.

I have chosen the device gem, because it does all the authentication work for you. Device is a full-featured authentication mechanism for Rails applications and it`s is quick to generate, widely used and properly tested.

Cloudinary was my choice, because it speeds up the delivery of images and automatically optimizes. It comes loaded with filters, size optimizations, and formatting options.


Dependency Tracking

The Ruby buildpack tracks dependencies with Bundler. Those are defined in the Gemfile which is placed in the root directory of your repository. In this example app it contains:

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.1.3'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'devise'
gem 'cloudinary', '~> 1.16.0'
gem 'font-awesome-sass'
gem 'simple_form'

