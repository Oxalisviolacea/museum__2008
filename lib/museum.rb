class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits =  []
    @patrons = []
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

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patrons_by_interest = {}
    @patrons.each do |patron|
      @exhibits.each do |exhibit|
        if patron.interests.include?(exhibit)
          if patrons_by_interest[exhibit.name] == nil
            patrons_by_interest[exhibit.name] = [patron]
          else
            patrons_by_interest[exhibit.name] << patron
          end
        end
      end
    end
  end
end
