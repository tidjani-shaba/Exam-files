-- 2016 Baccalaureat C Mathematiques -- 33 questions (Serie E-only Partie III excluded)
-- Insert as draft; flip to ready after backfill-math-images.js runs.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une urne contient 5 jetons portant les réels $-\sqrt{2}$, $-1$, $0$, $1$, $\sqrt{2}$. On tire successivement et avec remise deux jetons ; $x$ est le résultat du premier tirage, $y$ celui du second, et on forme le nombre complexe $z = x + iy$. Combien de nombres complexes $z$ peut-on ainsi construire ?', 'Le tirage se fait avec remise, donc il y a $5$ choix possibles pour $x$ et, indépendamment, $5$ choix possibles pour $y$.

Le nombre total de couples $(x,y)$, donc de nombres complexes $z = x+iy$, est :
$$N = 5 \times 5 = 25$$

Réponse : on peut construire $25$ nombres complexes.', 'Un nombre complexe $z = x+iy$ est entièrement déterminé par le couple $(x,y)$ : à chaque couple différent correspond un $z$ différent, donc compter les nombres complexes revient à compter les couples. Comme le tirage est avec remise, le choix de $x$ n''a aucune influence sur les choix disponibles pour $y$, d''où la multiplication $5 \times 5$.

Piège à éviter : confondre « avec remise » et « sans remise ». Sans remise, il n''y aurait plus que $5 \times 4 = 20$ couples possibles, car le second tirage ne pourrait plus reproduire la valeur du premier.

Ce que l''examinateur attend : la justification explicite du dénombrement par un produit de choix indépendants, et le résultat exact $25$.', '[{"criterion":"Justification du dénombrement (produit des choix indépendants)","points":0.5},{"criterion":"Résultat exact (25)","points":0.5}]'::jsonb, '2016', 'Exercice 1 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Avec le même tirage (deux jetons parmi $-\sqrt{2}$, $-1$, $0$, $1$, $\sqrt{2}$, avec remise, formant $z = x+iy$), quelle est la probabilité d''obtenir un nombre complexe de module $\sqrt{2}$ ?', 'Le module de $z=x+iy$ vaut $|z| = \sqrt{x^2+y^2}$. On cherche donc les couples $(x,y)$ tels que $x^2+y^2 = 2$.

Les carrés des valeurs possibles sont : $(-\sqrt{2})^2 = 2$, $(-1)^2 = 1$, $0^2=0$, $1^2=1$, $(\sqrt{2})^2=2$.

En cherchant les couples de carrés qui totalisent $2$ :
- $x^2=2$ et $y^2=0$ : $(-\sqrt{2},0)$, $(\sqrt{2},0)$ — 2 couples
- $x^2=0$ et $y^2=2$ : $(0,-\sqrt{2})$, $(0,\sqrt{2})$ — 2 couples
- $x^2=1$ et $y^2=1$ : $(-1,-1)$, $(-1,1)$, $(1,-1)$, $(1,1)$ — 4 couples

Nombre de cas favorables : $2+2+4 = 8$.

$$P = \frac{8}{25}$$

Réponse : la probabilité est $\dfrac{8}{25}$ (soit $0{,}32$).', 'Pour un module donné, on cherche toutes les combinaisons de valeurs de $E=\{-\sqrt{2},-1,0,1,\sqrt{2}\}$ dont la somme des carrés correspond au carré du module recherché ; il faut être méthodique pour n''oublier aucun cas.

Piège à éviter : oublier les cas où l''une des deux coordonnées est nulle (comme $(-\sqrt{2},0)$), ou oublier les couples avec des valeurs négatives (comme $(-1,-1)$).

Ce que l''examinateur attend : l''identification complète de l''équation $x^2+y^2=2$, la liste exhaustive des 8 couples favorables, et le calcul exact de la probabilité $\frac{8}{25}$.', '[{"criterion":"Identification de l''équation x²+y²=2 et liste des cas favorables (8 cas)","points":0.5},{"criterion":"Calcul exact de la probabilité (8/25)","points":0.5}]'::jsonb, '2016', 'Exercice 1 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Toujours avec le même tirage, quelle est la probabilité d''obtenir un nombre complexe dont un argument est $\dfrac{\pi}{2}$ ?', 'Un nombre complexe $z=x+iy$ a pour argument $\frac{\pi}{2}$ (à $2k\pi$ près) si et seulement s''il est un imaginaire pur strictement positif, c''est-à-dire $x=0$ et $y>0$.

Il n''y a qu''une seule valeur possible pour $x$ ($x=0$), et deux valeurs possibles pour $y>0$ dans $E$ : $1$ et $\sqrt{2}$.

Les complexes favorables sont donc $i$ et $i\sqrt{2}$, soit $2$ cas favorables.

$$P = \frac{2}{25}$$

Réponse : la probabilité est $\dfrac{2}{25}$ (soit $0{,}08$).', 'L''argument d''un nombre complexe correspond à l''angle orienté entre l''axe des réels et le point $M$ d''affixe $z$ ; un argument de $\frac{\pi}{2}$ signifie que $M$ se trouve sur le demi-axe imaginaire strictement positif, donc $x=0$ et $y>0$.

Piège à éviter : inclure $y<0$ (qui correspond à l''argument $-\frac{\pi}{2}$), ou inclure le cas $x=0,y=0$ (le complexe nul n''a pas d''argument défini).

Ce que l''examinateur attend : la condition $x=0$ et $y>0$ clairement énoncée, et le calcul exact de la probabilité $\frac{2}{25}$.', '[{"criterion":"Condition x=0 et y>0 énoncée","points":0.5},{"criterion":"Calcul exact de la probabilité (2/25)","points":0.5}]'::jsonb, '2016', 'Exercice 1 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'On effectue trois fois de suite, de façon indépendante, le tirage décrit précédemment (tirer deux jetons avec remise et former $z=x+iy$). Soit $X$ la variable aléatoire égale au nombre de fois où le nombre complexe obtenu a pour module $\sqrt{2}$. Déterminer la loi de probabilité de $X$.', 'On répète $n=3$ fois, de façon indépendante et identique, une épreuve à deux issues :
- Succès $S$ : « obtenir un nombre complexe de module $\sqrt{2}$ », de probabilité $p = \frac{8}{25}$ (question précédente) ;
- Échec $\bar S$, de probabilité $q = 1-p = \frac{17}{25}$.

$X$ compte le nombre de succès sur les $3$ répétitions : $X$ suit donc la loi binomiale $\mathcal{B}\left(3,\frac{8}{25}\right)$, avec $X(\Omega)=\{0,1,2,3\}$.

