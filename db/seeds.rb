# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create email: 'admin@admin.de', password: 'testtest', password_confirmation: 'testtest', username: 'Admin'
admin.add_role :admin

User.create email: 'fledermaus@buzzbeat.de', password: 'qwertz12', password_confirmation: 'qwertz12', username: 'FledermausLady123', typ: 0
User.create email: 'evil@buzzbeat.de', password: 'qwertz12', password_confirmation: 'qwertz12', username: 'EvilCrusader', typ: 1

Genre.create name: 'Dance'
Genre.create name: 'Hip Hop'
Genre.create name: 'Pop'
Genre.create name: 'Rock'
Genre.create name: 'Country'

Music.create name: 'Watch out for this', url: 'https://www.youtube.com/watch?v=8W_1vg7W6Oo', description: 'Von: Major Lazer', user_id: 2, genre_id: 1
Music.create name: 'Hold You', url: 'https://www.youtube.com/watch?v=tuH2XTJ0HEI', description: 'Von: Basto', user_id: 2, genre_id: 1

Music.create name: 'Smoke WEED Everyday', url: 'https://www.youtube.com/watch?v=iKDDip5diqc', description: 'Von: Snoop Dogg', user_id: 2, genre_id: 2
Music.create name: 'Candy Shop', url: 'https://www.youtube.com/watch?v=OkXjwCehOVA', description: 'Von: 50 Cent', user_id: 2, genre_id: 2

Music.create name: 'Work', url: 'https://www.youtube.com/watch?v=caaSrdLC28o', description: 'Von: Rihanna', user_id: 2, genre_id: 3
Music.create name: 'Roar', url: 'https://www.youtube.com/watch?v=CevxZvSJLk8', description: 'Von: Katy Perry', user_id: 2, genre_id: 3

Music.create name: 'November Rain ', url: 'https://www.youtube.com/watch?v=8SbUC-UaAxE', description: 'Von: Guns N\' Roses', user_id: 2, genre_id: 4
Music.create name: 'Feuer Frei!', url: 'https://www.youtube.com/watch?v=ZkW-K5RQdzo', description: 'Von: Rammstein', user_id: 2, genre_id: 4

Event.create name: 'Back to the 90`s', location: 'Jovel' , time: '2000-01-01 22:00:00' , date: '2016-03-12', description: ' Sa, 12.03, 22:00 Uhr
Music Hall
Einlass: 22:00

