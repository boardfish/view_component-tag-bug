This app replicates a bug I experienced in ViewComponent.

In `app/components/field_component.rb`, using the `tag` helper does not
return a closed tag. However, using the `content_tag` helper does. The
former is generally recommended over the latter by RuboCop.

### Running

This is a minimal Rails app, so make sure you have a recent (2.7+) Ruby
installed with `bundler`. Use `bundle install` to install the
dependencies, then run `rails s` to bring the app live on
`localhost:3000`.
