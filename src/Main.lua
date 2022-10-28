local ScriptEditorService = game:GetService("ScriptEditorService")
local SnippetsTable = require(script.Parent.SnippetsTable)

ScriptEditorService:DeregisterAutocompleteCallback("snippetsPlugin")
ScriptEditorService:RegisterAutocompleteCallback("snippetsPlugin", 1, function(Req, Resp)
	local document = Req.textDocument.document
	local text = document:GetLine(Req.position.line)
	local line, character = Req.position.line, Req.position.character
	
	for k,v in pairs(SnippetsTable) do
		if not string.match(k, "^"..text) then continue end
		table.insert(Resp.items, {
			label=k,
			preselect=false,
			documentation={value="lelkeko"},
			textEdit={
				newText=v,
				replace = {
					start={line=line, character=1},
					["end"]={line=line, character=character}
				}
			}
		})
	end
	
	return Resp
end)

