-- 2022 Baccalaureat C Mathematiques -- 22 questions (no Serie C/E split in this paper)
-- Excluded: Partie B "Presentation" 0.5pt (handwriting/neatness bonus, not a real question).
-- Real official corrige with point values, condensed to house style. All 3 Partie B taches verified solid (unlike 2021).
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Le plan complexe est muni d''un repère orthonormé direct $(O,\vec{e_1},\vec{e_2})$. On considère les points $A$, $B$, $F$ et $G$ d''affixes respectives $z_A=1+i\sqrt3$, $z_B=-1-i\sqrt3$, $z_F=4$ et $z_G=-4$. Résoudre dans $\mathbb{C}$ l''équation $z^2+2-2i\sqrt3=0$.', 'L''équation équivaut à $z^2=-2+2i\sqrt3$. Posons $z=x+iy$ avec $x,y\in\mathbb{R}$.

$$|z|^2 = |-2+2i\sqrt3| = \sqrt{4+12}=4 \implies x^2+y^2=4$$
$$\operatorname{Re}(z^2)=x^2-y^2=-2, \qquad \operatorname{Im}(z^2)=2xy=2\sqrt3>0$$

En combinant les deux premières : $2x^2=2 \implies x=\pm1$ ; $2y^2=6 \implies y=\pm\sqrt3$.

Comme $2xy>0$, $x$ et $y$ sont de même signe : $z_1=1+i\sqrt3$, $z_2=-1-i\sqrt3$.

Réponse : $S=\{1+i\sqrt3,\ -1-i\sqrt3\}$.', 'On cherche les racines carrées complexes de $-2+2i\sqrt3$ en posant $z=x+iy$ et en égalant module, partie réelle et partie imaginaire de $z^2$ ; le signe de $2xy$ permet ensuite d''apparier correctement $x$ et $y$.

Piège à éviter : associer des signes opposés à $x$ et $y$ alors que $2xy>0$ impose qu''ils soient de même signe.

Ce que l''examinateur attend : la mise en place du système (module + parties réelle/imaginaire) ou la forme exponentielle, le calcul exact de $x$ et $y$, et l''ensemble des solutions correctement rédigé.', '[{"criterion":"Calcul du module et pose du système / forme exponentielle","points":0.25},{"criterion":"Détermination exacte de x et y","points":0.25},{"criterion":"Ensemble S correctement rédigé","points":0.25}]'::jsonb, '2022', 'Exercice 1 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Soit $s$ la similitude directe d''expression complexe $z''=(1-i\sqrt3)z$. Donner les éléments caractéristiques de $s$.', 'L''écriture est $z''=az+b$ avec $a=1-i\sqrt3$, $b=0$.

Rapport : $k=|a|=\sqrt{1^2+(\sqrt3)^2}=\sqrt4=2$.

Angle : $a=2\left(\frac12-i\frac{\sqrt3}2\right)=2e^{-i\pi/3} \implies \theta=-\frac\pi3\ [2\pi]$.

Centre : $b=0$, donc le centre est l''origine $O(0,0)$.

Réponse : $s$ est la similitude directe de centre $O$, de rapport $k=2$ et d''angle $\theta=-\dfrac\pi3$.', 'Une similitude directe $z''=az+b$ a pour rapport $|a|$, pour angle $\arg(a)$, et pour centre son point fixe (qui vaut $0$ lorsque $b=0$).

Piège à éviter : confondre l''argument de $1-i\sqrt3$ avec $+\frac\pi3$ au lieu de $-\frac\pi3$ (erreur de signe sur la partie imaginaire).

Ce que l''examinateur attend : la démarche pour trouver module, argument et point fixe, avec les trois valeurs numériques exactes.', '[{"criterion":"Détermination du centre O","points":0.25},{"criterion":"Calcul du rapport k=2","points":0.25},{"criterion":"Calcul de l''angle θ=-π/3","points":0.25}]'::jsonb, '2022', 'Exercice 1 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Quelles sont les images par $s$ des points $A$ et $B$ ?', '$z_{s(A)} = (1-i\sqrt3)(1+i\sqrt3) = 1^2-(i\sqrt3)^2 = 1-(-3) = 4 = z_F$, donc $s(A)=F$.

$z_B=-z_A$, donc $z_{s(B)} = (1-i\sqrt3)(-1-i\sqrt3) = -(1-i\sqrt3)(1+i\sqrt3) = -4 = z_G$, donc $s(B)=G$.

Réponse : $s(A)=F$ et $s(B)=G$.', 'On substitue l''affixe de chaque point dans la formule de $s$, on développe le produit (identité remarquable $(1-i\sqrt3)(1+i\sqrt3)=1-(i\sqrt3)^2=4$), puis on compare le résultat aux affixes données $z_F$ et $z_G$.

Piège à éviter : erreur de signe dans le développement de $(1-i\sqrt3)(1+i\sqrt3)$.

