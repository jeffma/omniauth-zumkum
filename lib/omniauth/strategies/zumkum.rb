require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Zumkum < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, 'zumkum'

      option :client_options, {
        :site => "http://passport.zumkum.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :name => raw_info["name"]
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end

