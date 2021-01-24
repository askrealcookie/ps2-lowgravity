local PANEL = {}

function PANEL:Init( )	
    self.infoPanel = vgui.Create( "DInfoPanel", self )
    self.infoPanel:SetSmall( true )
    self.infoPanel:Dock( TOP )
    self.infoPanel:SetInfo( "Multiplier", 
    [[When the user equips the item their model scale is multiplied by the multiplier. E.g. a multiplier of 0.5 means half model scale, 2 means double.]] )
    self.infoPanel:DockMargin( 5, 5, 5, 5 )

    -- Add a title
    self:addSectionTitle( "Settings" )
	
    -- Add a Number Wang control
    self.multiplierWang = vgui.Create( "DNumberWang" )
    local pnl = self:addFormItem( "Multiplier", self.multiplierWang )
    -- Set Default Value
    self.multiplierWang:SetValue( 2 ) 
end

function PANEL:SaveItem( saveTable )
    saveTable.multiplier = self.multiplierWang:GetValue( )
end

function PANEL:Validate( saveTable )
    if self.multiplierWang:GetValue() <= 0 then
        return false, "Multiplier must be greater than zero."
    end

    return true
end

function PANEL:EditItem( persistence, itemClass )
    self.multiplierWang:SetValue( persistence.multiplier )
end

-- Override background painting
function PANEL:Paint() end

vgui.Register( "DScalePotionCreator_Stage1", PANEL, "DItemCreator_Stage" )
