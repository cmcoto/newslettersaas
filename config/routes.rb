class SubdomainPresent
  def self.matches?(request)
    request.subdomain.present?
  end
end

class SubdomainBlank
  def self.matches?(request)
    request.subdomain.blank?
  end
end

Rails.application.routes.draw do
  constraints(SubdomainPresent) do  
    devise_for :users

    resources :accounts
    resources :issues do
      resources :links
    end
    resources :issues
    resources :newsletters
    resources :links
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  end
  # You can have the root of your site routed with "root"
  constraints(SubdomainBlank) do
    root 'welcome#index'
  resources :accounts, only: [:new, :create]
  end
  
end
