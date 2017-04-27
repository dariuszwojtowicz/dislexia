User.create!(name:  "Super",
			 surname: "Admin",
			 login: "sa",
             email: "darospeed1992@gmail.com",
             password:              "sony4401",
             password_confirmation: "sony4401",
             admin: true)

Level.create!(name:  "Łatwy",
			 points: 3)
Level.create!(name:  "Średni",
			 points: 5)
Level.create!(name:  "Trudny",
			 points: 8)

Category.create!(name:  "find_letters",
			 level_id: "1",
			 title: "Ile liter?",
			 content: {
			 	:example_title => "Znajdź wszystkie litery K w podanym zdaniu i podaj ich liczbę.",
			 	:example_content  => "Zdanie: Kilka osób klika w klawiaturę.",
			 	:example_answer => "5"
 		 	 }.to_s)
Category.create!(name:  "find_words",
			 level_id: "1",
			 title: "Powtarzające się wyrazy",
			 content: {
			 	:example_title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niz jeden raz i wypisz je po przecinku.",
			 	:example_content  => "Tekst: Wyglądało jakby zaraz miał zacząć padać deszcz, jednak Janek wybrał się na dwór. 
			 		Razem z Tomkiem grali w piłkę. Chwilę później zaczął padać deszcz i koledzy musieli wracać do domów.",
			 	:example_answer => "deszcz,padać"
 		 	 }.to_s)
Category.create!(name:  "erz_arz",
			 level_id: "1",
			 title: "Końcówka -erz czy -arz?",
			 content: {
			 	:example_title => "Do podanych części wyrazów dopisz końcówkę -erz lub -arz i wypisz je po przecinku.",
			 	:example_content  => "Wyrazy: mur- , żołni- , koryt- , żegl- , koszyk- .",
			 	:example_answer => "murarz, żołnierz, korytarz, żeglarz, koszykarz"
 		 	 }.to_s)
Category.create!(name:  "add_endings",
			 level_id: "1",
			 title: "Dokończ wyrazy",
			 content: {
			 	:example_title => "Do podanych części wyrazów dopisz końcówki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:example_content  => "Wyrazy: bab- , kok- , kar- , pok- , tel- .",
			 	:example_answer => "babka, kokardka, karta, pokarm, telefon"
 		 	 }.to_s)