Back to the 90`s - Back to Jovel! Wir holen Euch die 90er auf die Tanzfläche

Back to the 90´s ist Euer regelmäßiger Partyevent mit den größten Hits der 90er.

Ob Backstreet Boys, Haddaway , Dr. Alban oder Snap, sie alle mischten mit und verpassten mit Hits wie Rhythm Is A Dancer, Sing Hallelujah oder auch Everybody einem Jahrzehnt ihren Stempel. Aber auch Acts wie die H-Blockx , Die Ärzte, Nirvana oder Guano Apes dürfen an so einem Abend natürlich nicht fehlen.

In der Music Hall erlebt Ihr diesen Mix der Euch garantiert zum Tanzen bringt.

Getränkespecials zum Kult-Preis von 2,50 EUR bis 24 Uhr!

Einlass ab 21 Jahren

Beginn 22 Uhr

Eintritt 6,- EUR

Viel Spaß wünscht das Jovel-Team', picture: 'http://www.jovel.de/media/jovel/images/1203-big.jpg', user_id: 3

Event.create name: '30+ Party', location: 'Jovel' , time: '2000-01-01 22:00:00' , date: '2016-03-19', description: ' Sa, 19.03, 22:00 Uhr
Music Hall
Einlass: 22:00

30+ Party - Love Generation

Heute feiert die "Love Generation" zu den besten Hits der vergangenen Jahren, bis hin zu den Top aktuellen Charts!

SPECIAL: Welcome Drink bis 23 Uhr "One Hugo for free"!

Eintritt 5,- EUR, mit Sparkassen-Card (jeglicher Art) Eintritt nur 3,- EUR.

Einlass: 30+', picture: 'http://www.jovel.de/media/jovel/images/30-big.jpg', user_id: 3

Event.create name: 'Schlager Nacht', location: 'Jovel' , time: '2000-01-01 22:00:00' , date: '2016-04-09', description: ' Sa, 09.04, 22:00 Uhr
Music Hall
Einlass: 22:00

DIE SCHLAGERNACHT

Getrunken und getanzt werden darf zu den stimmungsvollen Hits der Schlagerstars - von Michael Wendler, über Andrea Berg bis hin zum ultimativen Hitmix von Pur! Roter und Grüner bis 24 Uhr für 1,50 EUR

Gruppenrabatt: Kommt mit 5 Leuten und erhaltet eine Flasche Prosecco zum Vorzugspreis von 10,00 EUR!

Treffe den Stern, der deinen Namen trägt....

Beginn: 22 Uhr

Eintritt: 5,00 EUR

Ab 21 Jahren', picture: 'http://www.jovel.de/media/jovel/images/schlager04-big.jpg', user_id: 3

Event.create name: 'MEN IN BLACK', location: 'Heaven Club' , time: '2000-01-01 23:00:00' , date: '2016-03-05', description: '
Agent D. & Agent P. sind auch im Jahr 2016 zurück im Heaven! Diesmal können auch die weiblichen galaktischen Gäste Ihr Glück herausfordern, diese Party mit dem Luxus-Shuttle anzufliegen.

Schreibt eine kurze Mail mit Foto und Text "Ich bin die perfekte Co-Agentin, weil..." an contact@vibetown.de

In der Limo werdet Ihr persönlich von den special agents Dokker & Philo abgeholt, bei Champagnergenuss zum Heaven chauffiert und an der Schlange vorbeigelotst. Jede Co-Agentin darf bis zu vier Co-Agentinnen auf den Flug mitnehmen. All aboard!

DJs of the night:
DOKKER
PHILO DA PHUNKAHOLIC
MARCO VAN BASSKEN

Doors: 23:00h
', picture: 'http://www.heaven-lounge.de/admin/uploads/b.jpg', user_id: 3

Event.create name: 'CHUCK Norris sagt PARTY', location: 'Cuba Nova' , time: '2000-01-01 22:00:00' , date: '2016-03-05', description: 'CHUCK schmeißt \'ne Party 100 Meter weit & wir dafür die Möbel aus’m Fenster!
1st Floor: Pop Smasher & Rock Raketen, Hip Hop Knaller & dicke Dancehall Dinger mit DJ Dino & Puddel.

2nd Floor Chuck im Übermorgenland: Clubhits, Tropical House & Electro Bretter mit DJ Mega Mats. Chuck bring you the madness!

CHUCK sagt: wer meine Seite liked und bei der FB-Veranstaltung zusagt, bekommt bis 0 Uhr freien Eintritt und einen Schnaps dazu!

Fetten Musik und dazu ordentlich Rambazamba - Beerpong, Konfetti, Nintendo & Looping Louie.
Ihr könnt so viel üben, wie ihr wollt, CHUCK macht euch alle!

1st Floor: Beatsteaks / Beginner / Beyoncé / Black Eyed Peas / Blink-182 / Bloodhound Gang / Daddy Yankee / Deichkind / Dr Dre / Ed Sheeran / Eminem / Fettes Brot / 50 Cent / Jan Delay / Jay-Z / Kanye West / The Killers / Kings Of Leon / Macklemore / Major Lazer / Mark Ronson / Michael Jackson / The Offspring / Outkast / Peter Fox / P!nk / RHCP / Sean Paul / Seeed / Sportfreunde Stiller / The White Stripes /

2nd Floor: Afrojack / Avicii / Axwell / Calvin Harris / Darude / David Guetta / Diplo / DJ Snake / Eric Prydz / Faithless / Felix Jaehn / Galantis / Jonas Blue / Klingande / Kygo / Lost Frequencies / Martin Solveig / Oliver Heldens / Paul Kalkbrenner / Robin Schulz / Sigala / Swedish House Mafia / Zedd / ZHU /

Beck‘s auf ex für 1,50 Ocken von 23 - 0 Uhr.
Chuck sagt Eimer!
Specials für die ganze Nacht:
5 Heineken im Eimer auf Eis: 10,00 €
5 Desperados im Eimer auf Eis: 14,00 €
1 Fl. Sekt im Eimer auf Eis: 12,00 €
1 Fl. Smirnoff Wodka (0,5l) mit Energy oder Cola: 37,00 €
1 Fl. Arktis-Wodka (0,5l) mit Energy oder Cola: 32,00 €', picture: 'https://scontent-fra3-1.xx.fbcdn.net/hphotos-xlf1/v/l/t1.0-9/12715672_1690764271201860_1463380942049772347_n.jpg?oh=7268e4e48166cd961af634f6d60a62d5&oe=57613DDF', user_id: 3