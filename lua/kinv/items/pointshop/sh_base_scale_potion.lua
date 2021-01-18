ITEM.baseClass	= "base_pointshop_item"
ITEM.multiplier = 2
ITEM.material = "pointshop2/wizard_l.png"

-- Set model scale to multiplier
function ITEM:OnEquip( )
    local ply = self:GetOwner()

    ply:SetModelScale( self.multiplier, 0.5 )
end

-- Set model scale to default
function ITEM:OnHolster( )
    local ply = self:GetOwner()

    ply:SetModelScale( 1, 0.5 )
end

-- Returns a Derma Control Name used to create the shop icon in normal mode
function ITEM.static:GetPointshopIconControl( )
	return "DPointshopMaterialIcon"
end

-- Returns a Derma Control Name used to create the shop icon in lowend mode
function ITEM.static:GetPointshopLowendIconControl( )
	return "DPointshopMaterialIcon"
end

-- Returns a derma icon that ised in the inventory
function ITEM:getIcon( )
	self.icon = vgui.Create( "DPointshopMaterialInvIcon" )
	self.icon:SetItem( self )
	return self.icon
end

function ITEM.static.GetPointshopIconDimensions( )
	return Pointshop2.GenerateIconSize( 4, 4 )
end

function ITEM.static.getPersistence( )
	return Pointshop2.ScalePotionPersistence
end

function ITEM.static.generateFromPersistence( itemTable, persistence )
    -- Call the parent's generateFromPersistence to populate default fields such as name, price, description.
    ITEM.super.generateFromPersistence( itemTable, persistence.ItemPersistence )

    -- Set the class properties from the persistence
    itemTable.multiplier = persistence.multiplier
end