# rails-yaml

Writing out `YAML.load(Rails.root.join('config/settings/filename.yml'))[Rails.env]` sucks. Writing `Rails.yaml(:filename)` is nicer. 

Copy `rails/yaml.rb` into the `config/initializers` folder. In your app, you'll be able to access configuration by filename. It wants a `config/settings` folder, but allows using the `config` folder. 

```ruby
Rails.yaml(:filename)
```

It wants settings by environment, but allows settings right at the root.

```yaml
production:
  # settings
development:
  # settings
  
# or

settings:
  # settings
  
# but not both!
```

If you really need the folder name to be something besides settings, you can set a configuration option:

```ruby
# config/application.rb

  config.yaml = 'config/options'
```

That's it! Simpleness!