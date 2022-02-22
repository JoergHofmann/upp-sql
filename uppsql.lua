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


function Geschaeftsfaelle (ag)
	local s = "<table>\n"
	local abfrage = "SELECT * FROM geschaeftsfaelle  WHERE aufgabe=" .. ag
	cursor,errorString = conn:execute(abfrage)
	gf = cursor:fetch ({}, "a")
        while gf do
		s = s .. "<tr><td>" .. gf.tag .."." .. gf.monat .. ". </td><td>" .. gf.beschreibung .. "</td></tr>\n"
		gf = cursor:fetch (gf, "a")
	end
	s = s .. "</table>"
	return s
end




function jhoClose ()
	status1,errorString1 = conn:close()
	status2,errorString2 = env:close()
	return ""
end
