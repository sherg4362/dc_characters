Scrape from the https://www.dccomics.com/

baseUrl = https://www.dccomics.com/
characterUrl = baseUrl + "characters" + "/" + hero_name

Who's who in the DC comic universe
1. Superman
2. Batman
3. Wonder Woman
4. Green Lantern
5. The Flash
6. Aquaman
7. Cyborg

Which character would you like to learn more about (enter '1'-'7' or 'exit')

1

Character: Superman

Character Facts
Powers:
super strength, flight, invulnerability, super speed, heat vision, freeze breath, x-ray vision, superhuman hearing, healing factor
Alias/Alter Ego: Man of Steel
Base of Operations: Metropolis
Real Name: Kal-El, Clark Joseph Kent

Would you like more information or go back to list (enter "more" or "back")

more

Description
From his blue uniform to his flowing red cape to the "S" shield on his chest, Superman is one of the most immediately recognizable and beloved DC Super Heroes of all time. The Man of Steel is the ultimate symbol of truth, justice, and hope. He is the world's first Super Hero and a guiding light to all.

The tip of the spear in a revolution that would change the landscape of pop culture, Superman has spent the last eighty years redefining what it means to stand for truth, justice and the American way. The last survivor of the doomed planet Krypton, raised in the quiet heartland of Smallville, Kansas, Superman is as much a legend as he is a man: the gold standard of heroism, compassion and responsibility.

Though his powers make him god-like next to his human compatriots, Superman's story is not one of greed or conquest. Instead, he strives to represent the inherent goodness of the human spirit, and the capacity of every living thing to do right by their neighbors.

Would you like to learn about another character('y' or 'n')

y

Who's who in the DC comic universe
1. Superman
2. Batman
3. Wonder Woman
4. Green Lantern
5. The Flash
6. Aquaman
7. Cyborg

Which character would you like to learn more about (enter '1'-'7' or 'exit')

exit


=begin
{} elems
def initialize(url)
@characterUrl = url
end
puts ['Hello', 'World!']
doc = Nokogiri::HTML(open("https://www.dccomics.com/"))
links = doc.css("div.grid-title a")
len = links.length
characters = []
links.each.with_index(1) do
|character, i| characters << "#{i}" + ". " + character.text
end
character_1 = links[0].text
puts character_1
characters
=end
