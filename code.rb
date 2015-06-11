class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero
  def speed_in_mph
    1000 * super
  end

  def backstory
    "Always had a need for speed"
  end

  def powers
    "Superspeed"
  end

  def weakness
    "Must nap twice a day"
  end

end

class Brawler < SuperHero
  def health
    20 * super
  end

  def backstory
    "Ate his spinach"
  end

  def powers
    "Superstrength"
  end

  def weakness
    "Huge appetite"
  end

end

class Detective < SuperHero
  def weakness
    secret_identity
  end

  def speed_in_mph
    super / 6
  end

  def backstory
    "Minded other people's business"
  end

  def powers
    "Sees through walls"
  end
end

class Demigod < SuperHero
  def home
    "Cosmic Plane"
  end

  def backstory
    "Half the god he could have been"
  end

  def powers
    "Flight"
  end

  def weakness
    "Overconfident"
  end

end

class JackOfAllTrades < SuperHero
  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def powers
    "Multitasking"
  end

  def backstory
    "Master of none"
  end

  def weakness
    "Scatterbrained"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero
  def fans_per_thousand
    super / 100
  end

  def home
    "#{super}'s Oceans"
  end

  def powers
    "Breathes underwater"
  end

  def psychic?
    true
  end

  def backstory
    "Never thirsty"
  end

  def weakness
    "Tans easily"
  end
end
