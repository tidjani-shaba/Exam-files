-- 2018 Baccalaureat C-E Mathematiques -- 28 questions (Serie E-only Exercice 1 excluded)
-- Real official corrige with point values (like 2016), condensed to house style.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Soit $p$ un entier relatif. On pose $a=14p+3$ et $b=5p+1$. En utilisant l''égalité de Bézout, démontrer que $a$ et $b$ sont premiers entre eux.', 'Cherchons deux entiers $u,v$ tels que $ua+vb=1$. En éliminant $p$ (coefficients $14$ et $5$, de PPCM $70$) :
$$5a-14b = 5(14p+3)-14(5p+1) = 70p+15-70p-14 = 1$$

Il existe donc $(u,v)=(5,-14)$ tel que $5a-14b=1$. D''après le théorème de Bézout, $a$ et $b$ sont premiers entre eux.

Réponse : $5a-14b=1$, donc $\operatorname{pgcd}(a,b)=1$ pour tout $p\in\mathbb{Z}$.', 'L''objectif est d''éliminer $p$ : comme le coefficient de $p$ dans $a$ est $14$ et dans $b$ est $5$ (de PPCM $70$), on multiplie $a$ par $5$ et $b$ par $14$ puis on soustrait pour faire disparaître $p$, ce qui fait apparaître directement une relation de Bézout.

Piège à éviter : fixer une valeur particulière de $p$ (par exemple $p=0$) pour conclure — la démonstration doit rester valable pour tout $p\in\mathbb{Z}$.

Ce que l''examinateur attend : l''écriture explicite d''une combinaison linéaire éliminant $p$ ($5a-14b=1$), et la référence claire au théorème de Bézout pour conclure.', '[{"criterion":"Combinaison linéaire éliminant p (5a-14b=1)","points":0.5},{"criterion":"Référence au théorème de Bézout pour conclure","points":0.5}]'::jsonb, '2018', 'Exercice 1 - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'En déduire que $87$ et $31$ sont premiers entre eux.', 'D''après la question précédente, $a=14p+3$ et $b=5p+1$ sont premiers entre eux pour tout $p\in\mathbb{Z}$. Cherchons $p$ tel que $b=31$ : $5p+1=31 \iff p=6$. On vérifie avec $a$ : $14(6)+3=87$.

Comme la propriété est vraie pour tout $p$, elle l''est en particulier pour $p=6$, où $a=87$ et $b=31$.

Réponse : pour $p=6$, $a=87$ et $b=31$ ; donc $87$ et $31$ sont premiers entre eux.', 'La consigne « En déduire » impose d''utiliser le résultat général de la question précédente plutôt que de refaire un calcul de PGCD indépendant : il suffit de trouver la valeur de $p$ qui donne $87$ et $31$.

Piège à éviter : refaire l''algorithme d''Euclide directement sur $87$ et $31$ sans passer par la relation avec $p$ — cela ne répond pas à la consigne « en déduire ».

Ce que l''examinateur attend : l''identification explicite de $p=6$, et la déduction correcte de la primalité entre $87$ et $31$ à partir de la question précédente.', '[{"criterion":"Identification de p=6","points":0.375},{"criterion":"Déduction correcte de la primalité entre 87 et 31","points":0.375}]'::jsonb, '2018', 'Exercice 1 - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Trouver un couple $(u_0,v_0)$ d''entiers relatifs tel que $87u_0+31v_0=2$.', 'Pour $p=6$, la relation $5a-14b=1$ de la question 1.a devient $5(87)-14(31)=1$.

En multipliant toute l''égalité par $2$ :
$$2\times[5(87)-14(31)]=2 \implies 87(10)+31(-28)=2$$

Réponse : un couple solution est $(u_0,v_0)=(10,-28)$.', 'Connaissant déjà une relation de Bézout donnant $1$ (question 1.a, pour $p=6$), il suffit de multiplier toute l''égalité par $2$ pour obtenir directement une combinaison égale à $2$.

Piège à éviter : se tromper de signe en réécrivant l''égalité — le coefficient devant $31$ doit rester positif dans l''équation $87u_0+31v_0=2$, donc $v_0$ porte le signe négatif.

Ce que l''examinateur attend : la réutilisation de la relation $5(87)-14(31)=1$, sa multiplication par $2$, et l''identification exacte du couple $(10,-28)$.', '[{"criterion":"Réutilisation et multiplication par 2 de la relation de Bézout","points":0.375},{"criterion":"Couple (u0,v0)=(10,-28) correctement identifié","points":0.375}]'::jsonb, '2018', 'Exercice 1 - 1c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Soit $(E)$ l''équation $87x+31y=2$ dans $\mathbb{Z}^2$. Utiliser les questions précédentes pour résoudre $(E)$.', 'On dispose de la solution particulière $87(10)+31(-28)=2$ (question 1.c). En soustrayant de $(E)$ :
$$87(x-10)+31(y+28)=0 \implies 87(x-10)=-31(y+28)$$

Comme $87$ et $31$ sont premiers entre eux (question 1.b), $87$ divise $-31(y+28)$, donc d''après le théorème de Gauss, $87$ divise $(y+28)$ : il existe $k\in\mathbb{Z}$ tel que $y+28=-87k$, soit $y=-87k-28$.

En remplaçant dans $87(x-10)=-31(y+28)=31\times87k$ : $x-10=31k$, soit $x=31k+10$.

Réponse : l''ensemble des solutions de $(E)$ dans $\mathbb{Z}^2$ est $S=\{(31k+10,\ -87k-28)\ :\ k\in\mathbb{Z}\}$.', 'La méthode standard pour résoudre $ax+by=c$ consiste à soustraire une solution particulière, mettre l''équation sous forme $a(x-x_0)=-b(y-y_0)$, puis appliquer le théorème de Gauss puisque $\operatorname{pgcd}(a,b)=1$.

Piège à éviter : oublier de préciser $k\in\mathbb{Z}$, ou commettre une erreur de signe en isolant $y$.

