# Baza danych szkoły 
## Model konceptualny bazy danych
Celem projektu jest stworzenie bazy danych dla szkoły ogólnokształcącej, składającej się z kilkunastu tabel oraz funkcji pozwalających edytować dane i generować ich statystyki.

## Opis świata rzeczywistego
Szkoła numer 5 znajduje się we Wrocławiu. Jest to liceum ogólnokształcące, które ma trzy główne profile – humanistyczny, matematyczno – informatyczny oraz biologiczno – chemiczny. Uczniowie mają możliwość rozwijania się dzięki dodatkowym, organizowanym przez szkołę kołom i fakultetom wyrównawczym. Podstawowym jednak obowiązkiem uczniów jest nauka na przedmioty przynależące do ich profilów. Mogą brać w nich udział na poziomie podstawowym lub rozszerzonym, a ich postępy w nauce oceniane są przez nauczycieli. Za odpowiednio wysokie średnie licealiści mogą otrzymać świadectwa z wyróżnieniem lub stypendia, z kolei uzyskanie zbyt wielu niedostatecznych ocen końcowych jest równoważne z niezdaniem roku. Uczniowie podlegają ocenie także pod względem zachowania – nauczyciel ma możliwość wstawienia pozytywnej lub negatywnej uwagi w zależności od postawy ucznia. 
Szkoła posiada dziennik elektroniczny, do którego potrzebny jest login i hasło. By umożliwić sprawniejsze funkcjonowanie szkoły dyrektor zlecił wykonanie wielofunkcyjnej bazy danych, pozwalającej min.: na edycje ocen, uwag, zmiany hasła.

### Wymagania funkcjonalne
Do wymagań funkcjonalnych aplikacji bazodanowej zaliczają się:
-	zarządzanie uczniami:
    -	dodawanie/usuwanie z fakultetów/kół/rady
    -	zmiana hasła w dzienniku
-	zarządzanie nauczycielami:
    -	zmiana hasła w dzienniku
-	zarządzanie ocenami i uwagami
    -	dodawanie/usuwanie
    - obliczanie oceny końcowej
    -	obliczanie średniej z ocen
-	generowanie i wyświetlanie informacji o :
    -	członkach rady uczniów
    -	uwagach pozytywnych/negatywnych
    -	ocenach
    -	uczestnikach fakultetów/kół
    -	uczestnikach z paskiem
    - uczniach, którzy nie zdali
    -	uczniach ze stypendium

### Przypadki użycia
Na poniższym diagramie możemy zobaczyć właściwości funkcjonalne systemu.
 

![Diagram 1: Diagram przypadków użycia](/assets/Obraz1.jpg)

Legenda:
- ![czarna prosta linia](/assets/Obraz2.png) pokazuje funkcjonalność możliwą dla danego aktora 
-	![czarna strzałka](/assets/Obraz3.png)pokazuje połączenia między funkcjonalnościami 
-	![czerwona strzałka](/assets/Obraz4.png)pokazuje połącznia między tabelami 
-	![czarna przerywana strzałka](/assets/Obraz5.png)pokazuje połączenia między funkcjonalnościami i tabelami
-	Jasno niebieskie pola oznaczają tabele
-	Ciemno niebieskie pola funkcjonalności aplikacji 

Poniżej wypisane zostały nazwy tabel wraz z kolejnymi nazwami kolumn.

Uczniowie (id_ucznia, nazwisko, imię, login, hasło, id_klasy, id_kola, id_fakultetu, średnia_ocen)  
Nauczyciele (id_nauczyciela, nazwisko, imię, login, hasło, id_przedmiotu)   
Sekretariat (id_pracownika, nazwisko, imię, stanowisko)  
Oceny (id_ucznia, waga, ocena, id_nauczyciela)  
Oceny_końcowe (id_ucznia, id_przedmiotu, ocena)  
Uwagi (id_uwagi, id_ucznia, pozytywna_czy_negatywna, uwaga, id_nauczyciela)  
Rada_uczniów (id_ucznia, funkcja)  
Przedmioty (id_przedmiotu, nazwa_przedmiotu, rozszerzenie_czy_podstawa)  
Fakultety (id_fakultetu, nazwa, id_nauczyciela)  
Koła (id_koła, nazwa, id_nauczyciela)  
Klasy (id_klasy, nazwa, id_nauczyciela, id_profilu)  
Profile (id_profilu, nazwa, id_nauczyciela)  

##  Projekt bazy danych

Projekt składa się z wielu tabel, które pozwalają na działanie dziennika, dzięki opisanemu poniżej modelowi systemu.

## Identyfikacja diagramów związków encji na podstawie analizy scenariuszy poszczególnych przypadków użycia
Na poniższym diagramie przedstawione zostały związki, jakie zachodzą miedzy różnymi encjami projektu.
 
![Diagram 2: Diagram związków encji](/assets/Obraz6.jpg)

## Analiza liczby instancji dla każdej encji
![tabela 1](/assets/Przechwytywanie.PNG)


## Analiza użycia identyfikująca podstawowe rodzaje transakcji
Określone zostały typy transakcji każdej z tabel - są one wymienione poniżej.
![tabela 2](/assets/Przechwytywanie1.PNG)


## Model logiczny bazy
Na poniższym diagramie określona została ogólna implementacja systemu.
 

![Diagram 3: Diagram modelu logicznego](/assets/Obraz7.jpg)





## Model fizyczny

Na poniższym diagramie widzimy rzeczywisty model implementacji bazy danych. Klucze główne zostały zaznaczone na zielono, a obce – na czerwono.

![Diagram 4: Diagram modelu fizycznego](/assets/Obraz8.jpg)




### Implementacja i testy bazy danych w wybranym systemie zarządzania bazą danych 
Zgodnie z wcześniejszymi założeniami, baza danych została zaimplementowana w środowisku MySQL przy pomocy framework’a MySQL Workbench. W pierwszym kroku utworzono bazę danych, następnie dodano do niej odpowiednie tabele, które zostały wypełnione przykładowymi rekordami.