Ce que l''examinateur attend : le calcul détaillé de $z_{s(A)}$ et $z_{s(B)}$, et leur identification avec $z_F$ et $z_G$.', '[{"criterion":"Preuve et conclusion s(A)=F","points":0.25},{"criterion":"Preuve et conclusion s(B)=G","points":0.25}]'::jsonb, '2022', 'Exercice 1 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $(\mathcal{E})$ l''ellipse de foyers $A$ et $B$ et d''excentricité $e=\dfrac12$. Déterminer une équation de l''image $(\mathcal{E}'')$ de $(\mathcal{E})$ par la similitude $s$.', '$s$ transforme $(\mathcal{E})$ en une ellipse $(\mathcal{E}'')$ de foyers $s(A)=F(4,0)$ et $s(B)=G(-4,0)$ (question précédente).

Centre : milieu de $[FG]=O(0,0)$.

Excentricité : conservée par une similitude, $e''=e=\frac12$.

$c''=\frac{FG}2=\frac{|z_F-z_G|}2=\frac{8}2=4$. Comme $e''=\frac{c''}{a''}$ : $a''=\frac{c''}{e''}=8$.

$b''^2=a''^2-c''^2=64-16=48$.

Les foyers étant sur l''axe des abscisses, l''axe focal est $(Ox)$ :
$$\frac{x^2}{a''^2}+\frac{y^2}{b''^2}=1 \iff \frac{x^2}{64}+\frac{y^2}{48}=1$$

Réponse : $(\mathcal{E}'') : \dfrac{x^2}{64}+\dfrac{y^2}{48}=1$.', 'Une similitude directe conserve les formes et l''excentricité ; l''image d''une ellipse de foyers $A,B$ est donc une ellipse de foyers $s(A),s(B)$, de même excentricité, dont on retrouve $a''$, $b''$, $c''$ via les relations usuelles de l''ellipse ($c=ae$, $a^2=b^2+c^2$).

Piège à éviter : intervertir $a''$ et $b''$, ou oublier que l''excentricité est inchangée par la similitude.

Ce que l''examinateur attend : l''identification des nouveaux foyers/centre et le calcul de $c''$, $a''$, $b''$, puis l''équation cartésienne exacte.', '[{"criterion":"Identification des foyers/centre et calcul de c'', a'', b''","points":0.5},{"criterion":"Obtention de l''équation cartésienne exacte","points":0.5}]'::jsonb, '2022', 'Exercice 1 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Construire $(\mathcal{E}'')$ puis $(\mathcal{E})$ dans le même repère.', '$(\mathcal{E}'')$ : centre $O(0,0)$ ; sommets sur le grand axe $(\pm8,0)$ ; sommets sur le petit axe $(0,\pm4\sqrt3)\approx(0,\pm6{,}93)$ ; foyers $F(4,0)$, $G(-4,0)$.

$(\mathcal{E})$ : image de $(\mathcal{E}'')$ par $s^{-1}$ (centre $O$, rapport $\frac12$, angle $+\frac\pi3$). Foyers $A(1,\sqrt3)$, $B(-1,-\sqrt3)$. $c=\frac{AB}2=2$, $a=\frac ce=4$, $b=\sqrt{a^2-c^2}=\sqrt{12}=2\sqrt3\approx3{,}46$. L''axe focal $(AB)$ fait un angle $\frac\pi3$ avec l''axe des abscisses.

Réponse : deux ellipses de centre $O$ — $(\mathcal{E}'')$ d''axes alignés sur les axes du repère, et $(\mathcal{E})$ inclinée de $\frac\pi3$, image l''une de l''autre par $s$.', '$(\mathcal{E}'')$ se trace directement à partir de ses foyers et sommets ; $(\mathcal{E})$ se déduit soit en appliquant $s^{-1}$ à $(\mathcal{E}'')$, soit directement à partir de ses propres foyers $A,B$ et de son axe focal incliné $\frac\pi3$ par rapport à l''horizontale.

Piège à éviter : dessiner des ellipses avec des angles aigus au lieu d''arrondis aux sommets, ou mal orienter le grand axe de $(\mathcal{E})$.

Ce que l''examinateur attend : le positionnement exact des foyers/sommets et un tracé soigné pour chacune des deux ellipses.', '[{"criterion":"Tracé correct et précis de (E'')","points":0.5},{"criterion":"Tracé correct et précis de (E)","points":0.5}]'::jsonb, '2022', 'Exercice 1 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Aïcha a choisi au hasard l''un après l''autre, deux points distincts parmi les points $O$, $A$, $B$, $F$ et $G$ comme ceux par lesquels passe l''axe focal de l''ellipse $(\mathcal{E}'')$. Quelle est la probabilité qu''elle ait choisi deux points de l''axe focal de $(\mathcal{E}'')$ ?', 'Tirage successif sans remise de $2$ points parmi $5$ : $N_{\text{total}}=A_5^2=5\times4=20$.

L''axe focal de $(\mathcal{E}'')$ est l''axe des abscisses. Parmi $\{O,A,B,F,G\}$, les points d''ordonnée nulle sont $O(0,0)$, $F(4,0)$, $G(-4,0)$ — soit $3$ points ; $A$ et $B$ n''y sont pas.