Ce que l''examinateur attend : la soustraction correcte de la solution particulière, l''application du théorème de Gauss, et l''expression paramétrique complète et exacte des solutions.', '[{"criterion":"Écriture sous forme 87(x-x0)=-31(y-y0) et application du théorème de Gauss","points":0.75},{"criterion":"Expression finale correcte de l''ensemble des solutions","points":0.5}]'::jsonb, '2018', 'Exercice 1 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'On désigne par $(D)$ la droite d''équation $87x-31y-2=0$ dans le plan rapporté au repère orthonormé $(O,\vec{i},\vec{j})$. Déterminer les points de $(D)$ dont les coordonnées $(x,y)$ vérifient : i) $x$ et $y$ sont des entiers naturels, ii) $0\le x\le100$.', 'Un point $M(x,y)\in(D) \iff 87x-31y-2=0 \iff 87x+31(-y)=2$, c''est-à-dire $(x,-y)$ est solution de $(E)$.

D''après la question précédente, il existe $k\in\mathbb{Z}$ tel que $x=31k+10$ et $-y=-87k-28$, soit $y=87k+28$.

Condition $x,y\in\mathbb{N}$ : $x=31k+10\ge0 \implies k\ge-\frac{10}{31}$ ; $y=87k+28\ge0 \implies k\ge-\frac{28}{87}$. Comme $k\in\mathbb{Z}$, cela impose $k\ge0$.

Condition $0\le x\le100$ : $0\le31k+10\le100 \implies -\frac{10}{31}\le k\le\frac{90}{31}\approx2{,}90$. Avec $k\ge0$ entier, $k\in\{0,1,2\}$.

Calcul des points :
- $k=0$ : $x=10$, $y=28$ → $(10,28)$
- $k=1$ : $x=41$, $y=115$ → $(41,115)$
- $k=2$ : $x=72$, $y=202$ → $(72,202)$

Réponse : les points recherchés sont $(10,28)$, $(41,115)$ et $(72,202)$.', 'En posant $y''=-y$, l''équation de $(D)$ se ramène exactement à $(E)$ ; on exprime alors $x$ et $y$ en fonction du paramètre $k$ (question 2), puis on encadre $k$ à l''aide des deux contraintes de l''énoncé.

Piège à éviter : oublier que $y$ doit lui-même être un entier naturel — si $k$ était négatif, $x$ ou $y$ deviendraient négatifs.

Ce que l''examinateur attend : la traduction correcte de $M\in(D)$ en solution de $(E)$, l''encadrement rigoureux $0\le k\le2$, et la détermination exacte des 3 points.', '[{"criterion":"Traduction de M∈(D) en solution de (E)","points":0.25},{"criterion":"Encadrement rigoureux de k (0≤k≤2)","points":0.5},{"criterion":"Détermination exacte des 3 points","points":0.5}]'::jsonb, '2018', 'Exercice 1 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'L''espace orienté est muni d''un repère orthonormé direct $(O,\vec{i},\vec{j},\vec{k})$. $A(2,0,1)$, $B(3,-2,0)$ et $C(2,8,-4)$. Soit $M(x,y,z)$ un point. Exprimer en fonction de $x,y,z$ les coordonnées du produit vectoriel $\overrightarrow{AM}\wedge\overrightarrow{BM}$.', '$\overrightarrow{AM} = (x-2,\ y,\ z-1)$ et $\overrightarrow{BM} = (x-3,\ y+2,\ z)$.

En calculant le produit vectoriel par le déterminant formel :

Composante selon $\vec{i}$ : $y\cdot z - (y+2)(z-1) = yz-(yz-y+2z-2) = y-2z+2$

Composante selon $\vec{j}$ (avec le signe moins) : $-[(x-2)z-(x-3)(z-1)] = -[(xz-2z)-(xz-x-3z+3)] = -[x+z-3] = -x-z+3$

Composante selon $\vec{k}$ : $(x-2)(y+2)-(x-3)y = (xy+2x-2y-4)-(xy-3y) = 2x+y-4$

Réponse :
$$\overrightarrow{AM}\wedge\overrightarrow{BM} = (y-2z+2)\vec{i}+(-x-z+3)\vec{j}+(2x+y-4)\vec{k}$$', 'Le produit vectoriel de $\vec{u}(x_1,y_1,z_1)$ et $\vec{v}(x_2,y_2,z_2)$ s''obtient via $\vec u\wedge\vec v = (y_1z_2-z_1y_2)\vec i-(x_1z_2-z_1x_2)\vec j+(x_1y_2-y_1x_2)\vec k$ ; il faut développer soigneusement chaque sous-déterminant $2\times2$.

Piège à éviter : oublier le signe moins devant la composante en $\vec j$.

Ce que l''examinateur attend : le calcul explicite des coordonnées de $\overrightarrow{AM}$ et $\overrightarrow{BM}$, puis l''application correcte de la formule du produit vectoriel.', '[{"criterion":"Coordonnées de AM et BM","points":0.25},{"criterion":"Application correcte de la formule du produit vectoriel","points":0.5},{"criterion":"Résultat final correctement présenté","points":0.25}]'::jsonb, '2018', 'Exercice 2 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Résoudre le système : $\begin{cases} -x+y-2z=-4 \\ -x-y-z=-11 \\ 2x+y-z=8 \end{cases}$ (on fera figurer les étapes de la résolution sur la copie).', '$$(S)\ \begin{cases} -x+y-2z=-4 & (L_1) \\ -x-y-z=-11 & (L_2) \\ 2x+y-z=8 & (L_3) \end{cases}$$

Éliminons $x$ :
$L_2\leftarrow L_2-L_1$ : $(-x-y-z)-(-x+y-2z) = -11-(-4) \implies -2y+z=-7\ (L_2'')$

$L_3\leftarrow L_3+2L_1$ : $(2x+y-z)+2(-x+y-2z) = 8+2(-4) \implies 3y-5z=0 \implies y=\frac{5}{3}z\ (L_3'')$