Category.create!(name:  "add_beginnings",
			 level_id: "1",
			 title: "Dopisz początki",
			 content: {
			 	:example_title => "Do podanych części wyrazów dopisz początki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:example_content  => "Wyrazy: -bel , -rko , -żko , -ska , -wan .",
			 	:example_answer => "kabel, wiaderko, łóżko, deska, dywan"
 		 	 }.to_s)

Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery D w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: W pudełku znajduje się dużo drobnych przedmiotów.",
			 }.to_s,
             answer: "5")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery T w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Starszy brat Tomka potrafi stepować z zamkniętymi oczami.",
			 }.to_s,
             answer: "6")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery A w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Anastazja bardzo chciałaby dostać najnowszy model aparatu na urodziny.",
			 }.to_s,
             answer: "12")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery B w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Babcia Bożenki będzie gotowała zupę z buraków na sobotni obiad.",
			 }.to_s,
             answer: "7")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery C w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Ciocia Czesława pracuje w cukierni na naszym osiedlu. ",
			 }.to_s,
             answer: "5")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery E w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Ela to energiczna i elokwentna studentka ekonomii.",
			 }.to_s,
             answer: "7")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery F w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Fabian zamierza nauczyć się gry na fortepianie i na flecie.",
			 }.to_s,
             answer: "3")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery G w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Grzegorz przeglądając dzisiejszą gazetę spostrzegł bardzo interesujące ogłoszenie o pracy dla górników.",
			 }.to_s,
             answer: "7")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery H w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Hubert bardzo kocha swojego chomika.",
			 }.to_s,
             answer: "3")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery I w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Irena idzie do hipermarketu żeby kupić kilogram ziemniaków i mięso z indyka na obiad.",
			 }.to_s,
             answer: "12")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery J w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Janek ma jutro trzy sprawdziany, ale nie jest jeszcze na nie nauczony. ",
			 }.to_s,
             answer: "4")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery K w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Kilka klas ze szkoły podstawowej we wtorek wybiera się na wycieczkę szkolną do Krakowa.",
			 }.to_s,
             answer: "9")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery L w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Latem Lucyna lubi leżeć na leżaku i opalać się w wolne dni.",
			 }.to_s,
             answer: "7")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery M w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Muszę poprosić moją mamę o makaron z mięsem na obiad, mam na niego wielką ochotę.",
			 }.to_s,
             answer: "9")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery N w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Norbert nie nosi niebieskich ubrań, ponieważ uważa, że nie jest mu do twarzy w tym kolorze.",
			 }.to_s,
             answer: "6")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery O w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Ostatnio oglądałem ciekawy program dokumentalny w telewizji.",
			 }.to_s,
             answer: "5")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery P w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Piotr i Paweł pomagają Paulinie pomalować jej pokój.",
			 }.to_s,
             answer: "6")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery R w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Robert marzy o tym, aby jechać z rodzicami na wycieczkę rowerową.",
			 }.to_s,
             answer: "6")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery S w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Sędzia spóźnił się na salę sądową.",
			 }.to_s,
             answer: "5")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery U w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Ula uwielbia długie pogaduszki ze swoją przyjaciółką Zuzią.",
			 }.to_s,
             answer: "5")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery W w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Wczoraj wieczorem odwiedził nas wujek Wiesio, z którym uwielbiam bawić się w sklep.",
			 }.to_s,
             answer: "8")
Task.create!(category_id: "1",
			 content: {
			 	:title => "Znajdź wszystkie litery Z w podanym zdaniu i podaj ich liczbę.",
			 	:content => "Zdanie: Odwiedzą mnie dziś znajomi, zamierzamy wspólnie zjeść podwieczorek.",
			 }.to_s,
             answer: "7")

Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Mama planowała dziś zrobić zakupy, jednak musiała zostać dłużej w pracy, dlatego poprosiła Tomka, aby on zrobił zakupy.",
			 }.to_s,
             answer: "zakupy")
Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Kasia jako pracę domową miała napisać referat na lekcję języka polskiego.
						  Dziewczynka nie jest zbyt dobra z tego przedmiotu, dlatego spytała starszego brata czy pomoże jej napisać zadany referat.",
			 }.to_s,
             answer: "napisać,referat")
Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Krzyś i Staś przynieśli z domu do przedszkola swoje samochody. Po skończonej zabawie zanieśli samochody do domu.",
			 }.to_s,
             answer: "samochody,domu,do")
Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Marek lubi jeść lody, najbardziej smakują mu lody śmietankowe. Marek często je kupuje.",
			 }.to_s,
             answer: "marek,lody")
Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Nasza sąsiadka często myje okna, ma duże okna ale lubi je myć. Sąsiadka to pracowita kobieta.",
			 }.to_s,
             answer: "sąsiadka,okna")
Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Tomek i Wojtek łowią ryby. Wojtek lubi jeść pieczone ryby, a Tomek grillowane.",
			 }.to_s,
             answer: "tomek,wojtek,ryby")
Task.create!(category_id: "2",
			 content: {
			 	:title => "Znajdź w tekście wszystkie wyrazy, które występują więcej niż jeden raz i wypisz je oddzielone przecinkiem.",
			 	:content => "Tekst: Helenka lubi pływać, a mama lubi patrzeć jak Helenka pływa.",
			 }.to_s,
             answer: "helenka,lubi")

Task.create!(category_id: "3",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówkę -erz lub -arz i wypisz je po przecinku.",
			 	:content => "Wyrazy: tanc- , druk- , kołni- , panc- , piłk- .",
			 }.to_s,
             answer: "tancerz,drukarz,kołnierz,pancerz,piłkarz")
