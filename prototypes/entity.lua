local util = require("util")

data:extend({
  {
    type = "roboport",
    name = "ultra-roboport",
    icon = "__base__/graphics/icons/roboport.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "roboport"},
    max_health = 500,
    corpse = "roboport-remnants",
    dying_explosion = "roboport-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    
    -- Enhanced energy source with power transmission capability
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "5MW",
      buffer_capacity = "100MJ",
      -- Add power transmission within construction radius
      supply_area_distance = 55,
    },
    recharge_minimum = "40MJ",
    energy_usage = "50kW",
    
    -- Standard roboport functionality
    logistics_radius = 25,
    construction_radius = 55,
    charge_approach_distance = 5,
    robot_slots_count = 7,
    material_slots_count = 7,
    stationing_offset = {0, 0},
    charging_energy = "500kW",
    
    -- Charging positions for robots
    charging_offsets = {
      {-1.5, -1}, {1.5, -1}, {1.5, 1}, {-1.5, 1}
    },
    
    -- Light source - acts as 4x4 grid of lamps
    light = {
      intensity = 0.9,
      size = 8,
      color = {r = 1.0, g = 1.0, b = 0.8}
    },
    
    -- Base graphics (simplified - using base game graphics)
    base = {
      layers = {
        {
          filename = "__base__/graphics/entity/roboport/roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = {1.5, 0.75},
          scale = 0.5
        }
      }
    },
    
    base_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {0.5, -1.5},
      scale = 0.5
    },
    
    base_patch = {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      width = 69,
      height = 50,
      shift = {0.03125, 0.203125},
      scale = 0.5
    },
    
    -- Door animations
    door_animation_up = {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
      scale = 0.5
    },
    
    door_animation_down = {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
      scale = 0.5
    },
    
    -- Recharging animation with enhanced lighting
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      draw_as_glow = true,
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    
    -- Enhanced recharging light
    recharging_light = {
      intensity = 0.4,
      size = 5,
      color = {r = 0.5, g = 0.5, b = 1.0}
    },
    
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.3,
    
    -- -- Circuit network integration
    -- circuit_wire_connection_point = {
    --   wire = {
    --     red = {0.59375, 0.96875},
    --     green = {0.59375, 0.96875}
    --   },
    --   shadow = {
    --     red = {1.5, 1.5},
    --     green = {1.5, 1.5}
    --   }
    -- },
    -- circuit_connector_sprites = require("__base__.prototypes.entity.circuit-connector-sprites").get_circuit_connector_sprites({0.59375, 0.96875}, {1.5, 1.5}, 26),
    -- circuit_wire_max_distance = 9,
    
    -- default_output_signal = {type = "virtual", name = "signal-X"},
    
    -- Working sound
    working_sound = {
      sound = {filename = "__base__/sound/roboport-working.ogg", volume = 0.4},
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60)
    },
    
    -- Door sounds
    open_door_trigger_effect = {
      {
        type = "play-sound",
        sound = {filename = "__base__/sound/roboport-door.ogg", volume = 0.4}
      }
    },
    
    close_door_trigger_effect = {
      {
        type = "play-sound", 
        sound = {filename = "__base__/sound/roboport-door.ogg", volume = 0.4}
      }
    }
  }
})