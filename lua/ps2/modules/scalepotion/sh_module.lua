local MODULE = {}

MODULE.Name = "PS2 Scale Potions"
MODULE.Author = "Cookie"

MODULE.Blueprints = {
	{
		label = "Scale Potion",
		base = "base_scale_potion",
		icon = "pointshop2/wizard_l.png",
		creator = "DScalePotionCreator",
		tooltip = "Create scale potions."
	}
}

Pointshop2.RegisterModule( MODULE )