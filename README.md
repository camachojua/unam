UNAM Class
====================

This class inherits the book class, so, in escence one should create volumes, chapters, front chapters, appendixes, and so on. Before using this class the user must create the following document structure:

+ /working_directory/
  + thesis.tex
  + bibliography.bib
+ /tex/
  + frontMatter.tex
  + foreword.tex
  + chapter1.tex
  + chapterN.tex
  + appendix1.tex
  + appendixN.tex
+ /img/
  + pictures{.png, .jpg, .pdf}

Commands
---------------------

This class creates a cover page and title page from information provided by the user, by default the user should insert comands to indicate the information that will be displayed on the cover (which is replicated in the second page). To specify the author you must insert the command \author{}, to specify the title of the work the command \title{} is needed, for creating the cover page the following commands are defined:

+ \tipotrabajo{tipo}
Defines the type of document: (thesis, report, etc).
+ \grado{grado}
Defines the grade to obtain: (Bachelor, Master, PhD).
+ \fechaexamen{fecha} 
Defines the date of your examination: (April 30th, 2019).
+ \asesor{asesor}
Defines your advisor's name.
+ \programaestudio{programa}
+ \campoconocimiento{conocimiento}
+ \campodisciplinario{disciplinario}
+ \instituto{instituto}
+ \facultad{facultad}
+ \universidad{universidad}
+ \escudouniversidad{escudoU}
Points to the path (relative to the /img/ directory) of your university coat-of-arms.
+ \escudofacultad{escudoF}
Points to the path (relative to the /img/ directory) of your school coat-of-arms.
+ \lugar{lugar}
Defines the place where your exam will be applied.
+ \tema{tema}
Defines the topic of your work.
+ \presidente{presidente}
+ \secretario{secretario}
+ \vocal{vocal}
+ \primersuplente{suplente1}
+ \segundosuplente{suplente2}