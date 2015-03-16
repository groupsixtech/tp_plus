module TPPlus
  module Nodes
    class LPOSNode
      def initialize(type)
        @type  = type
      end

      def requires_mixed_logic?(context)
        false
      end

      def eval(context,options={})
        "LPOS"
      end
    end
  end
end
