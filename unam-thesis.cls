\ProvidesClass{unam}[2019/05/20 v0.5 Juan Camacho]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[dvips, letterpaper]{book}
\else
   \LoadClass[letterpaper]{book}
\fi

\usepackage[spanish,mexico]{babel}
\usepackage{pslatex}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[margin=2.5cm]{geometry}
\usepackage{graphicx, amsmath, physics, subcaption, caption}
\usepackage{multirow, booktabs, xcolor, longtable, pdfpages}
\usepackage{setspace}
\renewcommand{\baselinestretch}{1.3}
\renewcommand{\arraystretch}{1.3}
\graphicspath{{./img/}}
\usepackage[tracking=true]{microtype}
\usepackage[backend=biber,style=phys,citestyle=numeric]{biblatex}
\DeclareLanguageMapping{spanish}{spanish-apa}
\usepackage{csquotes}
\addbibresource{bibliografia.bib}
\usepackage{listingsutf8}
\usepackage{inconsolata}

%% Derivada material
\newcommand{\mdv}[2]{\frac{\mathrm{\textbf{D}{#1}}}{\mathrm{\textbf{D}{#2}}}}

%% Selección de fuente para fragmentos de código
\everymath{\displaystyle}
\lstset{
  language=Java, 
  frameround=fttt,
  backgroundcolor=\color{gray!5},
  numbers=left,
  breaklines=true,
  keywordstyle=\color{blue}\bfseries, 
  basicstyle=\ttfamily\color{red},
  numberstyle=\color{black},
  tabsize=2,
  rulecolor=\color{black!20},
  title=\lstname,
  escapeinside={\'*}{*)},
  breakatwhitespace=true,
  framextopmargin=2pt,
  framexbottommargin=2pt,
  extendedchars=false,    
}
\lstMakeShortInline[columns=fixed]|

%% Definición de las cabeceras del documento
\usepackage{fancyhdr}
\fancypagestyle{unam}{
  \fancyhead{}
  \fancyhead[RO]{\if@mainmatter \rightmark\fi}
  \fancyhead[LE]{\if@mainmatter \rightmark\fi}
  \fancyhead[C]{\if@mainmatter \leftmark\fi}
  \fancyfoot{}
  \fancyfoot[C]{\thepage}
}

\pagestyle{unam}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}
\renewcommand{\headrulewidth}{1pt}
\setlength{\headheight}{16pt}

%% Modificación del título de los capítulos
\usepackage{titlesec}
%\usepackage{lettrine}
\def\thickhrulefill{\leavevmode \leaders \hrule height 0.3ex \hfill \kern \z@}

\titleformat{\chapter}[display]
{\if@mainmatter 
  \bfseries\LARGE 
\else 
  \bfseries\Huge
\fi}
{\if@mainmatter
  \filright\MakeUppercase{\large\chaptertitlename}
  \quad\Huge\thechapter\;\thickhrulefill
\fi}
{0ex}
{\if@mainmatter
  \filleft
\fi}
[\if@mainmatter
\vspace{1ex}\titlerule\vspace{0.5ex}\titlerule
\fi]

\renewcommand*{\lstlistingname}{Código}
\renewcommand*{\lstlistlistingname}{Índice de códigos}
%\usepackage[colorlinks=true,pdfusetitle]{hyperref}
\usepackage[pdfusetitle,hidelinks]{hyperref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definición de la portada %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\thepage}{\roman{page}}

% Establece las variables que serán utilizadas en la portada
\newcommand{\@tipotrabajo}{}
\newcommand{\tipotrabajo}[1]{\renewcommand{\@tipotrabajo}{#1}}

\newcommand{\@grado}{}
\newcommand{\grado}[1]{\renewcommand{\@grado}{#1}}

\newcommand{\@fechaexamen}{}
\newcommand{\fechaexamen}[1]{\renewcommand{\@fechaexamen}{#1}}

\newcommand{\@asesor}{}
\newcommand{\asesor}[1]{\renewcommand{\@asesor}{#1}}

\newcommand{\@programaestudio}{}
\newcommand{\programaestudio}[1]{\renewcommand{\@programaestudio}{#1}}

\newcommand{\@campoconocimiento}{}
\newcommand{\campoconocimiento}[1]{\renewcommand{\@campoconocimiento}{#1}}

\newcommand{\@campodisciplinario}{}
\newcommand{\campodisciplinario}[1]{\renewcommand{\@campodisciplinario}{#1}}

\newcommand{\@instituto}{}
\newcommand{\instituto}[1]{\renewcommand{\@instituto}{#1}}

\newcommand{\@facultad}{}
\newcommand{\facultad}[1]{\renewcommand{\@facultad}{#1}}

\newcommand{\@universidad}{}
\newcommand{\universidad}[1]{\renewcommand{\@universidad}{#1}}

\newcommand{\@escudouniversidad}{}
\newcommand{\escudouniversidad}[1]{\renewcommand{\@escudouniversidad}{#1}}

\newcommand{\@escudofacultad}{}
\newcommand{\escudofacultad}[1]{\renewcommand{\@escudofacultad}{#1}}

\newcommand{\@lugar}{}
\newcommand{\lugar}[1]{\renewcommand{\@lugar}{#1}}

\newcommand{\@tema}{}
\newcommand{\tema}[1]{\renewcommand{\@tema}{#1}}

\newcommand{\@presidente}{}
\newcommand{\presidente}[1]{\renewcommand{\@presidente}{#1}}

\newcommand{\@secretario}{}
\newcommand{\secretario}[1]{\renewcommand{\@secretario}{#1}}

\newcommand{\@vocal}{}
\newcommand{\vocal}[1]{\renewcommand{\@vocal}{#1}}

\newcommand{\@primersuplente}{}
\newcommand{\primersuplente}[1]{\renewcommand{\@primersuplente}{#1}}

\newcommand{\@segundosuplente}{}
\newcommand{\segundosuplente}[1]{\renewcommand{\@segundosuplente}{#1}}

% Insertamos metadatos en el PDF
\hypersetup{
  pdfinfo={
    Producer={LaTeX with 'unam' class by Juan Camacho}
  }
}

% Las páginas iniciales del libro estarán a una sola columna.
\newenvironment{unacolumna}{%
  \@restonecolfalse
  \if@twocolumn
     \@restonecoltrue\onecolumn
  \else
     \newpage
  \fi
}{%
  \if@restonecol
     \twocolumn
  \else
     \newpage
  \fi
}

\renewcommand{\maketitle}{%
  \begin{unacolumna}
    \thispagestyle{empty}
    \begin{minipage}[c][\textheight][c]{.2\textwidth}
      \centering
      \includegraphics[width=.8\linewidth]{unam}

      \vspace{5pt}

      \rule{3pt}{.75\textheight} 
      \hspace{1pt} \rule{1pt}{.75\textheight}
      \hspace{1pt} \rule{3pt}{.75\textheight}

      \vfill

      \includegraphics[width=.8\linewidth]{ingenieria}
    \end{minipage}
    \begin{minipage}[c][\textheight][c]{.8\textwidth}
      \centering
      {\Large \expandafter\MakeUppercase\expandafter{\@universidad}}\\

      \rule{\textwidth}{3pt} 
      \vspace{2pt}
      \rule{\textwidth}{1pt}

      \vspace{5pt}

      {\large \expandafter\MakeUppercase\expandafter{\@instituto}}\\
      {\large \expandafter\MakeUppercase\expandafter{\@facultad}}

      \vfill

      {\Large \expandafter\MakeUppercase\expandafter{\@title}}

      \vfill

      \textls[1000]{\huge
        \expandafter\MakeUppercase\expandafter{\@tipotrabajo}}\\
      {QUE PARA OBTENER EL GRADO DE}\\
      {\expandafter\MakeUppercase\expandafter{{\@grado}}}

      \vfill

      PRESENTA:\\
      \textbf{\expandafter\MakeUppercase\expandafter{\@author}}

      \vfill

      {\small DIRECTOR DE
        \expandafter\MakeUppercase\expandafter{\@tipotrabajo}}\\
      \expandafter\MakeUppercase\expandafter{\@asesor}

      \vfill

      \flushright
      \expandafter\MakeUppercase\expandafter{\@lugar}
      {. }\expandafter\MakeUppercase\expandafter{\@fechaexamen}
    \end{minipage}

    \newpage
    \thispagestyle{empty}
    \begin{center}
      \includegraphics[width=0.2\linewidth]{unam}

      \textbf{\large  \expandafter\MakeUppercase\expandafter{\@universidad}}

       \expandafter\MakeUppercase\expandafter{\@programaestudio}

       \expandafter\MakeUppercase\expandafter{\@campoconocimiento}
       { - }\expandafter\MakeUppercase\expandafter{\@campodisciplinario}

      \vfill

      \expandafter\MakeUppercase\expandafter{\@title}

      \vfill

      \expandafter\MakeUppercase\expandafter{\@tipotrabajo}\\
      {QUE PARA OPTAR POR EL GRADO DE:}\\
      \expandafter\MakeUppercase\expandafter{\@grado}

      \vfill

      {PRESENTA:}\\
      \expandafter\MakeUppercase\expandafter{\@author}


      \vfill

      {TUTOR PRINCIPAL:}\\
      \expandafter\MakeUppercase\expandafter{\@asesor}

      \vfill

      \expandafter\MakeUppercase\expandafter{\@lugar}{. }
      \expandafter\MakeUppercase\expandafter{\@fechaexamen}

      \newpage

      \flushleft\large

      \vspace{10pt}

      \textbf{\Large JURADO ASIGNADO:}

      \vfill

      PRESIDENTE: \expandafter\MakeUppercase\expandafter{\@presidente}

      SECRETARIO: \expandafter\MakeUppercase\expandafter{\@secretario}

      VOCAL: \expandafter\MakeUppercase\expandafter{\@vocal}

      1$^{er.}$ SUPLENTE: \expandafter\MakeUppercase\expandafter{\@primersuplente}

      2$^{do.}$ SUPLENTE: \expandafter\MakeUppercase\expandafter{\@segundosuplente}

      \vfill


      LUGAR O LUGARES DONDE SE REALIZÓ LA TESIS: 
      \expandafter\MakeUppercase\expandafter{\@lugar}{. }


      \vfill

      \centering

      \textbf{TUTOR DE TESIS:}

      \expandafter\MakeUppercase\expandafter{\@asesor}

      \vfill

      \rule{.3\textwidth}{2pt}

      FIRMA
      
  \end{center}
  \end{unacolumna}
}