module TPPlus
  module Nodes
    class IndirectMethodNode

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

      def initialize(type, target, method)
        @type = type
        @target = target
        @method = method || {}
      end

      def string
        case @type
          when :pos
            "P"
          when :posreg
            "PR"
          else
            raise "Invalid indirect method type"
        end
      end

      def requires_mixed_logic?(context)
        case @type
          when :flag#, :timer
            true
          else
            false
        end
      end

      def groups(context)
        return "" if context == ""
        "#{GROUPS[context]}:"
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

      def eval(context,options={})
        @method[:method] ||= ""

        if @method[:group].is_a? DigitNode
          group_string = GROUPS["gp" + @method[:group].eval(context).to_s] + ":" if @method[:group]
        else
          group_string = GROUPS[@method[:group]] + ":" if @method[:group]
        end

        raise "Invalid component" unless component_valid?(@method[:method]) || component_groups?(@method[:group])

        s = "#{string}[#{group_string}#{@target.eval(context)}#{component(@method[:method])}]"
        if options[:opposite]
          s = "!#{s}"
        end
        if options[:as_condition]
          s = "(#{s})"
        end
        s
      end
    end
  end
end
