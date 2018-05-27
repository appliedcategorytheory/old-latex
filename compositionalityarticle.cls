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

\RequirePackage[T1]{fontenc}
\RequirePackage{merriweather}
\RequirePackage{amsmath,amsfonts,amssymb}

\RequirePackage{authblk}

\newcommand{\leadauthor}[1]{\def\@leadauthor{#1}}
\newcommand{\keywords}[1]{\def\@keywords{#1}}

\RequirePackage{xcolor}

\definecolor{mutedcoral}{RGB}{255,90,95}
\definecolor{palecoral}{RGB}{255,166,158}
\definecolor{darkgrey}{RGB}{51,51,51}
\definecolor{lightgrey}{RGB}{170,170,170}




