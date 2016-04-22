Rails.application.routes.draw do
  resources :principals

  resources :releases

  resources :bosses

  resources :reports

  get 'list_students/index'

  get 'grupos/index'
  get 'grupos/show/:id' => 'grupos#show', as: 'grupo_alumno'

  get 'vistas/index'
  get 'vistas/show/:id' => 'vistas#show', as: 'vista_admin'

  get 'clouds/index' => 'clouds#index', as: 'clouds_index'

  resources :academics

  resources :courses

  resources :catalogs

  resources :professors

  get 'details/index' => 'details#index', as: 'details_index'

  resources :scores
  get 'score/edit_for_teacher/:id' => 'scores#edit_for_teacher', as: 'edit_score_for_teacher'

  resources :groups

  root 'welcome#index'

  devise_for :students, path_prefix: 'my'
  resources :students
  get 'student/dashboard' => 'students#dashboard', as: 'student_dashboard'
  get 'student/subject/:id' => 'students#subject', as: 'student_subject'
  get 'student/profile' => 'students#profile', as: 'student_profile'

  #get 'student/student_validate/:id' => 'students#student_validate', as: 'student_validate'
  #post 'student/enroll_student' => 'students#enroll_student', as: 'enroll_student'

  devise_for :teachers, path_prefix: 'my'
  resources :teachers
  get 'teacher/dashboard' => 'teachers#dashboard', as: 'teacher_dashboard'
  get 'teacher/profile' => 'teachers#profile', as: 'teacher_profile'
  #get 'teacher/professor' => 'teachers#professor', as: 'teacher_professor'
  get 'teacher/subject/:id' => 'teachers#subject', as: 'teacher_subject'

  devise_for :users, path_prefix: 'my'
  resources :users
  get 'user/dashboard' => 'users#dashboard', as: 'user_dashboard'

  resources :semesters

  resources :careers

  resources :calendars

  resources :sources

  resources :standards

  resources :competitions

  resources :learnings

  resources :folders

  resources :acquisitions

  resources :contents

  resources :summaries

  resources :subjects

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
