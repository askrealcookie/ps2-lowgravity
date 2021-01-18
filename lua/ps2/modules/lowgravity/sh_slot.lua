Pointshop2.AddEquipmentSlot( "Scale", function( item )
	--Check if the item is a low_gravity item
	return instanceOf( Pointshop2.GetItemClassByName( "base_scale_potion" ), item )
end )