Pour chaque $k$, $P(X=k) = \binom{3}{k}p^kq^{3-k}$ :

$P(X=0) = \binom{3}{0}\left(\frac{8}{25}\right)^0\left(\frac{17}{25}\right)^3 = \frac{4913}{15625} \approx 0{,}3144$

$P(X=1) = \binom{3}{1}\left(\frac{8}{25}\right)^1\left(\frac{17}{25}\right)^2 = \frac{6936}{15625} \approx 0{,}4439$

$P(X=2) = \binom{3}{2}\left(\frac{8}{25}\right)^2\left(\frac{17}{25}\right)^1 = \frac{3264}{15625} \approx 0{,}2089$

$P(X=3) = \binom{3}{3}\left(\frac{8}{25}\right)^3\left(\frac{17}{25}\right)^0 = \frac{512}{15625} \approx 0{,}0328$

k | 0 | 1 | 2 | 3
P(X = k) | 4913/15625 | 6936/15625 | 3264/15625 | 512/15625

(Vérification : $4913+6936+3264+512 = 15625$, la somme des probabilités vaut bien $1$.)

Réponse : $X \sim \mathcal{B}\left(3,\frac{8}{25}\right)$, avec la loi de probabilité donnée par le tableau ci-dessus.', 'Chaque répétition de l''expérience (tirer deux jetons et former $z$) est indépendante des autres et a toujours la même probabilité de succès $p=\frac{8}{25}$ : ces conditions (répétitions indépendantes, identiques, à deux issues) définissent exactement un schéma de Bernoulli, donc une loi binomiale.

Piège à éviter : oublier les coefficients binomiaux $\binom{3}{k}$ (par exemple oublier de multiplier par $3$ pour $k=1$ ou $k=2$), ou ne donner que des valeurs approchées sans les fractions exactes.

Ce que l''examinateur attend : l''identification explicite de la loi binomiale $\mathcal{B}(3\,;\,8/25)$ avec l''ensemble $X(\Omega)$, et le calcul correct de chaque probabilité, présenté sous forme de tableau.', '[{"criterion":"Identification de la loi binomiale B(3; 8/25) et de X(Ω)","points":0.5},{"criterion":"Calculs corrects des probabilités (0,25 pt par valeur)","points":1}]'::jsonb, '2016', 'Exercice 1 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Dans l''espace muni d''un repère $(O,\vec{i},\vec{j},\vec{k})$, on considère les surfaces $(S) : z=(x-y)^2$ et $(S'') : z=xy$ (on prendra $1$ cm comme unité). Déterminer le vecteur $\vec{i} \wedge (2\vec{i})$.', 'Pour tout vecteur $\vec{u}$, le produit vectoriel d''un vecteur par un de ses multiples est le vecteur nul (deux vecteurs colinéaires forment un angle nul) :
$$\vec{i} \wedge (2\vec{i}) = 2(\vec{i} \wedge \vec{i}) = \vec{0}$$

Réponse : $\vec{i} \wedge (2\vec{i}) = \vec{0}$.', 'Le produit vectoriel de deux vecteurs colinéaires est toujours nul, car $\|\vec{u}\wedge\vec{v}\| = \|\vec{u}\|\|\vec{v}\|\sin\theta$ et l''angle $\theta$ entre deux vecteurs colinéaires est nul (donc $\sin\theta = 0$).

Piège à éviter : écrire le nombre réel $0$ au lieu du vecteur nul $\vec{0}$.

Ce que l''examinateur attend : le résultat exact $\vec{0}$, écrit avec la flèche vectorielle.', '[{"criterion":"Résultat exact 0⃗ avec la flèche vectorielle","points":0.25}]'::jsonb, '2016', 'Exercice 2 - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'On note $(I_2)$ l''intersection de $(S'') : z=xy$ avec le plan $(P_1) : z=0$. Déterminer la nature et les éléments caractéristiques de $(I_2)$.', 'Un point $M(x,y,z)$ appartient à $(I_2)$ si et seulement si :
$$\begin{cases} z=xy \\ z=0 \end{cases} \iff \begin{cases} z=0 \\ x=0 \text{ ou } y=0 \end{cases}$$

$(I_2)$ est donc la réunion de deux droites du plan $(O,\vec{i},\vec{j})$ :
- $(D_1)$ : $y=0$ et $z=0$, l''axe des abscisses $(O,\vec{i})$ ;
- $(D_2)$ : $x=0$ et $z=0$, l''axe des ordonnées $(O,\vec{j})$.

Réponse : $(I_2)$ est la réunion des deux droites perpendiculaires $(O,\vec{i})$ et $(O,\vec{j})$, sécantes en l''origine $O$.', 'L''équation $xy=0$ signifie « $x=0$ ou $y=0$ » (et non les deux à la fois), ce qui donne bien deux droites distinctes et non un seul point.

Piège à éviter : confondre le système « et » avec le système « ou », et conclure à tort que $(I_2)$ se réduit au seul point $O$.