En substituant $y=\frac53z$ dans $L_2''$ : $-2\left(\frac53z\right)+z=-7 \implies -\frac{10}3z+\frac33z=-7 \implies -\frac73z=-7 \implies z=3$

D''où $y=\frac53(3)=5$.

Avec $L_1$ : $-x+5-2(3)=-4 \implies -x-1=-4 \implies x=3$.

Réponse : le triplet solution unique est $(x,y,z)=(3,5,3)$.', 'On applique la méthode du pivot de Gauss : éliminer une variable ($x$) entre deux paires d''équations pour se ramener à un système $2\times2$, le résoudre, puis remonter pour trouver la dernière inconnue.

Piège à éviter : donner uniquement le résultat final sans détailler les étapes d''élimination — l''énoncé exige explicitement de les faire figurer.

Ce que l''examinateur attend : une première étape d''élimination/substitution clairement présentée, et la détermination précise du triplet $(3,5,3)$.', '[{"criterion":"Étape d''élimination claire et détaillée","points":0.5},{"criterion":"Détermination précise du triplet (3,5,3)","points":0.5}]'::jsonb, '2018', 'Exercice 2 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Démontrer qu''il existe un unique point $N$ vérifiant $\overrightarrow{AN}\wedge\overrightarrow{BN}=\overrightarrow{CN}$ et donner les coordonnées de $N$.', 'Soit $N(x,y,z)$. On a $\overrightarrow{CN}=(x-2,\ y-8,\ z+4)$.

D''après la question 1 (avec $M=N$) : $\overrightarrow{AN}\wedge\overrightarrow{BN} = (y-2z+2,\ -x-z+3,\ 2x+y-4)$.

L''égalité $\overrightarrow{AN}\wedge\overrightarrow{BN}=\overrightarrow{CN}$ équivaut au système :
$$\begin{cases} y-2z+2=x-2 \\ -x-z+3=y-8 \\ 2x+y-4=z+4 \end{cases} \iff \begin{cases} -x+y-2z=-4 \\ -x-y-z=-11 \\ 2x+y-z=8 \end{cases}$$

On retrouve exactement le système résolu à la question 2, dont l''unique solution est $(x,y,z)=(3,5,3)$.

Réponse : il existe un unique point $N$, de coordonnées $(3,5,3)$.', 'Il s''agit d''un exercice progressif : l''expression du produit vectoriel de la question 1 combinée aux coordonnées de $\overrightarrow{CN}$ redonne terme à terme le système déjà résolu à la question 2 — l''unicité du point découle directement de l''unicité de la solution de ce système.

Piège à éviter : redémontrer ou résoudre à nouveau le système au lieu de faire l''identification directe avec la question 2.

Ce que l''examinateur attend : l''établissement du système équivalent à partir de l''égalité vectorielle, et la conclusion avec les coordonnées de $N(3,5,3)$.', '[{"criterion":"Établissement du système équivalent","points":0.5},{"criterion":"Conclusion sur l''unicité et coordonnées de N(3,5,3)","points":0.5}]'::jsonb, '2018', 'Exercice 2 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Le point $N$ étant défini à la question précédente, montrer que le volume du tétraèdre $ABCN$ est égal à $\frac{1}{6}CN^2$.', 'Le volume du tétraèdre construit sur les vecteurs $\overrightarrow{AN}$, $\overrightarrow{BN}$, $\overrightarrow{CN}$ issus de $N$ est donné par le produit mixte :
$$V = \frac16\left|(\overrightarrow{AN}\wedge\overrightarrow{BN})\cdot\overrightarrow{CN}\right|$$

Or, par définition de $N$ (question 3), $\overrightarrow{AN}\wedge\overrightarrow{BN}=\overrightarrow{CN}$. En remplaçant :
$$V = \frac16\left|\overrightarrow{CN}\cdot\overrightarrow{CN}\right| = \frac16\|\overrightarrow{CN}\|^2 = \frac16 CN^2$$

Réponse : le volume du tétraèdre $ABCN$ est bien égal à $\dfrac16 CN^2$.', 'La formule générale du volume d''un tétraèdre via le produit mixte s''applique directement ici ; l''astuce consiste à substituer la relation constitutive de $N$ ($\overrightarrow{AN}\wedge\overrightarrow{BN}=\overrightarrow{CN}$) dans cette formule, ce qui transforme le produit mixte en un simple produit scalaire d''un vecteur par lui-même, c''est-à-dire le carré de sa norme.

Piège à éviter : se lancer dans des calculs de coordonnées lourds au lieu d''utiliser directement la relation vectorielle $\overrightarrow{AN}\wedge\overrightarrow{BN}=\overrightarrow{CN}$.

Ce que l''examinateur attend : l''écriture de la formule vectorielle du volume, puis la substitution explicite menant à $\frac16CN^2$.', '[{"criterion":"Écriture de la formule vectorielle du volume","points":0.5},{"criterion":"Substitution et conclusion","points":0.5}]'::jsonb, '2018', 'Exercice 2 - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Calculer l''aire du triangle $ABC$.', '$\overrightarrow{AB}=(1,-2,-1)$ et $\overrightarrow{AC}=(0,8,-5)$.

$$\overrightarrow{AB}\wedge\overrightarrow{AC} = \big(({-2})({-5})-({-1})(8),\ -[(1)(-5)-(-1)(0)],\ (1)(8)-(-2)(0)\big) = (18,5,8)$$

$$\|\overrightarrow{AB}\wedge\overrightarrow{AC}\| = \sqrt{18^2+5^2+8^2} = \sqrt{324+25+64} = \sqrt{413}$$

$$\text{Aire}(ABC) = \frac12\|\overrightarrow{AB}\wedge\overrightarrow{AC}\| = \frac{\sqrt{413}}{2}$$

