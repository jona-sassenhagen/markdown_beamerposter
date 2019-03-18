\documentclass{beamer}
%% Possible paper sizes: a0, a0b, a1, a2, a3, a4.
%% Possible orientations: portrait, landscape
%% Font sizes can be changed using the scale option.
\usepackage[size=a4,orientation=portrait,scale=1.475]{beamerposter}
\usetheme{LLT-poster}
%\usetheme{RJH}
\usecolortheme{NewWhite}

%\usetheme{boxes}
\setbeamertemplate{blocks}[rounded][shadow=false]
%\setbeamertemplate{blocks}[]


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

\newcommand{\vcenteredinclude}[1]{\begingroup
\setbox0=\hbox{\includegraphics[width=.075\paperwidth]{#1}}%
\parbox{\wd0}{\box0}\endgroup}

\newcommand{\vcenteredincludetwo}[1]{\begingroup
\setbox0=\hbox{\includegraphics[width=4cm]{#1}}%
\parbox{\wd0}{\box0}\endgroup}


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

\author[]{Jona Sassenhagen\textsuperscript{1}, Benjamin Gagl\textsuperscript{1}, Christian J. Fiebach\textsuperscript{1,2}\vspace{-.3cm}}
\title{
%\hspace{.5cm}
\hspace{-.25cm}
%\includegraphics[width=4cm]{figs/funding.pdf}
\vcenteredincludetwo{figs/funding.pdf}
\hfill
Cross-level predictions in language processing
%vspace{1cm}
\hfill
%\includegraphics[width=.075\paperwidth]{figs/gulogo_head.png}
\vcenteredinclude{figs/gulogo_head.png}
\vspace{-.315cm}
}

\institute{sassenha@psych.uni-frankfurt.de\ \ \ \ \ \ \ \ \ \textsuperscript{1}Department of Psychology \& \textsuperscript{2}Brain Imaging Center; Goethe-University Frankfurt/Main, Germany\newline  \textcolor{white}{w} \tiny{The research leading to these results has received funding from the European Community's Seventh Framework Programme (FP7/2013) under grant agreement n° 617891 awarded to CJF.}
}
% Optional foot image
\footimage{
%\includegraphics[width=4.5cm]{figs/funding.pdf}
}

\begin{document}
\begin{frame}[fragile]\centering

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% first box: why %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{columns}
\begin{column}{1.05\textwidth}
\begin{markdown}

#### Research Question

\columnsbegin

%\hspace{-.5cm}

\column{.65\textwidth}

**Predictive processing of language is well supported**

  - well known neurocognitive correlates (e.g., N400; \cite{Kutas:2011ty})
  - ... typically *within* one level: i.e., from word meaning to word meaning

**Predictive Coding theory \cite{Clark:2013joa} suggests *hierarchical* predictions**

  - lower levels influenced by higher levels
    (e.g., word *forms* predicted by word *meanings*)
  - levels play out on different time scales
  - initial support for these questions \cite{Delong:2005jf}
    has been questioned \cite{nieuwland2017limitsbrief}
  - **Hypothesis**: Predictive coding suggests lower-level (e.g., phonemic)
    representations should be less strong for more higher-level (e.g.,
	semantically) predictable words

**References**

\bibliography{../../manuscripts/ref.bib}{}
\bibliographystyle{abbrv}


\column{.25\textwidth}

\vspace*{-.3cm}

\includegraphics[width=.2125\paperwidth]{figs/theory_brain.pdf}

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

\hspace{.25cm}

\column{.55\textwidth}

**Potsdam Sentence Corpus**

- 144 German sentences, with cloze ratings for each word \cite{Kliegl2004}
- MEG (n=25) and EEG (n=35)

**Compute strength of phonemic representations**

- fit continuous phoneme encoding model/mTRF \cite{DILIBERTO20152457}
  to MEG/EEG data
- calculate absolute (cross-validated) residuals per time point and channel
  (roughly: how similar is the neural activity induced by each phoneme
  token to the idealized template for that phoneme?)

**Correlation *word* predictability vs. *phoneme* representation strength**

- first approach: for each word, calculate similarity between template
  (first-level model coefficients) and actual neural activity, and bin
  by word cloze
- second approach: fit second-level *word cloze* continuous encoding model to
  *squared residuals* from first level ($RSS \sim cloze$)

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
words (~180ms), the phonemic model fits less well for predictable compared to
unpredictable words. (MEG \& EEG; only MEG shown, EEG is highly similar)

\vspace{-.575cm}

![](figs/examplemeg.pdf)

\columnsend

\hfill

**Discussion** Results are in accordance with the hierarchical version of Predictive Coding
theory: when processing continuous, congruent speech, phoneme-level
representational pattern strength (in pTSG) covaries with word-level
predictability - as if predicted phonemes are "predicted away".

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
