module TPPlus
  class Namespace < BaseBlock
    def initialize(name, block, vars={})
      super()
      
      @name       = name.strip
      @nodes      = block
      @variables  = vars.clone

      define!
    end

    def define!
      # copy variables & constants to interpreter
      add_parent_nodes(self)

      @nodes.each_with_index do |n, index|
        if n.is_a?(TPPlus::Nodes::RegDefinitionNode)
          #defer definition of local variables outside of constructor
          unless n.range.is_a?(TPPlus::Nodes::LocalDefinitionNode)
            @nodes[index] = n.eval(self) 
          end
        end
      end

      @nodes.flatten.select {|n| [TPPlus::Nodes::DefinitionNode, TPPlus::Nodes::PoseNode, TPPlus::Nodes::FunctionNode, TPPlus::Nodes::NamespaceNode, TPPlus::Nodes::UsingNode].include? n.class }.each do |node|
        @nd = node
        node.eval(self)
      end
    end

    def reopen!(block)
      @nodes = block
      define!
    end

    def add_constant(identifier, node)
      return unless @constants[identifier.to_sym].nil?

      @constants[identifier.to_sym] = node
    end

    def add_var(identifier, node)
      return unless @variables[identifier.to_sym].nil? || identifier == RETURN_NAME

      @variables[identifier.to_sym] = node
      node.comment = "#{@name}_#{identifier}"
    end

    def add_parent_nodes(parent)
      @variables.each do |k,v|
        if v.is_a?(Nodes::RegNode)
          parent.add_var(k, v)
        elsif v.is_a?(Namespace)
          parent.add_namespace(k, v.nodes)
        elsif v.is_a?(Nodes::ConstNode)
          parent.add_constant(k, v)
        end
      end

      parent
    end

    def add_function(name, args, block, ret_type = '', inlined = false)
      identifier = @name + '_' + name

      pass_nodes = get_parent_imports(block)
      pass_nodes = pass_nodes.merge(@variables)
      
      if @functions[name.to_sym].nil?
        @functions[name.to_sym] = TPPlus::Function.new(identifier, args, block, ret_type=ret_type, vars=pass_nodes, inlined=inlined)
        @functions[name.to_sym].eval
      end
    end

    def get_constant(identifier)
      raise "Constant (#{identifier}) not defined within namespace #{@name}" if @constants[identifier.to_sym].nil?

      @constants[identifier.to_sym]
    end

    def get_var(identifier)
      return get_constant(identifier) if identifier.upcase == identifier
      raise "Variable (#{identifier}) not defined within namespace #{@name}" if @variables[identifier.to_sym].nil?

      @variables[identifier.to_sym]
    end

    def eval
      #use to evaluate imports
      @nodes.flatten.select {|n| [TPPlus::Nodes::DefinitionNode, TPPlus::Nodes::PoseNode, TPPlus::Nodes::NamespaceNode].include? n.class }.each do |node|
        @nd = node
        node.eval(self)
      end
    end

  end
end
