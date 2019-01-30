\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{handout}[2019/01/14 Handout class]

\usepackage[T1]{fontenc}
\usepackage[lighttt]{lmodern}

\LoadClass{article}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{realboxes}
\RequirePackage{fancyhdr}
\usepackage[twocolumn,columnsep=1.5in,margin=1.5in,paperheight=24in,paperwidth=36in]{geometry}
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
  xleftmargin=18pt,
  xrightmargin=18pt,
  frame=single,
  framerule=2pt,
  framesep=6pt,
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
\renewcommand{\tiny}{\fontsize{24}{26}\selectfont}
\renewcommand{\scriptsize}{\fontsize{28}{30}\selectfont}
\renewcommand{\footnotesize}{\fontsize{30}{32}\selectfont}
\renewcommand{\small}{\fontsize{32}{34}\selectfont}
\renewcommand{\normalsize}{\fontsize{36}{38}\selectfont}
\renewcommand{\large}{\fontsize{38}{40}\selectfont}
\renewcommand{\Large}{\fontsize{40}{42}\selectfont}
\renewcommand{\LARGE}{\fontsize{44}{46}\selectfont}
\renewcommand{\huge}{\fontsize{52}{54}\selectfont}
\renewcommand{\Huge}{\fontsize{60}{62}\selectfont}
\lhead{}
\rhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}
