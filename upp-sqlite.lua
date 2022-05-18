driver = require "luasql.sqlite3"

function jhoConnect (db)
	env = driver.sqlite3()
	conn = env:connect(db)
	return ""
end



function Aufgabe (nr)
	local abfrage = "SELECT * FROM aufgabe WHERE id=" .. nr
	cursor,errorString = conn:execute(abfrage)
	aufgabe = cursor:fetch ({}, "a")
	cursor:close()
	return ""
end


function jhoClose ()
	status1,errorString1 = conn:close()
	status2,errorString2 = env:close()
	return ""
end
