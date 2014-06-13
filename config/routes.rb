Rails.application.routes.draw do
  get 'fillquestions/new'

  get 'multichoicequestions/new'

  get 'quizquestionresults/new'

  get 'matchquestions/new'

  get 'quizquestions/new'

  get 'quizs/index'

  get 'users/index'

  get 'users/new'

  get 'user/index'

  get 'user/new'

  get 'lessons/index'

  get 'sessions/new'

  get 'session/new'

  get 'welcome/index'

  resources :tasks
  get "sessions/new"
  get "welcome/index"
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  	 resources :lessons do
		resources :quizs do
			member do
				get 'add_questions'
				get 'add_questions_error'
				get 'take_quiz'
				post 'select_questions'
				post 'save_questions'
			end
			resources :quizquestions do
				member do
					get 'take'
				end
				member do
					post 'processquestion'
					post 'remove_from_quiz'
				end
			end
		end
	 end

	 
	 resources :users do
	    resources :quizs do
			member do
				get 'list_questionresults'
				post 'delete_questionresults'
			end
			resources :quizquestionresults
		end
	 end
	   
	 resources :sessions
	 
	 resources :multichoicequestions do
		member do
			get 'take'
		end
		member do
		    #post 'process_question'
			post 'remove_from_quiz'
		end
	 end

	 resources :fillquestions do
		member do
			get 'take'
		end
		member do
		    #post 'process_question'
			post 'remove_from_quiz'
		end
	 end

	 resources :matchquestions do
		member do
			get 'take'
		end
		member do
		    #post 'process_question'
			post 'remove_from_quiz'
		end
	 end

	 resources :clozequestions do
		member do
			get 'take'
		end
		member do
			post 'remove_from_quiz'
		end
	 end

	 
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