Tirages favorables (2 points distincts parmi ces 3) : $N_{\text{fav}}=A_3^2=3\times2=6$.

$$P = \frac{A_3^2}{A_5^2} = \frac6{20} = \frac3{10}$$

Réponse : $P=\dfrac3{10}$ (soit $0{,}3$).', '« L''un après l''autre » indique un tirage successif sans remise, donc un dénombrement par arrangements $A_n^k$ (et non des combinaisons). On identifie d''abord les points appartenant réellement à l''axe focal (l''axe des abscisses), en n''oubliant pas $O$ qui s''y trouve aussi.

Piège à éviter : utiliser des combinaisons au lieu d''arrangements, ou oublier le point $O$ parmi les points de l''axe focal.

Ce que l''examinateur attend : le dénombrement total ($A_5^2=20$), l''identification des 3 points sur l''axe focal et le dénombrement favorable ($A_3^2=6$), et le calcul final de la probabilité.', '[{"criterion":"Dénombrement de l''univers (A5²=20)","points":0.25},{"criterion":"Identification des 3 points sur l''axe focal et dénombrement favorable (A3²=6)","points":0.5},{"criterion":"Calcul de la probabilité finale (3/10)","points":0.25}]'::jsonb, '2022', 'Exercice 1 - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Soit $(\vec i,\vec j,\vec k)$ une base d''un espace vectoriel $E$, et $f$ un endomorphisme de $E$. Pour $k\in\mathbb{R}$, on considère l''ensemble $E_k$ des vecteurs $\vec u$ de $E$ tels que $f(\vec u)=k\vec u$. Démontrer que $E_k$ est un sous-espace vectoriel de $E$.', 'Non-vacuité : $f(\vec0_E)=\vec0_E=k\vec0_E$, donc $\vec0_E\in E_k$.

Stabilité par combinaison linéaire : soient $\vec u,\vec v\in E_k$ et $\alpha,\beta\in\mathbb{R}$. On a $f(\vec u)=k\vec u$, $f(\vec v)=k\vec v$. Par linéarité de $f$ :
$$f(\alpha\vec u+\beta\vec v) = \alpha f(\vec u)+\beta f(\vec v) = \alpha(k\vec u)+\beta(k\vec v) = k(\alpha\vec u+\beta\vec v)$$

Donc $\alpha\vec u+\beta\vec v\in E_k$.

Réponse : $E_k$ contient $\vec0_E$ et est stable par combinaison linéaire, donc c''est un sous-espace vectoriel de $E$.', 'Le théorème de caractérisation d''un sous-espace vectoriel demande de vérifier la présence du vecteur nul, puis la stabilité par combinaison linéaire — cette dernière découle ici directement de la linéarité de $f$.

Piège à éviter : oublier d''utiliser explicitement la linéarité de $f$, ou négliger la preuve de la non-vacuité.

Ce que l''examinateur attend : la preuve que $\vec0_E\in E_k$, et la démonstration formelle de la stabilité par combinaison linéaire.', '[{"criterion":"Non-vacuité (0∈Ek)","points":0.25},{"criterion":"Stabilité par combinaison linéaire","points":0.75}]'::jsonb, '2022', 'Exercice 2 - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'On suppose que $f$ vérifie l''égalité $f\circ f=2f$. Démontrer que $\vec u\in\operatorname{Im}f$ si et seulement si $\vec u\in E_2$.', 'Sens direct : supposons $\vec u\in\operatorname{Im}f$, donc $\vec u=f(\vec v)$ pour un certain $\vec v\in E$. Alors :
$$f(\vec u) = f(f(\vec v)) = (f\circ f)(\vec v) = 2f(\vec v) = 2\vec u$$

Donc $\vec u\in E_2$.

Sens réciproque : supposons $\vec u\in E_2$, donc $f(\vec u)=2\vec u$, soit $\vec u=f\left(\frac12\vec u\right)$. Comme $\frac12\vec u\in E$, $\vec u$ est bien l''image d''un vecteur par $f$, donc $\vec u\in\operatorname{Im}f$.

Réponse : par double implication, $\operatorname{Im}f=E_2$ sous l''hypothèse $f\circ f=2f$.', 'Une équivalence exige deux démonstrations : le sens direct part de la définition de l''image ($\vec u=f(\vec v)$) et réinjecte dans $f\circ f=2f$ ; le sens réciproque part de $f(\vec u)=2\vec u$ pour exprimer $\vec u$ comme image de $\frac12\vec u$ par $f$.

Piège à éviter : ne traiter qu''un seul sens de l''implication.

