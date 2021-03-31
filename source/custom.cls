\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom}[2021/03/31 My custom thesis and book class]

\PassOptionsToPackage{
  DIV  = 10,    % TODO: Make configurable
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
           
\RequirePackage{fontspec}
           