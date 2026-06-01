return {
  {
    dir = vim.fn.stdpath 'config' .. '/../..' .. '/Dev/spotify-tui',
    name = 'spotify-tui',
    build = 'npm install',
    cond = function() return vim.fn.has('mac') == 1 end,
    init = function()
      vim.env.SPOTIFY_CLIENT_ID = vim.env.SPOTIFY_CLIENT_ID or os.getenv("SPOTIFY_CLIENT_ID")
      vim.env.SPOTIFY_CLIENT_SECRET = vim.env.SPOTIFY_CLIENT_SECRET or os.getenv("SPOTIFY_CLIENT_SECRET")
    end,
    config = function()
      local ok, spotify = pcall(require, 'spotify-tui')
      if ok then
        spotify.setup({ path = vim.env.SPOTIFY_TUI_PATH or vim.fn.expand('~/Dev/spotify-tui') })
      end
    end,
  },
}