Réponse : l''aire du triangle $ABC$ est $\dfrac{\sqrt{413}}{2}$ (unités d''aire).', 'L''aire d''un triangle défini par deux vecteurs est la moitié de la norme de leur produit vectoriel.

Piège à éviter : oublier le facteur $\frac12$ et donner l''aire du parallélogramme au lieu de celle du triangle.

Ce que l''examinateur attend : le calcul correct du produit vectoriel $\overrightarrow{AB}\wedge\overrightarrow{AC}$, puis de sa norme et de l''aire finale.', '[{"criterion":"Calcul correct de AB∧AC","points":0.25},{"criterion":"Calcul de la norme et aire finale √413/2","points":0.25}]'::jsonb, '2018', 'Exercice 2 - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Utiliser les résultats précédents pour calculer la distance du point $N$ au plan $(ABC)$.', 'La distance $h=d(N,(ABC))$ est la hauteur du tétraèdre $ABCN$ relative à la base $ABC$, donc $V=\frac13\times\text{Aire}(ABC)\times h$, d''où $h=\dfrac{3V}{\text{Aire}(ABC)}$.

Calculons $V$ via la question 4.a : $CN^2 = (3-2)^2+(5-8)^2+(3-(-4))^2 = 1+9+49=59$, donc $V=\frac{59}{6}$.

$$h = \frac{3\times\frac{59}{6}}{\frac{\sqrt{413}}{2}} = \frac{\frac{59}{2}}{\frac{\sqrt{413}}{2}} = \frac{59}{\sqrt{413}} = \frac{59\sqrt{413}}{413}$$

Réponse : $d(N,(ABC)) = \dfrac{59}{\sqrt{413}} = \dfrac{59\sqrt{413}}{413}$.', 'On égale les deux expressions du volume du tétraèdre ($V=\frac16CN^2$ de la question 4.a, et $V=\frac13\text{Aire}(ABC)\times h$) pour extraire directement $h$, sans passer par l''équation cartésienne du plan.

Piège à éviter : chercher l''équation cartésienne du plan $(ABC)$ pour appliquer la formule usuelle de distance point-plan — beaucoup plus long, alors que l''énoncé demande d''utiliser les résultats précédents.

Ce que l''examinateur attend : le calcul numérique du volume $V=\frac{59}{6}$, puis la déduction exacte de $h$.', '[{"criterion":"Calcul numérique du volume V=59/6","points":0.25},{"criterion":"Déduction exacte de la distance h","points":0.25}]'::jsonb, '2018', 'Exercice 2 - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Résoudre dans $\mathbb{C}$ l''équation $(E) : z^2-3z+4=0$.', 'Calculons le discriminant : $\Delta = (-3)^2-4(1)(4) = 9-16=-7$.

Comme $\Delta<0$, l''équation admet deux solutions complexes conjuguées :
$$z_1 = \frac{3-i\sqrt7}{2}, \qquad z_2 = \frac{3+i\sqrt7}{2}$$

Réponse : $S=\left\{\dfrac{3-i\sqrt7}{2},\ \dfrac{3+i\sqrt7}{2}\right\}$.', 'Pour une équation du second degré à coefficients réels de discriminant $\Delta<0$, les racines sont $z=\dfrac{-b\pm i\sqrt{-\Delta}}{2a}$.

Piège à éviter : oublier le symbole $i$ devant $\sqrt7$.

Ce que l''examinateur attend : le calcul du discriminant $\Delta=-7$, et l''écriture correcte des deux racines complexes conjuguées.', '[{"criterion":"Calcul du discriminant Δ=-7","points":0.25},{"criterion":"Écriture correcte des deux racines complexes","points":0.5}]'::jsonb, '2018', 'Problème - A - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Déterminer le module de chaque racine de cette équation.', 'Les deux racines $z_1=\frac32-i\frac{\sqrt7}2$ et $z_2=\frac32+i\frac{\sqrt7}2$ étant conjuguées, elles ont le même module :
$$|z_1|=|z_2| = \sqrt{\left(\frac32\right)^2+\left(\frac{\sqrt7}2\right)^2} = \sqrt{\frac94+\frac74} = \sqrt{\frac{16}4} = \sqrt4 = 2$$

Réponse : $|z_1|=|z_2|=2$.', 'Le module de $z=x+iy$ est $|z|=\sqrt{x^2+y^2}$ ; deux complexes conjugués ont toujours le même module.

Piège à éviter : mettre $i\sqrt7/2$ au carré en oubliant que $i^2=-1$ redonne un terme positif dans la somme des carrés (puisqu''on prend le carré de la partie imaginaire réelle $\sqrt7/2$, pas de $i\sqrt7/2$ directement).

Ce que l''examinateur attend : l''application correcte de la formule du module et la valeur exacte simplifiée ($2$).', '[{"criterion":"Application de la formule du module","points":0.25},{"criterion":"Valeur exacte simplifiée (2)","points":0.25}]'::jsonb, '2018', 'Problème - A - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Le plan complexe est muni d''un repère. On considère les points $A$, $B$, $C$ d''affixes respectives $z_A=1$, $z_B=z$ et $z_C=z^2$, et $O$ le barycentre du système pondéré $\{(A,4),(B,-3),(C,1)\}$. Démontrer que $z$ est solution de $(E)$.', 'Par définition du barycentre, $O$ vérifie $4\overrightarrow{OA}-3\overrightarrow{OB}+\overrightarrow{OC}=\vec0$, ce qui se traduit en affixes complexes (avec $O$ à l''origine) par :
$$4z_A-3z_B+z_C=0$$

En substituant $z_A=1$, $z_B=z$, $z_C=z^2$ :
$$4(1)-3z+z^2=0 \iff z^2-3z+4=0$$

Donc $z$ vérifie exactement l''équation $(E)$.

Réponse : $z$ est bien solution de $(E)$.', 'La définition vectorielle du barycentre se traduit directement en une relation entre affixes lorsque le barycentre est l''origine $O$ ; il suffit de substituer les affixes données pour retrouver l''équation $(E)$.