Ce que l''examinateur attend : une démonstration rigoureuse des deux sens.', '[{"criterion":"Sens direct (Im f ⟹ E2)","points":0.5},{"criterion":"Sens réciproque (E2 ⟹ Im f)","points":0.5}]'::jsonb, '2022', 'Exercice 2 - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'On suppose que $f(\vec i+\vec j)=2\vec i+2\vec j$, $f(\vec i-\vec j)=2\vec i-2\vec j$ et $f(\vec i-\vec j+\vec k)=\vec0$. Démontrer que $f(\vec i)=2\vec i$, $f(\vec j)=2\vec j$ et $f(\vec k)=-2\vec i+2\vec j$.', 'Par linéarité, $f(\vec i+\vec j)+f(\vec i-\vec j)=f(2\vec i)=2f(\vec i)$. Or $(2\vec i+2\vec j)+(2\vec i-2\vec j)=4\vec i$, donc $2f(\vec i)=4\vec i \implies f(\vec i)=2\vec i$.

$f(\vec i+\vec j)-f(\vec i-\vec j)=f(2\vec j)=2f(\vec j)$. Or $(2\vec i+2\vec j)-(2\vec i-2\vec j)=4\vec j$, donc $f(\vec j)=2\vec j$.

$f(\vec i-\vec j+\vec k)=\vec0 \implies f(\vec i)-f(\vec j)+f(\vec k)=\vec0$. En substituant :
$$2\vec i-2\vec j+f(\vec k)=\vec0 \implies f(\vec k)=-2\vec i+2\vec j$$

Réponse : $f(\vec i)=2\vec i$, $f(\vec j)=2\vec j$, $f(\vec k)=-2\vec i+2\vec j$.', 'La linéarité de $f$ permet de combiner (sommer, soustraire) les relations données pour isoler chaque $f(\vec i)$, $f(\vec j)$, $f(\vec k)$ successivement, formant un système résolu terme à terme.

Piège à éviter : erreur de signe dans la soustraction des deux premières équations vectorielles.

Ce que l''examinateur attend : l''utilisation explicite de la linéarité de $f$, et le calcul pour chacun des trois vecteurs.', '[{"criterion":"Calcul de f(i)","points":0.25},{"criterion":"Calcul de f(j)","points":0.25},{"criterion":"Calcul de f(k)","points":0.25}]'::jsonb, '2022', 'Exercice 2 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Donner la matrice $M$ de $f$ dans la base $(\vec i,\vec j,\vec k)$.', 'Les colonnes de $M$ sont les coordonnées de $f(\vec i)$, $f(\vec j)$, $f(\vec k)$ dans $(\vec i,\vec j,\vec k)$ :
$f(\vec i)=2\vec i$, $f(\vec j)=2\vec j$, $f(\vec k)=-2\vec i+2\vec j$.

Réponse :
$$M = \begin{pmatrix} 2 & 0 & -2 \\ 0 & 2 & 2 \\ 0 & 0 & 0 \end{pmatrix}$$', 'La matrice d''un endomorphisme se construit colonne par colonne, chaque colonne étant les coordonnées de l''image du vecteur de base correspondant.

Piège à éviter : inverser lignes et colonnes.

Ce que l''examinateur attend : la matrice exacte, correctement disposée.', '[{"criterion":"Matrice M exacte","points":0.5}]'::jsonb, '2022', 'Exercice 2 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Démontrer que $f\circ f=2f$.', '$$M^2 = \begin{pmatrix} 2 & 0 & -2 \\ 0 & 2 & 2 \\ 0 & 0 & 0 \end{pmatrix}\begin{pmatrix} 2 & 0 & -2 \\ 0 & 2 & 2 \\ 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 4 & 0 & -4 \\ 0 & 4 & 4 \\ 0 & 0 & 0 \end{pmatrix} = 2M$$

Comme $M^2=2M$, l''égalité $f\circ f=2f$ est vérifiée.

Réponse : $M^2=2M$, donc $f\circ f=2f$.', 'Pour montrer l''égalité de deux endomorphismes, on peut calculer le produit matriciel de leurs matrices associées (ou vérifier qu''ils coïncident sur chaque vecteur de la base). Le calcul $M^2=2M$ est direct.

Piège à éviter : faute de calcul dans le produit matriciel ligne par colonne.

Ce que l''examinateur attend : le calcul détaillé de $M^2$ (ou l''action de $f\circ f$ sur la base) menant à la conclusion.', '[{"criterion":"Calcul et conclusion démontrant f∘f=2f","points":0.5}]'::jsonb, '2022', 'Exercice 2 - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Déterminer par une de ses bases, le noyau $\operatorname{Ker}f$ de $f$.', 'Soit $\vec u=x\vec i+y\vec j+z\vec k$. $\vec u\in\operatorname{Ker}f \iff M\begin{pmatrix}x\\y\\z\end{pmatrix}=\vec0$ :
$$\begin{cases} 2x-2z=0 \\ 2y+2z=0 \end{cases} \iff \begin{cases} x=z \\ y=-z \end{cases}$$

Donc $\vec u=z(\vec i-\vec j+\vec k)$ : $\operatorname{Ker}f$ est la droite vectorielle engendrée par $\vec i-\vec j+\vec k$.

Réponse : une base de $\operatorname{Ker}f$ est $(\vec i-\vec j+\vec k)$.', 'Le noyau se trouve en résolvant le système $MX=0$ ; en exprimant $x$ et $y$ en fonction du paramètre libre $z$, on extrait directement le vecteur générateur.

