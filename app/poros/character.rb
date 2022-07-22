class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliationq]
  end

end