Piège à éviter : essayer de remplacer directement $z$ par sa valeur trouvée en 1.a au lieu d''exploiter la définition géométrique du barycentre.

Ce que l''examinateur attend : la traduction complexe correcte de l''égalité barycentrique, et le remplacement menant à $(E)$.', '[{"criterion":"Traduction complexe de l''égalité barycentrique","points":0.25},{"criterion":"Remplacement des affixes et conclusion","points":0.25}]'::jsonb, '2018', 'Problème - A - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Sachant que $z$ a une partie imaginaire strictement positive, en déduire les coordonnées de $B$ et $C$.', 'Parmi les deux solutions de $(E)$ trouvées en 1.a, celle de partie imaginaire positive est :
$$z = \frac{3+i\sqrt7}{2} = \frac32+i\frac{\sqrt7}2$$

Coordonnées de $B$ (d''affixe $z$) : $B\left(\dfrac32,\dfrac{\sqrt7}2\right)$.

Pour $C$ (d''affixe $z^2$), utilisons $z^2=3z-4$ (puisque $z$ vérifie $(E)$) :
$$z^2 = 3\left(\frac32+i\frac{\sqrt7}2\right)-4 = \frac92-4+i\frac{3\sqrt7}2 = \frac12+i\frac{3\sqrt7}2$$

Réponse : $B\left(\dfrac32,\dfrac{\sqrt7}2\right)$ et $C\left(\dfrac12,\dfrac{3\sqrt7}2\right)$.', 'La condition « partie imaginaire positive » lève l''ambiguïté entre les deux racines conjuguées ; le calcul de $z^2$ est simplifié en utilisant directement la relation $z^2=3z-4$ tirée de $(E)$, plutôt qu''en développant $\left(\frac{3+i\sqrt7}2\right)^2$ à la main.

Piège à éviter : choisir par erreur la racine de partie imaginaire négative pour $B$.

Ce que l''examinateur attend : l''identification correcte de $z$ (partie imaginaire positive) et de $B$, puis le calcul de $z^2$ via $z^2=3z-4$ et les coordonnées de $C$.', '[{"criterion":"Identification de z et coordonnées de B","points":0.25},{"criterion":"Calcul de z² et coordonnées de C","points":0.25}]'::jsonb, '2018', 'Problème - A - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', '$k$ désignant un nombre réel, préciser suivant les valeurs de $k$ l''ensemble $(\Gamma)$ des points $M$ du plan tels que $4MA^2-3MB^2+MC^2=k$.', 'Posons $\varphi(M)=4MA^2-3MB^2+MC^2$. La somme des coefficients $4-3+1=2\ne0$ : le barycentre de ce système pondéré est le point $O$ (défini à la question 2.a).

D''après le théorème de Leibniz (réduction des sommes pondérées) :
$$\varphi(M) = 2MO^2+\varphi(O), \quad\text{où } \varphi(O)=4OA^2-3OB^2+OC^2$$

Avec $OA^2=|z_A|^2=1$, $OB^2=|z|^2=2^2=4$ (question 1.b), $OC^2=|z^2|^2=|z|^4=2^4=16$ :
$$\varphi(O) = 4(1)-3(4)+16 = 4-12+16=8$$

L''équation $\varphi(M)=k$ devient $2MO^2+8=k \iff MO^2=\dfrac{k-8}2$.

Suivant les valeurs de $k$ :
- Si $k<8$ : $MO^2<0$, impossible : $(\Gamma)=\emptyset$.
- Si $k=8$ : $MO=0$ : $(\Gamma)=\{O\}$.
- Si $k>8$ : $(\Gamma)$ est le cercle de centre $O$ et de rayon $R=\sqrt{\dfrac{k-8}2}$.

Réponse : $(\Gamma)=\emptyset$ si $k<8$ ; $(\Gamma)=\{O\}$ si $k=8$ ; $(\Gamma)$ est le cercle $\mathcal C\left(O,\sqrt{\frac{k-8}2}\right)$ si $k>8$.', 'Le théorème de Leibniz réduit une somme pondérée de carrés de distances à $2MO^2+\varphi(O)$ dès que la somme des coefficients est non nulle et que $O$ en est le barycentre ; les distances $OA,OB,OC$ se calculent facilement comme modules des affixes déjà connues.

Piège à éviter : oublier de distinguer les trois cas ($k<8$, $k=8$, $k>8$) et conclure directement à un cercle.

Ce que l''examinateur attend : l''application correcte de la formule de Leibniz avec $\varphi(O)=8$, et la discussion complète selon les valeurs de $k$.', '[{"criterion":"Application de la relation de Leibniz et calcul de φ(O)=8","points":0.5},{"criterion":"Discussion complète selon les valeurs de k","points":0.5}]'::jsonb, '2018', 'Problème - A - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'On suppose $k=89$. Donner alors une équation cartésienne de $(\Gamma)$, puis tracer $(\Gamma)$.', 'Pour $k=89>8$, le rayon est :
$$R = \sqrt{\frac{89-8}2} = \sqrt{\frac{81}2} = \frac{9}{\sqrt2} = \frac{9\sqrt2}2, \qquad R^2=\frac{81}2$$

Comme le centre est $O(0,0)$, l''équation cartésienne de $(\Gamma)$ est :
$$x^2+y^2 = \frac{81}2$$

Tracé : $(\Gamma)$ est le cercle centré en $O$, de rayon $R=\frac{9\sqrt2}2\approx6{,}36$.

Réponse : $x^2+y^2=\dfrac{81}2$.', 'La forme canonique d''un cercle de centre $O(0,0)$ et de rayon $R$ est $x^2+y^2=R^2$ ; il suffit d''injecter $R^2=\frac{k-8}2$ pour $k=89$.

Piège à éviter : écrire $x^2+y^2=R$ au lieu de $R^2$.

