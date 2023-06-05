local get_os_name = require("utils.get_os_name")

local launch_menu = {}

if get_os_name.get_os_name() == "Windows" then
   launch_menu = {
      { label = "Ubuntu", args = { "wsl", "-d", "Ubuntu" }, domain = { DomainName = "WSL:Ubuntu" } },
      {
         label = "Command Prompt",
         args = { "cmd" },
      },
      {
         label = "Git Bash",
         args = { "C:\\'Program Files'\\Git\\bin\\bash.exe" },
      },
   }
else
   launch_menu = {
      { label = "bash", args = { "/usr/bin/bash" } },
   }
end

return launch_menu
