Rails.application.routes.draw do

  mount BigosFbBox::Engine => "/bigos-fb-box"
  root :to=>"test#index"
end
