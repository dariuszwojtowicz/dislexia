User.create!(name:  "Super",
			 surname: "Admin",
			 login: "sa",
             email: "darospeed1992@gmail.com",
             password:              "sony4401",
             password_confirmation: "sony4401",
             admin: true,
             level: 1)

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

Category.create!(name:  "find_words_in_words",
			 level_id: "2",
			 title: "Słowa ukryte w słowach",
			 content: {
			 	:example_title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:example_content  => "Wyrazy: waleń, obibok, zlewozmywak, słońce, kotwica.",
			 	:example_answer => "leń, bok, zlew, słoń, kot"
 		 	 }.to_s)
Category.create!(name:  "divide_text",
			 level_id: "2",
			 title: "Podziel tekst",
			 content: {
			 	:example_title => "Podziel podany ciąg znaków na wyrazy, tak aby powstały sensowne zdania, następnie napisz te zdania w odpowiedzi.",
			 	:example_content  => "Ciąg znaków: Jużskończyłsięrokszkolnyporozdaniuświadectwwszyscyodetchnęlizulgą.",
			 	:example_answer => "Już skończył się rok szkolny, po rozdaniu świadectw wszyscy odetchnęli z ulgą."
 		 	 }.to_s)
Category.create!(name:  "syllable",
			 level_id: "2",
			 title: "Sylaby",
			 content: {
			 	:example_title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:example_content  => "Wyrazy: karuzela, parasolka.",
			 	:example_answer => "ka ru ze la, pa ra sol ka"
 		 	 }.to_s)
Category.create!(name:  "remove_words",
			 level_id: "2",
			 title: "Niepasujące wyrazy",
			 content: {
			 	:example_title => "Usuń z tekstu wyrazy, które nie pasują. W odpowiedzi napisz poprawiony tekst, pamiętaj o znakach interpunkcyjnych.",
			 	:example_content  => "Tekst: Janek poszedł nareszcie potrzeba spać. Marudził dość dobro długo, że nie jest głodny śpiący.",
			 	:example_answer => "Janek poszedł nareszcie spać. Marudził dość długo, że nie jest śpiący."
 		 	 }.to_s)
Category.create!(name:  "new_words",
			 level_id: "2",
			 title: "Nowe wyrazy",
			 content: {
			 	:example_title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:example_content  => "Wyraz: mandarynka.",
			 	:example_answer => "dar, manna, kara, dama, rada"
 		 	 }.to_s)

Category.create!(name:  "rz_r",
			 level_id: "3",
			 title: "Wymieniamy rz na r",
			 content: {
			 	:example_title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:example_content  => "Wyraz: piłkarz.",
			 	:example_answer => "piłkarski"
 		 	 }.to_s)
Category.create!(name:  "order",
			 level_id: "3",
			 title: "Alfabetycznie!",
			 content: {
			 	:example_title => "Ułóż podane wyrazy w kolejności alfabetycznej i wypisz je po przecinku.",
			 	:example_content  => "Wyrazy: rześki, narzeczona, zwierzę, spojrzenie, zarzut, burza, Rzym, egzemplarz.",
			 	:example_answer => "burza, egzemplarz, narzeczona, rześki, Rzym, spojrzenie, zarzut, zwierzę"
 		 	 }.to_s)
Category.create!(name:  "fill",
			 level_id: "3",
			 title: "Odpowiednie formy wyrazów",
			 content: {
			 	:example_title => "Uzupełnij zdanie wyrazami w nawiasach, odpowiednio zmieniając ich formę.",
			 	:example_content  => "Zdanie: Asia nie lubi (lody).",
			 	:example_answer => "Asia nie lubi lodów."
 		 	 }.to_s)
Category.create!(name:  "fill_gaps",
			 level_id: "3",
			 title: "Uzupełnij tekst",
			 content: {
			 	:example_title => "Uzupełnij tekst podanymi wyrazami, nie zmieniając ich formy.",
			 	:example_content  => "Tekst: Zimą dzień jest bardzo ... . Tęgi ... szczypał w nos i uszy. Karol planował długą ... .",
			 	:example_content2 => "Wyrazy: mróz, podróż, krótki.",
			 	:example_answer => "Zimą dzień jest bardzo krótki. Tęgi mróz szczypał w nos i uszy. Karol planował długą podróż."
 		 	 }.to_s)
