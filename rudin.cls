% This LaTeX class attempts to emulate the typesetting of Rudin's
% "Principles of Mathematical Analysis."

% Copyright © 2017 Robert Dougherty-Bliss
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rudin}[2017/05/06 Emulate Principles of Mathematical Analysis
typesetting]

\LoadClassWithOptions{article}

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
