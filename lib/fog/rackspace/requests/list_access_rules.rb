module Fog
  module Rackspace
    class LoadBalancer
      class Real
        def list_access_rules(load_balancer_id)
          request(
            :expects  => 200,
            :method   => 'GET',
            :path     => "loadbalancers/#{load_balancer_id}/accesslist"
          )
        end
      end
    end
  end
end
