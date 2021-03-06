module Fog
  module Compute
    class Brightbox
      class Real

        def get_account(options = {})
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "/1.0/account",
            :headers  => {"Content-Type" => "application/json"},
            :body     => MultiJson.encode(options)
          )
        end

      end
    end
  end
end