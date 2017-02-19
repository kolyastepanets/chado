RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model 'Visit' do
    list do
      field :started_at
      field :browser
      field :os
      field :user_id
      field :landing_page
      field :referrer
    end
  end
end
