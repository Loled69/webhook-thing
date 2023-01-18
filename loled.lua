menu.create_thread(function()
local file = io.open(utils.get_appdata_path("PopstarDevs\\2Take1Menu", "notification.log"), "r")
file:seek("end")
  while true do
     line = file:read("*l")
    if line then
      if string.find(line, "Add what you want to find here") then
	            local webhook = "" --Add your webhook here
                local body = [[
                    {
                        "content": "]]..line..[[",
                        "embeds": null,
                        "username": "",
                        "avatar_url": "",
                        "attachments": []
                    }
                ]]
                local statusCode, responseBody = web.post(webhook, {"Content-Type: application/json"}, body)
      end
    else
      system.wait(1000)
    end
  end
end)

-- This wasn't fully created by me i just smashed it together and it worked for me
