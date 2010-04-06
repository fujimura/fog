module Fog
  module Terremark
    class Real

      require 'fog/terremark/parsers/task'

      # Get details of a task
      #
      # ==== Parameters
      # * task_id<~Integer> - Id of task to lookup
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
      #     * 'Result'<~String> -
      #       * 'href'<~String> - href of result
      #       * 'name'<~String> - name of result
      #       * 'type'<~String> - type of result
      def get_task(task_id)
        request(
          :expects  => 200,
          :method   => 'GET',
          :parser   => Fog::Parsers::Terremark::Task.new,
          :path     => "task/#{task_id}"
        )
      end

    end

    class Mock

      def get_task(task_id)
        raise MockNotImplemented.new("Contributions welcome!")
      end

    end
  end
end
