-- C# language server (the same Roslyn server used by VS Code's C# Dev Kit)
return {
	"seblyng/roslyn.nvim",
	ft = { "cs", "razor" },
	opts = {
		-- look for solutions in child folders too (projects outside the .sln folder)
		broad_search = true,
	},
}
