# PDK RuboCop

PDK RuboCop is a Gem that provides sane defaults to use when developing Puppet Content.

This gem was inspired by [voxpupuli-rubocop](https://github.com/voxpupuli/voxpupuli-rubocop)

## Usage

In your Gemfile, add the following:

```ruby
gem 'voxpupuli-rubocop', '~> 1.1'
```

In your Rakefile, you can include the default Rake task:

```ruby
require 'voxpupuli/rubocop/rake'
```

List your rake tasks with `bundle exec rake -T` 

```bash
rake rubocop                  # Run RuboCop
rake rubocop:autocorrect      # Autocorrect RuboCop offenses (only when it's safe)
rake rubocop:autocorrect_all  # Autocorrect RuboCop offenses (safe and unsafe)
```

To use the default config, create a `.rubocop.yml` and add the following:

```
---
inherit_gem:
  pdk-rubocop: rubocop.yml
```

After adding the inherited config, you may want to regenerate your todo file:

```
bundle exec rubocop --regenerate-todo
```:q!
