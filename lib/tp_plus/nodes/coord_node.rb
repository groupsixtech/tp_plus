module TPPlus
  module Nodes
    class CoordNode
      def initialize(coord)
        @coord = coord
      end

      def eval(context)
        "#{@coord.upcase}"
      end
    end
  end
end