Ce que l''examinateur attend : la résolution correcte de $xy=0$ comme une alternative, et l''identification précise des deux droites obtenues (les axes $(Ox)$ et $(Oy)$).', '[{"criterion":"Résolution de xy=0 comme une alternative","points":0.25},{"criterion":"Identification précise des deux droites (axes Ox et Oy)","points":0.25}]'::jsonb, '2016', 'Exercice 2 - I - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'On note $(I_3)$ l''intersection de $(S) : z=(x-y)^2$ et de la surface $(S'''') : z=-2xy+4+2y^2$. Déterminer la nature et les éléments caractéristiques du projeté orthogonal de $(I_3)$ sur le plan $(O,\vec{i},\vec{j})$.', 'Les points de $(I_3)$ vérifient :
$$\begin{cases} z=(x-y)^2 = x^2-2xy+y^2 \\ z=-2xy+4+2y^2 \end{cases}$$

En égalant les deux expressions de $z$ :
$$x^2-2xy+y^2 = -2xy+4+2y^2$$

En simplifiant les termes en $-2xy$ des deux côtés :
$$x^2+y^2 = 4+2y^2 \iff x^2-y^2=4 \iff \frac{x^2}{4}-\frac{y^2}{4}=1$$

Le projeté orthogonal de $(I_3)$ sur $(O,\vec{i},\vec{j})$ est donc l''ensemble des points $m(x,y,0)$ vérifiant cette équation dans le plan $z=0$.

Caractéristiques :
- Nature : hyperbole équilatère ;
- Centre : l''origine $O(0,0)$ ;
- Axe focal : l''axe des abscisses $(O,\vec{i})$ ;
- Sommets : $A(2,0,0)$ et $A''(-2,0,0)$ ;
- Asymptotes : les droites $y=x$ et $y=-x$ (dans $z=0$).

Réponse : c''est une hyperbole équilatère de centre $O$, de sommets $(2,0,0)$ et $(-2,0,0)$, d''asymptotes $y=x$ et $y=-x$.', 'Pour obtenir le projeté orthogonal sur $(O,\vec{i},\vec{j})$, on élimine la variable $z$ en égalant les deux équations de surfaces. L''équation obtenue $x^2-y^2=4$ est de la forme $\frac{x^2}{a^2}-\frac{y^2}{b^2}=1$ avec $a=b=2$ : c''est une hyperbole équilatère (asymptotes perpendiculaires, puisque $a=b$).

Piège à éviter : oublier de préciser que la projection se situe dans le plan $z=0$, ou confondre avec une ellipse (qui aurait un signe $+$ entre $x^2$ et $y^2$).

Ce que l''examinateur attend : l''établissement correct de l''équation $x^2-y^2=4$, l''identification de la nature (hyperbole équilatère), et les éléments caractéristiques (centre, sommets, asymptotes).', '[{"criterion":"Établissement de l''équation x²-y²=4","points":0.25},{"criterion":"Identification de la nature (hyperbole)","points":0.25},{"criterion":"Éléments caractéristiques (centre, sommets, asymptotes)","points":0.25}]'::jsonb, '2016', 'Exercice 2 - I - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Dans l''espace muni du repère $(O,\vec{i},\vec{j},\vec{k})$, on considère les surfaces $(S) : z=(x-y)^2$ et $(S'') : z=xy$, et on note $(I_4)$ leur intersection. On veut démontrer que le seul point $M$ appartenant à $(I_4)$ dont les coordonnées sont des entiers naturels est le point $O(0\,;0\,;0)$. On suppose qu''il existe un point $M$ appartenant à $(I_4)$ dont les coordonnées $x$, $y$, $z$ sont des entiers naturels. Montrer que si $x=0$, alors le point $M$ est le point $O$.', 'Soit $M(x,y,z) \in (I_4)$ avec $x=0$.

Comme $M \in (I_4)$, ses coordonnées vérifient $(x-y)^2 = xy$ (égalité des deux expressions de $z$). En remplaçant $x=0$ :
$$(0-y)^2 = 0 \times y \iff y^2 = 0 \iff y=0$$

Calculons alors $z$ : $z = xy = 0 \times 0 = 0$.

Ainsi $x=0 \implies y=0$ et $z=0$ : les coordonnées de $M$ sont $(0,0,0)$.

Réponse : si $x=0$, alors $M$ est le point $O(0,0,0)$.', 'Il s''agit d''une simple substitution : en remplaçant $x$ par $0$ dans l''équation caractérisant $(I_4)$, on obtient une équation qui force $y$ à être nul, puis $z$ à être nul à son tour.

Ce que l''examinateur attend : la substitution correcte de $x=0$ dans l''équation de $(I_4)$, aboutissant à $y=0$ puis $z=0$, et la conclusion $M=O(0,0,0)$.', '[{"criterion":"Démontrer y=0","points":0.25},{"criterion":"Conclusion M=O(0,0,0)","points":0.25}]'::jsonb, '2016', 'Exercice 2 - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'On suppose désormais que l''entier $x$ n''est pas nul. Montrer que les entiers $x$ et $y$ vérifient $x^2-3xy+y^2=0$. En déduire qu''il existe deux entiers naturels $x''$ et $y''$ premiers entre eux tels que $x''^2-3x''y''+y''^2=0$.', 'Étape 1 : établir l''équation $x^2-3xy+y^2=0$.

Comme $M(x,y,z) \in (I_4)$, ses coordonnées vérifient à la fois $z=(x-y)^2$ et $z=xy$. En égalant les deux expressions :
$$(x-y)^2 = xy \iff x^2-2xy+y^2 = xy \iff x^2-3xy+y^2=0$$

Étape 2 : réduction par le PGCD.

Puisque $x \ne 0$, posons $d = x \wedge y$ (le PGCD de $x$ et $y$, avec $d \ge 1$). Il existe alors des entiers naturels $x''$ et $y''$ premiers entre eux tels que :
$$x = dx'', \quad y = dy'', \quad \text{avec } x'' \wedge y'' = 1$$

En remplaçant dans l''équation $x^2-3xy+y^2=0$ :
$$(dx'')^2 - 3(dx'')(dy'') + (dy'')^2 = 0 \iff d^2\left(x''^2-3x''y''+y''^2\right) = 0$$

Comme $x \ne 0$, on a $d \ne 0$, donc on peut diviser par $d^2 \ne 0$ :
$$x''^2-3x''y''+y''^2=0$$

Réponse : on obtient $x^2-3xy+y^2=0$ par égalité des deux expressions de $z$, puis $x''^2-3x''y''+y''^2=0$ avec $\operatorname{pgcd}(x'',y'')=1$ par réduction via le PGCD $d$ de $x$ et $y$.', 'La première étape est une simple égalité de deux expressions de $z$ suivie d''un développement du carré. La seconde étape est la méthode classique de réduction par le PGCD en arithmétique : si une équation homogène de degré $2$ est vérifiée par $(x,y)$, elle l''est encore par les entiers réduits $(x'',y'') = \left(\frac{x}{d},\frac{y}{d}\right)$, qui sont premiers entre eux par construction.

Piège à éviter : oublier de vérifier que $d \ne 0$ avant de diviser par $d^2$ (c''est le cas ici puisque $x \ne 0$ entraîne $d \ne 0$).

Ce que l''examinateur attend : le développement correct de $(x-y)^2=xy$ menant à $x^2-3xy+y^2=0$, puis l''introduction du PGCD $d$ et la division par $d^2$ pour obtenir la forme réduite avec $x'' \wedge y'' = 1$.', '[{"criterion":"Preuve de l''équation x²-3xy+y²=0","points":0.5},{"criterion":"Utilisation du PGCD d et obtention de la forme réduite avec x''∧y''=1","points":0.75}]'::jsonb, '2016', 'Exercice 2 - II - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Montrer que $x''$ divise $y''^2$, puis que $x''$ divise $y''$.', 'De l''égalité $x''^2-3x''y''+y''^2=0$, on isole $y''^2$ :
$$y''^2 = 3x''y''-x''^2 = x''(3y''-x'')$$

Comme $3y''-x''$ est un entier, cette écriture montre que $x''$ divise $y''^2$.

Or $x'' \wedge y'' = 1$ (question précédente). D''après le théorème de Gauss, si $x''$ divise $y'' \times y''$ et que $x''$ est premier avec $y''$, alors $x''$ divise $y''$.

Réponse : $x'' \mid y''^2$, et par le théorème de Gauss, $x'' \mid y''$.', 'En isolant $y''^2$ dans l''équation, on fait apparaître $x''$ en facteur commun du membre de droite, ce qui prouve immédiatement que $x''$ divise $y''^2 = y'' \times y''$. Le théorème de Gauss est ensuite la clé : si un entier divise un produit de deux facteurs et qu''il est premier avec l''un des deux, alors il divise nécessairement l''autre.

Piège à éviter : conclure $x'' \mid y''$ directement à partir de $x'' \mid y''^2$ sans invoquer la condition $\operatorname{pgcd}(x'',y'')=1$ — sans cette condition, la déduction serait fausse.

Ce que l''examinateur attend : la mise en évidence de $x''(3y''-x'')=y''^2$ prouvant $x'' \mid y''^2$, puis l''application explicite du théorème de Gauss (en citant la condition $x'' \wedge y'' = 1$) pour conclure $x'' \mid y''$.', '[{"criterion":"Preuve que x'' divise y''²","points":0.5},{"criterion":"Application du théorème de Gauss pour conclure x'' divise y''","points":0.5}]'::jsonb, '2016', 'Exercice 2 - II - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Établir que $x=0$, et conclure.', 'On a $x'' \mid y''$ et $\operatorname{pgcd}(x'',y'')=1$. Or si $x''$ divise $y''$, alors $\operatorname{pgcd}(x'',y'')=x''$. Comme $\operatorname{pgcd}(x'',y'')=1$, on obtient :
$$x''=1$$

Remplaçons $x''=1$ dans l''équation $x''^2-3x''y''+y''^2=0$ :
$$1-3y''+y''^2=0 \iff y''^2-3y''+1=0$$

Calculons le discriminant de cette équation du second degré en $y''$ :
$$\Delta = (-3)^2-4(1)(1) = 9-4 = 5$$

Comme $\Delta=5$ n''est pas un carré parfait, les solutions $y'' = \frac{3\pm\sqrt{5}}{2}$ ne sont pas des entiers naturels — ce qui contredit $y'' \in \mathbb{N}$.

L''hypothèse de départ « $x \ne 0$ » est donc fausse : on en déduit $x=0$.

D''après la question II.1, $x=0 \implies M=O(0,0,0)$.

Réponse : $x=0$, et le seul point de $(I_4)$ à coordonnées entières naturelles est l''origine $O(0,0,0)$.', 'Le raisonnement complet est une démonstration par l''absurde : on avait supposé $x \ne 0$, et cette hypothèse conduit à une équation du second degré ($y''^2-3y''+1=0$) dont le discriminant n''est pas un carré parfait, donc sans solution entière — ce qui contredit le fait que $y''$ doit être un entier naturel. L''hypothèse de départ est donc fausse.

Piège à éviter : oublier de repartir de la question II.1 pour conclure explicitement que $M=O$ une fois $x=0$ établi.

Ce que l''examinateur attend : la déduction $x''=1$ à partir de $x'' \mid y''$ et $\operatorname{pgcd}(x'',y'')=1$, l''obtention de l''équation en $y''$ et la preuve qu''elle n''a pas de solution dans $\mathbb{N}$ (via le discriminant), et la conclusion finale $M=O(0,0,0)$.', '[{"criterion":"Déduction x''=1","points":0.5},{"criterion":"Obtention de l''équation en y'' et preuve de non-appartenance à N","points":0.5},{"criterion":"Conclusion finale M=O(0,0,0)","points":0.25}]'::jsonb, '2016', 'Exercice 2 - II - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $f$ la fonction numérique de la variable réelle $x$ définie par $f(x) = (1-\sqrt{|x|})^2$ pour tout $x$ appartenant à $[-1;1]$. On note $(\mathcal{C})$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$ (on prendra $3$ cm comme unité sur les axes). Déterminer la parité de $f$.', 'L''ensemble de définition $D_f=[-1,1]$ est symétrique par rapport à $0$.

Pour tout $x \in [-1,1]$ :
$$f(-x) = (1-\sqrt{|-x|})^2 = (1-\sqrt{|x|})^2 = f(x)$$

Réponse : la fonction $f$ est paire.', 'La valeur absolue vérifie $|-x|=|x|$ pour tout réel $x$, donc $f(-x)$ est directement égal à $f(x)$ sans calcul supplémentaire.

Ce que l''examinateur attend : la vérification du domaine symétrique et le calcul $f(-x)=f(x)$.', '[{"criterion":"Domaine symétrique et calcul f(-x)=f(x)","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Quelle conséquence géométrique peut-on en déduire pour la courbe $(\mathcal{C})$ ?', 'Puisque $f$ est paire, sa courbe représentative $(\mathcal{C})$ admet l''axe des ordonnées $(O,\vec{j})$ comme axe de symétrie.

Réponse : $(\mathcal{C})$ est symétrique par rapport à l''axe $(O,\vec{j})$.', 'C''est une propriété générale : la courbe d''une fonction paire est toujours symétrique par rapport à l''axe des ordonnées, car $f(-x)=f(x)$ signifie que les points d''abscisses opposées ont la même ordonnée.

Ce que l''examinateur attend : la mention exacte de l''axe des ordonnées $(Oy)$ comme axe de symétrie.', '[{"criterion":"Mention exacte de l''axe des ordonnées (Oy)","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $g$ la restriction de $f$ à $[0;1]$. Vérifier que $g(x) = (1-\sqrt{x})^2$ pour tout $x \in [0;1]$.', 'Pour tout $x \in [0,1]$, on a $x \ge 0$, donc $|x|=x$.

Comme $g$ est la restriction de $f$ à $[0,1]$ :
$$g(x) = f(x) = (1-\sqrt{|x|})^2 = (1-\sqrt{x})^2$$

Réponse : $g(x) = (1-\sqrt{x})^2$ pour tout $x \in [0,1]$.', 'Sur $[0,1]$, tous les réels sont positifs ou nuls, donc la valeur absolue disparaît simplement : $|x|=x$.

Ce que l''examinateur attend : l''utilisation explicite de $|x|=x$ pour $x \ge 0$.', '[{"criterion":"Utilisation de |x|=x pour x≥0","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier la dérivabilité de $g$ à droite en $0$. Que peut-on en conclure pour la courbe $(\mathcal{C})$ de $f$ ?', 'Calculons le taux de variation en $0^+$ :
$$\lim_{x \to 0^+} \frac{g(x)-g(0)}{x-0} = \lim_{x \to 0^+} \frac{(1-\sqrt{x})^2-1}{x} = \lim_{x \to 0^+} \frac{1-2\sqrt{x}+x-1}{x} = \lim_{x \to 0^+}\left(\frac{-2}{\sqrt{x}}+1\right) = -\infty$$

$g$ n''est donc pas dérivable à droite en $0$.

Conséquence géométrique : la courbe $(\mathcal{C})$ admet une demi-tangente verticale au point $(0,1)$ ; par symétrie (question A.1.b), $(\mathcal{C})$ présente un point anguleux (« pointu ») en ce point.

Réponse : $g$ n''est pas dérivable à droite en $0$ ; $(\mathcal{C})$ admet une demi-tangente verticale, donc un point anguleux, en $(0,1)$.', 'Une limite infinie du taux de variation en un point signifie que la courbe possède une tangente verticale en ce point plutôt qu''une tangente « normale » de pente finie.

Ce que l''examinateur attend : le calcul explicite de la limite ($-\infty$) et l''interprétation géométrique correcte (demi-tangente verticale, point anguleux).', '[{"criterion":"Calcul de la limite (-∞)","points":0.25},{"criterion":"Interprétation géométrique (demi-tangente verticale / point anguleux)","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que pour tout $x \in ]0;1]$, $g''(x) = \dfrac{-1+\sqrt{x}}{\sqrt{x}}$.', '$g(x) = (1-\sqrt{x})^2 = u(x)^2$ avec $u(x)=1-\sqrt{x}$ et $u''(x) = -\dfrac{1}{2\sqrt{x}}$.

En dérivant $g=u^2$ :
$$g''(x) = 2u''(x)u(x) = 2\left(-\frac{1}{2\sqrt{x}}\right)(1-\sqrt{x}) = -\frac{1-\sqrt{x}}{\sqrt{x}} = \frac{-1+\sqrt{x}}{\sqrt{x}}$$

Réponse : $g''(x) = \dfrac{-1+\sqrt{x}}{\sqrt{x}}$.', 'On dérive une fonction composée de la forme $u^2$ avec la formule $(u^2)''=2u''u$, en utilisant la dérivée usuelle de $\sqrt{x}$, à savoir $\frac{1}{2\sqrt{x}}$.

Ce que l''examinateur attend : la dérivation détaillée, étape par étape, jusqu''à la forme demandée.', '[{"criterion":"Dérivation détaillée","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Dresser le tableau de variation de $g$.', 'Sur $]0,1]$, le dénominateur $\sqrt{x}$ est strictement positif. Le signe de $g''(x)$ est donc celui du numérateur $-1+\sqrt{x}$ :
- pour $x \in ]0,1[$ : $\sqrt{x}<1 \implies -1+\sqrt{x}<0 \implies g''(x)<0$ ;
- en $x=1$ : $g''(1)=0$.

$g$ est donc strictement décroissante sur $[0,1]$, de $g(0)=1$ à $g(1)=0$.

Réponse : $g$ décroît strictement sur $[0,1]$, de $g(0)=1$ à $g(1)=0$, avec $g''(1)=0$.', 'Le signe de la dérivée détermine entièrement le sens de variation : ici $g''(x)$ est négatif sur tout l''intervalle ouvert, donc $g$ décroît strictement, et s''annule seulement au bord $x=1$.

Ce que l''examinateur attend : l''étude correcte du signe de $g''(x)$, puis un tableau complet indiquant les valeurs $g(0)=1$ et $g(1)=0$ avec la flèche de décroissance.', '[{"criterion":"Étude du signe de g''(x)","points":0.25},{"criterion":"Tableau complet avec valeurs aux bornes","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 2d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $t$ la fonction définie sur $[0;1]$ par $t(x) = g(x^2)$. Montrer que $t$ est solution de l''équation différentielle $y''''-2=0$ sur $[0;1]$.', 'D''après l''expression de $g$ : $g(x)=(1-\sqrt{x})^2$, donc :
$$t(x) = g(x^2) = (1-\sqrt{x^2})^2 = (1-x)^2 \quad (\text{car } x \ge 0 \implies \sqrt{x^2}=x)$$
$$t(x) = 1-2x+x^2$$