Piège à éviter : donner seulement une équation au lieu d''exhiber explicitement une base (un vecteur générateur).

Ce que l''examinateur attend : la résolution du système $MX=0$, et l''expression explicite de la base.', '[{"criterion":"Détermination du noyau et présentation d''une base","points":0.5}]'::jsonb, '2022', 'Exercice 2 - 2d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Déterminer l''image $\operatorname{Im}f$ de $f$. On précisera une de ses bases.', 'D''après le théorème du rang : $\dim(\operatorname{Im}f) = \dim(E)-\dim(\operatorname{Ker}f) = 3-1=2$.

D''après la question 2.a, $f(\vec i)=2\vec i\in\operatorname{Im}f$ et $f(\vec j)=2\vec j\in\operatorname{Im}f$ : $\vec i,\vec j$ sont donc deux vecteurs de $\operatorname{Im}f$, formant une famille libre de taille égale à $\dim(\operatorname{Im}f)=2$.

Réponse : $\operatorname{Im}f$ est le plan vectoriel engendré par $\vec i$ et $\vec j$ (d''équation $z=0$) ; une base de $\operatorname{Im}f$ est $(\vec i,\vec j)$.', 'Le théorème du rang donne directement la dimension de l''image à partir de celle du noyau ; il suffit ensuite de trouver deux vecteurs indépendants appartenant à l''image (ici $\vec i$ et $\vec j$, déjà connus comme images par $f$).

Piège à éviter : donner une base à 3 vecteurs alors que la dimension de l''image est 2.

Ce que l''examinateur attend : la justification de la dimension (via le théorème du rang), et l''explicitation exacte d''une base à 2 vecteurs.', '[{"criterion":"Justification de la dimension ou calcul générateur","points":0.25},{"criterion":"Explicitation exacte d''une base de Im f","points":0.5}]'::jsonb, '2022', 'Exercice 2 - 2e', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', '$f$ est une fonction définie sur $[0;2\pi]$ par $f(x)=e^{-x}\cos x$, de courbe $(\mathcal{C}_f)$ dans un repère orthogonal (unité : $2$ cm en abscisse, $4$ cm en ordonnée). Démontrer que $f''''(x)+2f''(x)+2f(x)=0$.', '$$f''(x) = -e^{-x}\cos x-e^{-x}\sin x = -e^{-x}(\cos x+\sin x)$$
$$f''''(x) = e^{-x}(\cos x+\sin x)-e^{-x}(-\sin x+\cos x) = 2e^{-x}\sin x$$

