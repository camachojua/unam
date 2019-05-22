UNAM Class
====================

Class for creating dissertation documents according to the National Autonomous University of
Mexico (UNAM) guidelines.

This class inherits the book class, so, in escence one should create
volumes, chapters, front chapters, appendixes, and so on. Before using
this class the user must create the following document structure:

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

This class creates a cover page and title page from information
provided by the user, by default the user should insert comands to
indicate the information that will be displayed on the cover (which is
replicated in the second page). To specify the author you must insert
the command `\author{}`, to specify the title of the work the command
`\title{}` is needed, for creating the cover page the following
commands are defined:

+ `\tipotrabajo{tipo}`
Defines the type of document: (thesis, report, etc).
+ `\grado{grado}`
Defines the grade to obtain: (Bachelor, Master, PhD).
+ `\fechaexamen{fecha}` 
Defines the date of your examination: (April 30th, 2019).
+ `\asesor{asesor}`
Defines your advisor's name.
+ `\programaestudio{programa}`
+ `\campoconocimiento{conocimiento}`
+ `\campodisciplinario{disciplinario}`
+ `\instituto{instituto}`
+ `\facultad{facultad}`
+ `\universidad{universidad}`
+ `\escudouniversidad{escudoU}`
Points to the path (relative to the /img/ directory) of your university coat-of-arms.
+ `\escudofacultad{escudoF}`
Points to the path (relative to the /img/ directory) of your school coat-of-arms.
+ `\lugar{lugar}`
Defines the place where your exam will be applied.
+ `\tema{tema}`
Defines the topic of your work.
+ `\presidente{presidente}`
+ `\secretario{secretario}`
+ `\vocal{vocal}`
+ `\primersuplente{suplente1}`
+ `\segundosuplente{suplente2}`

Example
---------------------

A minimal working example should have this structure:

```
\documentclass[12pt]{unam}

%% Selección de la fuente a utilizar (modo texto y matemático)
%\usepackage[cmintegrals, cmbraces]{newtxmath}
%\usepackage{garamondx, ebgaramond-maths}
%\usepackage{garamondx, mathdesign}
\usepackage{garamondx} %% Fuente preferida (opcional)
\usepackage[garamondx, cmintegrals, cmbraces]{newtxmath} %% Fuente preferida (opcional)
%% Fin selección de la fuente

\author{Nombre Apellidos}
\title{Caracterización y mejora aerodinámica de un vehículo tipo ATV}
\grado{Maestro en Ingeniería}
\fechaexamen{2 de Mayo 2019}
\tipotrabajo{Tesis}
\asesor{Dr. Nombre Apellidos}
\instituto{Instituto Donde Estudio}
\facultad{Facultad de Ingeniería}
\universidad{Universidad Nacional Autónoma de México}
\lugar{Juriquilla, Querétaro}
\programaestudio{Programa de Maestría y Doctorado en Ingeniería Mecánica}
\campoconocimiento{Ingeniería automotriz}
\campodisciplinario{Mecánica}

\begin{document}
\frontmatter
\maketitle
\tableofcontents
\listoffigures

\input{tex/prefacio}

\mainmatter
\input{tex/introduccion}
\input{tex/marcoteorico}
\input{tex/desarrollo}
\input{tex/pruebas}
\input{tex/resultados}
\input{tex/conclusiones}

\appendix
\input{tex/programas}
\input{tex/planos}
\backmatter
\printbibliography[heading=bibintoc]

\end{document}
```

License
---------------------

unam-thesis is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

unam-thesis is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with unam-thesis. If not, see <https://www.gnu.org/licenses/>.