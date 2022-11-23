# frozen_string_literal: true

##
# URLs are generated with an expiration time, to avoid it we have implemented the workaround described below
# @see https://github.com/rails/rails/issues/31419#issuecomment-370900013
Rails.application.config.to_prepare do
  if defined?(ActiveStorage::Service::S3Service)
    # Make ActiveStorage as public-read. @dinatih
    ActiveStorage::Service::S3Service.class_eval do
      def url(key, expires_in:, filename:, disposition:, content_type:)
        instrument :url, key: key do |payload|
          generated_url = object_for(key).public_url
          payload[:url] = generated_url
          generated_url
        end
      end
    end
  end
end
