D::Application.routes.draw do

  devise_for :users

  resources :messages

  resources :tests

  resources :group_memberships

  resources :places
  resources :meetup_profiles
  resources :pictures
  resources :pectures
  resources :galleries
  resources :paintings
  resources :meetup_rsvps
  resources :meetup_comments
  resources :locations
  resources :meetups
  resources :scaffords
  resources :profiles
  resources :comments
  resources :post_comments
  resources :microposts
  resources :blogs
  resources :friendship
	
  devise_for :users, :controllers => {:registrations => "registrations"}

  root :to => 'microposts#index'
  match '/welcome' => "profiles#new"
  match '/dashboard'=>"microposts#index"
  match '/unfriend' => "profiles#unfriend#:id", method: :unfriend
  match '/admin' => "microposts#admin"
  match '/find'=>"profiles#find"
  match '/resorts'=>"places#resort"
  match '/groups' => "meetups#groups"
	#root :to => redirect("/users/sign_in")
	#root :to => 'devise/sessions#new'
end
