CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["AMAZON_KEY_ID"],
    aws_secret_access_key: ENV["AMAZON_SECRET_KEY"]
  }
  config.fog_directory = ENV["AMAZON_BUKET_NAME"]
      config.fog_public     = false
end

