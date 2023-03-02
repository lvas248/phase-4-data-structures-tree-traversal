class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == id
        return node
      else
        nodes_to_visit = node[:children] + nodes_to_visit
      end
    end
    nil
  end

end