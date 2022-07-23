class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo = data[:photoUrl]
  end

  def allies_format
    if @allies == []
      "None"
    else
      @allies.join(", ")
    end
  end

  def enemies_format
    if @enemies == []
      "None"
    else
      @enemies.join(", ")
    end
  end
end
