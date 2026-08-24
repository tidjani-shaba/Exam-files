-- 2020 Baccalaureat C-E Mathematiques -- 36 questions (Serie E-only Exercice 1 - III excluded)
-- Real official corrige with point values, condensed to house style.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Le plan complexe est rapporté à un repère orthonormé $(O,\vec u,\vec v)$. Soit $\Psi$ la transformation qui au point $M(x,y)$ associe le point $M''(x'',y'')$ tel que $x''=\dfrac{12x+5y+1}{13}$ et $y''=\dfrac{5x-12y-5}{13}$. On note $z=x+iy$ et $z''=x''+iy''$ les affixes de $M$ et $M''$. Déterminer deux nombres complexes $a$ et $b$ tels que $z''=a\bar z+b$.', '$$z'' = x''+iy'' = \frac{1}{13}\Big[(12x+5y+1)+i(5x-12y-5)\Big] = \frac1{13}\Big[x(12+5i)+y(5-12i)+(1-5i)\Big]$$

Comme $i(12+5i)=12i-5=-(5-12i)$, on a $5-12i=-i(12+5i)$, donc $y(5-12i)=-iy(12+5i)$ :
$$z'' = \frac1{13}\Big[(12+5i)(x-iy)+(1-5i)\Big] = \left(\frac{12+5i}{13}\right)\bar z+\frac{1-5i}{13}$$

Réponse : $a=\dfrac{12+5i}{13}$ et $b=\dfrac{1-5i}{13}$.', 'On développe $x$ et $y$ en fonction de $z$ et $\bar z$ ($x=\frac{z+\bar z}2$, $y=\frac{z-\bar z}{2i}$), ou plus directement, on factorise l''expression pour faire apparaître $(x-iy)=\bar z$ en repérant que le coefficient de $y$ est $-i$ fois celui de $x$.

Piège à éviter : confondre $z=x+iy$ et son conjugué $\bar z=x-iy$ — le signe devant le terme en $y$ change.

Ce que l''examinateur attend : l''expression correcte de $z''$ en fonction de $x,y$, et l''identification correcte des valeurs complexes $a$ et $b$.', '[{"criterion":"Expression correcte de z'' en fonction de x et y","points":0.25},{"criterion":"Identification correcte des valeurs complexes a et b","points":0.25}]'::jsonb, '2020', 'Exercice 1 - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', '$z''''$ étant l''affixe du point $M''''=(\Psi\circ\Psi)(M)$, exprimer $z''''$ en fonction de $z$.', '$M''''=\Psi(M'')$, donc $z''''=a\overline{z''}+b$. En remplaçant $z''=a\bar z+b$ :
$$z'''' = a\overline{(a\bar z+b)}+b = a(\bar a z+\bar b)+b = (a\bar a)z+a\bar b+b$$

$$|a|^2 = \left(\frac{12}{13}\right)^2+\left(\frac5{13}\right)^2 = \frac{144+25}{169} = 1$$

$$a\bar b = \left(\frac{12+5i}{13}\right)\left(\frac{1+5i}{13}\right) = \frac{12+60i+5i-25}{169} = \frac{-13+65i}{169} = \frac{-1+5i}{13}$$
$$a\bar b+b = \frac{-1+5i}{13}+\frac{1-5i}{13} = 0$$

Donc $z''''=1\cdot z+0=z$.

Réponse : $z''''=z$.', 'On applique la propriété du conjugué $\overline{a\bar z+b}=\bar a z+\bar b$, puis on calcule $a\bar a=|a|^2$ (qui vaut $1$ ici) et $a\bar b+b$ (qui s''annule) : la composition $\Psi\circ\Psi$ redonne l''identité.

Piège à éviter : oublier de conjuguer toute l''expression de $z''$ lors du calcul de $\Psi(\Psi(M))$.

Ce que l''examinateur attend : la formule $z''''=a\overline{z''}+b$ correctement posée, et la simplification aboutissant à $z''''=z$.', '[{"criterion":"Formule z''''=a·conj(z'')+b posée","points":0.25},{"criterion":"Simplification correcte aboutissant à z''''=z","points":0.25}]'::jsonb, '2020', 'Exercice 1 - I - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $(E_1)$ l''ensemble des points $M$ du plan tels que $\Psi(M)=M$. Montrer que $(E_1)$ est la droite d''équation $x-5y=1$.', '$M(x,y)\in(E_1) \iff x''=x$ et $y''=y$ :
$$\begin{cases} \frac{12x+5y+1}{13}=x \\ \frac{5x-12y-5}{13}=y \end{cases} \iff \begin{cases} -x+5y+1=0 \\ 5x-25y-5=0 \end{cases}$$

La seconde équation est $-5\times$(la première) : les deux sont équivalentes, et se réduisent à $x-5y=1$.

Réponse : $(E_1)$ est la droite d''équation $x-5y=1$.', 'On traduit $\Psi(M)=M$ par le système $x''=x,\ y''=y$, puis on réduit au même dénominateur ; on constate que les deux équations obtenues sont proportionnelles (pas indépendantes), donnant une droite et non un point unique.

Piège à éviter : croire que le système définit un point unique alors que les deux équations sont liées.

Ce que l''examinateur attend : la traduction correcte de $\Psi(M)=M$ par le système, et l''obtention de l''équation $x-5y=1$.', '[{"criterion":"Traduction de Ψ(M)=M par le système","points":0.25},{"criterion":"Obtention de l''équation de la droite x-5y=1","points":0.25}]'::jsonb, '2020', 'Exercice 1 - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soient $M$ un point n''appartenant pas à $(E_1)$ et $M''=\Psi(M)$. Montrer que les droites $(MM'')$ et $(E_1)$ sont orthogonales.', 'Un vecteur directeur de $(E_1) : x-5y-1=0$ est $\vec u(5,1)$.

$$x''-x = \frac{-x+5y+1}{13}, \qquad y''-y = \frac{5x-25y-5}{13} = 5\left(\frac{-x+5y+1}{13}\right)$$

Produit scalaire $\overrightarrow{MM''}\cdot\vec u$ :
$$5(x''-x)+1(y''-y) = \frac{-5x+25y+5+5x-25y-5}{13} = 0$$

