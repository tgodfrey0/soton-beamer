\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom-article}[2023/11/01 A custom article class]

%%% Arguments %%%
\DeclareOption{10pt}{\def\ptsize{10pt}}
\DeclareOption{11pt}{\def\ptsize{11pt}}
\DeclareOption{12pt}{\def\ptsize{12pt}}

\DeclareOption{onecolumn}{\def\cols{onecolumn}}
\DeclareOption{twocolumn}{\def\cols{twocolumn}}

\DeclareOption{notitlepage}{\def\page{notitlepage}}
\DeclareOption{titlepage}{\def\page{titlepage}}

% Defaults
\ExecuteOptions{10pt}
\ExecuteOptions{twocolumn}
\ExecuteOptions{titlepage}

\ProcessOptions
\PassOptionsToClass{\ptsize,a4paper,\cols,\page}{article}
\LoadClass{article}

%%% Packages %%%
% Document setup
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[left=2.5cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

% Section style
\RequirePackage{sectsty} % Allows the the section style commands below

% Links
\RequirePackage{hyperref}

% Better references - use \cref
\RequirePackage{cleveref}

% Citations & references
\RequirePackage[style=ieee,backend=biber,dashed=false]{biblatex}

% Code blocks
\RequirePackage{fancyvrb}

% Colours
\RequirePackage[dvipsnames]{xcolor}

% Drawings
\RequirePackage{tikz}

% Spacing in units in equations - use \si, e.g. \si{kg.m/s^2}
\RequirePackage{siunitx}

%%% New commands %%%
\renewcommand{\thesection}{\Roman{section}} 
\renewcommand{\thesubsection}{\thesection.\roman{subsection}}

%%% Page styling %%%
% Section styles 
\sectionfont{\normalsize\centering}
\subsectionfont{\normalsize\centering}
\subsubsectionfont{\normalsize\centering}
\paragraphfont{\normalsize}

% Link colours
\hypersetup{
  linkcolor  = violet,
  citecolor  = YellowOrange,
  urlcolor   = Aquamarine,
  colorlinks = true,
}

% Author
\author{Toby Godfrey\\\href{mailto:tmag1g21@soton.ac.uk}{tmag1g21@soton.ac.uk}}

% Header & footer
\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{\thepage}
\rfoot{}
\renewcommand{\headrulewidth}{0pt} % Remove line at header
\renewcommand{\footrulewidth}{0pt} % Remove line at footer
