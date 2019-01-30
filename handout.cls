\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{handout}[2019/01/14 Handout class]

\usepackage[T1]{fontenc}
\usepackage[lighttt]{lmodern}

\LoadClass{article}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{realboxes}
\RequirePackage{fancyhdr}
\usepackage[landscape,twocolumn,columnsep=0.5in,top=0.5in,left=0.5in,right=0.5in,bottom=0.5in]{geometry}
\definecolor{palegray}{HTML}{dddddd}
\definecolor{darkgray}{HTML}{999999}
\definecolor{plum}{HTML}{440088}
\definecolor{pinegreen}{HTML}{006622}
\definecolor{stormgreen}{HTML}{336644}
\definecolor{steelblue}{HTML}{556677}
\definecolor{navy}{HTML}{000066}
\definecolor{ruby}{HTML}{880000}
\definecolor{mahogany}{HTML}{441100}

\definecolor{paleyellow}{HTML}{ffffdd}
\definecolor{cream}{HTML}{f8ffee}
\definecolor{palelime}{HTML}{eeffdd}
\definecolor{sakura}{HTML}{ffddee}
\definecolor{skyblue}{HTML}{f4f4ff}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Listings configuration
\lstset{
  backgroundcolor=\color{paleyellow},
  showspaces=false,
  showstringspaces=false,
  xleftmargin=6pt,
  xrightmargin=6pt,
  frame=single,
  framerule=0.75pt,
  framesep=2pt,
  rulecolor=\color{mahogany},
  commentstyle=\slshape\color{steelblue},
  keywordstyle=\bfseries \color{navy},
  stringstyle=\color{ruby},
  basicstyle=\small\ttfamily,
}

\newcommand{\code}[1]{\Colorbox{paleyellow}{\lstinline!#1!}}

% Utility commands
\newcommand{\term}[1]{%
{\bfseries \color{navy}#1}%
}

\newcommand{\note}[1]{{\color{darkgray}\slshape\sffamily#1}}

\newcommand{\python}{\textsc{Python}}

% Page setup
\renewcommand{\normalsize}{\fontsize{11}{12}\selectfont}
\lhead{}
\rhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}
