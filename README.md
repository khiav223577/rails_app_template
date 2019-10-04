# Rails application template

This repo contains templates for new and existing projects.

See official documentation [Rails Application Templates](https://guides.rubyonrails.org/rails_application_templates.html) for building a template.

## Usage

### Create API backend project (using PostgreSQL)

Run `rails new` command to create a new project:

```
rails new <project_name> --api -d postgresql --skip-test -m template/api.rb
```

Edit `conig/settings.yml` and set the value of `pg_user`, `pg_host` and `pg_password`.

Run DB migration:

```
bundle exec rake db:migrate db:test:prepare
```