Le produit scalaire est nul, donc $(MM'')\perp(E_1)$.

Réponse : $(MM'')$ et $(E_1)$ sont orthogonales.', 'On calcule les coordonnées de $\overrightarrow{MM''}$ à partir des formules de $\Psi$, puis leur produit scalaire avec un vecteur directeur de $(E_1)$ ; un produit scalaire nul prouve directement l''orthogonalité.

Piège à éviter : erreur de signe dans le calcul des coordonnées de $\overrightarrow{MM''}$.

Ce que l''examinateur attend : la preuve par produit scalaire nul (ou l''équivalent via les coefficients directeurs).', '[{"criterion":"Preuve par produit scalaire nul (ou coefficients directeurs)","points":0.25}]'::jsonb, '2020', 'Exercice 1 - II - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Montrer que pour tout point $M$ du plan, le milieu du segment $[MM'']$ appartient à $(E_1)$, où $M''=\Psi(M)$.', 'Soit $I(x_I,y_I)$ le milieu de $[MM'']$ :
$$x_I = \frac{x+x''}2 = \frac{25x+5y+1}{26}, \qquad y_I = \frac{y+y''}2 = \frac{5x+y-5}{26}$$

En substituant dans l''équation de $(E_1) : x-5y-1$ :
$$x_I-5y_I-1 = \frac{25x+5y+1-5(5x+y-5)-26}{26} = \frac{25x+5y+1-25x-5y+25-26}{26} = 0$$

Donc $I\in(E_1)$.

Réponse : le milieu de $[MM'']$ appartient toujours à $(E_1)$.', 'On calcule les coordonnées du milieu $I=\frac{M+M''}2$, puis on les substitue dans l''équation de $(E_1)$ ; l''annulation identique du résultat prouve l''appartenance pour tout $M$.

Piège à éviter : oublier de diviser par $26$ (dénominateur $13\times2$).

Ce que l''examinateur attend : le calcul exact des coordonnées du milieu et la vérification de son appartenance à $(E_1)$.', '[{"criterion":"Calcul exact des coordonnées du milieu et vérification de l''appartenance","points":0.25}]'::jsonb, '2020', 'Exercice 1 - II - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Reconnaître la transformation $\Psi$.', 'D''après les questions précédentes :
- $\Psi\circ\Psi=\text{Id}$ ($\Psi$ est involutive) ;
- l''ensemble des points invariants est la droite $(E_1)$ ;
- pour tout $M$, $(MM'')\perp(E_1)$ et le milieu de $[MM'']$ appartient à $(E_1)$.

Ces trois propriétés caractérisent exactement une réflexion (symétrie orthogonale) d''axe $(E_1)$.

Réponse : $\Psi$ est la symétrie orthogonale par rapport à la droite d''équation $x-5y=1$.', 'La synthèse des propriétés géométriques établies aux questions II.1 à II.3 (points fixes formant une droite, perpendicularité de $(MM'')$ à cette droite, milieu sur la droite) caractérise de façon unique une réflexion orthogonale.

Piège à éviter : oublier de préciser la nature exacte (« orthogonale ») ou l''axe de la symétrie.

Ce que l''examinateur attend : l''identification correcte de la symétrie orthogonale par rapport à $(E_1)$.', '[{"criterion":"Identification correcte de la symétrie orthogonale par rapport à (E1)","points":0.25}]'::jsonb, '2020', 'Exercice 1 - II - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Soit $(E_2)$ l''ensemble des points $M$ du plan tels que $\Psi(M)$ appartient à l''axe $(O,\vec v)$. Vérifier que le point $A\left(0,-\frac15\right)$ appartient à $(E_2)$.', 'L''axe $(O,\vec v)$ est l''axe des ordonnées, d''équation $x=0$.

$M(x,y)\in(E_2) \iff x''=0 \iff 12x+5y+1=0$.

Pour $A\left(0,-\frac15\right)$ : $12(0)+5\left(-\frac15\right)+1 = 0-1+1=0$.

Réponse : $A\left(0,-\frac15\right)$ vérifie bien l''équation de $(E_2)$, donc $A\in(E_2)$.', 'On traduit l''appartenance de $\Psi(M)$ à l''axe des ordonnées par la condition $x''=0$, puis on substitue les coordonnées de $A$ et on vérifie l''égalité.

Piège à éviter : confondre l''axe $(O,\vec v)$ (axe $y$, équation $x=0$) et l''axe $(O,\vec u)$ (axe $x$, équation $y=0$).

Ce que l''examinateur attend : l''équation $12x+5y+1=0$ et la vérification numérique pour $A$.', '[{"criterion":"Équation 12x+5y+1=0 et vérification pour A","points":0.25}]'::jsonb, '2020', 'Exercice 1 - III - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Caractériser les points de $(E_2)$ ayant des coordonnées entières.', '$(E_2)$ est la droite d''équation diophantienne $12x+5y=-1$.

Solution particulière : $12(2)+5(-5)=24-25=-1$, donc $(2,-5)$ convient.

En soustrayant : $12(x-2)+5(y+5)=0 \implies 12(x-2)=-5(y+5)$.

Comme $\operatorname{pgcd}(12,5)=1$, d''après le théorème de Gauss, $5$ divise $x-2$ : $x-2=5k \implies x=5k+2$ ($k\in\mathbb{Z}$).

En substituant : $12(5k)=-5(y+5) \implies y=-12k-5$.

Réponse : les points de $(E_2)$ à coordonnées entières sont $(5k+2,\ -12k-5)$, $k\in\mathbb{Z}$.', 'C''est une équation diophantienne linéaire classique : on trouve une solution particulière, on soustrait pour obtenir une équation homogène, puis on applique le théorème de Gauss (licite puisque $\operatorname{pgcd}(12,5)=1$) pour paramétrer toutes les solutions.

Piège à éviter : erreur de signe dans la résolution.

