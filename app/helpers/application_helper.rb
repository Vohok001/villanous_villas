module ApplicationHelper
  def default_lair_image(lair_name)
    default_images = {
      "Volcano Lair" => "volcano-lair.jpg",
      "Fortress Vader" => "fortress-2.jpg",
      "Abandoned Amusement Park" => "fun-house.jpg",
      "Asteroid M" => "asteroid-m.jpg",
      "Barad-dûr" => "barad-dur.jpg",
      "Snake Mountain" => "snake-mountain.jpg",
      "Bowser's Castle" => "bowsers-castle.jpg",
      "Oscorp Penthouse" => "oscorp-penthouse.jpg",
      "Malfoy Manor" => "malfoy-manor.jpg",
      "Technodrome" => "technodrome.jpg"
    }

    default_images[lair_name] || "lair-placeholder.jpg"
  end
end
