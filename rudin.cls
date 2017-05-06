\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rudin}[2017/05/06 Emulate Principles of Mathematical Analysis
typesetting]

\LoadClass{article}

\RequirePackage{geometry}
\RequirePackage{changepage}
\RequirePackage{times}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage[leqno]{amsmath}

\renewenvironment{proof}{%
\begin{adjustwidth}{\parindent}{\parindent}
{\bf Proof} \ \ 
}{%
\end{adjustwidth}}

% "1.3 Theorem" instead of "Theorem 1.3."
% TODO: Spacing between the numbers.
\swapnumbers

\newtheoremstyle{rudin}
    {6pt}       % Space before.
    {6pt}       % Space after.
    {}          % Body font.
    {}          % Indent amount.
    {\bf}       % Theorem head shape.
    {}          % Punctuation after theorem head.
    {1em}       % Space after theorem head.
    {}          % Theorem head spec.

\theoremstyle{rudin}

\newtheorem*{thm*}{Theorem}
\newtheorem{thm}{Theorem}[section]
\newtheorem*{lem*}{Lemma}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{cor}[thm]{Corollary}
\newtheorem*{cor*}{Corollary}

\newtheoremstyle{rudin-def}
    {6pt}         % Space before.
    {6pt}         % Space after.
    {\normalfont} % Body font.
    {}            % Indent amount.
    {\bf}         % Theorem head shape.
    {}            % Punctuation after theorem head.
    {1em}         % Space after theorem head.
    {}            % Theorem head spec.

\theoremstyle{rudin-def}

\newtheorem*{defn*}{Definition}
\newtheorem{defn}[thm]{Definition}
\newtheorem*{notate*}{Notation}
\newtheorem{notate}[thm]{Notation}
\newtheorem*{exam*}{Example}
\newtheorem{exam}[thm]{Example}

% Use boldface vectors instead of arrows. (Arrows are gross.)
% (Admittedly, this makes it hard to distinguish R^2 from the its elements if
% they're both in bold.)
\let\vec\mathbf
