Rails.application.routes.draw do
  root 'welcome#index'
  ActiveAdmin.routes(self)
end
