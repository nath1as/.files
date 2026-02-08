-- Simple test plugin
local M = {}

function M:entry(job)
	ya.notify({
		title = "Test Plugin",
		content = "Plugin is working! Args: " .. tostring(job.args[1] or "none"),
		timeout = 5,
		level = "info"
	})
end

return M
