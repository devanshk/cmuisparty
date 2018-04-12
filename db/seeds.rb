# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Step 1: create pieces along with purchases and prices
teams = [["CMU Spring Carnival", "quesenberry", ['Karan Bokil', 'Andrew Kim', 'Ritika Srivastava']],
         ["PRC", "quesenberry", ['Arnav Gupta', 'Vinitha Ranganeni', 'Jonathan Wihl',"28698420_1778147942228209_1984941596132043450_o.jpg"]],
         ["Beaver County Animal Shelter", "quesenberry", ['Dexter Epouhe', 'Siting Jin', 'Arnav Luthra']],
         ["CMU Professional Dev Serv", "poepping", ['Shubhangi Bhotika', 'Andy Lee', 'Julien Naegeli']],
         ["CMU Contracts", "poepping", ['Dylan Hyun', 'Julia Luo', 'Linda Xia'],"29062552_1846073175457727_3281440290719662080_n.jpg"],
         ["Harrison Middle School", "poepping", ['Sydney Bauer', 'Renhao Hu', 'Isha Laad', 'Fletcher Marsh']],
         ["Kodiak Island School Dist", "mertz", ['Conner Fitzgibbon', 'Hera Miao', 'Rich Zhu'],'27797745_10209390451111970_5358427483216607897_o.jpg'],
         ["KidLift", "mertz", ['Jason Chang', 'Youce Ji','Svayam Mishra']],
         ["University Libraries", "mertz", ['Obed Appiah-Agyeman', 'Devin Fan', 'Pavan Gollapalli', 'Stephen Yamalis']],
         ["Wesley Family Services 1", "kowalsky", ['Devansh Kukreja', 'Dylan Schwartz', 'Sally Zhao']],
         ["Wesley Family Services 2", "kowalsky", ['Bernard Docelian', 'John Foley', 'Yingjing Lu']],
         ["Greg Norris - ILFI", "kowalsky", ['Karan Gugle', 'Arnav Jain', 'Shreyas Krishnaswamy', 'Manuel Lopez']],
         ["Phipps 1", "moussawi", ['Justin Chang', 'Graciela Garcia', 'Frank Liao']],
         ["Phipps 2", "moussawi", ['Ashvin Niruttan', 'Minnie Wu', 'George Yao']],
         ["Education Partnership 2", "moussawi", ['Alexander Bainbridge', 'Walter Donnellan', 'Juliann Fields', 'Killian Huang']],
         ["Holocaust Center", "heimann", ['Kenneth Cohen', 'Sean Park', 'Emily Porat'],'28164406_10209581924419666_24472467873198141_o.jpg'],
         ["CMU Athletics", "heimann", ['Winston Chu', 'Alec Lam', 'Aathreya Thuppul']],
         ["Education Partnership 1", "heimann", ['Stephanie Pang', 'Alina Yu', 'Shirley Zhou'],'28238469_1319366268164213_719935990629362742_o.jpg']]
         
teams.each do |team|
  name = team[0]
  color = team[1]
  people = team[2]
  
  new_team = Team.new(name: name, color: color)      
  new_team.save
  
  people.each do |person|
    new_person = Person.new(name: person, team: new_team)
    new_person.save
  end
  
end
