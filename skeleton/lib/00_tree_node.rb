require "byebug"

class PolyTreeNode
  attr_reader :value
  attr_accessor :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []

  end

  def parent
    @parent
  end

  def children
    @children
  end

  def value
    @value

  end

  def parent=(adopt)
    unless @parent.nil?
      #@parent.children.reject! {|el| el == self}
      @parent.children.delete(self)
    end
    @parent = adopt
    unless @parent == nil || @parent.children.include?(self)
      @parent.children.push(self)
    end
  end

  def add_child(child)
    child.parent=(self)
  end

  def remove_child(child)
    raise unless child.parent == self
    child.parent=(nil)
  end

  def dfs(target)
    return self if value == target
    unless children.empty?
      children.each do |child|
        result_node = child.dfs(target)
        return result_node if result_node
      end
    end
    nil
  end

  def bfs(target)
    queue = [self]

    until queue.empty?
      check = queue.shift
      return check if check.value == target
      queue = queue.concat(check.children)
    end
  end

  def inspect
    "#{value}"#{}", #{parent}, #{children}"
  end

end
