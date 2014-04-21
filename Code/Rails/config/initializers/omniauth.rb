OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '835583282000.apps.googleusercontent.com', 'X4Cy4ILafqDASb9QEOgwNVq1', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end