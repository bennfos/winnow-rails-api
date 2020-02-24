Rails.application.config.session_store :cookie_store,
key: "_winnow_client", domain: "https://winnow-rails-api.herokuapp.com", expire_after: 14.days