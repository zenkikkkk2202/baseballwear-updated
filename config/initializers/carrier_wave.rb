if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws' 
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials[:access_key_id],
      aws_secret_access_key: Rails.application.credentials[:secret_access_key],
      region: 'ap-northeast-1'
    }
    config.fog_directory     =  'baseballwear2'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/baseballwear2'
  end

  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
end