Ce que l''examinateur attend : la recherche d''une solution particulière, et l''expression générale correcte de l''ensemble des couples entiers.', '[{"criterion":"Recherche d''une solution particulière","points":0.25},{"criterion":"Expression générale de l''ensemble des couples entiers","points":0.25}]'::jsonb, '2020', 'Exercice 1 - III - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'On désigne par $(E_3)$ la droite d''équation $y=1$. Déterminer les points $M$ de $(E_3)$ à coordonnées entières tels que $\Psi(M)$ ait des coordonnées entières.', 'Pour $M(x,1)\in(E_3)$ avec $x\in\mathbb{Z}$ :
$$x'' = \frac{12x+6}{13}, \qquad y'' = \frac{5x-17}{13}$$

Pour que $x''$ soit entier, il faut $12x+6\equiv0\ [13]$, soit $-x\equiv-6\ [13]$ (car $12\equiv-1\ [13]$), c''est-à-dire $x\equiv6\ [13]$.

Vérifions que cela rend aussi $y''$ entier : pour $x=13k+6$, $5x-17 = 5(13k+6)-17 = 65k+13 = 13(5k+1)$, bien multiple de $13$.

Réponse : les points recherchés sont $M(13k+6,\ 1)$, $k\in\mathbb{Z}$.', 'On substitue $y=1$ dans les formules de $\Psi$, puis on pose la condition de divisibilité par $13$ sur $x''$ (simplifiée en remarquant $12\equiv-1\ [13]$), et on vérifie qu''elle entraîne automatiquement l''entièreté de $y''$.

Piège à éviter : oublier de vérifier que la condition sur $x''$ rend aussi $y''$ entier.

Ce que l''examinateur attend : la mise en place de la condition de divisibilité par $13$, et la résolution correcte de la congruence.', '[{"criterion":"Pose des conditions de divisibilité par 13","points":0.25},{"criterion":"Résolution des congruences et conclusion","points":0.25}]'::jsonb, '2020', 'Exercice 1 - III - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'L''espace est rapporté au repère orthonormé direct $(O,\vec i,\vec j,\vec k)$. On considère les points $A(1,-1,1)$, $B(0,0,1)$, $C(-2,0,3)$ et $D(-2,0,1)$. Montrer que les points $A$, $B$ et $C$ ne sont pas alignés.', '$\overrightarrow{AB}=(-1,1,0)$ et $\overrightarrow{AC}=(-3,1,2)$.

$$\overrightarrow{AB}\wedge\overrightarrow{AC} = \big(1\times2-0\times1,\ 0\times(-3)-(-1)\times2,\ (-1)\times1-1\times(-3)\big) = (2,2,2) \ne \vec0$$

Comme le produit vectoriel est non nul, les vecteurs ne sont pas colinéaires.

Réponse : $A$, $B$, $C$ ne sont pas alignés.', 'Trois points sont alignés si et seulement si deux vecteurs qu''ils forment sont colinéaires, ce qui équivaut à un produit vectoriel nul ; ici $\overrightarrow{AB}\wedge\overrightarrow{AC}\ne\vec0$ prouve directement le contraire.

Piège à éviter : confondre colinéarité de vecteurs et alignement de points.

Ce que l''examinateur attend : la preuve de la non-colinéarité (via le produit vectoriel ou l''absence de coefficient de proportionnalité).', '[{"criterion":"Preuve de la non-colinéarité","points":0.25}]'::jsonb, '2020', 'Exercice 2 - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Donner une équation du plan $(ABC)$.', 'Un vecteur normal à $(ABC)$ est $\vec n = \frac12(\overrightarrow{AB}\wedge\overrightarrow{AC}) = (1,1,1)$.

L''équation cartésienne s''écrit $x+y+z+d=0$. En passant par $B(0,0,1)$ :
$$0+0+1+d=0 \implies d=-1$$

Réponse : $(ABC) : x+y+z-1=0$.', 'On réutilise le produit vectoriel de la question précédente comme vecteur normal, puis on détermine la constante $d$ en substituant les coordonnées d''un point connu du plan.

Piège à éviter : erreur de calcul dans la détermination de $d$.

Ce que l''examinateur attend : la détermination du vecteur normal et l''équation cartésienne finale.', '[{"criterion":"Détermination du vecteur normal","points":0.25},{"criterion":"Équation cartésienne finale","points":0.25}]'::jsonb, '2020', 'Exercice 2 - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Vérifier que le point $D$ n''appartient pas au plan $(ABC)$.', 'En substituant $D(-2,0,1)$ dans $x+y+z-1$ :
$$(-2)+0+1-1 = -2 \ne 0$$

Réponse : $D$ n''appartient pas au plan $(ABC)$.', 'Il suffit d''évaluer numériquement l''équation du plan au point $D$ et de constater qu''elle n''est pas satisfaite.

Ce que l''examinateur attend : la substitution et la constatation de l''inégalité.', '[{"criterion":"Substitution et constatation de l''inégalité","points":0.25}]'::jsonb, '2020', 'Exercice 2 - 1c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Calculer le volume $V$ du tétraèdre $ABCD$.', '$V = \dfrac16\left|(\overrightarrow{AB}\wedge\overrightarrow{AC})\cdot\overrightarrow{AD}\right|$.

$\overrightarrow{AD}=(-3,1,0)$.

Produit mixte : $(2)(-3)+(2)(1)+(2)(0) = -6+2+0=-4$.

$$V = \frac16|-4| = \frac23 \text{ unité de volume}$$

Réponse : $V=\dfrac23$ u.v.', 'Le volume d''un tétraèdre est le sixième de la valeur absolue du produit mixte des trois vecteurs issus d''un même sommet.

Piège à éviter : oublier la valeur absolue, ou utiliser le facteur $\frac13$ (réservé aux pyramides/cônes) au lieu de $\frac16$.

Ce que l''examinateur attend : la formule du volume du tétraèdre, et la valeur numérique exacte.', '[{"criterion":"Formule du volume du tétraèdre","points":0.25},{"criterion":"Valeur numérique exacte","points":0.25}]'::jsonb, '2020', 'Exercice 2 - 1d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit $(S)$ l''ensemble des points $M(x,y,z)$ tels que $x^2+y^2+z^2+2x+4y-4z-1=0$ et $(P)$ le plan d''équation $2x+y-z=0$. Montrer que $(S)$ est une sphère et préciser son centre et son rayon.', 'Mise sous forme canonique :
$$(x^2+2x)+(y^2+4y)+(z^2-4z)-1=0$$
$$(x+1)^2-1+(y+2)^2-4+(z-2)^2-4-1=0$$
$$(x+1)^2+(y+2)^2+(z-2)^2=10$$