Calculons les dérivées successives :
$$t''(x) = -2+2x, \qquad t''''(x) = 2$$

On vérifie alors :
$$t''''(x)-2 = 2-2 = 0$$

Réponse : $t$ vérifie bien $y''''-2=0$ sur $[0,1]$.', 'Le changement de variable $t(x)=g(x^2)$ fait disparaître la racine carrée (puisque $\sqrt{x^2}=x$ pour $x\ge0$), ce qui transforme $t$ en un simple polynôme du second degré dont la dérivée seconde est constante.

Ce que l''examinateur attend : le calcul de $t(x)=(1-x)^2$, puis des deux dérivées successives jusqu''à $t''''=2$, et la vérification finale.', '[{"criterion":"Calcul de t(x)=(1-x)² puis t''''=2 et vérification","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 2e', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Représenter soigneusement la courbe $(\mathcal{C})$ de $f$ (on prendra $3$ cm pour unité).', 'Éléments à placer, à l''échelle de $3$ cm par unité :
- points clés : $(0,1)$, $(1,0)$ et $(-1,0)$ ;
- une demi-tangente verticale en $(0,1)$, formant une pointe vers le haut (question A.2.b) ;
- des tangentes horizontales en $(1,0)$ et $(-1,0)$ (car $g''(1)=0$) ;
- tracer la partie sur $[0,1]$ (courbe décroissante, concave), puis compléter par symétrie par rapport à $(O,\vec{j})$ (question A.1.b) pour obtenir la partie sur $[-1,0]$.

Réponse : courbe symétrique par rapport à $(Oy)$, décroissante de $(0,1)$ à $(1,0)$ sur $[0,1]$, avec un point anguleux en $(0,1)$.', 'Le tracé combine toutes les informations obtenues précédemment : parité (question A.1), point anguleux en $0$ (question A.2.b), et sens de variation (question A.2.d) — sur $[0,1]$ on utilise directement le tableau de variation de $g$, et le reste s''obtient par symétrie.

Ce que l''examinateur attend : le respect de l''échelle indiquée ($3$ cm) et une allure globale cohérente avec la symétrie et le point anguleux en $(0,1)$.', '[{"criterion":"Respect de l''échelle (3 cm) et allure globale avec symétrie et point anguleux en (0,1)","points":0.5}]'::jsonb, '2016', 'Problème - Partie A - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer l''aire du domaine limité par l''axe des abscisses et la courbe $(\mathcal{C})$.', 'Par symétrie de la fonction paire $f$, l''aire totale est le double de l''aire sur $[0,1]$ :
$$\mathcal{A} = 2\int_0^1 f(x)\,dx \times \text{(unité d''aire)}$$

L''unité d''aire (échelle $3$ cm) vaut $3\text{ cm} \times 3\text{ cm} = 9\text{ cm}^2$.

Calcul de l''intégrale :
$$I = \int_0^1 (1-2\sqrt{x}+x)\,dx = \left[x - \frac{4}{3}x^{3/2} + \frac{x^2}{2}\right]_0^1 = 1-\frac{4}{3}+\frac{1}{2} = \frac{6-8+3}{6} = \frac{1}{6}$$

$$\mathcal{A} = 2 \times \frac{1}{6} \times 9\text{ cm}^2 = 3\text{ cm}^2$$

Réponse : l''aire du domaine est $3\text{ cm}^2$ (soit $\frac{1}{3}$ unité d''aire).', 'On intègre $f$ sur la moitié du domaine (par symétrie) puis on double le résultat, avant de convertir en unités d''aire réelles selon l''échelle du graphique.

Piège à éviter : oublier de multiplier par l''unité d''aire ($3\times3=9\text{ cm}^2$) — sans cette conversion, le résultat resterait en unités graphiques abstraites et non en cm².

Ce que l''examinateur attend : le calcul correct de la primitive et de l''intégrale ($\frac{1}{6}$), puis l''aire finale exprimée en cm² ($3\text{ cm}^2$).', '[{"criterion":"Calcul de la primitive et de l''intégrale (1/6)","points":0.25},{"criterion":"Aire finale en cm² (3 cm²)","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $h(x) = -f(x)$. Déduire de $(\mathcal{C})$ la courbe $(\mathcal{C}'')$ de $h$.', 'La courbe $(\mathcal{C}'')$ de $h=-f$ s''obtient à partir de $(\mathcal{C})$ par la symétrie orthogonale par rapport à l''axe des abscisses $(O,\vec{i})$.

Réponse : $(\mathcal{C}'')$ est le symétrique de $(\mathcal{C})$ par rapport à $(Ox)$.', 'De façon générale, la courbe de $-f$ s''obtient toujours à partir de celle de $f$ par symétrie par rapport à l''axe des abscisses, puisque chaque point $(x,f(x))$ devient $(x,-f(x))$, c''est-à-dire son symétrique par rapport à $(Ox)$.

Ce que l''examinateur attend : l''identification de la symétrie par rapport à $(Ox)$, et son tracé correct sur le même repère que $(\mathcal{C})$.', '[{"criterion":"Identification de la symétrie par rapport à (Ox)","points":0.25},{"criterion":"Tracé correct sur le même repère","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère la suite $(u_n)$ définie par $u_0 = \dfrac{1}{2}$ et $u_{n+1} = f(u_n)$. Vérifier que la suite $(u_n)$ est bien définie.', 'Montrons par récurrence que pour tout $n \in \mathbb{N}$, $u_n \in [0,1]$.

Initialisation : $u_0 = \frac{1}{2} \in [0,1]$. Vrai.

Hérédité : supposons $u_n \in [0,1]$. Comme pour tout $x \in [0,1]$, $f(x)=g(x) \in [0,1]$ (d''après le tableau de variation de $g$, question A.2.d, qui montre que $g$ prend ses valeurs entre $0$ et $1$), on a $f(u_n) \in [0,1]$, c''est-à-dire $u_{n+1} \in [0,1]$.

Conclusion : par récurrence, pour tout $n$, $u_n$ existe et appartient à $[0,1]$ — la suite est donc bien définie.

Réponse : la suite $(u_n)$ est bien définie, avec $u_n \in [0,1]$ pour tout $n$.', 'Pour qu''une suite définie par $u_{n+1}=f(u_n)$ soit bien définie pour tout $n$, il faut que $f$ puisse toujours être appliquée à nouveau, c''est-à-dire que l''image de chaque terme reste dans l''ensemble de définition — c''est exactement ce que montre la récurrence en utilisant la stabilité de $[0,1]$ par $f$.

Ce que l''examinateur attend : un raisonnement par récurrence complet (initialisation et hérédité), s''appuyant sur la stabilité de $[0,1]$ par $f$.', '[{"criterion":"Raisonnement par récurrence ou preuve de la stabilité de [0,1] par f","points":0.5}]'::jsonb, '2016', 'Problème - Partie A - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que $(u_n)$ n''est ni croissante ni décroissante.', 'Calculons les premiers termes :
$u_0 = 0{,}5$

$u_1 = f(0{,}5) = (1-\sqrt{0{,}5})^2 \approx (1-0{,}7071)^2 \approx 0{,}0858$

$u_2 = f(u_1) \approx (1-\sqrt{0{,}0858})^2 \approx (1-0{,}2929)^2 \approx 0{,}5$

Comparons :
$u_1-u_0 \approx 0{,}0858-0{,}5 = -0{,}4142 < 0 \implies u_1<u_0$ (la suite décroît de $u_0$ à $u_1$)

$u_2-u_1 \approx 0{,}5-0{,}0858 = +0{,}4142 > 0 \implies u_2>u_1$ (la suite croît de $u_1$ à $u_2$)

Comme $u_0>u_1$ et $u_1<u_2$, la suite change de sens de variation.

Réponse : la suite $(u_n)$ n''est ni croissante ni décroissante.', 'Un contre-exemple portant sur les trois premiers termes suffit à réfuter la monotonie : il suffit de montrer que la suite décroît d''abord puis croît (ou l''inverse) pour prouver qu''elle n''est ni globalement croissante ni globalement décroissante.

Ce que l''examinateur attend : le calcul de $u_1$ et $u_2$, puis la comparaison des différences successives montrant l''absence de monotonie.', '[{"criterion":"Calcul de u1 et u2","points":0.25},{"criterion":"Comparaison des différences montrant l''absence de monotonie","points":0.25}]'::jsonb, '2016', 'Problème - Partie A - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $(E)$ l''ensemble des points $M(x;y)$ du plan tels que $\sqrt{|x|}+\sqrt{|y|}=1$. Montrer que pour tout point $M(x;y)$ appartenant à $(E)$, on a $-1 \le x \le 1$.', 'Soit $M(x,y) \in (E)$, donc $\sqrt{|x|}+\sqrt{|y|}=1$.

Comme $\sqrt{|y|} \ge 0$ :
$$\sqrt{|x|} = 1-\sqrt{|y|} \le 1$$

Comme $\sqrt{|x|} \ge 0$ également, en élevant au carré (fonction croissante sur $\mathbb{R}^+$) :
$$|x| \le 1 \iff -1 \le x \le 1$$

Réponse : pour tout $M(x,y)\in(E)$, $-1 \le x \le 1$.', 'On isole $\sqrt{|x|}$ dans l''équation de $(E)$, puis on utilise le fait que $\sqrt{|y|}\ge0$ pour majorer $\sqrt{|x|}$ par $1$ ; élever au carré (opération licite ici car les deux membres sont positifs) donne directement l''encadrement de $x$.

Ce que l''examinateur attend : l''isolement de $\sqrt{|x|}$ et l''encadrement correctement justifié.', '[{"criterion":"Isolement de √|x| et encadrement","points":0.5}]'::jsonb, '2016', 'Problème - Partie B - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que $(E)$ est la réunion des courbes $(\mathcal{C})$ et $(\mathcal{C}'')$.', '$M(x,y) \in (E) \iff \sqrt{|y|} = 1-\sqrt{|x|}$.

Pour $x \in [-1,1]$ (question B.1), $1-\sqrt{|x|} \ge 0$, donc on peut élever au carré :
$$|y| = (1-\sqrt{|x|})^2 = f(x)$$

Ce qui équivaut à :
$$y=f(x) \quad \text{ou} \quad y=-f(x)=h(x)$$

$y=f(x)$ est l''équation de $(\mathcal{C})$ ; $y=h(x)$ est l''équation de $(\mathcal{C}'')$ (question A.4).

Réponse : $(E) = (\mathcal{C}) \cup (\mathcal{C}'')$.', 'On réécrit l''équation de $(E)$ pour faire apparaître $f(x)$, puis on utilise le fait que $|y|=f(x)$ signifie exactement « $y=f(x)$ ou $y=-f(x)$ » — ce qui correspond précisément aux deux courbes $(\mathcal{C})$ et $(\mathcal{C}'')$ déjà étudiées.

Ce que l''examinateur attend : la démonstration par équivalences algébriques successives, aboutissant clairement à $(E)=(\mathcal{C})\cup(\mathcal{C}'')$.', '[{"criterion":"Démonstration par équivalence algébrique","points":0.5}]'::jsonb, '2016', 'Problème - Partie B - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $(E)$ l''ensemble des points $M(x,y)$ du plan tels que $\sqrt{|x|}+\sqrt{|y|}=1$ (on admet que $(E)$ est une courbe fermée passant par les points $I(1,0)$, $J(0,1)$, $K(-1,0)$ et $L(0,-1)$). Déterminer l''ensemble des couples $(A,B)$ de points de $(E)$ tels que $d(A,B)=2$.', 'La courbe $(E)$ est un « carré curviligne » inscrit dans le carré de sommets $I(1,0)$, $J(0,1)$, $K(-1,0)$, $L(0,-1)$ : tout point de $(E)$ vérifie $-1\le x\le 1$ et $-1\le y\le 1$, donc la distance maximale entre deux points de $(E)$ est $2$.

Les seuls couples de points de $(E)$ séparés d''une distance $2$ sont les sommets diamétralement opposés :
- $I(1,0)$ et $K(-1,0)$ (distance $=2$) ;
- $J(0,1)$ et $L(0,-1)$ (distance $=2$).

Réponse : les couples $(A,B)$ sont $(I,K)$, $(K,I)$, $(J,L)$ et $(L,J)$.', 'Comme $(E)$ est bornée avec $-1\le x\le 1$ et $-1\le y\le 1$, on cherche parmi les points remarquables ceux qui réalisent l''écart maximal de $2$ : ce sont exactement les sommets opposés du carré englobant $IJKL$.

Ce que l''examinateur attend : l''identification des paires de points diamétralement opposés $(I,K)$ et $(J,L)$.', '[{"criterion":"Identification des paires de points opposés","points":0.25}]'::jsonb, '2016', 'Problème - Partie B - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $S$ une isométrie du plan laissant $(E)$ globalement invariante. Montrer que $S(O)=O$.', 'Une isométrie conserve les distances. D''après la question précédente, les seuls couples de points de $(E)$ à distance $2$ sont $\{I,K\}$ et $\{J,L\}$ ; comme $S$ conserve $(E)$ globalement et les distances, $S$ envoie $\{I,K\}$ sur $\{I,K\}$ ou sur $\{J,L\}$ (et de même pour $\{J,L\}$).

Or $O$ est le milieu de $[IK]$ et aussi le milieu de $[JL]$. Une isométrie conserve les milieux de segments, donc $S(O)$ est le milieu de $[S(I)S(K)]$, c''est-à-dire le milieu de $[IK]$ ou de $[JL]$ — dans les deux cas, ce milieu est $O$.

Réponse : $S(O)=O$.', 'L''idée clé est qu''une isométrie conserve à la fois les distances et les milieux : puisque $O$ est le point milieu des deux seuls segments de longueur maximale $2$ tracés dans $(E)$, son image par $S$ doit rester le milieu de l''image de ces segments — qui sont eux-mêmes nécessairement envoyés sur $[IK]$ ou $[JL]$.

Ce que l''examinateur attend : le raisonnement basé sur la conservation du milieu des segments de longueur maximale $2$, concluant que $S(O)=O$.', '[{"criterion":"Preuve basée sur la conservation du milieu des segments de longueur maximale","points":0.5}]'::jsonb, '2016', 'Problème - Partie B - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire toutes les natures possibles de l''isométrie $S$.', 'Une isométrie du plan possédant un point fixe ($S(O)=O$) est nécessairement l''une des suivantes :
- un déplacement (isométrie positive) fixant $O$ : une rotation de centre $O$, ou l''application identique du plan ;
- un antidéplacement (isométrie négative) fixant $O$ : une réflexion (symétrie axiale) dont l''axe passe par $O$.

Réponse : $S$ est soit l''identité, soit une rotation de centre $O$, soit une réflexion d''axe passant par $O$.', 'C''est un résultat de classification des isométries du plan : toute isométrie ayant au moins un point fixe est soit un déplacement à point fixe (rotation ou identité), soit un antidéplacement à point fixe (réflexion d''axe passant par ce point).

Ce que l''examinateur attend : l''énumération complète des deux familles possibles (rotations/identité d''une part, réflexions d''autre part).', '[{"criterion":"Énumération des deux familles (rotations/identité et réflexions)","points":0.5}]'::jsonb, '2016', 'Problème - Partie B - 3c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $r$ un déplacement (isométrie positive) laissant $(E)$ globalement invariante. Vérifier que $r$ est soit une rotation de centre $O$ et d''angle non nul, soit l''application identique du plan.', 'D''après la question précédente, $r$ est un déplacement fixant le point $O$ (puisque $r(O)=O$). Un déplacement du plan possédant un point fixe est nécessairement :
- l''identité du plan (rotation d''angle nul), ou
- une rotation de centre $O$ et d''angle $\theta \ne 0 \pmod{2\pi}$.

Réponse : $r$ est soit l''identité, soit une rotation de centre $O$ d''angle non nul.', 'Un déplacement du plan est soit une translation, soit une rotation. Une translation non nulle n''a aucun point fixe ; comme $r(O)=O$, $r$ ne peut donc pas être une translation non triviale. Il ne reste que l''identité (rotation d''angle $0$) ou une rotation de centre $O$ d''angle non nul.

Ce que l''examinateur attend : la classification exacte des déplacements possédant un point fixe.', '[{"criterion":"Classification exacte des déplacements à point fixe","points":0.5}]'::jsonb, '2016', 'Problème - Partie B - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire, par leurs éléments caractéristiques, tous les déplacements laissant $(E)$ globalement invariante.', 'Un déplacement laissant $(E)$ invariante doit envoyer chacun des quatre sommets $I,J,K,L$ sur un autre sommet de $(E)$, en respectant leur disposition (un carré de sommets consécutifs $I,J,K,L$ tournant autour de $O$). Les seuls angles de rotation possibles (multiples de $\frac{\pi}{2}$) qui envoient $I(1,0)$ sur l''un des quatre sommets sont :
- l''identité du plan $Id$ (angle $0$) ;
- la rotation de centre $O$ et d''angle $\frac{\pi}{2}$ ;
- la rotation de centre $O$ et d''angle $\pi$ (la symétrie centrale $S_O$) ;
- la rotation de centre $O$ et d''angle $-\frac{\pi}{2}$.

Réponse : les quatre déplacements sont $Id$, $r\left(O,\frac{\pi}{2}\right)$, $S_O$ et $r\left(O,-\frac{\pi}{2}\right)$.', 'Comme $(E)$ passe exactement par les quatre sommets $I,J,K,L$ régulièrement espacés d''un quart de tour autour de $O$, seules les rotations d''angle multiple de $\frac{\pi}{2}$ peuvent envoyer $(E)$ sur elle-même (une rotation d''un autre angle enverrait $I$ sur un point qui n''appartient pas à $(E)$).

Ce que l''examinateur attend : l''identification de chacun des quatre déplacements ($0{,}25$ pt chacun).', '[{"criterion":"Identification de chacun des 4 déplacements (0,25 pt chacun)","points":1}]'::jsonb, '2016', 'Problème - Partie B - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $S_\Delta$ une réflexion d''axe $\Delta$ laissant $(E)$ globalement invariante. Vérifier que $O \in \Delta$.', '$S_\Delta$ est une isométrie qui laisse $(E)$ globalement invariante, donc d''après la question B.3.b, $S_\Delta(O)=O$.

Or l''ensemble des points fixes d''une réflexion $S_\Delta$ est exactement son axe $\Delta$. Comme $S_\Delta(O)=O$, le point $O$ est un point fixe de $S_\Delta$, donc $O$ appartient à $\Delta$.

Réponse : $O \in \Delta$.', 'La propriété clé utilisée ici est que les points fixes d''une réflexion sont exactement les points de son axe (et uniquement ceux-là) : dès qu''on sait qu''un point est fixé par la réflexion, il appartient nécessairement à l''axe.

Ce que l''examinateur attend : l''utilisation explicite de la propriété des points fixes d''une réflexion.', '[{"criterion":"Propriété des points fixes d''une réflexion","points":0.25}]'::jsonb, '2016', 'Problème - Partie B - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire, par leurs éléments caractéristiques, toutes les réflexions qui laissent $(E)$ globalement invariante.', 'L''axe $\Delta$ doit passer par $O$ (question précédente) et la réflexion doit conserver l''ensemble des sommets $\{I,J,K,L\}$. Il y a exactement quatre axes possibles :
- l''axe des abscisses $(O,\vec{i})$, droite $y=0$ ;
- l''axe des ordonnées $(O,\vec{j})$, droite $x=0$ ;
- la première bissectrice, droite $y=x$ ;
- la seconde bissectrice, droite $y=-x$.

Réponse : ce sont les quatre réflexions d''axes $y=0$, $x=0$, $y=x$ et $y=-x$.', 'Les axes de symétrie de la figure $(E)$ (qui possède les symétries d''un carré) sont ses deux diagonales et ses deux médiatrices : ici, les diagonales du carré $IJKL$ sont les bissectrices $y=x$ et $y=-x$, et ses médiatrices sont les axes $(Ox)$ et $(Oy)$.

Ce que l''examinateur attend : l''identification complète des quatre axes ($0{,}25$ pt par réflexion).', '[{"criterion":"Identification complète des 4 axes (0,25 pt par réflexion)","points":1}]'::jsonb, '2016', 'Problème - Partie B - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Écrire en extension l''ensemble $(\mathcal{J})$ des isométries laissant $(E)$ globalement invariante.', 'L''ensemble $(\mathcal{J})$ réunit les quatre déplacements et les quatre réflexions trouvés précédemment :
$$(\mathcal{J}) = \left\{ Id,\ r\left(O,\tfrac{\pi}{2}\right),\ S_O,\ r\left(O,-\tfrac{\pi}{2}\right),\ S_{(Ox)},\ S_{(Oy)},\ S_{(y=x)},\ S_{(y=-x)} \right\}$$

Réponse : $(\mathcal{J})$ contient ces $8$ isométries (c''est le groupe diédral $D_4$).', 'Écrire un ensemble « en extension » signifie lister explicitement tous ses éléments entre accolades, plutôt que de le décrire par une propriété. Ici, $(\mathcal{J})$ regroupe simplement tous les résultats des questions B.4.b et B.5.b.

Ce que l''examinateur attend : la liste complète et exacte des $8$ éléments du groupe d''isométries.', '[{"criterion":"Liste complète des 8 éléments du groupe d''isométries","points":0.25}]'::jsonb, '2016', 'Problème - Partie B - 6', 'C', 'draft');
COMMIT;