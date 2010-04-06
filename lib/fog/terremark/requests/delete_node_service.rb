module Fog
  module Terremark
    class Real

      # Destroy a node
      #
      # ==== Parameters
      # * node_service_id<~Integer> - Id of node to destroy
      #
      # ==== Returns
      # * response<~Excon::Response>:
      #   * body<~Hash>:

      # FIXME

      #     * 'CatalogItems'<~Array>
      #       * 'href'<~String> - linke to item
      #       * 'name'<~String> - name of item
      #       * 'type'<~String> - type of item
      #     * 'description'<~String> - Description of catalog
      #     * 'name'<~String> - Name of catalog
      def delete_node_service(node_service_id)
        request(
          :expects  => 200,
          :method   => 'DELETE',
          :path     => "nodeServices/#{node_service_id}"
        )
      end

    end

    class Mock

      def delete_node_service(node_id)
        raise MockNotImplemented.new("Contributions welcome!")
      end

    end
  end
end
