return {
  {
    dir = '/Users/scott/Dev/spotify-tui',
    name = 'spotify-tui',
    build = 'npm install',
    init = function()
      vim.env.SPOTIFY_CLIENT_ID = vim.env.SPOTIFY_CLIENT_ID or os.getenv("SPOTIFY_CLIENT_ID")
      vim.env.SPOTIFY_CLIENT_SECRET = vim.env.SPOTIFY_CLIENT_SECRET or os.getenv("SPOTIFY_CLIENT_SECRET")
    end,
    config = function()
      local ok, spotify = pcall(require, 'spotify-tui')
      if ok then
        spotify.setup({ path = '/Users/scott/Dev/spotify-tui' })
      end
    end,
  },
}