Substituons :
$$f''''(x)+2f''(x)+2f(x) = 2e^{-x}\sin x -2e^{-x}(\cos x+\sin x)+2e^{-x}\cos x = 0$$

Réponse : l''égalité $f''''(x)+2f''(x)+2f(x)=0$ est vérifiée pour tout $x\in[0,2\pi]$.', 'On dérive $f$ deux fois via la règle du produit, puis on substitue $f$, $f''$, $f''''$ dans l''expression demandée pour vérifier qu''elle se simplifie à $0$.

Piège à éviter : oublier le signe moins lors de la dérivation de $e^{-x}$ ou de $\cos x$.

Ce que l''examinateur attend : les expressions correctes de $f''(x)$ et $f''''(x)$, et la vérification finale.', '[{"criterion":"Calculs de f''(x) et f''''(x) et vérification de l''équation","points":0.5}]'::jsonb, '2022', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier les variations de $f$ et dresser son tableau de variations.', '$f''(x)=-e^{-x}(\cos x+\sin x)$ ; comme $e^{-x}>0$, le signe de $f''$ est celui de $-(\cos x+\sin x)$.

$\cos x+\sin x=\sqrt2\cos\left(x-\frac\pi4\right)$. Sur $[0,2\pi]$, $\cos x+\sin x=0 \iff x=\frac{3\pi}4$ ou $x=\frac{7\pi}4$.

Sur $\left[0,\frac{3\pi}4\right[$ : $\cos x+\sin x>0 \implies f''(x)<0$ ($f$ décroît).
Sur $\left]\frac{3\pi}4,\frac{7\pi}4\right[$ : $\cos x+\sin x<0 \implies f''(x)>0$ ($f$ croît).
Sur $\left]\frac{7\pi}4,2\pi\right]$ : $\cos x+\sin x>0 \implies f''(x)<0$ ($f$ décroît).

Valeurs remarquables : $f(0)=1$ ; $f\left(\frac{3\pi}4\right)=-\frac{\sqrt2}2e^{-3\pi/4}\approx-0{,}067$ ; $f\left(\frac{7\pi}4\right)=\frac{\sqrt2}2e^{-7\pi/4}\approx0{,}0027$ ; $f(2\pi)=e^{-2\pi}\approx0{,}0019$.

Réponse : $f$ décroît sur $\left[0,\frac{3\pi}4\right]$, croît sur $\left[\frac{3\pi}4,\frac{7\pi}4\right]$, puis décroît sur $\left[\frac{7\pi}4,2\pi\right]$, avec les valeurs remarquables ci-dessus.', 'On résout $f''(x)=0$ sur $[0,2\pi]$ (deux solutions, en n''oubliant pas la seconde dans l''intervalle), on détermine le signe de $f''$ sur chaque sous-intervalle, puis on calcule les valeurs exactes aux bornes et extrema pour dresser le tableau.

Piège à éviter : oublier la seconde solution $x=\frac{7\pi}4$ de l''équation trigonométrique dans l''intervalle donné.

Ce que l''examinateur attend : la détermination exacte des racines de $f''$, l''étude rigoureuse du signe, et un tableau de variation complet avec les images exactes.', '[{"criterion":"Étude du signe de f''(x) et résolution sur [0,2π]","points":0.75},{"criterion":"Calcul des images et tableau de variations complet","points":0.5}]'::jsonb, '2022', 'Exercice 3 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que $-e^{-x} \le f(x) \le e^{-x}$.', 'Pour tout $x\in[0,2\pi]$ : $-1\le\cos x\le1$.

Comme $e^{-x}>0$, multiplier par $e^{-x}$ ne change pas le sens des inégalités :
$$-e^{-x} \le e^{-x}\cos x \le e^{-x} \iff -e^{-x}\le f(x)\le e^{-x}$$

Réponse : l''encadrement est démontré pour tout $x\in[0,2\pi]$.', 'L''encadrement usuel du cosinus, combiné à la stricte positivité de $e^{-x}$ (qui préserve le sens des inégalités lors de la multiplication), donne directement le résultat.

Piège à éviter : se lancer dans une étude de fonction complexe alors que le simple bornage du cosinus suffit.

Ce que l''examinateur attend : l''inégalité de base sur le cosinus, et la justification de la positivité de $e^{-x}$.', '[{"criterion":"Justification et conclusion","points":0.5}]'::jsonb, '2022', 'Exercice 3 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer les coordonnées des points d''intersection de $(\mathcal{C}_f)$ avec les courbes d''équations $y=e^{-x}$ et $y=-e^{-x}$.', 'Avec $y=e^{-x}$ : $f(x)=e^{-x} \iff \cos x=1$ (car $e^{-x}\ne0$). Sur $[0,2\pi]$ : $x=0$ ou $x=2\pi$. Points : $(0,1)$ et $(2\pi,e^{-2\pi})$.

Avec $y=-e^{-x}$ : $f(x)=-e^{-x} \iff \cos x=-1$. Sur $[0,2\pi]$ : $x=\pi$. Point : $(\pi,-e^{-\pi})$.

Réponse : intersections avec $y=e^{-x}$ en $(0,1)$ et $(2\pi,e^{-2\pi})$ ; intersection avec $y=-e^{-x}$ en $(\pi,-e^{-\pi})$.', 'On égale les équations des deux courbes ; la simplification par $e^{-x}$ (jamais nul) ramène le problème à une équation trigonométrique élémentaire ($\cos x=\pm1$) sur $[0,2\pi]$.

Piège à éviter : donner seulement les abscisses au lieu des coordonnées complètes $(x,y)$.

Ce que l''examinateur attend : les équations trigonométriques associées, et les coordonnées complètes de chaque point.', '[{"criterion":"Points d''intersection avec y=e⁻ˣ","points":0.5},{"criterion":"Point d''intersection avec y=-e⁻ˣ","points":0.25}]'::jsonb, '2022', 'Exercice 3 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Sur $[0;2\pi]$, tracer dans le même repère les courbes d''équations $y=e^{-x}$ et $y=-e^{-x}$, puis la courbe $(\mathcal{C}_f)$.', 'On trace d''abord les deux courbes enveloppes : $y=e^{-x}$ (décroissante de $(0,1)$ à $(2\pi,e^{-2\pi})$) et $y=-e^{-x}$ (son symétrique par rapport à l''axe des abscisses).

$(\mathcal{C}_f)$ reste toujours comprise entre ces deux enveloppes, les touche en $(0,1)$ et $(2\pi,e^{-2\pi})$ (sur $y=e^{-x}$) et en $(\pi,-e^{-\pi})$ (sur $y=-e^{-x}$), et coupe l''axe des abscisses en $x=\frac\pi2$ et $x=\frac{3\pi}2$.

Réponse : les deux courbes enveloppes, avec $(\mathcal{C}_f)$ oscillant entre elles en les tangentant alternativement.', '$f(x)=e^{-x}\cos x$ est une oscillation amortie : on trace d''abord les deux exponentielles qui servent d''enveloppe, puis la sinusoïde amortie qui oscille entre elles, en respectant les points de tangence déjà identifiés.

Piège à éviter : ne pas respecter les échelles données ($2$ cm en abscisse, $4$ cm en ordonnée).

Ce que l''examinateur attend : le respect strict de l''échelle, les tracés corrects des enveloppes, et le tracé de $(\mathcal{C}_f)$ respectant tangences et extrema.', '[{"criterion":"Repère et échelles respectés + courbes y=±e⁻ˣ","points":0.5},{"criterion":"Tracé soigné et précis de (Cf)","points":0.5}]'::jsonb, '2022', 'Exercice 3 - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer l''aire de la partie du plan délimitée par $(\mathcal{C}_f)$ et la courbe d''équation $y=e^{-x}$ sur $[0;2\pi]$. On pourra utiliser la question 1.', 'D''après l''encadrement, $y=e^{-x}$ est au-dessus de $(\mathcal{C}_f)$. L''aire est :
$$\mathcal{A} = \int_0^{2\pi}(e^{-x}-f(x))\,dx \times \text{u.a.}, \qquad \text{1 u.a.} = 2\text{ cm}\times4\text{ cm} = 8\text{ cm}^2$$

$\displaystyle\int_0^{2\pi}e^{-x}dx = \left[-e^{-x}\right]_0^{2\pi} = 1-e^{-2\pi}$.

Pour $\int_0^{2\pi}f(x)dx$, on utilise la question 1 : $f(x)=-f''(x)-\frac12f''''(x)$, donc une primitive de $f$ est $F(x)=-f(x)-\frac12f''(x) = -\frac12e^{-x}\cos x+\frac12e^{-x}\sin x$.