Ce que l''examinateur attend : le calcul de $R^2=\frac{81}2$, l''équation cartésienne correcte, et un tracé soigné du cercle.', '[{"criterion":"Calcul de R²=81/2 et équation cartésienne","points":0.5},{"criterion":"Tracé soigné du cercle","points":0.25}]'::jsonb, '2018', 'Problème - A - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère l''équation différentielle $(E'') : y''''+4y''+4y=0$ et les fonctions $f(x)=xe^{-2x}+x-\frac54\ln2$ et $g(x)=1+(-2x+1)e^{-2x}$, définies sur $\mathbb{R}$. Dresser le tableau de variation de $g$.', '$\mathcal D_g=\mathbb{R}$. Dérivons :
$$g''(x) = (-2)e^{-2x}+(-2x+1)(-2e^{-2x}) = e^{-2x}[-2-2(-2x+1)] = e^{-2x}(4x-4)$$

Comme $e^{-2x}>0$ pour tout $x$, le signe de $g''(x)$ est celui de $(4x-4)$ : $g''(x)=0\iff x=1$ ; $g''(x)<0$ sur $]-\infty,1[$ ; $g''(x)>0$ sur $]1,+\infty[$.

Limites : en $-\infty$, $(-2x+1)\to+\infty$ et $e^{-2x}\to+\infty$, donc $g(x)\to+\infty$. En $+\infty$, $(-2x+1)e^{-2x}\to0$ (croissances comparées), donc $g(x)\to1$.

Minimum en $x=1$ : $g(1)=1+(-2+1)e^{-2}=1-e^{-2}$.

Réponse : $g$ décroît strictement sur $]-\infty,1]$ de $+\infty$ à $1-e^{-2}$, puis croît strictement sur $[1,+\infty[$ de $1-e^{-2}$ vers $1$.', 'On dérive $g$ comme produit $(-2x+1)\cdot e^{-2x}$ via $(uv)''=u''v+uv''$ ; l''exponentielle restant toujours strictement positive, seul le facteur polynomial $(4x-4)$ détermine le signe de $g''$.

Piège à éviter : erreur de signe lors de la dérivation du produit.

Ce que l''examinateur attend : la dérivée correcte $g''(x)=(4x-4)e^{-2x}$, et un tableau de variation complet avec limites et minimum.', '[{"criterion":"Dérivée correcte g''(x)=(4x-4)e^{-2x}","points":0.25},{"criterion":"Tableau de variation complet avec limites et minimum","points":0.25}]'::jsonb, '2018', 'Problème - B - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire le signe de $g(x)$ suivant les valeurs de $x$.', 'D''après le tableau de variation, le minimum absolu de $g$ sur $\mathbb{R}$ vaut $g(1)=1-e^{-2}$.

Comme $e>2 \implies e^2>4 \implies \frac1{e^2}<\frac14 \implies 1-\frac1{e^2}>\frac34>0$.

Le minimum de $g$ est donc strictement positif.

Réponse : pour tout $x\in\mathbb{R}$, $g(x)>0$.', 'Si le minimum d''une fonction continue sur un intervalle est strictement positif, la fonction est strictement positive sur tout l''intervalle — c''est exactement le cas ici puisque $g(1)=1-e^{-2}>0$.

Piège à éviter : ne pas justifier rigoureusement que $1-e^{-2}>0$.

Ce que l''examinateur attend : la justification de la positivité du minimum $1-e^{-2}$.', '[{"criterion":"Justification de la positivité via le minimum 1-e⁻²>0","points":0.25}]'::jsonb, '2018', 'Problème - B - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer les limites de $f$ en $-\infty$ et $+\infty$, puis la dérivée de $f$.', '$f(x) = xe^{-2x}+x-\frac54\ln2 = x(e^{-2x}+1)-\frac54\ln2$.

En $-\infty$ : $x\to-\infty$ et $(e^{-2x}+1)\to+\infty$, donc par produit $f(x)\to-\infty$.

En $+\infty$ : $xe^{-2x}\to0$ (croissances comparées) et $x-\frac54\ln2\to+\infty$, donc par somme $f(x)\to+\infty$.

Dérivée : $f''(x) = \left(e^{-2x}+x(-2e^{-2x})\right)+1 = (1-2x)e^{-2x}+1 = g(x)$.

Réponse : $\displaystyle\lim_{x\to-\infty}f(x)=-\infty$, $\displaystyle\lim_{x\to+\infty}f(x)=+\infty$, et $f''(x)=g(x)$.', 'La relation clé de tout ce problème est que $f''=g$ : cela relie directement l''étude de $f$ à celle de $g$ déjà faite. Pour la limite en $-\infty$, il faut factoriser par $x$ pour lever l''indétermination.

Piège à éviter : oublier de mettre $x$ en facteur pour la limite en $-\infty$.

Ce que l''examinateur attend : le calcul correct des deux limites, et la dérivée faisant explicitement apparaître $g(x)$.', '[{"criterion":"Calcul des deux limites","points":0.5},{"criterion":"Calcul de la dérivée faisant apparaître g(x)","points":0.25}]'::jsonb, '2018', 'Problème - B - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Dresser le tableau de variation de $f$.', 'Puisque $f''(x)=g(x)$ et que $g(x)>0$ pour tout $x\in\mathbb{R}$ (question 1.b), on a $f''(x)>0$ pour tout $x$ : $f$ est strictement croissante sur $\mathbb{R}$.

Réponse : $f$ croît strictement sur $\mathbb{R}$, de $-\infty$ à $+\infty$, sans aucun extremum.', 'Comme $f''=g$ est strictement positive partout (déjà établi), $f$ est strictement croissante sans annulation de la dérivée : le tableau ne comporte donc aucune ligne de zéro ni d''extremum local.

Piège à éviter : ajouter artificiellement un zéro dans la ligne de $f''(x)$.

Ce que l''examinateur attend : le lien explicite entre le signe de $g$ et le sens de variation de $f$, et un tableau de variation exact.', '[{"criterion":"Lien entre le signe de g(x) et la variation de f","points":0.25},{"criterion":"Tableau de variation exact","points":0.25}]'::jsonb, '2018', 'Problème - B - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer $f(\ln2)$.', '$$f(\ln2) = \ln2\cdot e^{-2\ln2}+\ln2-\frac54\ln2$$

Comme $e^{-2\ln2} = e^{\ln(2^{-2})} = 2^{-2} = \frac14$ :
$$f(\ln2) = \ln2\left(\frac14\right)+\ln2-\frac54\ln2 = \left(\frac14+1-\frac54\right)\ln2 = 0\times\ln2 = 0$$

Réponse : $f(\ln2)=0$.', 'La propriété $e^{-a\ln b}=b^{-a}$ permet de simplifier $e^{-2\ln2}=\frac14$ ; le calcul montre que $x=\ln2$ est un zéro exact de $f$.

Piège à éviter : erreur de simplification, par exemple écrire $e^{-2\ln2}=-4$.

Ce que l''examinateur attend : l''obtention exacte de $f(\ln2)=0$ avec le calcul détaillé.', '[{"criterion":"Calcul détaillé menant à f(ln2)=0","points":0.25}]'::jsonb, '2018', 'Problème - B - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que la droite $(D)$ d''équation $y=x-\frac54\ln2$ est asymptote à $(C_f)$. Étudier la position de $(C_f)$ par rapport à $(D)$. Tracer $(D)$ et $(C_f)$.', 'Asymptote : $f(x)-\left(x-\frac54\ln2\right) = xe^{-2x}$, et $\displaystyle\lim_{x\to+\infty}xe^{-2x}=0$ (croissances comparées). Donc $(D)$ est asymptote oblique à $(C_f)$ en $+\infty$.

Position relative : le signe de $d(x)=f(x)-y=xe^{-2x}$ est celui de $x$ (car $e^{-2x}>0$) :
- sur $]-\infty,0[$ : $d(x)<0$, $(C_f)$ est en dessous de $(D)$ ;
- sur $]0,+\infty[$ : $d(x)>0$, $(C_f)$ est au-dessus de $(D)$ ;
- en $x=0$ : $d(0)=0$, les deux courbes se coupent.

Tracé : $(C_f)$ passe par $(\ln2,0)\approx(0{,}69;0)$ ; $(D)$ passe par $\left(0,-\frac54\ln2\right)\approx(0;-0{,}87)$. Tracer $(D)$ (droite) et $(C_f)$ (courbe croissante, croisant $(D)$ en $x=0$).

Réponse : $(D)$ est asymptote oblique en $+\infty$ ; $(C_f)$ est en dessous de $(D)$ sur $]-\infty,0[$ et au-dessus sur $]0,+\infty[$.', 'Une droite $y=ax+b$ est asymptote oblique à $(C_f)$ en $+\infty$ si $f(x)-(ax+b)\to0$ ; le signe de cette même différence donne ensuite la position relative des deux courbes.

Piège à éviter : oublier de préciser que l''asymptote n''est valable qu''en $+\infty$ (en $-\infty$, $f(x)-y\to-\infty$, pas d''asymptote).

Ce que l''examinateur attend : la démonstration de la limite nulle en $+\infty$, l''étude complète de la position relative, et un tracé cohérent.', '[{"criterion":"Démonstration de la limite nulle (asymptote en +∞)","points":0.375},{"criterion":"Étude complète de la position relative","points":0.375},{"criterion":"Tracé exact de (D) et (C_f)","points":0.5}]'::jsonb, '2018', 'Problème - B - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer la forme générale des solutions de $(E'') : y''''+4y''+4y=0$.', 'Équation caractéristique : $r^2+4r+4=0$. Discriminant $\Delta=16-16=0$ : racine double $r_0=\dfrac{-4}{2}=-2$.