Category.create!(name:  "z_g",
			 level_id: "3",
			 title: "Wymieniamy ż na g",
			 content: {
			 	:example_title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana Ż na G.",
			 	:example_content  => "Wyraz: książka.",
			 	:example_answer => "księga"
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

Task.create!(category_id: "6",
			 content: {
			 	:title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:content  => "Wyrazy: motor, odkurzacz, pomoc, jeżyna, domofon.",
			 }.to_s,
			 answer: "motor,odkurzacz,pomoc,jeżyna,domofon")
Task.create!(category_id: "6",
			 content: {
			 	:title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:content  => "Wyrazy: parapet, list, joanna, skalpy, golf, traktor.",
			 }.to_s,
			 answer: "parapet,list,joanna,skalpy,golf,traktor")
Task.create!(category_id: "6",
			 content: {
			 	:title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:content  => "Wyrazy: deszczułka, butla, deser, bukszpan, topola.",
			 }.to_s,
			 answer: "deszczułka,butla,deser,bukszpan,topola")
Task.create!(category_id: "6",
			 content: {
			 	:title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:content  => "Wyrazy: maruda, ogród, barka, parapetówka, kocioł.",
			 }.to_s,
			 answer: "maruda,ogród,barka,parapetówka,kocioł")
Task.create!(category_id: "6",
			 content: {
			 	:title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:content  => "Wyrazy: lektura, jeleń, płotka, pułapka, wiatrak.",
			 }.to_s,
			 answer: "lektura,jeleń,płotka,pułapka,wiatrak")
Task.create!(category_id: "6",
			 content: {
			 	:title => "Znajdź 5 rzeczowników, ukrytych w podanych wyrazach i wypisz je po przecinku.",
			 	:content  => "Wyrazy: tornister, ulewa, pomocnik, wyścigówka, maskotka.",
			 }.to_s,
			 answer: "tornister,ulewa,pomocnik,wyścigówka,maskotka")

Task.create!(category_id: "7",
			 content: {
			 	:title => "Podziel podany ciąg znaków na wyrazy, tak aby powstały sensowne zdania, następnie napisz te zdania w odpowiedzi.",
			 	:content  => "Ciąg znaków: MamakazałaKasiwłożyćkaloszeponieważpadałdeszcz.",
			 }.to_s,
			 answer: "mama kazała kasi włożyć kalosze ponieważ padał deszcz")
Task.create!(category_id: "7",
			 content: {
			 	:title => "Podziel podany ciąg znaków na wyrazy, tak aby powstały sensowne zdania, następnie napisz te zdania w odpowiedzi.",
			 	:content  => "Ciąg znaków: Dziecidługomusiałyszukaćswojegopsaponieważschowałsięwkrzakach.",
			 }.to_s,
			 answer: "dzieci długo musiały szukać swojego psa ponieważ schował się w krzakach")
Task.create!(category_id: "7",
			 content: {
			 	:title => "Podziel podany ciąg znaków na wyrazy, tak aby powstały sensowne zdania, następnie napisz te zdania w odpowiedzi.",
			 	:content  => "Ciąg znaków: Mamawróciłazmęczonazpracydlategodzieciprzyniosłyjejherbatę.",
			 }.to_s,
			 answer: "mama wróciła zmęczona z pracy dlatego dzieci przyniosły jej herbatę")
Task.create!(category_id: "7",
			 content: {
			 	:title => "Podziel podany ciąg znaków na wyrazy, tak aby powstały sensowne zdania, następnie napisz te zdania w odpowiedzi.",
			 	:content  => "Ciąg znaków: Jerzyzastanawiasięjakajestróżnicamiędzyjarzynąajeżyną.",
			 }.to_s,
			 answer: "jerzy zastanawia się jaka jest różnica między jarzyną a jeżyną")
Task.create!(category_id: "7",
			 content: {
			 	:title => "Podziel podany ciąg znaków na wyrazy, tak aby powstały sensowne zdania, następnie napisz te zdania w odpowiedzi.",
			 	:content  => "Ciąg znaków: Wpiekarnigdziewypiekanyjestchlebpracujemójtata.",
			 }.to_s,
			 answer: "w piekarni gdzie wypiekany jest chleb pracuje mój tata")

Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: towarzyszka, pożyczka.",
			 }.to_s,
			 answer: "to wa rzysz ka, po życz ka")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: marmolada, ulica.",
			 }.to_s,
			 answer: "mar mo la da, u li ca")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: mydelniczka, prześcieradło.",
			 }.to_s,
			 answer: "my del nicz ka, prze ście ra dło")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: kanapa, kominiarz.",
			 }.to_s,
			 answer: "ka na pa, ko mi niarz")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: rogalik, książka.",
			 }.to_s,
			 answer: "ro ga lik, ksią żka")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: dywan, podłoga.",
			 }.to_s,
			 answer: "dy wan, po dło ga")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: mandarynka, lekarka.",
			 }.to_s,
			 answer: "man da ryn ka, le kar ka")