Réponse : $(S)$ est la sphère de centre $\Omega(-1,-2,2)$ et de rayon $R=\sqrt{10}$.', 'On met l''équation quadratique sous la forme canonique $(x-a)^2+(y-b)^2+(z-c)^2=R^2$ par complétion du carré sur chaque variable.

Piège à éviter : inverser les signes des coordonnées du centre lors du passage de $(x+1)$ à $x_\Omega=-1$.

Ce que l''examinateur attend : la mise sous forme canonique, et l''identification correcte du centre et du rayon.', '[{"criterion":"Mise sous forme canonique","points":0.25},{"criterion":"Identification du centre","points":0.25},{"criterion":"Identification du rayon","points":0.25}]'::jsonb, '2020', 'Exercice 2 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer l''intersection de $(S)$ et $(P)$.', 'Distance du centre $\Omega(-1,-2,2)$ au plan $(P) : 2x+y-z=0$ :
$$d(\Omega,(P)) = \frac{|2(-1)+(-2)-(2)|}{\sqrt{4+1+1}} = \frac{6}{\sqrt6} = \sqrt6$$

Comme $d=\sqrt6<R=\sqrt{10}$, l''intersection est un cercle. Son rayon :
$$r = \sqrt{R^2-d^2} = \sqrt{10-6} = 2$$

Le centre du cercle $H$ est le projeté orthogonal de $\Omega$ sur $(P)$ : sur la droite $\{x=-1+2t,\ y=-2+t,\ z=2-t\}$. En substituant dans $(P)$ :
$$2(-1+2t)+(-2+t)-(2-t) = 0 \implies 6t-6=0 \implies t=1$$

D''où $H(1,-1,1)$.

Réponse : l''intersection est le cercle de centre $H(1,-1,1)$ et de rayon $r=2$, situé dans le plan $(P)$.', 'On compare la distance du centre de la sphère au plan à son rayon pour déterminer la nature de l''intersection (ici un cercle, puisque $d<R$) ; le rayon du cercle se déduit par Pythagore, et son centre est le projeté orthogonal du centre de la sphère sur le plan.

Piège à éviter : oublier de donner à la fois le centre et le rayon du cercle d''intersection.

Ce que l''examinateur attend : le calcul de $d=\sqrt6$ et la conclusion sur la nature, le calcul de $r=2$, et la détermination du centre $H(1,-1,1)$.', '[{"criterion":"Calcul de la distance d=√6 et conclusion sur la nature","points":0.25},{"criterion":"Calcul du rayon r=2","points":0.25},{"criterion":"Détermination du centre H(1,-1,1)","points":0.25}]'::jsonb, '2020', 'Exercice 2 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une urne contient 2 boules blanches numérotées 1 et 2, et 3 boules rouges numérotées 1, 2 et 3, toutes indiscernables au toucher. On tire au hasard et simultanément deux boules de l''urne. Calculer la probabilité de chacun des événements suivants : $A$ : « les deux boules sont de même couleur » ; $B$ : « les deux boules portent le même numéro » ; $C$ : « on a tiré exactement une boule blanche et exactement une boule portant un numéro impair ».', 'Nombre total de boules $=2+3=5$ ; nombre de tirages simultanés de $2$ parmi $5$ : $\binom52=10$.

$A$ (même couleur) : $\binom22=1$ (deux blanches) $+\binom32=3$ (deux rouges) $=4$ cas.
$$P(A) = \frac4{10} = \frac25$$

$B$ (même numéro) : numéro $1$ ($B_1,R_1$, $1$ paire), numéro $2$ ($B_2,R_2$, $1$ paire), numéro $3$ (seule $R_3$, aucune paire).
$$P(B) = \frac2{10} = \frac15$$

$C$ (une blanche et un numéro impair) : si la blanche est $B_1$ (impaire), la 2ème doit être rouge paire ($R_2$, $1$ cas) ; si la blanche est $B_2$ (paire), la 2ème doit être rouge impaire ($R_1$ ou $R_3$, $2$ cas). Total $3$ cas.
$$P(C) = \frac3{10}$$

Réponse : $P(A)=\dfrac25$, $P(B)=\dfrac15$, $P(C)=\dfrac3{10}$.', 'On calcule d''abord le nombre total de tirages ($\binom52=10$), puis on dénombre soigneusement les cas favorables à chaque événement — pour $C$, il faut distinguer selon la parité de la boule blanche tirée pour ne rien oublier ni compter en double.

Piège à éviter : pour $C$, mal interpréter « une blanche et une impaire » et risquer un double comptage si la boule blanche elle-même est impaire — il faut raisonner par disjonction de cas.

Ce que l''examinateur attend : le calcul correct des trois probabilités, chacune correctement dénombrée.', '[{"criterion":"Calcul de P(A)","points":0.3},{"criterion":"Calcul de P(B)","points":0.3},{"criterion":"Calcul de P(C)","points":0.4}]'::jsonb, '2020', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Un joueur tire simultanément deux boules au hasard de cette urne. Il reçoit 500 XAF par boule blanche tirée, 250 XAF s''il tire la boule rouge numéro 2, et perd 250 XAF s''il tire la boule rouge numéro 1 (la boule rouge numéro 3 ne rapporte rien). On note $X$ le gain algébrique du joueur à l''issue d''une partie. Donner la loi de probabilité de $X$.', 'Énumérons les $\binom52=10$ tirages et le gain associé :
$\{B_1,B_2\}\to1000$ ; $\{B_1,R_1\}\to250$ ; $\{B_1,R_2\}\to750$ ; $\{B_1,R_3\}\to500$ ; $\{B_2,R_1\}\to250$ ; $\{B_2,R_2\}\to750$ ; $\{B_2,R_3\}\to500$ ; $\{R_1,R_2\}\to0$ ; $\{R_1,R_3\}\to-250$ ; $\{R_2,R_3\}\to250$.