Comme le discriminant est nul, la forme générale des solutions est :
$$y(x) = (Ax+B)e^{-2x}, \quad A,B\in\mathbb{R}$$

Réponse : $y(x)=(Ax+B)e^{-2x}$ avec $(A,B)\in\mathbb{R}^2$.', 'Pour une équation différentielle linéaire homogène du second ordre à coefficients constants dont l''équation caractéristique a un discriminant nul, les solutions sont de la forme $(Ax+B)e^{r_0x}$, où $r_0$ est la racine double.

Piège à éviter : écrire $y(x)=Ae^{-2x}+Be^{-2x}=(A+B)e^{-2x}$, ce qui réduit à tort la famille de solutions à une seule constante.

Ce que l''examinateur attend : l''équation caractéristique et sa racine double $r_0=-2$, puis la forme générale correcte $(Ax+B)e^{-2x}$.', '[{"criterion":"Équation caractéristique et racine double r0=-2","points":0.25},{"criterion":"Forme générale (Ax+B)e⁻²ˣ","points":0.25}]'::jsonb, '2018', 'Problème - B - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer la solution de $(E'')$ dont la courbe admet en $O$ une tangente parallèle à la droite d''équation $y=x+1$.', 'Soit $h(x)=(Ax+B)e^{-2x}$.

La courbe passe par $O(0,0)$ : $h(0)=0 \implies B=0$, donc $h(x)=Axe^{-2x}$.

La tangente en $O$ doit être parallèle à $y=x+1$ (pente $1$) : $h''(0)=1$.

$$h''(x) = Ae^{-2x}-2Axe^{-2x} = A(1-2x)e^{-2x} \implies h''(0)=A$$

Donc $A=1$.

Réponse : la solution particulière est $h(x)=xe^{-2x}$.', '« Admet une tangente en $O$ » donne deux informations : la courbe passe par $O$ (donc $h(0)=0$), et la pente de cette tangente vaut $1$ (donc $h''(0)=1$, égale à la pente de la droite parallèle donnée).

Piège à éviter : oublier que $O$ désigne l''origine $(0,0)$ et ne pas exploiter la condition $h(0)=0$.

