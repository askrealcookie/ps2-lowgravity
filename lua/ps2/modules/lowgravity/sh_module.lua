local MODULE = {}

MODULE.Name = "PS2 Scale Potion"
MODULE.Author = "Cookie"

MODULE.Blueprints = {
	{
		label = "Scale Potion",
		base = "base_scale_potion",
		icon = "pointshop2/crime1.png",
		creator = "DScalePotionCreator",
		tooltip = "Create scale potions."
	}
}

Pointshop2.RegisterModule( MODULE )