Valeurs de $X$ : $\{-250,0,250,500,750,1000\}$.

xi | -250 | 0 | 250 | 500 | 750 | 1000
P(X=xi) | 1/10 | 1/10 | 3/10 | 2/10 | 2/10 | 1/10

Réponse : la loi de probabilité de $X$ est donnée par le tableau ci-dessus.', 'On énumère systématiquement les $10$ tirages possibles, on calcule le gain de chacun en sommant les contributions des deux boules tirées, puis on regroupe les valeurs identiques.

Piège à éviter : oublier qu''un montant perdu compte négativement.

Ce que l''examinateur attend : les valeurs possibles de $X$, et le calcul exact des probabilités associées (tableau complet).', '[{"criterion":"Détermination des valeurs possibles de X","points":0.25},{"criterion":"Calcul exact des probabilités associées (tableau)","points":0.75}]'::jsonb, '2020', 'Exercice 3 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Calculer l''espérance mathématique de $X$. Ce jeu vous semble-t-il avantageux pour le joueur ? Justifier votre réponse.', '$$E(X) = \frac{-250(1)+0(1)+250(3)+500(2)+750(2)+1000(1)}{10} = \frac{-250+0+750+1000+1500+1000}{10} = \frac{4000}{10} = 400\text{ XAF}$$

Comme $E(X)=400>0$, le joueur gagne en moyenne $400$ XAF par partie.

Réponse : $E(X)=400$ XAF ; le jeu est avantageux pour le joueur car $E(X)>0$.', 'On multiplie chaque valeur $x_i$ par sa probabilité et on somme ; le signe de l''espérance indique si le jeu est favorable ($E(X)>0$), défavorable ($E(X)<0$), ou équitable ($E(X)=0$) pour le joueur.

Piège à éviter : confondre un jeu équitable ($E(X)=0$) et un jeu avantageux ($E(X)>0$).

