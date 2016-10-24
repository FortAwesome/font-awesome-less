# FontAwesome::Less

[![Gem Version](https://badge.fury.io/rb/font-awesome-less.svg)](https://badge.fury.io/rb/font-awesome-less)

'font-awesome-less' is a Less-powered version of FontAwesome for your Ruby projects and plays nicely with 
 Ruby on Rails, Sprockets, etc.
 
 
## Installation

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Regular](#b-compass-without-rails) not on Rails.


### a. Ruby on Rails

In your Gemfile include:

```ruby
gem 'font-awesome-less', '~> 4.7.0'
```

And then execute:

```sh
bundle install
```

Import the FontAwesome styles in your `app/assets/stylesheets/application.css.less`. The `font-awesome-sprockets` file
includes the overrides for Rails helpers.

```less
@import "font-awesome-sprockets";
@import "font-awesome";
```

#### Rails Helper usage

In your view:

```ruby
icon('flag')
# => <i class="fa fa-flag"></i>
```

```ruby
icon('flag', '', class: 'strong')
# => <i class="fa fa-flag strong"></i>
```

```ruby
icon('flag', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fa fa-flag strong"></i> Font Awesome
```

Note: the icon helper can take a hash of options that will be passed to the content_tag helper

### b. Regular without Rails

Install the gem

```sh
gem install font-awesome-less
```

If you have an existing Ruby project:

```ruby
require 'font-awesome-less'
```

Import the FontAwesome styles

```less
@import "font-awesome-regular";
@import "font-awesome";
```

## Upgrading from FontAwesome::Less 3.x

Prepend the `fa` class to existing icons:

3.x Syntax

```html
<i class="icon-github"></i>
```

4.x Syntax

```html
<i class="fa fa-github"></i>
```
