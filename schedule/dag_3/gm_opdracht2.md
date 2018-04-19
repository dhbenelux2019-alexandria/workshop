## Generale Missiven Opdracht 2 - Linken en Classificeren van Namen

+ [Introductie](#intro)
    + [Data](#data)
+ [Indextermen linken via tekst](#linking-text)
+ [uitwerking visualiseren geografische termen](GM_visualiseren_plaatsen.md)

<a name="intro"></a>
## Introductie

Met deze opdracht krijg je inzicht in de mogelijkheden om trefwoorden uit verschillende categorieen aan elkaar te linken.

**Vraag:** _Op welke manier kunnen de indices van de Generale Missiven van de VOC gekoppeld en verrijkt worden._

We hebben de beschikking over de registers van de gedrukte delen missiven. Voor de opdracht hebben we er een paar geselecteerd. Zie de [toelichting bij de data](gm_toelichting.md).

<a name="data"></a>
### Dataset: Geselecteerde delen Generale missiven. Zie ook de [toelichting](gm_toelichting.md)

De [Generale Missiven indices data](https://surfdrive.surf.nl/files/index.php/s/OjzD8hZlVvDU12c) zijn als gezipt bestand te downloaden. Blijkbaar zijn de indexen met label 13 stiekem de indexen van deel 10. Hierbij een [zip met tekstbestanden per pagina van deel 10](dag_3/GM_deel_10_tekst.zip).


<a href="opdracht"></a>
### Opdracht:
_Bepaal aan de hand van de beschikbare registers of een samenhangende toegang tot het corpus van generale missiven mogelijk is en hoe dit dan globaal geconstrueerd zou kunnen worden_

+ Maak een opzet van een werkplan.
    + Bij welk register kun je het beste beginnen? Of maakt dat niet uit?
    + Welk register vind je het meeste beloven?
+ Verzin manieren om verschillende soorten termen te groeperen/classificeren


<a name="linking-text"></a>
### Indextermen linken via tekst

Veel van de namen en zaaktrefwoorden komen maar een of een paar keer voor. Het is erg lastig om over deze trefwoorden iets te kunnen zeggen zonder close reading van de tekst. Als je deze trefwoorden kunt groeperen, e.g. alle personen die *koopman* zijn kunt classificeren als *koopmannen*, kun je beter inzicht krijgen in wie al die personen waren, met wat voor zaken zij te maken hadden, en welke geografische locaties daarbij horen.

![Image doesn't load](http://resources.huygens.knaw.nl/retroapp/service_generalemissiven/gm_10/images/generale_missiven_gs250_1114.jpg)

Bijvoorbeeld, de naam `Pieter Visscher` komt slechts voor op pagina 632 van Generale Missiven deel 10. Je kunt proberen deze naam te koppelen aan zaken en geografische locaties die ook op pagina 632 voorkomen, maar dat is niet erg betekenisvol, want er zijn zeer veel trefwoorden gekoppeld aan pagina 632:

```
geo : Batavia
geo : Azië
geo : Bantam
geo : China
geo : Amsterdam, kamer van
geo : Hoorn, kamer van
geo : Enkhuizen, kamer van
geo : Bima
geo : Europeanen
geo : Macao
geo : Westzaan
geo : Vijfhoek
geo : 's-Gravenhage
geo : Kaap de Goede Hoop [ook: Caab]
geo : Nederland
personen : Valckenier, Adriaan
personen : Rijkevorsel, Jan van
personen : Nolthenius, Daniël
personen : Pielat, Jacob Christiaan
personen : Paradijs, Nicolaas
personen : Oosterhoorn, Simon
personen : Meyn, Jan
personen : Lam, Gualterus 't
personen : Donker, Pieter
personen : Lacontesse, Caesar de
personen : Meulman, Jan
personen : Patras, Anthony
personen : Visscher, Pieter
personen : Harris, Jan
personen : Linkenburg, Elias
personen : Leen, Gerardus van d'
personen : Nek, Frans van
personen : Giesen, Philip van der
personen : Hilgers, Jan
personen : Niel, Jan van
personen : Paradijs, David
personen : Visser, Pieter
personen : Vrij, Herman de
personen : Caylar, Jan Hendrik du
personen : Hoefnagel, Johan
personen : Wolff, Augustus
personen : Borssum, Willem van
personen : Nol, Ambrosius van der
personen : Blom, Jan
personen : Satink, Zeno Lambert
personen : Daire, Gillis van
personen : Visvliet, Jan van
personen : Haage, Isaac
personen : Oortman, Jan
personen : Fier, Jacob
personen : Backer, Pieter
personen : Aukema Seriakusz., Sjerp
personen : Elzevier, Jan
personen : Bersma, Hillegonda Catharina
personen : Dobbelaar, Pieter (Petrus)
personen : Verijssel, Hugo
schepen : Maria Adriana
schepen : Arnestijn
schepen : Polder, Lage
schepen : Hillegonda
schepen : Bethlehem
schepen : Hogersmilde
schepen : Buvegnies
schepen : Polanen
schepen : Scheijbeek
zaken : Retourvloot
zaken : IJzer (zie ook staafijzer)
zaken : Geschut
zaken : Artillerie
zaken : Wapenkamer
zaken : Kanon
zaken : Guni
zaken : Zegel
zaken : Snaphaan
zaken : Wapen
zaken : Kist
zaken : Ambachtskwartier
zaken : Gereedschap
zaken : Weegschaal
zaken : Molen
zaken : Oogijzer
```

Nuttiger is om via de tekst te achterhalen waarom Pieter Visscher genoemd is:

![Image doesn't load](http://resources.huygens.knaw.nl/retroapp/service_generalemissiven/gm_10/images/generale_missiven_gs250_0632.jpg)

Je ziet dat het voorkomen van de naam `Pieter Visscher` vooraf wordt gegaan door zijn beroep.

Je kunt bijvoorbeeld de namen opzoeken in de tekst met UNIX command line tools en uit de context halen welke beroepen of rollen daarbij genoemd worden, of met een lijst van zakentrefwoorden die rollen van personen beschrijven, greppen naar voorkomens van die rollen met namen erachter.

De volgende `grep` opdracht zoekt naar het voorkomen van `schipper` gevolgd door een naam:

```bash
grep -E -o -w "[Ss]chipper( [A-Z](\w|-)+)*( ([vV]an|[dD]e[nr]?)+)*( [A-Z](\w|-)+)+" GM_deel_10/*.txt
```

Dit levert de volgende 42 resultaten op:

```
GM_deel_10/generale_missiven_gs250_0045.txt:schipper van de Haften
GM_deel_10/generale_missiven_gs250_0074.txt:schipper Jan Bijland
GM_deel_10/generale_missiven_gs250_0108.txt:schipper Richard Bourchier van de Kint
GM_deel_10/generale_missiven_gs250_0166.txt:schipper CasperDuyts
GM_deel_10/generale_missiven_gs250_0168.txt:schipper Samuel Velthuizen
GM_deel_10/generale_missiven_gs250_0174.txt:schipper Samuel Hoppersteyn van Leeuwen
GM_deel_10/generale_missiven_gs250_0175.txt:schipper van de Rooswijk
GM_deel_10/generale_missiven_gs250_0244.txt:schipper Jan Maillart
GM_deel_10/generale_missiven_gs250_0261.txt:schipper vande Nagelboom
GM_deel_10/generale_missiven_gs250_0367.txt:schipper Brugman
GM_deel_10/generale_missiven_gs250_0387.txt:schipper van de Strijen
GM_deel_10/generale_missiven_gs250_0397.txt:schipper IJsbrand Moenis
GM_deel_10/generale_missiven_gs250_0398.txt:schipper Adriaan Pieter van Rensen
GM_deel_10/generale_missiven_gs250_0413.txt:schipper Simon Mulder
GM_deel_10/generale_missiven_gs250_0434.txt:schipper Reinier Brugman
GM_deel_10/generale_missiven_gs250_0452.txt:Schipper Frans de Put
GM_deel_10/generale_missiven_gs250_0483.txt:schipper Reinier Brugman
GM_deel_10/generale_missiven_gs250_0547.txt:schipper Gerrit van der Thollen
GM_deel_10/generale_missiven_gs250_0576.txt:schipper Jan van der Straten
GM_deel_10/generale_missiven_gs250_0595.txt:schipper Cornelis van Marie
GM_deel_10/generale_missiven_gs250_0632.txt:schipper Pieter Visscheris
GM_deel_10/generale_missiven_gs250_0632.txt:schipper Frans van Nek
GM_deel_10/generale_missiven_gs250_0632.txt:schipper Herman de Vrij
GM_deel_10/generale_missiven_gs250_0632.txt:schipper JanMeulman
GM_deel_10/generale_missiven_gs250_0702.txt:schipper Jan Martensz
GM_deel_10/generale_missiven_gs250_0737.txt:schipper van de Ketel
GM_deel_10/generale_missiven_gs250_0737.txt:schipper Gillis Oudemans
GM_deel_10/generale_missiven_gs250_0737.txt:schipper van de Buvegnies
GM_deel_10/generale_missiven_gs250_0806.txt:schipper van de Slot Kronenburg
GM_deel_10/generale_missiven_gs250_0829.txt:schipper Somermans
GM_deel_10/generale_missiven_gs250_0839.txt:Schipper Archibald Geddes
GM_deel_10/generale_missiven_gs250_0839.txt:schipper William Carleen
GM_deel_10/generale_missiven_gs250_0841.txt:schipper David van Etteren
GM_deel_10/generale_missiven_gs250_0888.txt:schipper van de Patmos
GM_deel_10/generale_missiven_gs250_0895.txt:schipper van Westerbeek
GM_deel_10/generale_missiven_gs250_0895.txt:schipper Willem Schulweder
GM_deel_10/generale_missiven_gs250_0966.txt:schipper Godschalk
GM_deel_10/generale_missiven_gs250_0977.txt:schipper Lambert van Schaghen
GM_deel_10/generale_missiven_gs250_0977.txt:schipper Andries Bosch
GM_deel_10/generale_missiven_gs250_0978.txt:schipper Reinier Brugman
GM_deel_10/generale_missiven_gs250_0988.txt:schipper Lambert van Schaghen
GM_deel_10/generale_missiven_gs250_0988.txt:schipper Jan van der Stratenvan
```

Je ziet aan de bestandsnamen welke pagina's een match opleveren. Op pagina 632 komen vier verschillende personen voor in combinatie met `schipper`, waaronder Pieter Visscher. In dit geval is het volgende woord in de text, `is` vastgeplakt aan de naam (een veelvoorkomend OCR probleem), maar dit is met zgn. *near-matching* op te lossen: we weten dat de naam Pieter Visscher op pagina 632 moet staan, en we hebben een aantal resultaten met namen die we niet in de index vinden (waaronder ook `JanMeulman`) Het aantal kandidaten op pagina 632 die mogelijk naar Pieter Visscher verwijzen is beperkt.

Sla eerst alle resultaten op in een bestand:

```bash
grep -E -o -w "[Ss]chipper( [A-Z](\w|-)+)*( ([vV]an|[dD]e[nr]?)+)*( [A-Z](\w|-)+)+" GM_deel_10/*.txt > GM_rollen_deel_10.txt
```

Vervolgens kun je [agrep](https://github.com/Wikinaut/agrep) gebruiken voor namen in de index die je niet op de corresponderende pagina's vindt:

```bash
agrep -2 "Pieter Visscher" GM_rollen_deel_10.txt | grep gs250_0632
agrep -2 "Jan Meulman" GM_rollen_deel_10.txt | grep gs250_0632
```

De `-2` optie zoekt namen die ten meeste twee *edits* verwijderd zijn van het opgegeven patroon. De `grep` daarna selecteert alle resultaten uit `agrep` die op pagina 632 voorkomen.

De volgende lijst van 88 namen voor rollen of beroepen leveren 999 matches op in GM deel 10:

```
Administrateur
Advocaat
Beschrijver
Boeddhistische priester
Boekhouder
Burger
Chirurgijn
Commandeur
Commissiant
Curator
Directeur
Directeur-generaal
Dispensier
Equipagemeester
Erfgenaam
Executeur
Gevangene
Gezant
Gezaghebber
Gezagvoerder
Gouverneur
Gouverneur-generaal
Heiden
Hoofdadministrateur
Ingenieur
Inlandse bestuurder
Inlandse vorst
Ingenieur
Kaartenmaker
Kanonnier
Kapitein
Kassier
Kettingganger
Kind
Klerk
Klerk van politie
Klerk van de secretarie
Konstabel
Koopman
Kwartiermeester
Landdrost
Leproos
Licentmeester
Makelaar
Matroos
Militair
Moslim
Muntmeester
Negotieboekhouder
Notaris
Onderkoopman
Ontvanger
Ontvanger-generaal
Opperhoofd
Pachter
Pakhuismeester
Perkenier
Predikant
Priester
Regent
Resident
Rijksbestierder
Scheepsofficier
Schipper
Scholarch
Schrijver
Secretaris van politie
Secretaris van justitie
Sjeik
Slaaf
Soldaat
Soldijboekhouder
Stuurman
Supercarga
Suppoost
Tolk
Visiadoor
Visitateur
Visitateur-generaal
Voogd
Vrijburger
Vuurwerker
Weduwe
Wever
Winkelier
Weesmeester
Zeeofficier
Ziekentrooster
```

Het bestand met [matches van personen en rollen](../dag_3/GM_deel_10_rollen_matches.txt).
