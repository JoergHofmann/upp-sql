driver = require "luasql.sqlite3"
env = driver.sqlite3()
conn = env:connect("aufgaben.sqlite")

function Aufgabe (nr)

	local abfrage = "SELECT * FROM aufgabe WHERE id=" .. nr

	cursor,errorString = conn:execute(abfrage)
	aufgabe = cursor:fetch ({}, "a")
	cursor:close()
	conn:close()
	env:close()
end