Task.create!(category_id: "3",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówkę -erz lub -arz i wypisz je po przecinku.",
			 	:content => "Wyrazy: bramk- , lek- , aptek- , tal- , past- .",
			 }.to_s,
             answer: "bramkarz,lekarz,aptekarz,talerz,pasterz")
Task.create!(category_id: "3",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówkę -erz lub -arz i wypisz je po przecinku.",
			 	:content => "Wyrazy: pielęgni- , kalend- , pis- , kol- , sklepik- .",
			 }.to_s,
             answer: "pielęgniarz,kalendarz,pisarz,kolarz,sklepikarz")
Task.create!(category_id: "3",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówkę -erz lub -arz i wypisz je po przecinku.",
			 	:content => "Wyrazy: dziennik- , stol- , pęch- , zwi- , piosenk- .",
			 }.to_s,
             answer: "dziennikarz,stolarz,pęcherz,zwierz,piosenkarz")
Task.create!(category_id: "3",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówkę -erz lub -arz i wypisz je po przecinku.",
			 	:content => "Wyrazy: sandomi- , bruk- , tw- , kuch- , mal- .",
			 }.to_s,
             answer: "sandomierz,brukarz,twarz,kucharz,malarz")

Task.create!(category_id: "4",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content => "Wyrazy: tel- , kan- , sto- , łóż- , wid- .",
			 }.to_s,
			 answer: "tel,kan,sto,łóż,wid")
Task.create!(category_id: "4",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content => "Wyrazy: par- , lek- , dyw- , pod- , kub- .",
			 }.to_s,
			 answer: "par,lek,dyw,pod,kub")
Task.create!(category_id: "4",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content => "Wyrazy: ksi- , dro- , pod- , man- , wyr- .",
			 }.to_s,
			 answer: "ksi,dro,pod,man,wyr")
Task.create!(category_id: "4",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content => "Wyrazy: szy- , wró- , pom- , kom- , mys- .",
			 }.to_s,
			 answer: "szy,wró,pom,kom,mys")
Task.create!(category_id: "4",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz końcówki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content => "Wyrazy: sło- , nie- , gwi- , meb- , żyr- .",
			 }.to_s,
			 answer: "sło,nie,gwi,meb,żyr")

Task.create!(category_id: "5",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz początki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content  => "Wyrazy: -bka , -tka , -apa , -zor , -łka .",
			 }.to_s,
			 answer: "bka,tka,apa,zor,łka")
Task.create!(category_id: "5",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz początki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content  => "Wyrazy: -nna , -oga , -osz , -nie , -ano .",
			 }.to_s,
			 answer: "nna,oga,osz,nie,ano")
Task.create!(category_id: "5",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz początki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content  => "Wyrazy: -szyt , -aty , -rek , -awa , -ewa .",
			 }.to_s,
			 answer: "szyt,aty,rek,awa,ewa")
Task.create!(category_id: "5",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz początki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content  => "Wyrazy: -azd , -bus , -wer , -oga , -tor .",
			 }.to_s,
			 answer: "azd,bus,wer,oga,tor")
Task.create!(category_id: "5",
			 content: {
			 	:title => "Do podanych części wyrazów dopisz początki, tak, aby powstały rzeczowniki i wypisz je po przecinku.",
			 	:content  => "Wyrazy: -lka , -róż , -ter , -yba , -top .",
			 }.to_s,
			 answer: "lka,róż,ter,yba,top")

i = 1
File.open("odm1.txt", "r").each_line do |row|
  j = 0
  insert_sql = "insert into words (words) values "
  words = row.split(",")
  words.each do |word|
    word.strip!
    word.downcase!
    if word != nil and word.index("'") == nil
      if j != 0
        insert_sql += ","
      end
      insert_sql += "('#{word}')"          
      j = j + 1
    end
  end
  insert_sql += ";"
  ActiveRecord::Base.connection.execute insert_sql
  puts i
  i = i + 1
end   





