$$\int_0^{2\pi}f(x)dx = F(2\pi)-F(0) = \left(-\frac12e^{-2\pi}\right)-\left(-\frac12\right) = \frac12(1-e^{-2\pi})$$

Donc :
$$\int_0^{2\pi}(e^{-x}-f(x))dx = (1-e^{-2\pi})-\frac12(1-e^{-2\pi}) = \frac12(1-e^{-2\pi})$$

$$\mathcal{A} = \frac12(1-e^{-2\pi})\times8\text{ cm}^2 = 4(1-e^{-2\pi})\text{ cm}^2$$

Réponse : $\mathcal{A}=4(1-e^{-2\pi})\text{ cm}^2 \approx 3{,}99\text{ cm}^2$.', 'L''aire entre deux courbes $g\ge f$ est $\int_a^b(g-f)dx$. L''astuce de la question 1 évite une intégration par parties : en isolant $f$ dans $f''''+2f''+2f=0$, on obtient directement une primitive $F(x)=-f(x)-\frac12f''(x)$. Il reste à multiplier par l''unité d''aire réelle ($2\times4=8\text{ cm}^2$).

Piège à éviter : oublier de multiplier par l''unité d''aire, ou erreur de signe dans le calcul des bornes.

Ce que l''examinateur attend : l''utilisation explicite de la relation de la question 1 pour trouver la primitive, l''intégration correcte, et le calcul final de l''aire en cm².', '[{"criterion":"Recherche de la primitive à l''aide de la question 1","points":0.5},{"criterion":"Calcul de l''intégrale et conversion en cm²","points":0.5}]'::jsonb, '2022', 'Exercice 3 - 5', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Trois gisements de gaz A, B et C, présentant chacun 100 milliards de m³, ont été découverts dans un pays. L''exploitation des gisements A et B a commencé à la date $t=0$. À la date $t=1$, la quantité totale de gaz extraite du gisement A était de $5{,}01$ milliards de m³. Pour le gisement A et à partir de la 2ᵉ année, la quantité de gaz extraite chaque année augmente de $0{,}75$ milliard de m³ par rapport à celle de l''année précédente. En combien d''années le gisement A s''épuisera-t-il ?', 'Soit $a_n$ la quantité extraite lors de la $n$-ième année : $a_1=5{,}01$, et pour $n\ge2$, $a_n=a_{n-1}+0{,}75$. $(a_n)$ est arithmétique de premier terme $5{,}01$ et de raison $0{,}75$ : $a_n=5{,}01+(n-1)\times0{,}75$.

Quantité totale après $N$ années : $S_N=\dfrac N2(a_1+a_N) = \dfrac N2(0{,}75N+9{,}27) = 0{,}375N^2+4{,}635N$.

On cherche $S_N\ge100$ : $0{,}375N^2+4{,}635N-100=0$.

$\Delta = 4{,}635^2+4(0{,}375)(100) = 21{,}483+150 = 171{,}483$, $\sqrt\Delta\approx13{,}095$.

$N = \dfrac{-4{,}635+13{,}095}{0{,}75} \approx 11{,}28$.

Pour $N=11$ : $S_{11}=0{,}375(121)+4{,}635(11)=96{,}36<100$ (non épuisé). Pour $N=12$ : $S_{12}=0{,}375(144)+4{,}635(12)=109{,}62\ge100$.

Réponse : le gisement A s''épuisera au cours de la 12ᵉ année d''exploitation.', 'L''augmentation annuelle constante fait de la production une suite arithmétique ; la quantité totale extraite après $N$ années est la somme de ses $N$ premiers termes. On résout $S_N=100$ (équation du second degré), puis on vérifie par calcul direct entre les deux entiers encadrant la racine, puisque $N$ doit être un nombre entier d''années.

Piège à éviter : oublier que la première année est fixée à $5{,}01$ et faire démarrer l''augmentation dès $n=1$ au lieu de $n=2$.

Ce que l''examinateur attend : la modélisation par suite arithmétique et la formule de la somme, la mise en équation $S_N=100$ et sa résolution, et la conclusion exacte (12 ans).', '[{"criterion":"Modélisation par suite arithmétique et formule de la somme","points":0.5},{"criterion":"Équation SN=100 et résolution","points":0.5},{"criterion":"Interprétation et conclusion (12 ans)","points":0.5}]'::jsonb, '2022', 'Partie B - Tâche 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Pour le gisement B, si $q(t)$ est la quantité totale (en milliards de m³) extraite à la date $t$, le taux d''extraction $q''(t)$ vaut $\left(\dfrac1{2t+1}+0{,}02t\right)$ milliard de m³ par an, avec $q_B(0)=0$. Combien d''années d''extraction suffiront pour épuiser le contenu du gisement B (de 100 milliards de m³) ?', '$$q_B(t) = \int_0^t\left(\frac1{2x+1}+0{,}02x\right)dx = \left[\frac12\ln(2x+1)+0{,}01x^2\right]_0^t = \frac12\ln(2t+1)+0{,}01t^2$$

On cherche $q_B(t)=100$, soit $g(t)=\frac12\ln(2t+1)+0{,}01t^2-100=0$.

Pour $t=98$ : $g(98)\approx2{,}64+96{,}04-100=-1{,}32$.
Pour $t=99$ : $g(99)\approx2{,}65+98{,}01-100=+0{,}66$.

Par interpolation, la racine est $t\approx98{,}67$ ans.

Réponse : il suffira d''environ $98{,}67$ ans (soit au cours de la 99ᵉ année) pour épuiser le gisement B.', 'Le taux instantané $q''(t)$ étant la dérivée de la quantité extraite, on retrouve $q(t)$ par intégration (avec $\frac1{2t+1}$ de primitive $\frac12\ln(2t+1)$, forme $\frac12\frac{u''}u$), puis on résout numériquement l''équation $q(t)=100$ en encadrant la racine entre deux entiers consécutifs.

Piège à éviter : oublier le coefficient $\frac12$ lors de l''intégration de $\frac1{2t+1}$.

Ce que l''examinateur attend : le calcul exact de la primitive $q_B(t)$, la mise en équation $q_B(t)=100$, et une résolution numérique précise de $t$.', '[{"criterion":"Calcul de l''intégrale qB(t)","points":0.5},{"criterion":"Équation qB(t)=100","points":0.5},{"criterion":"Résolution et valeur finale de t","points":0.5}]'::jsonb, '2022', 'Partie B - Tâche 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Pour le gisement C (exploité légèrement avant $t=0$), le taux d''extraction à une date $t$ est proportionnel à la quantité déjà extraite à cette date. À la date $t=1$, la quantité extraite $q_C(1)$ et le taux $q_C''(1)$ valaient tous deux $5{,}01$ milliards de m³. Après l''inauguration, combien d''années faudra-t-il pour vider le gisement C (100 milliards de m³) ?', 'La proportionnalité se traduit par l''équation différentielle $q_C''(t)=k\,q_C(t)$ ($k\in\mathbb{R}^*$), dont les solutions sont $q_C(t)=C_0e^{kt}$.

À $t=1$ : $q_C''(1)=k\,q_C(1) \implies 5{,}01=k\times5{,}01 \implies k=1$.

Donc $q_C(t)=C_0e^t$, et $q_C(1)=C_0e=5{,}01 \implies C_0=5{,}01e^{-1}$.

$$q_C(t) = 5{,}01\,e^{t-1}$$

Épuisement : $q_C(t)=100$ :
$$5{,}01e^{t-1}=100 \iff e^{t-1}=\frac{100}{5{,}01}\approx19{,}960$$
$$t-1 = \ln(19{,}960) \approx 2{,}9937 \implies t \approx 3{,}9937$$

Réponse : il faudra environ $3{,}99$ ans (soit environ 4 ans) après l''inauguration pour vider le gisement C.', '« Le taux est proportionnel à la quantité extraite » se traduit par l''équation différentielle classique $y''=ky$, de solutions exponentielles $y(t)=C_0e^{kt}$. Les données à $t=1$ (valeur et dérivée égales) déterminent d''abord $k=1$, puis $C_0$ ; il reste à résoudre l''équation exponentielle par passage au logarithme népérien.

Piège à éviter : ne pas reconnaître la forme $y''=ky$ et bloquer sur la modélisation.

Ce que l''examinateur attend : la traduction de la proportionnalité en équation différentielle, la détermination exacte de $k$ et de $q_C(t)$, et la résolution par logarithme menant à $t\approx3{,}99$.', '[{"criterion":"Établissement de l''équation différentielle et expression de qC(t)","points":0.5},{"criterion":"Résolution de qC(t)=100 avec le logarithme","points":0.5},{"criterion":"Conclusion exacte t≈3,99 ans","points":0.5}]'::jsonb, '2022', 'Partie B - Tâche 3', 'C', 'draft');
COMMIT;