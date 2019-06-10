require_relative '../config/environment.rb'

ok = Musical.new("Oklahoma","Frontier")
bom = Musical.new("Book of Mormon","Africa")
rent = Musical.new("rent","newyork")
cats = Musical.new("cats","whoknows")

fifth = Theater.new("5th Ave", "Seattle")
sb = Theater.new("Showbox", "Seattle")
met = Theater.new("Met", "newyork")

p1 = Performance.new("05/28/2019", ok, fifth)
p2 = Performance.new("05/28/2019", bom, sb)
p3 = Performance.new("05/28/2019", cats, met)
p4 = Performance.new("05/28/2019",rent, met )
p5 = Performance.new("05/28/2019", ok, fifth)
p6 = Performance.new("05/28/2019", bom, sb)
p7 = Performance.new("05/28/2019", cats, met)
p8 = Performance.new("05/28/2019",rent, met )
binding.pry
0
