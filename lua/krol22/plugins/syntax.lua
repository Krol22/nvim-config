return {
  {
    'othree/yajs.vim',
    ft = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' }
  },
  {
    'leafgarland/typescript-vim',
    ft = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' }
  },
  {
    'peitalin/vim-jsx-typescript',
    ft = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' }
  },
  {
    'MaxMEllon/vim-jsx-pretty',
    ft = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' }
  },
  {
    'tikhomirov/vim-glsl',
    ft = { 'glsl' }
  },
  {
    'habamax/vim-godot',
    ft = { 'gdscript', 'gd', 'gdresource' },
    config = function()
      g.godot_executable = '/Applications/Godot.app'
    end
  },
}
