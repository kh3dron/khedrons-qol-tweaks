-- Khedron's QoL Tweaks Control Script
-- Handles runtime logic for roboport power transmission

local roboport_substations = {}

local function create_invisible_substation(roboport)
  local surface = roboport.surface
  local position = roboport.position

  local substation = surface.create_entity {
    name = "invisible-substation",
    position = position,
    force = roboport.force,
    create_build_effect_smoke = false
  }

  if substation then
    roboport_substations[roboport.unit_number] = substation
  end
end

local function remove_invisible_substation(roboport_unit_number)
  local substation = roboport_substations[roboport_unit_number]
  if substation and substation.valid then
    substation.destroy()
    roboport_substations[roboport_unit_number] = nil
  end
end

local function on_built_entity(event)
  local entity = event.created_entity or event.entity
  if entity and entity.valid and entity.name == "roboport" then
    create_invisible_substation(entity)
  end
end

local function on_entity_destroyed(event)
  local entity = event.entity
  if entity and entity.type == "roboport" then
    remove_invisible_substation(entity.unit_number)
  end
end

local function on_init()
  -- Find all existing roboports and create substations for them
  for _, surface in pairs(game.surfaces) do
    local roboports = surface.find_entities_filtered { name = "roboport" }

    for _, roboport in pairs(roboports) do
      create_invisible_substation(roboport)
    end
  end
end

local function on_configuration_changed()
  on_init()
end

-- Register event handlers
script.on_init(on_init)
script.on_configuration_changed(on_configuration_changed)
script.on_event(defines.events.on_built_entity, on_built_entity)
script.on_event(defines.events.on_robot_built_entity, on_built_entity)
script.on_event(defines.events.script_raised_built, on_built_entity)
script.on_event(defines.events.script_raised_revive, on_built_entity)
script.on_event(defines.events.on_player_mined_entity, on_entity_destroyed)
script.on_event(defines.events.on_robot_mined_entity, on_entity_destroyed)
script.on_event(defines.events.on_entity_died, on_entity_destroyed)
