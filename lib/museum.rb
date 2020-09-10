class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits =  []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    reccomended_exhibits = []
    @exhibits.map do |exhibit|
      if patron.interests.include?(exhibit.name)
        reccomended_exhibits << exhibit
      end
    end
    reccomended_exhibits
  end
end
