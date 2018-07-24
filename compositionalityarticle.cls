%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% compositionalityarticle.cls, v0.1, 2018/05/27
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either
% version 1.3 of this license or any later version.
% The latest version of this license is in
% http://www.latex-project.org/lppl.txt and
% version 1.3 or later is part of all distributions
% of LaTeX version 2005/12/01 or later.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% For use with latex+dvipdfm, pdflatex, xelatex & lualatex 
% For compiling with plain latex, please use latex+dvipdfm 
% to produce the PDF, not dvis -> ps -> pdf nor dvipdf
% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{compositionalityarticle}[2018/05/27, v0.1]

\LoadClass{extarticle}

%% Fonts and Language
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{raleway}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{lmodern}
%\RequirePackage{fouriernc}
\RequirePackage[light]{merriweather}

\DeclareMathSizes{\@xpt}{\@xipt}{8}{6}
\linespread{1.4}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]


\RequirePackage{authblk}

%% Graphics tables and other formatting
\RequirePackage[
%   twoside
% , letterpaper
  ]{geometry}
\RequirePackage{graphicx}

%% Bibliography
%% v1.41 (15/11/2016)
%% Use pnas-new.bst if available
%% If not, try to use pnas2011.bst instead
%% If both aren't available, fall back to
%% unsrtnat
\RequirePackage[numbers,sort&compress,merge,round]{natbib}

\renewcommand*{\bibfont}{\raggedright}

%% Headers and Footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\fancyhead{}
\fancyfoot{}
\fancyfoot[L] {
   \fontfamily{Raleway-TLF}
   \color{mutedcoral}
   \selectfont
   \logo \hspace{0.3cm} Accepted in Compositionality \date 
}
\fancyfoot[R]{
   \fontfamily{Raleway-TLF}
   \color{mutedcoral}
   \selectfont
   \thepage
}

\newcommand {\logo} {\raisebox{-0.25cm}[0.1cm]{\includegraphics[width=0.8cm, height=0.8cm]{logo}}}

\renewcommand \headrulewidth {0pt}
\renewcommand \footrulewidth {0.5pt}
\renewcommand \footrule {
  \color{darkgray}
  \hrule
  \vspace{0.3cm}
}

\newcommand{\leadauthor}[1]{\def \@leadauthor{#1}}
\newcommand{\keywords}[1]{\def \@keywords{#1}}
\newcommand{\dates}[1]{\def \@dates{#1}}
\newcommand{\email}[1]{\def \@email{#1}}
%% Colors
\RequirePackage[svgnames]{xcolor}

\definecolor{mutedcoral}{RGB}{255,90,95}
\definecolor{palecoral}{RGB}{255,166,158}
\definecolor{darkgrey}{RGB}{51,51,51}
\definecolor{lightgrey}{RGB}{170,170,170}

%% Fonts
\newcommand \titlefont {
    \color{mutedcoral}
    \fontfamily{Raleway-TLF}
%    \bfseries
    \fontsize{22pt}{24pt}
    \selectfont
}

\newcommand \datesfont {
    \color{darkgray}
    \fontfamily{Raleway-TLF}
    \fontsize{8pt}{10pt}
    \selectfont
}

\newcommand \abstractfont{\color{darkgray}\merriweatherlight\bfseries\selectfont}

\renewcommand \Authfont {
    \color{darkgray}
    \fontfamily{Raleway-TLF}
    \fontsize{12pt}{14pt}
    \selectfont
 }

\renewcommand \Affilfont {
    \color{darkgray}
    \fontfamily{Raleway-TLF}
    \fontsize{8pt}{10pt}
    \selectfont
}

%% Abstract formatting
\renewenvironment{abstract}{\thispagestyle{fancy}\vspace{0.7cm}\abstractfont\par\noindent\ignorespaces}{\vspace{0.2cm}}
% maketitle
\renewcommand \@maketitle {
  {
     \raggedright
     \baselineskip=24pt
     \titlefont
     \@title
     \par
  }

  \vskip12pt

  {
     \raggedright
     \@author
     \par
  }

  \vskip2pt

  {
    \raggedright
    \datesfont
    \@ifundefined{@dates}{}{\@dates}
    \par
  }
}

% title section formatting

\RequirePackage[explicit]{titlesec}

\titleformat {\section}
  {\large\fontfamily{Raleway-TLF}\bfseries}
  {\thesection}
  {0.5em}
  {#1}
  []

\titleformat{\subsection}
  {\sffamily\fontfamily{Raleway-TLF}\bfseries}
  {\thesubsection}
  {0.5em}
  {#1}
  []

\renewcommand \normalsize { 
%   \merriweatherlight
   \color{darkgray} 
   \selectfont 
}


