Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'students#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :students
  resources :quizzes do 
    resources :questions, shallow: true
  end
  resources :questions do
    resources :answers, shallow: true
  end
  resources :answers

  get '/' => 'static#welcome'
  get 'about' => 'static#about'

  get 'signup' => 'students#new'

  get 'quizzes/:id/summary', to: 'quizzes#summary', as: :summary
  post 'quizzes/:id/summary', to: 'quizzes#email', as: :email 


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  get 'profile' => 'students#show'

  post 'questions/:id' => 'questions#student_answer'

  # namespace :admin do
  #   resources :answers, :questions, :quizzes
  #   get 'admin/quizzes' => 'admin/quizzes#index'
  #   get 'admin/quizzes/new' => 'admin/quizzes#new'
  #   post 'admin/quizzes' => 'admin/quizzes#create'
  #   get 'admin/quizzes/:id' => 'admin/quizzes#show'
  #   get 'admin/quizzes/:id/edit' => 'admin/quizzes#edit'
  #   put 'admin/quizzes/:id' => 'admin/quizzes#update'
  #   delete 'admin/quizzes/:id' => 'admin/quizzes#destroy'
  # end

  # get 'quizzes/:quiz_id/questions' => 'questions#index'
  # get 'quizzes/:quiz_id/questions/new' => 'questions#new'
  # post 'quizzes/:quiz_id/questions' => 'questions#create'
  # get 'quizzes/:quiz_id/questions:id' => 'questions#show'
  # get 'quizzes/:quiz_id/questions/:id/edit' => 'questions#edit'
  # put 'quizzes/:quiz_id/questions/:id' => 'questions#update'
  # delete 'quizzes/:quiz_id/questions/:id' => 'questions#destroy'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
