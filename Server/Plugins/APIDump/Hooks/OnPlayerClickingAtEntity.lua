return
{
	HOOK_PLAYER_CLICKING_AT_ENTITY =
	{
		CalledWhen = "A player has used an entity. Plugins may override / refuse.",
		DefaultFnName = "OnPlayerClickingAtEntity",  -- also used as pagename
		Desc = [[
			This hook is called when the {{cPlayer|player}} right-clicks an {{cEntity|entity}}. Plugins may
			override the default behavior or even cancel the default processing.
		]],
		Params =
		{
			{ Name = "Player", Type = "{{cPlayer}}", Notes = "The player who has right-clicked the entity" },
			{ Name = "Entity", Type = "{{cEntity}} descendant", Notes = "The entity that has been right-clicked" },
			{ Name = "TargetPosition", Type = "{{Vector3f}}", Notes = "The location where the player click" },
		},
		Returns = [[
			If the function returns false or no value, Cuberite calls other plugins' callbacks and finally does
			the default processing for the right-click. If the function returns true, no other callbacks are
			called and the default processing is skipped.
		]],
	},  -- HOOK_PLAYER_CLICKING_AT_ENTITY
}
