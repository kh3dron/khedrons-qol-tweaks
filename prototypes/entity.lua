local util = require("util")

-- Modify existing speed modules to eliminate quality decrease
data.raw["module"]["speed-module"].effect.quality = 0
data.raw["module"]["speed-module-2"].effect.quality = 0  
data.raw["module"]["speed-module-3"].effect.quality = 0


-- Add invisible substation to roboports
data:extend({
  {
    type = "electric-pole",
    name = "invisible-substation",
    icon = "__khedrons-qol-tweaks__/graphics/icons/substation.png",
    flags = { "not-on-map", "not-blueprintable", "not-selectable-in-game" },
    max_health = 200,
    selection_box = { { 0, 0 }, { 0, 0 } },
    collision_box = { { 0, 0 }, { 0, 0 } },
    drawing_box_vertical_extension = 2,
    maximum_wire_distance = 55,
    supply_area_distance = 55,
    pictures =
    {
      layers =
      {

        {
          filename = "__khedrons-qol-tweaks__/graphics/entity/substation/substation.png",
          priority = "high",
          width = 138,
          height = 270,
          direction_count = 4,
          shift = util.by_pixel(0, 1 - 32),
          scale = 0.5
        },
        {
          filename = "__khedrons-qol-tweaks__/graphics/entity/substation/substation-shadow.png",
          priority = "high",
          width = 370,
          height = 104,
          direction_count = 4,
          shift = util.by_pixel(62, 42 - 32),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },

    impact_category = "metal",
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(136, 8),
          green = util.by_pixel(124, 8),
          red = util.by_pixel(151, 9)
        },
        wire =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-21, -82),
          red = util.by_pixel(22, -81)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(133, 9),
          green = util.by_pixel(144, 21),
          red = util.by_pixel(110, -3)
        },
        wire =
        {
          copper = util.by_pixel(0, -85),
          green = util.by_pixel(15, -70),
          red = util.by_pixel(-15, -92)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(133, 9),
          green = util.by_pixel(127, 26),
          red = util.by_pixel(127, -8)
        },
        wire =
        {
          copper = util.by_pixel(0, -85),
          green = util.by_pixel(0, -66),
          red = util.by_pixel(0, -97)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(133, 9),
          green = util.by_pixel(111, 20),
          red = util.by_pixel(144, -3)
        },
        wire =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-15, -71),
          red = util.by_pixel(15, -92)
        }
      }
    }
  }
})