Ce que l''examinateur attend : le calcul exact de l''espérance, et une interprétation correctement justifiée.', '[{"criterion":"Calcul exact de l''espérance","points":0.25},{"criterion":"Interprétation et justification correcte","points":0.25}]'::jsonb, '2020', 'Exercice 3 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Le plan est muni d''un repère orthonormé $(O,\vec i,\vec j)$ (unité sur les axes : $1$ cm). Étudier les variations de la fonction numérique $f$ définie pour $x\ne-2$ et $x\ne2$ par $f(x)=\dfrac4{4-x^2}$ et tracer sa courbe $(C_0)$.', 'Domaine : $D_f = \,]-\infty,-2[\,\cup\,]-2,2[\,\cup\,]2,+\infty[$. $f(-x)=f(x)$ : $f$ est paire.

Limites : $\displaystyle\lim_{x\to\pm\infty}f(x)=0$ (asymptote horizontale $y=0$) ; $\displaystyle\lim_{x\to-2^-}f(x)=-\infty$, $\displaystyle\lim_{x\to-2^+}f(x)=+\infty$ (asymptote $x=-2$) ; $\displaystyle\lim_{x\to2^-}f(x)=+\infty$, $\displaystyle\lim_{x\to2^+}f(x)=-\infty$ (asymptote $x=2$).

Dérivée : $$f''(x) = \frac{-4(-2x)}{(4-x^2)^2} = \frac{8x}{(4-x^2)^2}$$

$f''(x)$ est du signe de $x$ : $f$ décroît strictement pour $x<0$ ($x\ne-2$), croît strictement pour $x>0$ ($x\ne2$). $f(0)=1$.

Réponse : $f$ décroît strictement sur $]-\infty,-2[$ et $]-2,0]$, et croît strictement sur $[0,2[$ et $]2,+\infty[$, avec les asymptotes $x=\pm2$ et $y=0$.', 'L''étude complète demande le domaine, les six limites aux bornes, la dérivée sous forme $\frac{u''}{v^2}$, et le tableau de variation avant de tracer la courbe en trois branches séparées par les asymptotes verticales.

Piège à éviter : se tromper de signe dans l''étude des limites à gauche et à droite de $-2$ et de $2$.

Ce que l''examinateur attend : les limites et asymptotes, le calcul de la dérivée et le sens de variation, un tableau de variation complet, et le tracé de $(C_0)$.', '[{"criterion":"Limites et asymptotes","points":0.25},{"criterion":"Calcul de la dérivée et sens de variation","points":0.25},{"criterion":"Tableau de variation","points":0.25},{"criterion":"Tracé de la courbe (C0)","points":0.25}]'::jsonb, '2020', 'Problème - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer deux réels $m$ et $n$ tels que $f(x)=\dfrac{m}{2+x}+\dfrac{n}{2-x}$, $x\ne-2$ et $x\ne2$.', '$$\frac m{2+x}+\frac n{2-x} = \frac{m(2-x)+n(2+x)}{(2+x)(2-x)} = \frac{(n-m)x+(2m+2n)}{4-x^2}$$

Par identification avec $f(x)=\frac4{4-x^2}$ :
$$\begin{cases} n-m=0 \\ 2m+2n=4 \end{cases} \implies m=n=1$$

Réponse : $m=1$ et $n=1$.', 'On met la décomposition proposée au même dénominateur, on identifie le numérateur obtenu avec le numérateur constant $4$ de $f$, puis on résout le système linéaire à deux inconnues qui en résulte.

Piège à éviter : erreur de signe dans la réduction au même dénominateur.

Ce que l''examinateur attend : l''identification et l''obtention correcte des deux constantes.', '[{"criterion":"Identification et obtention des constantes","points":0.5}]'::jsonb, '2020', 'Problème - I - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire les primitives sur l''intervalle $]-2;2[$ de la fonction $f$.', 'Sur $]-2,2[$, $2+x>0$ et $2-x>0$, donc $f(x)=\dfrac1{2+x}+\dfrac1{2-x}$.

$$F_0(x) = \ln(2+x)-\ln(2-x)+C = \ln\left(\frac{2+x}{2-x}\right)+C, \quad C\in\mathbb{R}$$

Réponse : les primitives de $f$ sur $]-2,2[$ sont $x\mapsto\ln\left(\dfrac{2+x}{2-x}\right)+C$.', 'On utilise la décomposition en éléments simples de la question précédente ; la primitive de $\frac1{2-x}$ fait apparaître un signe moins, puisque la dérivée de $(2-x)$ vaut $-1$.

Piège à éviter : oublier le signe moins issu de la primitive de $\frac1{2-x}$.

Ce que l''examinateur attend : l''utilisation correcte des formes $u''/u$, et l''expression exacte de la primitive.', '[{"criterion":"Utilisation correcte des formes u''/u","points":0.25},{"criterion":"Expression exacte de la primitive","points":0.25}]'::jsonb, '2020', 'Problème - I - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Pour tout $t\in[0;2[$, calculer $F(t)=\displaystyle\int_0^t\dfrac{4\,dx}{4-x^2}$.', '$$F(t) = \left[\ln\left(\frac{2+x}{2-x}\right)\right]_0^t = \ln\left(\frac{2+t}{2-t}\right)-\ln\left(\frac22\right) = \ln\left(\frac{2+t}{2-t}\right)$$

Réponse : $F(t)=\ln\left(\dfrac{2+t}{2-t}\right)$.', 'On utilise directement la primitive trouvée précédemment (avec $C=0$), évaluée entre $0$ et $t$.

Ce que l''examinateur attend : l''application correcte du théorème fondamental du calcul intégral.', '[{"criterion":"Application du théorème fondamental du calcul","points":0.5}]'::jsonb, '2020', 'Problème - I - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Donner l''interprétation graphique de $F(t)$.', 'Puisque $f(x)\ge0$ sur $[0,t]\subset[0,2[$, $F(t)$ représente l''aire (en cm²) du domaine délimité par la courbe $(C_0)$, l''axe des abscisses, et les droites $x=0$ et $x=t$.

Réponse : $F(t)$ est l''aire de la région du plan délimitée par $(C_0)$, l''axe des abscisses, et les droites $x=0$ et $x=t$.', 'Pour une fonction positive, l''intégrale entre deux bornes représente exactement l''aire sous la courbe entre ces bornes, exprimée en unités d''aire réelles selon l''échelle donnée ($1$ cm par unité, soit $1$ cm²).

Piège à éviter : oublier de mentionner la positivité de la fonction sur l''intervalle, condition nécessaire pour l''interprétation en aire.

Ce que l''examinateur attend : la définition exacte de l''aire géométrique correspondante.', '[{"criterion":"Définition exacte de l''aire géométrique","points":0.5}]'::jsonb, '2020', 'Problème - I - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier le sens de variation de $F$ sur $[0;2[$.', 'Par définition de l''intégrale, $F''(t)=f(t)=\dfrac4{4-t^2}$.

Pour tout $t\in[0,2[$, $4-t^2>0$, donc $F''(t)>0$.

Réponse : $F$ est strictement croissante sur $[0,2[$.', 'On utilise la propriété fondamentale $F''(t)=f(t)$ (théorème fondamental du calcul), puis on étudie le signe de $f(t)$ sur l''intervalle considéré.

Piège à éviter : redériver la fonction logarithmée depuis zéro, alors que $F''(t)=f(t)$ est déjà connu.

Ce que l''examinateur attend : l''argumentation sur le signe de $F''(t)$ et la conclusion.', '[{"criterion":"Argumentation sur le signe de F''(t) et conclusion","points":0.25}]'::jsonb, '2020', 'Problème - I - 3c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer la limite de $F$ à gauche en 2.', 'Quand $t\to2^-$ : $(2+t)\to4$ et $(2-t)\to0^+$, donc $\dfrac{2+t}{2-t}\to+\infty$.

Par composition avec le logarithme :
$$\lim_{t\to2^-} F(t) = \lim_{X\to+\infty}\ln(X) = +\infty$$

Réponse : $\displaystyle\lim_{t\to2^-}F(t)=+\infty$.', 'On étudie le comportement du quotient intérieur $\frac{2+t}{2-t}$ lorsque $t\to2^-$ (numérateur fini, dénominateur tendant vers $0^+$), puis on compose avec la limite usuelle de $\ln$ en $+\infty$.

Piège à éviter : confondre $2^-$ et $2^+$.

Ce que l''examinateur attend : le calcul direct et correct de la limite.', '[{"criterion":"Calcul direct et correct de la limite","points":0.25}]'::jsonb, '2020', 'Problème - I - 3d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Construire la courbe $(C)$ de la fonction $F$.', '$(C)$ part de l''origine $(0,0)$ (car $F(0)=0$), monte de façon strictement croissante (question I.3.c), avec la droite verticale $x=2$ comme asymptote (question I.3.d).

Réponse : courbe partant de $(0,0)$, strictement croissante sur $[0,2[$, admettant $x=2$ comme asymptote verticale.', 'Le tracé combine le point de départ $(0,0)$, la tangente en $0$ (de pente $f(0)=1$), la stricte croissance, et l''asymptote verticale déjà établis.

Piège à éviter : oublier de faire démarrer le tracé à l''origine.

Ce que l''examinateur attend : un tracé conforme sur $[0,2[$.', '[{"criterion":"Tracé conforme sur [0,2[","points":0.5}]'::jsonb, '2020', 'Problème - I - 3e', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que $F$ est une bijection de l''intervalle $[0;2[$ vers un intervalle $J$ de $\mathbb{R}$ que l''on précisera.', '$F$ est continue et strictement croissante sur $[0,2[$ (questions I.3.c et I.3.d), donc elle réalise une bijection de $[0,2[$ vers :
$$J = F([0,2[) = \left[F(0),\ \lim_{t\to2^-}F(t)\right[ = [0,+\infty[$$

Réponse : $F$ est une bijection de $[0,2[$ vers $J=[0,+\infty[$.', 'Le théorème de la bijection s''applique dès que la fonction est continue et strictement monotone ; l''intervalle image s''obtient en calculant les images des deux bornes.

Piège à éviter : oublier de mentionner la continuité de $F$.

Ce que l''examinateur attend : la preuve de la bijection (continuité + stricte monotonie), et l''intervalle $J=[0,+\infty[$ correctement déterminé.', '[{"criterion":"Preuve de la bijection (continuité + stricte monotonie)","points":0.25},{"criterion":"Détermination de l''intervalle J=[0,+∞[","points":0.25}]'::jsonb, '2020', 'Problème - I - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Expliciter $F^{-1}(x)$ pour tout $x$ de $J$.', 'Soit $x\in[0,+\infty[$ et $y\in[0,2[$ :
$$F(y)=x \iff \ln\left(\frac{2+y}{2-y}\right)=x \iff \frac{2+y}{2-y}=e^x$$
$$2+y = e^x(2-y) \implies y(1+e^x) = 2(e^x-1) \implies y = \frac{2(e^x-1)}{e^x+1}$$

Réponse : $F^{-1}(x) = \dfrac{2(e^x-1)}{e^x+1}$, pour $x\in[0,+\infty[$.', 'On résout $F(y)=x$ d''inconnue $y$ : on applique l''exponentielle pour éliminer le logarithme, puis on isole $y$ algébriquement.

Piège à éviter : faute de calcul algébrique lors de l''isolement de $y$.

Ce que l''examinateur attend : la résolution algébrique correcte et complète.', '[{"criterion":"Résolution algébrique correcte","points":0.5}]'::jsonb, '2020', 'Problème - I - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Construire la courbe $(C'')$ de la fonction $F^{-1}$.', '$(C'')$ s''obtient par symétrie de $(C)$ par rapport à la première bissectrice (droite $y=x$). L''asymptote verticale $x=2$ de $(C)$ devient une asymptote horizontale $y=2$ pour $(C'')$.

Réponse : $(C'')$ part de $(0,0)$ et admet $y=2$ comme asymptote horizontale.', 'La courbe d''une fonction réciproque est toujours le symétrique de la courbe de la fonction par rapport à la droite $y=x$ ; les asymptotes s''échangent en conséquence (verticale devient horizontale).

Piège à éviter : ne pas respecter la symétrie par rapport à $y=x$.

Ce que l''examinateur attend : un tracé correct de la courbe réciproque.', '[{"criterion":"Tracé correct de la courbe réciproque","points":0.5}]'::jsonb, '2020', 'Problème - I - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soient $a$ et $b$ deux réels tels que $0\le a<2$ et $0\le b<2$. On pose $c=\dfrac{4(a+b)}{4+ab}$. Montrer que $0\le c<2$ (on pourra remarquer que $0<(2-a)(2-b)$).', 'Positivité : $a,b\ge0 \implies 4(a+b)\ge0$ et $4+ab>0$, donc $c\ge0$.

Majoration : calculons $2-c$ :
$$2-c = \frac{8+2ab-4a-4b}{4+ab} = \frac{2(4-2a-2b+ab)}{4+ab} = \frac{2(2-a)(2-b)}{4+ab}$$

Comme $a<2$ et $b<2$, $(2-a)>0$ et $(2-b)>0$, et $4+ab>0$. Donc $2-c>0$, soit $c<2$.

Réponse : $0\le c<2$.', 'On calcule la différence $2-c$, on la met au même dénominateur, et on la factorise sous la forme $2(2-a)(2-b)$ (suivant l''indication) pour en étudier directement le signe strict.

Piège à éviter : ne pas penser à factoriser la différence $2-c$.

Ce que l''examinateur attend : le calcul et la factorisation de $2-c$, et la déduction de l''encadrement complet.', '[{"criterion":"Calcul de la différence 2-c et factorisation","points":0.25},{"criterion":"Déduction de l''encadrement 0≤c<2","points":0.25}]'::jsonb, '2020', 'Problème - I - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que $F(c)=F(a)+F(b)$.', '$$F(a)+F(b) = \ln\left(\frac{2+a}{2-a}\right)+\ln\left(\frac{2+b}{2-b}\right) = \ln\left(\frac{4+2(a+b)+ab}{4-2(a+b)+ab}\right)$$

Calculons $2+c$ et $2-c$ :
$$2+c = \frac{2(4+ab)+4(a+b)}{4+ab} = \frac{2\big(4+2(a+b)+ab\big)}{4+ab}$$

Et (question précédente) $2-c=\dfrac{2\big(4-2(a+b)+ab\big)}{4+ab}$.

Donc :
$$\frac{2+c}{2-c} = \frac{4+2(a+b)+ab}{4-2(a+b)+ab}$$

En passant au logarithme : $F(c) = \ln\left(\dfrac{2+c}{2-c}\right) = F(a)+F(b)$.

Réponse : $F(c)=F(a)+F(b)$.', 'On développe $F(a)+F(b)$ via la propriété $\ln U+\ln V=\ln(UV)$, puis on calcule séparément $2+c$ et $2-c$ pour constater que leur rapport coïncide exactement avec l''expression trouvée pour $F(a)+F(b)$.

Piège à éviter : s''emmêler dans les simplifications algébriques.

Ce que l''examinateur attend : le calcul de $F(a)+F(b)$, le calcul de $\frac{2+c}{2-c}$, et la conclusion $F(c)=F(a)+F(b)$.', '[{"criterion":"Calcul de F(a)+F(b)","points":0.25},{"criterion":"Calcul de (2+c)/(2-c)","points":0.25},{"criterion":"Conclusion F(c)=F(a)+F(b)","points":0.25}]'::jsonb, '2020', 'Problème - I - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que pour tous réels $x$ et $y$ positifs, $F^{-1}(x+y) = \dfrac{4\big(F^{-1}(x)+F^{-1}(y)\big)}{4+F^{-1}(x)F^{-1}(y)}$.', 'Posons $a=F^{-1}(x)$ et $b=F^{-1}(y)$ : comme $x,y\ge0$, $a,b\in[0,2[$.

D''après la question précédente, $F(c)=F(a)+F(b)=x+y$ où $c=\dfrac{4(a+b)}{4+ab}$.

En appliquant $F^{-1}$ aux deux membres : $c=F^{-1}(x+y)$.

En remplaçant $a=F^{-1}(x)$ et $b=F^{-1}(y)$ dans $c$ :
$$F^{-1}(x+y) = \frac{4\big(F^{-1}(x)+F^{-1}(y)\big)}{4+F^{-1}(x)F^{-1}(y)}$$

Réponse : la relation est démontrée.', 'Le changement de variable $a=F^{-1}(x)$, $b=F^{-1}(y)$ (équivalent à $x=F(a)$, $y=F(b)$) permet de réutiliser directement le résultat de la question précédente, puis de composer par $F^{-1}$ pour isoler la relation demandée.

Piège à éviter : essayer d''utiliser la formule explicite exponentielle de $F^{-1}$ au lieu de réutiliser le résultat de la question I.5.b.

Ce que l''examinateur attend : le changement de variable adéquat, et l''application de $F^{-1}$ aux deux membres menant à la conclusion.', '[{"criterion":"Changement de variable adéquat","points":0.25},{"criterion":"Application de F⁻¹ aux deux membres et conclusion","points":0.5}]'::jsonb, '2020', 'Problème - I - 5c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'On considère la suite $(u_n)$ définie pour tout entier naturel $n$ par $u_n = \dfrac{4(3^n+2^n)}{1+4\times3^n2^n}$. Calculer et ranger dans l''ordre croissant : $u_0$, $u_1$, $u_2$ et $u_3$.', '$$u_0 = \frac{4(1+1)}{1+4(1)} = \frac85 = 1{,}6$$
$$u_1 = \frac{4(3+2)}{1+4(6)} = \frac{20}{25} = \frac45 = 0{,}8$$
$$u_2 = \frac{4(9+4)}{1+4(36)} = \frac{52}{145} \approx 0{,}3586$$
$$u_3 = \frac{4(27+8)}{1+4(216)} = \frac{140}{865} = \frac{28}{173} \approx 0{,}1618$$

Réponse : dans l''ordre croissant, $u_3<u_2<u_1<u_0$, avec $u_0=\dfrac85$, $u_1=\dfrac45$, $u_2=\dfrac{52}{145}$, $u_3=\dfrac{28}{173}$.', 'On substitue successivement $n=0,1,2,3$ dans la formule de la suite, en effectuant l''arithmétique exacte des fractions avant de comparer numériquement les valeurs obtenues.

Piège à éviter : erreur dans les priorités opératoires et le calcul des puissances.

Ce que l''examinateur attend : le calcul exact des quatre termes, et leur rangement croissant correct.', '[{"criterion":"Calcul exact des 4 termes","points":0.75},{"criterion":"Rangement croissant","points":0.25}]'::jsonb, '2020', 'Problème - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Montrer que $u_n = \dfrac{4\left(\frac1{3^n}+\frac1{2^n}\right)}{4+\frac1{3^n}\times\frac1{2^n}}$.', 'Partons de $u_n=\dfrac{4(3^n+2^n)}{1+4\times3^n2^n}$ et divisons numérateur et dénominateur par $3^n\times2^n$ :
$$u_n = \frac{\frac{4(3^n+2^n)}{3^n2^n}}{\frac{1+4\times3^n2^n}{3^n2^n}} = \frac{4\left(\frac1{2^n}+\frac1{3^n}\right)}{\frac1{3^n2^n}+4}$$

Réponse : la réécriture proposée est vérifiée.', 'On factorise numérateur et dénominateur par $3^n\cdot2^n$ (ou on divise les deux par ce terme) pour faire apparaître les puissances négatives demandées.

Piège à éviter : erreur dans la simplification des fractions de fractions.

Ce que l''examinateur attend : la preuve algébrique complète de la réécriture.', '[{"criterion":"Preuve algébrique complète","points":0.75}]'::jsonb, '2020', 'Problème - II - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'En déduire que pour tout entier naturel $n$, $0\le u_n<2$.', 'Posons $a=\dfrac1{3^n}$ et $b=\dfrac1{2^n}$ : $u_n$ prend exactement la forme $c=\dfrac{4(a+b)}{4+ab}$ de la question I.5.a.

Pour $n\ge0$ : $0<a=\dfrac1{3^n}\le1<2$ et $0<b=\dfrac1{2^n}\le1<2$, donc $a,b$ vérifient les conditions $0\le a<2$ et $0\le b<2$.

D''après le résultat de la question I.5.a, on en déduit immédiatement $0\le u_n<2$.

Réponse : pour tout entier naturel $n$, $0\le u_n<2$.', 'On identifie que $u_n$ a exactement la même forme que l''expression $c(a,b)$ étudiée dans la partie I, avec $a=\frac1{3^n}$ et $b=\frac1{2^n}$ ; il suffit alors de vérifier que ces valeurs appartiennent bien à $[0,2[$ pour réutiliser directement le résultat déjà démontré.

Piège à éviter : redémontrer le résultat par récurrence au lieu de faire le lien direct avec la question I.5.a.

Ce que l''examinateur attend : la mise en évidence de la correspondance avec la question I.5.a, et la conclusion de l''encadrement.', '[{"criterion":"Mise en évidence de la relation avec la question I.5.a","points":0.25},{"criterion":"Conclusion de l''encadrement","points":0.25}]'::jsonb, '2020', 'Problème - II - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Calculer la limite de la suite $(u_n)$.', 'Comme $3>1$ et $2>1$ : $\displaystyle\lim_{n\to+\infty}\left(\frac13\right)^n=0$ et $\displaystyle\lim_{n\to+\infty}\left(\frac12\right)^n=0$.

En utilisant la forme réécrite de la question II.2 :
$$\lim_{n\to+\infty} u_n = \frac{4(0+0)}{4+(0\times0)} = 0$$

Réponse : $\displaystyle\lim_{n\to+\infty}u_n=0$.', 'On utilise la limite classique des suites géométriques $q^n\to0$ pour $|q|<1$, puis on applique les théorèmes usuels sur les opérations sur les limites à la forme réécrite (plutôt qu''à la forme initiale, qui donnerait une indétermination).

Piège à éviter : tenter de calculer la limite sous la forme initiale, ce qui conduit à une forme indéterminée « $\infty/\infty$ ».

Ce que l''examinateur attend : le calcul exact de la limite avec sa justification.', '[{"criterion":"Calcul exact de la limite avec justification","points":0.25}]'::jsonb, '2020', 'Problème - II - 4', 'C', 'draft');
COMMIT;