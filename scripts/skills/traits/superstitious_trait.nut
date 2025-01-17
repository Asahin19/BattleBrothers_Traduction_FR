this.superstitious_trait <- this.inherit("scripts/skills/traits/character_trait", {
	m = {},
	function create()
	{
		this.character_trait.create();
		this.m.ID = "trait.superstitious";
		this.m.Name = "Superticieux";
		this.m.Icon = "ui/traits/trait_icon_26.png";
		this.m.Description = "C\'est maudit! Ce personnage est extremement supersticieux et est donc plus vuln�rable aux attaques qui visent sa D�termination.";
		this.m.Excluded = [
			"trait.fearless",
			"trait.brave"
		];
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10[/color] de D�termination aux tests de moral contre la Peur, la Panique ou le Contr�le Mental"
			}
		];
	}

});

