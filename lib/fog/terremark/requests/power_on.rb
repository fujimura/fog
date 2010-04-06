module Fog
  module Terremark
    class Real

      require 'fog/terremark/parsers/task'

      # Power on a vapp
      #
      # ==== Parameters
      # * vapp_id<~Integer> - Id of vapp to power on
      #
      # ==== Returns
      # * response<~Excon::Response>:
      #   * body<~Hash>:
      #     * 'endTime'<~String> - endTime of task
      #     * 'href'<~String> - link to task
      #     * 'startTime'<~String> - startTime of task
      #     * 'status'<~String> - status of task
      #     * 'type'<~String> - type of task
      #     * 'Owner'<~String> -
      #       * 'href'<~String> - href of owner
      #       * 'name'<~String> - name of owner
      #       * 'type'<~String> - type of owner
      def power_on(vapp_id)
        request(
          :expects  => 202,
          :method   => 'POST',
          :parser   => Fog::Parsers::Terremark::Task.new,
          :path     => "vApp/#{vapp_id}/power/action/powerOn"
        )
      end

    end

    class Mock

      def power_on(vapp_id)
        raise MockNotImplemented.new("Contributions welcome!")
      end

    end
  end
end
