\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pats-resume}[2025/03/02 Pat's Resume Template]

\LoadClass{article}

% Packages
\RequirePackage[english]{babel}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{fontawesome5}
\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref} % Hide link borders
\RequirePackage{microtype}
\RequirePackage{paracol}
\RequirePackage{supertabular}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{comment}
\RequirePackage{ifthen}

% Geometry
\geometry{letterpaper, hmargin=1.75cm, vmargin=0.9cm}
\columnratio{0.65, 0.35}
\setlength\columnsep{0.05\textwidth}
\setlength\parindent{0pt}
\setlength{\smallskipamount}{8pt plus 3pt minus 3pt}
\setlength{\medskipamount}{12pt plus 2pt minus 2pt}
\setlength{\bigskipamount}{24pt plus 8pt minus 8pt}

% Style
\pagestyle{empty}
\definecolor{customblue}{HTML}{3E64FF}
\definecolor{lightgray}{gray}{0.01}
\titleformat{\section}{\large\color{customblue}\bfseries}{}{0em}{}
\titlespacing{\section}{0pt}{\smallskipamount}{\smallskipamount}
\newcommand{\heading}[1]{{\Huge\color{black}\textbf{#1}}}
\newcommand{\entry}[4]{\vspace{2pt}{{\textbf{\textcolor{black}{#1}}}}, \textcolor{black}{#2} \hfill \small\textcolor{black}{#3} \, \small\textcolor{customblue}{#4}}
\newcommand{\skill}[4]{\vspace{2pt}{{\textbf{\textcolor{black}{#1}}}}: \textcolor{black}{#2} \hfill \small\textcolor{black}{#3} \, \small\textcolor{customblue}{#4}}
\newcommand{\tableentry}[3]{\textsc{#1} & #2\expandafter\ifstrequal\expandafter{#3}{}{\\}{\\[2pt]}}
\newcommand{\info}[2]{\textcolor{black}{\textbf{#1:}} #2}
\newcommand{\details}[1]{\begin{itemize}[noitemsep,leftmargin=5mm]#1\end{itemize}}
\newcommand{\tools}[1]{\textit{(#1)}}
\newcommand{\ResumeSection}[1]{\section{#1}\vspace{-4pt}}
\newcommand{\consulting}[1]{\ifdef{\consultingFlag}{#1}{}}
\newcommand{\tech}[1]{\ifdef{\techFlag}{#1}{}}
\newcommand{\gpa}[1]{\ifdef{\gpaFlag}{#1}{}}

% Define variables
\newcommand{\name}{}
\newcommand{\email}{}
\newcommand{\phone}{}
\newcommand{\linkedin}{}
\newcommand{\github}{}

% Setters
\newcommand{\setname}[1]{\renewcommand{\name}{#1}}
\newcommand{\setemail}[1]{\renewcommand{\email}{#1}}
\newcommand{\setphone}[1]{\renewcommand{\phone}{#1}}
\newcommand{\setlinkedin}[1]{\renewcommand{\linkedin}{#1}}
\newcommand{\setgithub}[1]{\renewcommand{\github}{#1}}

% Default header
\AtBeginDocument{
  \begin{center}
    \heading{\name}

    \vspace{7pt}
    
    \info{Email}{\href{mailto:\email}{\email}} $\mid$ \info{Phone}{\phone} \\
    \info{LinkedIn}{\href{https://\linkedin}{\linkedin}} 
    \tech{
      $\mid$ \info{GitHub}{\href{https://\github}{\github}}
    }
  \end{center}
}

\endinput