Task.create!(category_id: "8",
			 content: {
			 	:title => "Podziel podane wyrazy na sylaby i wypisz je po przecinku w podanej kolejności, sylaby oddzielaj spacją.",
			 	:content  => "Wyrazy: deska, kamizelka.",
			 }.to_s,
			 answer: "de ska, ka mi zel ka")

Task.create!(category_id: "9",
			 content: {
			 	:title => "Usuń z tekstu wyrazy, które nie pasują. W odpowiedzi napisz poprawiony tekst, pamiętaj o znakach interpunkcyjnych.",
			 	:content  => "Tekst: Lekarz zbadał wcale Zosię. Zosia ma będzie chore gardło.",
			 }.to_s,
			 answer: "Lekarz zbadał Zosię. Zosia ma chore gardło.")
Task.create!(category_id: "9",
			 content: {
			 	:title => "Usuń z tekstu wyrazy, które nie pasują. W odpowiedzi napisz poprawiony tekst, pamiętaj o znakach interpunkcyjnych.",
			 	:content  => "Tekst: Kasia lubi padać grać w klasy. Codziennie po lekcjach oglądać gra z koleżankami.",
			 }.to_s,
			 answer: "Kasia lubi grać w klasy. Codziennie po lekcjach gra z koleżankami.")
Task.create!(category_id: "9",
			 content: {
			 	:title => "Usuń z tekstu wyrazy, które nie pasują. W odpowiedzi napisz poprawiony tekst, pamiętaj o znakach interpunkcyjnych.",
			 	:content  => "Tekst: Maciek zbiera małe modele lubi samochodzików. Ma już jutro sporą kolekcję.",
			 }.to_s,
			 answer: "Maciek zbiera małe modele samochodzików. Ma już sporą kolekcję.")
Task.create!(category_id: "9",
			 content: {
			 	:title => "Usuń z tekstu wyrazy, które nie pasują. W odpowiedzi napisz poprawiony tekst, pamiętaj o znakach interpunkcyjnych.",
			 	:content  => "Tekst: Nadia lubi patrzy pracować w ogródku. Sieje malować i podlewa warzywa.",
			 }.to_s,
			 answer: "Nadia lubi pracować w ogródku. Sieje i podlewa warzywa.")
Task.create!(category_id: "9",
			 content: {
			 	:title => "Usuń z tekstu wyrazy, które nie pasują. W odpowiedzi napisz poprawiony tekst, pamiętaj o znakach interpunkcyjnych.",
			 	:content  => "Tekst: Dominik jest młodszym piesek bratem Nadii. Lubi bawić się pływa klockami.",
			 }.to_s,
			 answer: "Dominik jest młodszym bratem Nadii. Lubi bawić się klockami.")

Task.create!(category_id: "10",
			 content: {
			 	:title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:content  => "Wyraz: bibliotekarz.",
			  }.to_s,
			 answer: "bibliotekarz")
Task.create!(category_id: "10",
			 content: {
			 	:title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:content  => "Wyraz: kokardka.",
			  }.to_s,
			 answer: "kokardka")
Task.create!(category_id: "10",
			 content: {
			 	:title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:content  => "Wyraz: margaryna.",
			  }.to_s,
			 answer: "margaryna")
Task.create!(category_id: "10",
			 content: {
			 	:title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:content  => "Wyraz: koszulka.",
			  }.to_s,
			 answer: "koszulka")
Task.create!(category_id: "10",
			 content: {
			 	:title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:content  => "Wyraz: balerina.",
			  }.to_s,
			 answer: "balerina")
