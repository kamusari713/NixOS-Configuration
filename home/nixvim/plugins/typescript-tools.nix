{
  programs.nixvim.plugins.typescript-tools = {
    enable = true;
    settings = {
      tsserverFilePreferences = {
        includeInlayParameterNameHints = "all";
        includeInlayParameterNameHintsWhenArgumentMatchesName = true;
        includeInlayFunctionParameterTypeHints = true;
        includeInlayVariableTypeHints = true;
        includeInlayVariableTypeHintsWhenTypeMatchesName = true;
        includeInlayPropertyDeclarationTypeHints = true;
        includeInlayFunctionLikeReturnTypeHints = true;
        includeInlayEnumMemberValueHints = true;
      };
    };
  };
}
