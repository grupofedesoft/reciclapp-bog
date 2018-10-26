Rails.application.routes.draw do
  resources :tbl_usuarios
  resources :tbl_upzs
  resources :tbl_tipo_documentos
  resources :tbl_operadors
  resources :tbl_localidads
  resources :tbl_incentivos
  resources :tbl_horarios
  resources :tbl_entidads
  resources :tbl_dia
  resources :tbl_consejos
  resources :tbl_barrios
  resources :tbl_actividads
  resources :tbl_actividad
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
