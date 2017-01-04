Liquid Humanize Number
======================

A liquid filter to make numbers more human readable.

Installation
------------

### Rails, Rack, etc with bundler

Add the following to your `Gemfile`:

  gem 'liquid-humanize-number', '~> 1.0'

Run

  bundle install

### Jekyll

On Jeykll it is best to add `'liquid-humanize-number'` to the `gems` list in
your `_site.yml` file.


Usage
-----

`liquid-humanize-number` provides a single filter. `humanize_number`

You can use it without any arguments to group digits by thousands with commas.

Example:

```ruby
  template = Liquid::Template.parse('{{value | humanize_number }}')
  template.render('value' => 10000) # "10,000"
```

You can supply a separator and grouping method. Currently "thousands" is the only
supported grouping method.
