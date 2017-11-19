%
% created by Xiaofeng Wang <wasphin@gmail.com>
%
% Version 1.0 (25-Apr-2013)
%
% Copyright (C) 2013  Xiaofeng Wang <wasphin@gmail.com>
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program in doc/COPYING; if not, write to the Free
% Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
% MA 02110-1301 USA
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CCNUthesis}
              [2013/4/25 v0.1
                CCNUthesis document class]

\LoadClass[a4paper, 12pt, fleqn]{article}

%%%%%%% geometry package
\RequirePackage{geometry}
\geometry{
  a4paper,
  text={157 true mm,243 true mm},
  top= 25 true mm,
  left=31.4 true mm,
  head=6 true mm,
  headsep=6 true mm,
  foot=16.5 true mm}

%%%%%%% math and graph packages
\RequirePackage{
  amsmath, amsthm,
  amsfonts, mathrsfs,
  bm, relsize}    % bm it fonts in math, and \mathsmaller &
                  % \mathlarger in relsize to set the formular
\RequirePackage{graphicx, psfrag}

%%%%%%% hyperref package
\RequirePackage{hyperref}
\hypersetup{
  dvipdfm,
  unicode=true,%
  %CJKbookmarks,
  pdfauthor=cuckoo,%
  pdftitle=Privacy-Preserving Data Mining,
  colorlinks,%
  linkcolor=black,%blue,%
  citecolor=black,%blue,%
  plainpages=false,%
  pdfstartview=FitH}
%\AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}}% convert GBK
%bookmarks to unicode
\RequirePackage{caption}

%%%%%%% CJK packages
\RequirePackage{
  CJKutf8, CJKpunct, CJKspace,
  CJKfntef, CJKnumb, CJKulem}
\RequirePackage{indentfirst}

