
if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_collab_grab", domain: "name of domain"
else
    Rails.application.config.session_store :cookie_store, key: "_collab_grab"
end