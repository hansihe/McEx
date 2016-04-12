defmodule McEx.ServerListResponse do
  def build(max_players, players_online), do: %{
    players: %{
      max: max_players,
      online: players_online,
    },
    description: %{
      text: "Minecraft server in Elixir!\nhttps://github.com/McEx/McEx"
    },
    favicon: "data:image/png;base64,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",
  }
end