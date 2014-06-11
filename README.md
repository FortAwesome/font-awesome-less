# Font::Awesome::Less

Font-Awesome LESS gem for use in Rails projects

## Installation

Add this line to your application's Gemfile:

    gem 'font-awesome-less'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install font-awesome-less

If you use Rails add this to e.g. application.css.less:

    @import "font-awesome";

## Upgrading from 3.*

Prepend the `fa` class to existing icons:

    3.* Syntax
    <i class="icon-github"></i>

    4.* Syntax
    <i class="fa fa-github"></i>

## Rails Helper usage

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
