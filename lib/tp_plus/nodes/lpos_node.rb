module TPPlus
  module Nodes
    class LPOSNode
      def initialize(type)
        @type  = type
      end

      def requires_mixed_logic?(context)
        false
      end

      def moveType(context)

      end

      def eval(context,options={})
        #"LPOS"
        "#{@type}"
      end
    end
  end
end