Task.create!(category_id: "10",
			 content: {
			 	:title => "Z liter występujących w danym wyrazie ułóż 5 nowych rzeczowników i wypisz je po przecinku.",
			 	:content  => "Wyraz: piaskarka.",
			  }.to_s,
			 answer: "piaskarka")

Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: wierzący.",
			  }.to_s,
			 answer: "wiara,wierni,wierny,wierna,wiarą,wiarę,wierną,wiernym,wiernymi")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: tancerz.",
			  }.to_s,
			 answer: "tancerka,tancereczka,tancerką,tancerkę,tancereczką,tancereczkę,tancerkami,tancereczkami")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: zielarz.",
			  }.to_s,
			 answer: "zielarka,zielarnia,zielarski,zielarnią,zielarnię,zielarką,zielarkę,zielarniami,zielarkami")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: malarz.",
			  }.to_s,
			 answer: "malarka,malarski,malarką,malarkę,malarki,malarkami,malarskimi")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: murarz.",
			  }.to_s,
			 answer: "murarski,murarka,murarska,murarką,murarkę,murarskimi,murarki,murarkami")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: morze.",
			  }.to_s,
			 answer: "morska,morski,morskie,morskimi,morską")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: pasterz.",
			  }.to_s,
			 answer: "pasterka,pasterski,pasterska,pasterskimi,pasterską,pasterkę,pasterskie,pasterką,pasterce")
Task.create!(category_id: "11",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana RZ na R.",
			 	:content  => "Wyraz: którzy.",
			  }.to_s,
			 answer: "który,która,które,którą,którymi")

Task.create!(category_id: "12",
			 content: {
			 	:title => "Ułóż podane wyrazy w kolejności alfabetycznej i wypisz je po przecinku.",
			 	:content  => "Wyrazy: ściana, stołek, but, wiatr, kocioł, zamieć, zakwas, anioł.",
			  }.to_s,
			 answer: "anioł,but,kocioł,stołek,ściana,wiatr,zakwas,zamieć")
Task.create!(category_id: "12",
			 content: {
			 	:title => "Ułóż podane wyrazy w kolejności alfabetycznej i wypisz je po przecinku.",
			 	:content  => "Wyrazy: nogi, nogawka, usta, długopis, mama, marysia, okno, wiatr.",
			  }.to_s,
			 answer: "długopis,mama,marysia,nogawka,nogi,okno,usta,wiatr")
Task.create!(category_id: "12",
			 content: {
			 	:title => "Ułóż podane wyrazy w kolejności alfabetycznej i wypisz je po przecinku.",
			 	:content  => "Wyrazy: chmura, drzewo, drabina, czoło, plecak, ryba, komputer, drukarka.",
			  }.to_s,
			 answer: "chmura,czoło,drabina,drukarka,drzewo,komputer,plecak,ryba")
Task.create!(category_id: "12",
			 content: {
			 	:title => "Ułóż podane wyrazy w kolejności alfabetycznej i wypisz je po przecinku.",
			 	:content  => "Wyrazy: ręka, borsuk, komin, klocek, szal, buty, ołówek, las.",
			  }.to_s,
			 answer: "borsuk,buty,klocek,komin,las,ołówek,ręka,szal")
Task.create!(category_id: "12",
			 content: {
			 	:title => "Ułóż podane wyrazy w kolejności alfabetycznej i wypisz je po przecinku.",
			 	:content  => "Wyrazy: pomoc, litery, lektura, arbuz, znaki, nazwa, błędy, błąd.",
			  }.to_s,
			 answer: "arbuz,błąd,błędy,lektura,litery,nazwa,pomoc,znaki")

Task.create!(category_id: "13",
			 content: {
			 	:title => "Uzupełnij zdanie wyrazami w nawiasach, odpowiednio zmieniając ich formę.",
			 	:content  => "Zdanie: Mama ma dużo różnych (kłopoty) ale tata zawsze jej (pomoc).",
			  }.to_s,
			 answer: "Mama ma dużo różnych kłopotów ale tata zawsze jej pomaga.")
Task.create!(category_id: "13",
			 content: {
			 	:title => "Uzupełnij zdanie wyrazami w nawiasach, odpowiednio zmieniając ich formę.",
			 	:content  => "Zdanie: Kasia nie lubi jeść (owoce) ale bardzo lubi lody (owoc).",
			  }.to_s,
			 answer: "Kasia nie lubi jeść owoców ale bardzo lubi lody owocowe.")
Task.create!(category_id: "13",
			 content: {
			 	:title => "Uzupełnij zdanie wyrazami w nawiasach, odpowiednio zmieniając ich formę.",
			 	:content  => "Zdanie: Olek bardzo lubi grać w piłkę ze swoimi (koledzy).",
			  }.to_s,
			 answer: "Olek bardzo lubi grać w piłkę ze swoimi kolegami.")
