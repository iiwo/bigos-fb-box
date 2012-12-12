## BigosFbBox
Widget showing facebook feed for given page

## Installation

BigosFbBox works with Rails 3.1 onwards. You can add it to your Gemfile with:

```ruby
gem "bigos", :git=>"git@github.com:iiwo/bigos.git"
gem "bigos-fb-box", :git=>"git@github.com:iiwo/bigos-fb-box.git"
```

Run the bundle command to install it.

After you install BigosFbBox and add it to your Gemfile, you need to run the generator:

```console
rails generate bigos_fb_box:install
```

## Configuration

You should create [Facebook App](http://developers.facebook.com/docs/appsonfacebook/tutorial/#create) and obtain [App Access Token](http://developers.facebook.com/docs/howtos/login/login-as-app/#step1)

You must use this access token in the initilizers/bigos_fb_box.rb initializer

```ruby
BigosFbBox.setup do |config|
  config.access_token = YOUR_APP_ACCESS_TOKEN
  config.page_name = FACEBOOK_PAGE_NAME or FACEBOOK_PAGE_ID
end
```

## Customization

You can use to generate view you can overwrite
```console
rails generate bigos_fb_box:views
```

### Usage

In your view add (ERB):
```ruby
<%= bigos_fb_box_widget %>
```
