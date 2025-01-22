module ApplicationHelper
  def default_lair_image(lair_name)
    default_images = {
      "Volcano Lair" => image_path("volcano-lair.jpg"),
      "Fortress Vader" => image_path("fortress-2.jpg"),
      "Abandoned Amusement Park" => image_path("fun-house.jpg"),
      "Asteroid M" => image_path("asteroid-m.jpg"),
      "Barad-dûr" => image_path("barad-dur.jpg"),
      "Snake Mountain" => image_path("snake-mountain.jpg"),
      "Bowser's Castle" => image_path("bowsers-castle.jpg"),
      "Oscorp Penthouse" => image_path("oscorp-penthouse.jpg"),
      "Malfoy Manor" => image_path("malfoy-manor.jpg"),
      "Technodrome" => image_path("technodrome.jpg")
    }

    default_images[lair_name] || image_path("lair-placeholder.jpg")
  end
end
