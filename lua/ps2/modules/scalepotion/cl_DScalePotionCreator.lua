local PANEL = {}

function PANEL:Init( )
    -- Derma will call DItemCreator_Steps.Init here automatically
    -- Which creates the first step with the basic pointshop item information

    -- Create a DLowGravityCreator_Stage1 which we will define later
    self.scalePotionPanel = vgui.Create( "DScalePotionCreator_Stage1" )
    
    -- Add our custom control to the steps list
    self.stepsPanel:AddStep( "Scale Potion Settings", self.scalePotionPanel )
end

-- Create a new Derma Control called DLowGravityCreator, using the functions from the PANEL Table
-- and use DItemCreator_Steps as base control.
vgui.Register( "DScalePotionCreator", PANEL, "DItemCreator_Steps" )