Ce que l''examinateur attend : l''utilisation de $h(0)=0$ pour obtenir $B=0$, puis de $h''(0)=1$ pour obtenir $A=1$.', '[{"criterion":"Utilisation de h(0)=0 ⟹ B=0","points":0.25},{"criterion":"Utilisation de h''(0)=1 ⟹ A=1","points":0.25}]'::jsonb, '2018', 'Problème - B - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que la fonction $f$ est une solution de l''équation différentielle $y''''+4y''+4y = 4x-5\ln2+4$.', 'Décomposons $f=h+k$ avec $h(x)=xe^{-2x}$ (solution de $(E'')$, question 4.b) et $k(x)=x-\frac54\ln2$.

Comme $h$ est solution de $(E'')$ : $h''''+4h''+4h=0$.

Pour $k$ : $k''(x)=1$, $k''''(x)=0$, donc :
$$k''''+4k''+4k = 0+4(1)+4\left(x-\frac54\ln2\right) = 4+4x-5\ln2 = 4x-5\ln2+4$$

Par linéarité de l''opérateur $L(y)=y''''+4y''+4y$ :
$$L(f) = L(h)+L(k) = 0+(4x-5\ln2+4) = 4x-5\ln2+4$$

Réponse : $f$ vérifie bien $y''''+4y''+4y=4x-5\ln2+4$.', 'On décompose $f$ en la somme d''une solution connue de l''équation homogène ($h$, question 4.b) et d''une fonction affine $k$ dont les dérivées successives sont triviales à calculer ; la linéarité de l''opérateur différentiel permet ensuite de sommer les deux résultats séparément.

Piège à éviter : dériver $f$ entièrement à la main deux fois, plutôt que d''exploiter que $h$ annule déjà le membre de gauche.

Ce que l''examinateur attend : le calcul des dérivées de $k$ (ou l''application de la linéarité), et la vérification finale de l''égalité.', '[{"criterion":"Calcul des dérivées de k et/ou application de la linéarité","points":0.25},{"criterion":"Vérification finale de l''égalité","points":0.25}]'::jsonb, '2018', 'Problème - B - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En utilisant une intégration par parties, calculer, en $\text{cm}^2$, l''aire de $(\mathcal D_\lambda)$ (domaine compris entre $(C_f)$ et $(D)$ sur $[0;\lambda]$) en fonction de $\lambda$ (unité : $2$ cm).', '$f(x)-\left(x-\frac54\ln2\right)=xe^{-2x}$, et l''unité d''aire (échelle $2$ cm) vaut $2\times2=4\text{ cm}^2$.

Calculons $I(\lambda)=\displaystyle\int_0^\lambda xe^{-2x}\,dx$ par parties, avec $u(x)=x$, $u''(x)=1$, $v''(x)=e^{-2x}$, $v(x)=-\frac12e^{-2x}$ :
$$I(\lambda) = \left[-\frac12xe^{-2x}\right]_0^\lambda-\int_0^\lambda-\frac12e^{-2x}\,dx = -\frac12\lambda e^{-2\lambda}+\frac12\left[-\frac12e^{-2x}\right]_0^\lambda$$
$$I(\lambda) = -\frac12\lambda e^{-2\lambda}-\frac14e^{-2\lambda}+\frac14 = \frac14-\left(\frac\lambda2+\frac14\right)e^{-2\lambda}$$

En multipliant par l''unité d''aire ($4\text{ cm}^2$) :
$$\mathcal A(\lambda) = 4\times\left[\frac14-\left(\frac\lambda2+\frac14\right)e^{-2\lambda}\right] = 1-(2\lambda+1)e^{-2\lambda}\text{ cm}^2$$

Réponse : $\mathcal A(\lambda) = 1-(2\lambda+1)e^{-2\lambda}\text{ cm}^2$.', 'L''intégration par parties suit $\int uv'' = [uv]-\int u''v$ ; il ne faut pas oublier de multiplier le résultat de l''intégrale (en unités graphiques) par l''unité d''aire réelle en cm².

Piège à éviter : oublier la multiplication par $4\text{ cm}^2$, alors que l''énoncé demande explicitement un résultat « en cm² ».

Ce que l''examinateur attend : la mise en place et le calcul corrects de l''intégration par parties, et la prise en compte de l''unité d''aire dans le résultat final.', '[{"criterion":"Mise en place et calcul de l''intégration par parties","points":0.25},{"criterion":"Prise en compte de l''unité d''aire et résultat final","points":0.25}]'::jsonb, '2018', 'Problème - B - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer la limite de cette aire lorsque $\lambda$ tend vers $+\infty$.', '$$\lim_{\lambda\to+\infty} \mathcal A(\lambda) = \lim_{\lambda\to+\infty}\left[1-(2\lambda+1)e^{-2\lambda}\right]$$

Par croissances comparées, $\lambda e^{-2\lambda}\to0$ et $e^{-2\lambda}\to0$ quand $\lambda\to+\infty$, donc $(2\lambda+1)e^{-2\lambda}\to0$.

$$\lim_{\lambda\to+\infty} \mathcal A(\lambda) = 1\text{ cm}^2$$

Réponse : la limite de l''aire est $1\text{ cm}^2$.', 'Quand le domaine s''étend à l''infini, le terme exponentiel décroissant $(2\lambda+1)e^{-2\lambda}$ s''annule, laissant la valeur limite finie de l''aire entre la courbe et son asymptote.

Piège à éviter : oublier l''unité (cm²) dans le résultat final.

Ce que l''examinateur attend : l''utilisation de la croissance comparée $\lambda e^{-2\lambda}\to0$, et le résultat final correct avec son unité.', '[{"criterion":"Utilisation de la croissance comparée","points":0.25},{"criterion":"Résultat final correct avec unité (1 cm²)","points":0.25}]'::jsonb, '2018', 'Problème - B - 5b', 'C', 'draft');
COMMIT;