Task.create!(category_id: "13",
			 content: {
			 	:title => "Uzupełnij zdanie wyrazami w nawiasach, odpowiednio zmieniając ich formę.",
			 	:content  => "Zdanie: Tomek narysował burzowe (chmura) oraz piękną (tęcza).",
			  }.to_s,
			 answer: "Tomek narysował burzowe chmury oraz piękną tęczę.")
Task.create!(category_id: "13",
			 content: {
			 	:title => "Uzupełnij zdanie wyrazami w nawiasach, odpowiednio zmieniając ich formę.",
			 	:content  => "Zdanie: Mama nie lubi jeść (ogórki), zdecydowanie woli (pomidor).",
			  }.to_s,
			 answer: "Mama nie lubi jeść ogórków, zdecydowanie woli pomidory.")

Task.create!(category_id: "14",
			 content: {
			 	:title => "Uzupełnij tekst podanymi wyrazami, nie zmieniając ich formy.",
			 	:content  => "Tekst: Kasia ma ... sweterek. W garażu stoi czerwony ... . Marek ma zielony ... .",
			 	:content2 => "Wyrazy: samochód, różowy, ołówek.",
			  }.to_s,
			 answer: "Kasia ma różowy sweterek. W garażu stoi czerwony samochód. Marek ma zielony ołówek.")
Task.create!(category_id: "14",
			 content: {
			 	:title => "Uzupełnij tekst podanymi wyrazami, nie zmieniając ich formy.",
			 	:content  => "Tekst: Na grządce rosną zielone ... . W mieście są ... różnej wysokości. W ogrodzie kwitnie czerwona ... .",
			 	:content2 => "Wyrazy: budynki, róża, ogórki.",
			  }.to_s,
			 answer: "Na grządce rosną zielone ogórki. W mieście są budynki różnej wysokości. W ogrodzie kwitnie czerwona róża.")
Task.create!(category_id: "14",
			 content: {
			 	:title => "Uzupełnij tekst podanymi wyrazami, nie zmieniając ich formy.",
			 	:content  => "Tekst: Oli podoba się różowa ... . Na gałązce siedzi ... . Babcia ma spracowane ... .",
			 	:content2 => "Wyrazy: wróbel, ręce, sukienka.",
			  }.to_s,
			 answer: "Oli podoba się różowa sukienka. Na gałązce siedzi wróbel. Babcia ma spracowane ręce.")
Task.create!(category_id: "14",
			 content: {
			 	:title => "Uzupełnij tekst podanymi wyrazami, nie zmieniając ich formy.",
			 	:content  => "Tekst: Silny ... wiał dziś w górach. Na biurku leży ... Dominika. Dziś w nocy był ... .",
			 	:content2 => "Wyrazy: piórnik, wiatr, mróz.",
			  }.to_s,
			 answer: "Silny wiatr wiał dziś w górach. Na biurku leży piórnik Dominika. Dziś w nocy był mróz.")
Task.create!(category_id: "14",
			 content: {
			 	:title => "Uzupełnij tekst podanymi wyrazami, nie zmieniając ich formy.",
			 	:content  => "Tekst: Na klombie rosną kolorowe ... . Nad stawem skacze zielona ... . Pracownicy wykopali głęboki ... .",
			 	:content2 => "Wyrazy: dół, kwiatki, żaba.",
			  }.to_s,
			 answer: "Na klombie rosną kolorowe kwiatki. Nad stawem skacze zielona żaba. Pracownicy wykopali głęboki dół.")

Task.create!(category_id: "15",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana Ż na G.",
			 	:content  => "Wyraz: odważny.",
			  }.to_s,
			 answer: "odwaga,odwagą,odwagę,odwagi,odwagami")
Task.create!(category_id: "15",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana Ż na G.",
			 	:content  => "Wyraz: dróżka.",
			  }.to_s,
			 answer: "droga,drogi,drogą,drogę,drogami")
Task.create!(category_id: "15",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana Ż na G.",
			 	:content  => "Wyraz: potężny.",
			  }.to_s,
			 answer: "potęga,potęgi,potęgę,potęgą,potęgami")
Task.create!(category_id: "15",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana Ż na G.",
			 	:content  => "Wyraz: bieżnia.",
			  }.to_s,
			 answer: "biegać,bieg,biegi,biegami,biegowy")
Task.create!(category_id: "15",
			 content: {
			 	:title => "Dla podanego wyrazu podaj wyraz pokrewny, tak aby zachodziła wymiana Ż na G.",
			 	:content  => "Wyraz: krążek.",
			  }.to_s,
			 answer: "krąg,kręgi,krągły,krągła,krągłe,kręgami")

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