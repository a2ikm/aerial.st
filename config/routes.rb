Rails.application.routes.draw do
  root "top#index"
  get "archive/*path", to: redirect(subdomain: "archive", path: "/archive/%{path}")
end
