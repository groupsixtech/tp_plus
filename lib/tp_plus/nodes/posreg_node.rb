module TPPlus
  module Nodes
    class PosregNode

      COMPONENTS = {
        "x" => 1,
        "y" => 2,
        "z" => 3,
        "w" => 4,
        "p" => 5,
        "r" => 6,
      }

      GROUPS = {
        "gp1" => "GP1",
        "gp2" => "GP2",
        "gp3" => "GP3",
        "gp4" => "GP4",
        "gp5" => "GP5"
      }

      attr_accessor :comment
      attr_reader :id
      def initialize(id)
        @id = id
        @comment = ""
      end

      def groups(context)
        return "" if context == ""
        "#{GROUPS[context]}:"
      end

      def comment_string
        return "" if @comment == ""

        ":#{@comment}"
      end

      def component(m)
        return "" if m == ""

        ",#{COMPONENTS[m]}"
      end

      def component_valid?(c)
        [""].concat(COMPONENTS.keys).include? c
      end

      def component_groups?(c)
        [""].concat(GROUPS.keys).include? c
      end

      def requires_mixed_logic?(context)
        false
      end

      def address(context)
        "#{@id}"
      end

      def eval(context,options={})
        options[:method] ||= ""
        if options[:group].is_a? DigitNode
          group_string = GROUPS["gp" + options[:group].eval(context).to_s] + ":" if options[:group]
        else
          group_string = GROUPS[options[:group]] + ":" if options[:group]
        end

        raise "Invalid component" unless component_valid?(options[:method]) || component_groups?(options[:group])

        "PR[#{group_string}#{@id}#{component(options[:method])}#{comment_string}]"
      end
    end
  end
end
