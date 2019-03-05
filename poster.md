\documentclass{beamer}
%% Possible paper sizes: a0, a0b, a1, a2, a3, a4.
%% Possible orientations: portrait, landscape
%% Font sizes can be changed using the scale option.
\usepackage[size=a4,orientation=portrait,scale=1.475]{beamerposter}
\usetheme{LLT-poster}
%\usetheme{RJH}
%\usecolortheme{ComingClean}
%\usecolortheme{Entrepreneur}
%\usecolortheme{orchid}
\usecolortheme{New}
%\usecolortheme{rose}
%\usecolortheme{dove}
%\usecolortheme{CSIRO}
%\usecolortheme{crane}

%\usetheme{boxes}
\setbeamertemplate{blocks}[rounded][shadow=false]


\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{libertine}
\usepackage[scaled=1.5]{inconsolata}
\usepackage[libertine]{newtxmath}
\usepackage[numbers]{natbib}
\renewcommand{\bibfont}{\tiny}

\newcommand{\columnsbegin}{\begin{columns}}
\newcommand{\columnsend}{\end{columns}}

\newcommand{\texthash}{\#}

\usepackage{graphicx}
% Redefine \includegraphics so that, unless explicit options are
% given, the image width will not exceed the width or the height of the page.
% Images get their normal width if they fit onto the page, but
% are scaled down if they would overflow the margins.
\makeatletter
\def\ScaleWidthIfNeeded{%
 \ifdim\Gin@nat@width>\linewidth
    \linewidth
  \else
    \Gin@nat@width
  \fi
}
\def\ScaleHeightIfNeeded{%
  \ifdim\Gin@nat@height>0.8\textheight
    0.8\textheight
  \else
    \Gin@nat@width
  \fi
}
\makeatother

\setkeys{Gin}{width=\ScaleWidthIfNeeded,height=\ScaleHeightIfNeeded,keepaspectratio}%

%% Load the markdown package
\usepackage[citations,footnotes,definitionLists,hashEnumerators,smartEllipses,tightLists=false,hybrid]{markdown}
\markdownSetup{rendererPrototypes={
 link = {\href{#2}{#1}},
 headingFour = {\begin{block}{#1}},
 horizontalRule = {\end{block}}
}}

\author[]{Jona Sassenhagen\textsubscript{1}, Benjamin Gagl\textsubscript{1}, Christian Fiebach\textsubscript{1}}
\title{Predictive Coding Across Levels of Language}
\institute{sassenha@psych.uni-frankfurt.de\ \ \ \ \ \ \ \ \ \textsuperscript{1}Department of Psychology, Goethe University Frankfurt/Main, Germany}
% Optional foot image
\footimage{\includegraphics[width=4.5cm]{figs/funding.pdf}}

\begin{document}
\begin{frame}[fragile]\centering

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% first box: why %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{columns}
\begin{column}{1.05\textwidth}
\begin{markdown}

#### Research Question

\columnsbegin

\hspace{-.75cm}

\column{.6\textwidth}

**Predictive processing of language is well supported**

  - well known neurocognitive correlates (e.g., N400; \cite{Kutas:2011ty})
  - ... typically *within* one level: i.e., from word meaning to word meaning

**Predictive Coding theory \cite{Clark:2013joa} suggests *hierarchical* predictions**

  - e.g., lower levels influenced by higher levels
    (word *forms* predicted by word *meanings*)
  - levels play out on different time scales
  - some previous research has been questioned
    \cite{nieuwland2017limitsbrief}
    \cite{Delong:2005jf}
	  
- Predictive coding suggests lower-level (e.g., phonemic) representations should
  be less strong for more higher-level (e.g., semantically) predictable words

**References**

\bibliography{../../manuscripts/ref.bib}{}
\bibliographystyle{abbrv}


\column{.25\textwidth}

\vspace*{-.8cm}

![pic](figs/theory2.pdf)

\columnsend

----

\end{markdown}
\end{column}
\end{columns}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% last box: how %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{columns}
\begin{column}{1.05\textwidth}
\begin{markdown}

#### Methods

\columnsbegin

\hspace{-.75cm}

\column{.55\textwidth}

- Potsdam Sentence Corpus (144 German sentences, with cloze ratings
  for each word;  \cite{Kliegl2004})
  - MEG (n=25) and EEG (n=35) data

- compute strength of phonemic representations
    - fit a phoneme continuous encoding model \cite{DILIBERTO20152457}
	  to MEG and EEG data
	- calculate absolute (cross-validated) residuals per time point and channel
	  (roughly: how similar is the neural activity induced by each phoneme
	  token to the idealized template for that phoneme?)

- compute correlation between *word* predictability and *phoneme* 
  representation strength
    - first approach: fit second-level *cloze* continuous encoding model to
	  *squared residuals* from first level
	- second approach: for each word, calculate similarity between template
	  (first-level model coefficients) and actual neural activity, and bin
	  by word cloze

\column{.425\textwidth}

\vspace{-.35cm}

![explain](figs/explainmodel.pdf)


\columnsend

----

\end{markdown}
\end{column}
\end{columns}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% last box: how %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{columns}
\begin{column}{1.05\textwidth}
\begin{markdown}

#### Results

\columnsbegin

\column{1\textwidth}

\columnsbegin

\column{.325\textwidth}

**Approach 1:** Brain responses to less predictable words are more similar 
to the template

![](figs/lmplot.pdf)

\column{.525\textwidth}

**Approach 2:** Regression coefficients from second level
(cloze on phonemic encoding residual) encoding indicate at the beginning of
words, the phonemic model fits less well for predictable compared to
unpredictable words. (MEG \& EEG; only MEG shown)

\vspace{-.575cm}

![](figs/examplemeg.pdf)

\columnsend

\hfill

**Discussion** Results are in accordance with the hierarchical version of Predictive Coding
theory: when processing continuous, congruent speech, phoneme-level
representational pattern strength covaries with word-level predictability.

\columnsend

----

\end{markdown}
\end{column}
\end{columns}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\bigskip
%{\usebeamercolor[bg]{headline}\hrulefill}
%\bigskip


%\bigskip
%{\usebeamercolor[bg]{headline}\hrulefill}
%\bigskip

\end{frame}
\end{document}