%%%%%%% tocloft package
\RequirePackage{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\AtEndOfPackage{\makeatletter\input{CCNUthesis.cfg}\makeatother}

\parskip 0.5ex
\renewcommand{\baselinestretch}{1.5}

\def\fillunderline[#1]#2{%
  \underline{\hbox to #1{\hfill#2\hfill}}}

\newcommand\classfication[1]{\def\CCNU@value@classification{#1}}
\newcommand\thesistype[1]{\def\CCNU@value@thesistype{#1}}
\newcommand\UDC[1]{\def\CCNU@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CCNU@value@serialnumber{#1}}

\renewcommand\title[1]{\def\CCNU@value@title{#1}}
\renewcommand\author[1]{\def\CCNU@value@author{#1}}
\renewcommand\date[1]{\def\CCNU@value@date{#1}}
\newcommand\school[1]{\def\CCNU@value@school{#1}}
\newcommand\major[1]{\def\CCNU@value@major{#1}}
\newcommand\grade[1]{\def\CCNU@value@grade{#1}}
\newcommand\studentnumber[1]{\def\CCNU@value@studentnumber{#1}}
\newcommand\advisor[1]{\def\CCNU@value@advisor{#1}}

\renewcommand\maketitle{%
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    \song \xiaosan \bf{
      \CCNU@label@classification~
      \fillunderline[4.7cm]{\CCNU@value@classification}
      \hfill
      \CCNU@label@thesistype~
      \fillunderline[4.7cm]{\CCNU@value@thesistype}

      \CCNU@label@UDC~
      \fillunderline[4.7cm]{\CCNU@value@UDC}
      \hfill
      \CCNU@label@serialnumber~
      \fillunderline[4.7cm]{\CCNU@value@serialnumber}}

    \begin{figure}[h!]
      \vspace{2.4em}
      \centering
      \includegraphics[scale=0.4]{ccnu.jpg}
    \end{figure}

    \hei \xiaochu \bf \CCNU@label@thesis
    \vskip \stretch{4}
    \song \bf {
      \xiaoyi \CCNU@label@title~
      \xiaoer \fillunderline[10cm]{\CCNU@value@title}
    \vskip \stretch{2}}

    \song \xiaosan \bf{
      \CCNU@label@school~
      \fillunderline[7cm]{\CCNU@value@school}
      \vskip \stretch{1}
      \CCNU@label@major~
      \fillunderline[7cm]{\CCNU@value@major}
      \vskip \stretch{1}
      \CCNU@label@grade~
      \fillunderline[7cm]{\CCNU@value@grade}
      \vskip \stretch{1}
      \CCNU@label@author~
      \fillunderline[7cm]{\CCNU@value@author}
      \vskip \stretch{1}
      \CCNU@label@studentnumber~
      \fillunderline[7cm]{\CCNU@value@studentnumber}
      \vskip \stretch{1}
      \CCNU@label@advisor~
      \fillunderline[7cm]{\CCNU@value@advisor}}

    \vspace{2em}
    \CCNU@value@date
  \end{center}
  %\include{statement}
}

%%%%%%%
\thispagestyle{empty}
%\clearpage
\newcommand\statement[1]{%
  \vskip -5pt
  \parbox{\textwidth}{\centering\wbei\sanhao\bf\CCNU}
  \vskip 16pt
  \parbox{\textwidth}{\centering\wbei\sanhao\bf\CCNU@label@statement}
  \vskip 32pt
  \parbox{\textwidth}{\normalfont\xiaosi\hspace{2em}\xiaosi#1}
  \vskip 20pt
  \parbox{\textwidth}{\hspace{24pt}\normalfont\xiaosi\CCNU@label@authorsign\hspace{3cm}\CCNU@label@signdate}
  \vskip 2.4cm}

\newcommand\accredit[1]{%
  \parbox{\textwidth}{\centering\song\sihao\bf\CCNU@label@accredit}
  \vskip 32pt
  \parbox{\textwidth}{\normalfont\xiaosi\hspace{2em}\xiaosi#1}
  \vskip 2em
  \parbox{\textwidth}{\hspace{24pt}\xiaosi\CCNU@label@authorsign\hspace{36pt}\hskip
    2cm\CCNU@label@signdate}
  \parbox{\textwidth}{\hspace{24pt}\xiaosi\CCNU@label@advisorsign\hspace{36pt}\hskip
    3.7cm\CCNU@label@signdate}}
%% end of statement

\newcommand\frontmatter{\pagenumbering{Roman}}
\newcommand\mainmatter{\pagenumbering{arabic}}

%%%%%%%
\iffalse
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[R]{\song\wuhao --~{\thepage}~--}
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead{} % clear all fields
  \fancyhead[LO]{\song\wuhao \CCNU@value@thesis}%
  \fancyhead[RO]{\song\wuhao \CCNU@value@titlemark}%
  \fancyhead[LE]{\song\wuhao \leftmark}%
  \fancyhead[RE]{\song\wuhao \CCNU@value@thesis}%
  \fancyfoot[RO,LE]{\wuhao --~\thepage~--}
\fi

\newenvironment{cabstract}
               {\addcontentsline{toc}{section}{\CCNU@label@cabstract}}
               {}

\newcommand\ckeywords[1]{%
  \addcontentsline{toc}{section}{\CCNU@label@ckeywords}
  \vspace{2em}{\hspace{2em}\renewcommand{\baselinestretch}{1.5}\song \xiaosi \bf \CCNU@label@ckeywords ：} #1}

\renewenvironment{abstract}
                 {\addcontentsline{toc}{section}{\CCNU@label@abstract}}
                 {}

\newcommand\keywords[1]{%
  \addcontentsline{toc}{section}{\CCNU@label@keywords}
  \vspace{2em}{\hspace{2em}\renewcommand{\baselinestretch}{1.5}\bf \CCNU@label@keywords :}~ #1}


\renewenvironment{thebibliography}[1]{
  \addcontentsline{toc}{section}{\refname}
  \section*{\refname}%
  \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
       {\settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
         \@openbib@code
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}}%
       \sloppy
       \clubpenalty4000
       \@clubpenalty \clubpenalty
       \widowpenalty4000%
       \sfcode`\.\@m}
                 {\def\@noitemerr
                   {\@latex@warning{Empty `thebibliography' environment}}%
                   \endlist}

\renewenvironment{thanks}
                 {\addcontentsline{toc}{section}{\CCNU@label@thanks}
                 \section*{\centering\CCNU@label@thanks}}%
                 {}

%\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec

\endinput
