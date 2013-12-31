# rails-yaml

```ruby
YAML.load(Rails.root.join('config/settings/filename.yml'))[Rails.env]
```

Yikes. 

```ruby
Rails.yaml(:filename)
```

That's better.

### Setup 

Copy `rails/yaml.rb` into the `config/initializers` folder. It wants a `config/settings` folder, but allows using the `config` folder for your yaml files. 

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

You can specify the settings folder:

```ruby
# config/application.rb

  config.yaml = 'config/options'
```

Read the code if you're confused. Its 20 lines long.