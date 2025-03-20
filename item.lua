data:extend
({
    {
        type = "ammo",
        name = "ultra-magazine",
        icon = "__ultra-magazine__/graphics/icons/ultra-magazine.png",
        ammo_category = "bullet",
        ammo_type =
        {
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot"
                                }
                            },
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit",
                                    offsets = { { 0, 1 } },
                                    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 48, type = "physical" }
                                },
                                {
                                    type = "activate-impact",
                                    deliver_category = "bullet"
                                }
                            }
                        }
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-a[ultra-magazine]",
        stack_size = 100,
        weight = 1 * kg
    },
}
)
