# Binnenhalen van web data - boekrecensies van leestafel.info

+ [Modelleren en selecteren in Biografisch Portaal data](#bioport-modelling)
+ [Web data verzamelen: crawling en APIs](#web-data-gathering)
+ [Boek review data verzamelen en modelleren](#book-review-modelling)
+ Pot Luck

<a name="bioport-modelling"></a>
## Modelleren en selecteren in Biografisch Portaal data

Hoe passen de handelingen die je verricht hebt voor de Biografisch Portaal opdracht in het data scopes concept en de bijbehorende activiteiten **modelleren**, **selecteren**, **normaliseren**, **linken** en **classificeren**?

+ Welke data heb je **niet** gebruikt en waarom? Wat zijn de consequenties daarvan? Introduceert dat mogelijke biases? 
+ Welke mogelijke bias zit er in de selectie-criteria van het Biografisch Portaal?
+ Welke keuze maak je voor onzekere data, wat zijn je argumenten, wat zijn mogelijke consequenties, en hoe (of in hoeverre) modelleer je onzekerheid?
+ Welke mogelijkheden voor groeperen zijn er, welke heb je gebruikt en waarom? Wat zijn voor- en nadelen van deze stappen?

<a name="web-data-gathering"></a>
## Web data verzamelen: crawling en APIs

Soms wil je data van het web binnenhalen om te analyseren of om andere bronmateriaal te verrijken of complementeren.

+ Hoe haal je die data binnen? Welke mogelijkheden zijn er om dat proces te ondersteunen?
+ Welke data haal je binnen? Wat zijn de ethische en juridische aspecten rondom die gegevens?
+ Hoe ga je om met (langdurige) opslag en verspreiding van die gegevens?
+ Hoe haal je gestructureerde gegevens uit web data? Wat modelleer je, wat kun je modelleren en hoe vertaalt zich dat naar je eigenlijke onderzoeksvraag?

Een volledige website *crawlen*:

```bash
wget -w 2 -m http://nos.nl/
wget -w 2 -m http://www.deleesfabriek.nl/
```

De optie `-m` staat voor `mirror` en zorgt ervoor dat `wget` de gehele site *crawled*, maar geen links volgt naar pagina's buiten de site (waarbij site standaard naar de domeinnaam verwijst maar gespecificeerd kan worden een of meer delen van een website).

De optie `-w 2` geeft aan dat `wget` twee seconden wacht tussen elke download-poging. Dit is een **zeer** belangrijke parameter, want zonder wachttijd zou `wget` de bandbreedte van de website teveel belasten. 

### Andere opties

+ [Octoparse](https://www.octoparse.com/) - GUI voor gestructureerde extractie van web data
+ [Heretrix](https://webarchive.jira.com/wiki/spaces/Heritrix/overview) - archival crawler
+ [Scrapy](https://scrapy.org/) - Python module

### Huygens Resources
De resources van het Huygens ING zijn relatief makkelijk te downloaden met een simpel script.

De OCR data van individuele pagina's is te downloaden als HTML bestanden. Je kunt zien wat de URLs voor deze pagina's zijn via de *pagelist* van een gedigitaliseerde bron. Als voorbeeld de *pagelist* voor de 121ste editie van *Tijdschrift voor Geschiedenis*:

+ [http://resources.huygens.knaw.nl/retroapp/service_tvg/tvg_122/pagelist.xml](http://resources.huygens.knaw.nl/retroapp/service_tvg/tvg_122/pagelist.xml)

### Application Programmer Interfaces

Er zijn ook allerlei online services die je kunt programmatisch kunt benaderen via zgn. Application Programmer Interfaces (APIs). Bijvoorbeeld de [WorldCat xISBN API](http://xisbn.worldcat.org/xisbnadmin/doc/api.htm) van [OCLC](https://www.oclc.org/). [WorldCat](https://www.worldcat.org/) is een *union catalog*  van tienduizenden bibliotheken over de hele wereld. De xISBN service mapt ISBNs en andere boekidentificatiecodes zodat je a.d.h.v. een specifieke identificatiecode andere codes kunt vinden, en ook ISBNs van verschillende edities van hetzelfde werk. 

Bij het verzamelen van boekbesprekingen van het web kun je de ISBNs die je vindt opzoeken via deze service om recensies van verschillende edities van hetzelfde werk te **linken**. Als voorbeeld een ISBN van het boek *Witte Tanden* van *Zadie Smith*:

[http://xisbn.worldcat.org/webservices/xid/isbn/9789044601534?method=getEditions&format=xml&fl=form,year,lang,ed](http://xisbn.worldcat.org/webservices/xid/isbn/9789044601534?method=getEditions&format=xml&fl=form,year,lang,ed)

Met de optie `fl` kun je bepalen welke informatie je per ISBN wilt zien. In bovenstaand geval is dat *vorm*, *publicatiejaar*, *taal* en *editie*. Met `fl=*` krijg je alle beschikbare gegevens te zien:

[http://xisbn.worldcat.org/webservices/xid/isbn/9789044601534?method=getEditions&format=xml&fl=\*](http://xisbn.worldcat.org/webservices/xid/isbn/9789044601534?method=getEditions&format=xml&fl=\*)


<a name="book-review-modelling"></a>
## Boek review data verzamelen en modelleren

Boekrecensies zijn een manier om receptie van literatuur te onderzoeken. Lezers die recensies schrijven over wat ze gelezen hebben, bieden een waardevol perspectief op hoe mensen de impact van het lezen van een boek ervaren en hun recensies bevatten patronen die gebruikt kunnen worden om daar grip op te krijgen.

Boekreview sites en andere website met een focus op boeken en lezen bevatten een goudmijn aan informatie over de receptie van literatuur. Een uitdaging is het vinden van websites waarop relevant informatie staat. Een tweede uitdaging is hoe je de relevante informatie uit die websites kunt halen en kunt structureren in een **data scope** waarmee je onderzoeksvragen kunt beantwoorden over e.g. de receptie van literatuur. Wat zeggen boekrecensies over hoe lezers het lezen van een boek ervaren? Welke impact heeft het lezen van verschillende boeken op lezers, in termen van emotie, kennis, perspectief, meningen, houding ten opzichte van anderen, etc.?

De opdracht is:

+ verken de volgende boekbespreking websites:
    + [Leestafel.info](http://leestafel.info/)
    + [www.deleesfabriek.nl](http://www.deleesfabriek.nl/)
    + [www.boekmeter.nl](https://www.boekmeter.nl/)

+ Reflecteer op en beantwoord de volgende vragen:
    + Welke informatie uit de boekbesprekingen wil je **modelleren** voor bovenstaande onderzoeksvragen en analyse (e.g. boektitel, auteur, isbn, genre, categorieën, recensent, datum, rating/score, ...)
    + Welke informatie is in (de meeste of een aantal van de) recensies aanwezig?
    + welke data je wilt **selecteren** uit de reviews: zijn er data die je niet wilt hebben? wat zijn mogelijke selectiecriteria?
    + welke informatie kun je d.m.v. van patronen uit web pagina's kunnen extraheren en structureren?
    + welke gegevens kun je **linken** aan andere data/recensies?
    + welke gegevens kun je gebruiken om recensies of aspecten daarvan te **classificeren**?

+ Download een aantal bestanden van de leestafel.info website voor analyse:
    + Het zijn HTML bestanden ook al hebben ze geen `.html` extensie. Bedenk hoe je hier informatie uit kunt halen.
    + Zoek naar vaste patronen in de recensies. Kun je achterhalen hoeveel recensies er zijn? Hoeveel verschillende titels en auteurs besproken worden? Welke ISBNs komen voor?
+ Gebruik het [Leestafel Jupyter notebook](Parse-review-blog-posts.ipynb) om de HTML bestanden te parseren en analyseren.

Overigens wordt de Leestafel website ook gearchiveerd door de [Koninklijke Bibliotheek](https://www.kb.nl/bronnen-zoekwijzers/databanken-mede-gemaakt-door-de-kb/webarchief-kb).

