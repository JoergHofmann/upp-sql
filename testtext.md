% Testtext
% Jörg Hofmann
% Februar 2022

:(require "uppsql")

:(jhoConnect "aufgaben.sqlite")

$(Aufgabe "1")

# $(aufgabe.titel)

## Sachverhalt

$(aufgabe.sachverhalt)



## Arbeitsaufträge

$(aufgabe.auftraege)


## Geschäftsfälle

$(jhoClose "")
