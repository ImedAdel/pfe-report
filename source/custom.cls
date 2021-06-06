\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom}[2021/03/31 My custom thesis and book class]

\PassOptionsToPackage{
  DIV  = 8,    % TODO: Make configurable
  BCOR = 10mm,  % TODO: Make configurable
}{typearea}

\LoadClass[a4paper,
           oneside,
           12pt,
           cleardoublepage=empty,
           numbers=noenddot,
           titlepage,
           toc=bibliography,
           toc=index,]{scrbook}

          %  \usepackage[includemp,
          %   paperwidth=18.90cm,
          %   paperheight=24.58cm,
          %   top=2.170cm,
          %   bottom=3.510cm,
          %   inner=2.1835cm,
          %   outer=2.1835cm,
          %   marginparwidth=4cm,
          %   marginparsep=0.4cm]{geometry}

\RequirePackage{fontspec}

\setmainfont[Numbers=OldStyle,Ligatures={Required,Common,Contextual}]{EB Garamond}
\setsansfont{Inter}
           
\RequirePackage{polyglossia}
\setmainlanguage{english}

\RequirePackage[babel=true]{microtype}

\RequirePackage[autostyle=true]{csquotes} % Context-sensitive quotation marks
\MakeOuterQuote{"}

\RequirePackage{makeidx}  % For creating indices
\RequirePackage{xspace}   % For automatically "eating" spaces

\RequirePackage{setspace}
\onehalfspacing
\setlength{\parskip}{0.5em}

\RequirePackage[%
  colorlinks = false,
  % citecolor  = RoyalBlue,
  % linkcolor  = RoyalBlue,
  % urlcolor   = RoyalBlue,
  unicode,
  ]{hyperref}

\RequirePackage{bookmark}

\RequirePackage[%
  autocite     = plain,
  backend      = biber,
  doi          = true,
  url          = true,
  giveninits   = true,
  hyperref     = true,
  maxbibnames  = 99,
  maxcitenames = 99,
  sortcites    = true,
  style        = numeric,
  ]{biblatex}

\RequirePackage{tikz}
\usetikzlibrary{positioning}
\RequirePackage{tikz-uml}
\RequirePackage{tikz-cd}
\RequirePackage{floatpag}
\RequirePackage{float}
\RequirePackage{cancel}

\RequirePackage{comment}
\excludecomment{toexclude}

% \RequirePackage[showframe]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tabularx}

\renewcommand{\tabularxcolumn}[1]{m{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graphics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx}
\graphicspath{%
  {Graphics/}
  {./}
}

\makeatletter
\def\maxwidth#1{\ifdim\Gin@nat@width>#1 #1\else\Gin@nat@width\fi}
\def\maxheight#1{\ifdim\Gin@nat@height>#1 #1\else\Gin@nat@height\fi}
\makeatother

\newcommand{\logofig}[2]{
  \begin{figure}[H]
    \centerfloat
    \includegraphics[width=\maxwidth{\linewidth},height=\maxheight{0.5\linewidth},keepaspectratio]{#2}
    \caption{#1 logo}
  \end{figure}
}

\newcommand{\lgfig}[3]{
  \begin{figure}[H]
    \centerfloat
    \includegraphics[width=\maxwidth{\linewidth},height=\maxheight{0.5\linewidth},keepaspectratio]{#2}
    \caption{#1}
    \label{fig:#3}
  \end{figure}
}

\newcommand{\wirefig}[3]{
  \begin{figure}[H]
    \centerfloat
    \includegraphics[width=\maxwidth{1.2\linewidth},height=\maxheight{0.6\linewidth},keepaspectratio]{#3}
    \caption{"#1" wireframe}
    \label{fig:#2-wireframe}
  \end{figure}
}

\RequirePackage{chronosys}
\RequirePackage{subcaption}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Penalties
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\clubpenalty         = 10000
\widowpenalty        = 10000
\displaywidowpenalty = 10000

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Typefaces for parts, chapters, and sections
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \newfontfamily\chapterfont[Color=MSLightBlue]{Times New Roman}

\renewcommand{\partformat}{\huge\partname~\thepart\autodot}
\renewcommand{\raggedpart}{\flushleft}

\setkomafont{part}{\normalfont\huge\scshape}

\setkomafont{sectioning}{\normalfont\bfseries}
\setkomafont{descriptionlabel}{\normalfont\bfseries}

\setkomafont{caption}{\small}
\setkomafont{captionlabel}{\usekomafont{caption}}

% Large number for chapter
\renewcommand*{\chapterformat}{%
  \fontsize{50}{55}\selectfont\thechapter\autodot\enskip
}

% For centring figures and maybe tables
\makeatletter
\newcommand*{\centerfloat}{%
  \parindent \z@
  \leftskip \z@ \@plus 1fil \@minus \textwidth
  \rightskip\leftskip
  \parfillskip \z@skip}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Glossaries
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[%
  acronym,
  automake,
  nogroupskip,
  nopostdot,
  nonumberlist,
  toc,
  ]{glossaries}