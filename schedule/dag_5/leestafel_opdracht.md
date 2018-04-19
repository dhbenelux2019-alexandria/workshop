# Binnenhalen van web data - boekrecensies van leestafel.info

+ [Modelleren en selecteren in Biografisch Portaal data](#bioport-modelling)
+ [Web data verzamelen: crawling en APIs](#web-data-gathering)
+ [Boek review site modelleren](#book-review-modelling)
+ Pot Luck

<a name="bioport-modelling"></a>
## Modelleren en selecteren in Biografisch Portaal data

+ Welke data heb je **niet** gebruikt en waarom? Wat zijn de consequenties daarvan? Introduceert dat mogelijke biases? 
+ Welke mogelijke bias zit er in de selectie-criteria van het Biografisch Portaal?
+ Welke keuze maak je voor onzekere data, wat zijn je argumenten, wat zijn mogelijke consequenties, en hoe (of in hoeverre) modelleer je onzekerheid?

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
wget -w 2 -m http://leestafel.info/
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


<a name="book-review-modelling"></a>
## Boek review site modelleren

Boekrecensies zijn een manier om receptie van literatuur te onderzoeken. Lezers die recensies schrijven over wat ze gelezen hebben, bieden een waardevol perspectief op hoe mensen de impact van het lezen van een boek ervaren en hun recensies bevatten patronen die gebruikt kunnen worden om daar grip op te krijgen.

Boekreview sites en andere website met een focus op boeken en lezen bevatten een goudmijn aan informatie over de receptie van literatuur. Een uitdaging is het vinden van websites waarop relevant informatie staat. Een tweede uitdaging is hoe je de relevante informatie uit die websites kunt halen en kunt structureren in een **data scope** waarmee je onderzoeksvragen kunt beantwoorden. 

De opdracht is:

+ verken de volgende boekbespreking websites:
    + [Leestafel.info](http://leestafel.info/)
    + [Literair Nederland](https://www.literairnederland.nl/)
    + [Boekreviews.nl](http://www.boekreviews.nl/)

+ Reflecteer op en beantwoord de volgende vragen:
    + houdt bij welke informatie je uit besprekingen wilt modelleren voor bovenstaande onderzoeksvragen en analyse (e.g. boek, auteur, isbn, recensent, datum, rating/score, ...)
    + Welke informatie is in (de meeste of een aantal van de) recensies aanwezig?
+ welke informatie kun je d.m.v. van patronen uit web pagina's kunnen extraheren en structureren?


Overigens wordt de Leestafel website ook gearchiveerd door de [Koninklijke Bibliotheek](https://www.kb.nl/bronnen-zoekwijzers/databanken-mede-gemaakt-door-de-kb/webarchief-kb).

