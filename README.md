# Call for participation DHBenelux 2019 workshop: TAG and Alexandria

## Advancing digital editing: how to work with graph models, multiple perspectives, and flexible workflows

### Instructors:
Elli Bleeker, Bram Buitendijk, Ronald Haentjens Dekker, Astrid Kulsdom  
[*Research and Development group*](https://huc.knaw.nl/research-development/) Humanities Cluster   
Royal Academy for the Arts and Sciences

### Introduction
Participants of this full-day workshop learn to work with TAG, an alternative (graph-based) data model for text, which allows them to explore a more flexible way of digital editing than is available with the single hierarchy afforded by XML. The TAG data model, a hypergraph structure that can successfully address the various challenges posed by the modeling of complex texts, has been described as “both simple and brilliant” (Sperberg-McQueen 2017). The goal of the workshop is not (only) to learn to work with a new text editing tool, but primarily to acquire a way of thinking about text modeling that is not constrained a priori by external models or by software assumptions built into software tools. During the workshop, participants will be introduced to the principles of a distributed architecture for digital scholarly editions as they learn to work with the TAG reference implementation Alexandria. This implementation allows editors to import, edit, and export complex texts in a straightforward manner. Alexandria accommodates the encoding of multiple, coexisting views on text and thus supports various approaches to scholarly editing.

### Target audience
The target audience of this workshop is textual scholars, scholarly editors, digital humanists and scholars interested in text modeling. Experience with TEI (or other XML), text transcription, and textual editing is a plus. Experience with working on the command line, HTML and XSLT is also an advantage, but not required. The tutorial has room for a maximum of 20 participants.


### Workshop program
The workshop would run for a single day, divided into morning and afternoon sessions of approximately 180 minutes each. The morning session concentrates on the theoretical background of data models for text, including a discussion of several textual phenomena and other features that are difficult to express in the tree structure of XML. We then introduce the graph model of TAG and the related markup language TAGML. The session concludes with hands-on work: participants will make a brief transcription of a text fragment in TAGML, with special attention to those textual features that pose challenges to XML as a model. For pedagogical reasons we provide a data set during the workshop, but participants will perform their own document analysis and will markup the text from their own perspective(s).

In the afternoon session we dive more deeply into practice in the context of the entire editorial workflow. Participants work with Alexandria to process the marked-up files created during the morning session. Because Alexandria is operated via shell commands, we will allocate some time to ensure all participants will be able to perform the necessary operations on the command line. It is however not imperative to have prior command line experience as Alexandria is designed to be intuitive and straightforward to use. The last part of the afternoon is devoted to publishing: we convert the markup files to XML (which facilitates their accessibility outside our toolkit) and then publish them as HTML. 

To sum up: the TAG workshop will cover the entire editing process, from transcription to publication, paying attention to each step along the way. This “pipeline” approach provides participants with a deeper awareness of the many conceptual and practical transformations that textual data undergoes. It enables both the production of an actual edition and a final high-level, abstract reflection on the importance of choosing an appropriate data model to express, process and analyze textual information. Over the course of the workshop, participants work with Alexandria and thus experience first-hand TAG’s hypergraph model for text, the properties of which have significant benefits for the editorial process and for the way we conceptualize our texts. They will learn that expressing information about text, creating a digital edition, and shaping editorial practices doesn't have to be bound to a specific tool or technology. 

### Application
You can apply to the workshop by filling out the online form provided [here](http://2019.dhbenelux.org/workshops-details/) (link on the top of the webpage; make sure to register for “Workshop 2”). If you have any questions, don’t hesitate to get in touch: [astrid.kulsdom@di.huc.knaw.nl](mailto:astrid.kulsdom@di.huc.knaw.nl).

### Technical requirements

**Corpus**: During the workshop, we will work with a small corpus of texts and an XSLT template to generate HTML. The corpus is prepared in advance by the instructors in order to streamline the tutorial exercises. 

**Hardware**: Participants must bring laptops with Windows/Mac OS X/Linux (No iOS / ChromeOS / Surface devices)

**Software**:  
Participants must install

- Java (>=1.8, [get it here](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html));
- [Sublime Text 3](https://www.sublimetext.com/3);
- [TAGML highlighting](https://github.com/HuygensING/tagml-sublime-syntax) in Sublime;  
- [GraphViz](https://www.graphviz.org/download/);
- [Alexandria](https://github.com/HuygensING/alexandria).

### Further reading
- Alexandria version 2.2. [computer software]. 2019. Retrieved from: <https://huygensing.github.io/alexandria/>.
- TAG (Text as Graph) [data model]. 2019. Retrieved from: <https://huygensing.github.io/TAG>.
- Haentjens Dekker, Ronald, and David J. Birnbaum. 2017. “It’s more than just overlap: Text As Graph.” Presented at Balisage: The Markup Conference 2017, Washington, DC, August 1 - 4, 2017. In Proceedings of Balisage: The Markup Conference 2017. Balisage Series on Markup Technologies, vol. 19, DOI: <https://doi.org/10.4242/BalisageVol19.Dekker01>.
- Haentjens Dekker, Ronald, Elli Bleeker, Bram Buitendijk, Astrid Kulsdom and David J. Birnbaum. 2018. “TAGML: A markup language of many dimensions.” Presented at Balisage: The Markup Conference 2018, Washington, DC, July 31 - August 3, 2018. In Proceedings of Balisage: The Markup Conference 2018. Balisage Series on Markup Technologies, vol. 21. DOI <https://doi.org/10.4242/BalisageVol21.HaentjensDekker01>. 
- Sperberg-McQueen, C. M. 2017. “Text. You keep using that word ….” Presented at Balisage: The Markup Conference 2017, Washington, DC, August 1–4, 2017. In Proceedings of Balisage: The Markup Conference 2017. Balisage Series on Markup Technologies, vol. 19. <https://doi.org/10.4242/BalisageVol19.Sperberg-McQueen02>. 