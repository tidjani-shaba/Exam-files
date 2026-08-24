-- 2021 Baccalaureat C-E Mathematiques -- 21 questions
-- Excluded: Exercice 1-III Serie-E-only content (n/a, III is shared); Exercice 3 Q3a/3b (E exclusivement, ODE);
-- Partie B Tache 3 (source PDF has a garbled price digit "BBOOF" -- irreducibly ambiguous, no integer solution exists as stated, skipped rather than guessed);
-- Partie B Presentation 0.5pt (handwriting/neatness bonus, not a real question).
-- Real official corrige with point values, condensed to house style.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'On considère la droite $(D)$ d''équation réduite $y=\dfrac{65}{16}x-\dfrac5{16}$ dans un repère orthonormé du plan. Démontrer que $(D)$ passe par au moins un point $M$ dont les coordonnées sont des nombres entiers relatifs.', 'L''équation $y=\frac{65x-5}{16}$ équivaut à $65x-16y=5$.

Pour $x=5$ : $65(5)-5=320$, et $320/16=20\in\mathbb{Z}$.

Réponse : le point $M_0(5,20)$ a des coordonnées entières et appartient à $(D)$.', 'On réécrit l''équation fractionnaire de la droite sous forme d''une équation diophantienne linéaire $65x-16y=5$, puis on cherche une valeur de $x$ rendant $y$ entier (par essais, ou via l''algorithme d''Euclide : $65=16\times4+1$, donc $65(1)-16(4)=1$, et en multipliant par $5$, $65(5)-16(20)=5$).

Piège à éviter : se bloquer en essayant de résoudre directement avec des fractions au lieu d''éliminer le dénominateur.

Ce que l''examinateur attend : l''écriture sous forme diophantienne, et l''exhibition d''un couple d''entiers valide avec vérification.', '[{"criterion":"Exhibition et vérification correcte d''un point à coordonnées entières","points":0.25}]'::jsonb, '2021', 'Exercice 1 - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Déterminer l''ensemble $E$ des points de $(D)$ à coordonnées entières.', 'On cherche $(x,y)\in\mathbb{Z}^2$ tels que $65x-16y=5$. Comme $65(5)-16(20)=5$, en soustrayant :
$$65(x-5)-16(y-20)=0 \iff 65(x-5)=16(y-20)$$

$\operatorname{pgcd}(65,16)=1$, donc d''après le théorème de Gauss, $16$ divise $x-5$ : $x-5=16k \implies x=5+16k$ ($k\in\mathbb{Z}$).

En substituant : $65(16k)=16(y-20) \implies y=20+65k$.

Réponse : $E = \{M(5+16k;\ 20+65k)\ :\ k\in\mathbb{Z}\}$.', 'À partir de la solution particulière trouvée précédemment, on soustrait pour obtenir une équation homogène, puis on applique le théorème de Gauss (licite car $\operatorname{pgcd}(65,16)=1$) pour paramétrer toutes les solutions.

Piège à éviter : erreur de signe lors de la soustraction, ou oubli de vérifier la réciproque.

Ce que l''examinateur attend : l''utilisation du théorème de Gauss, l''expression de $x$ et $y$ en fonction d''un paramètre $k\in\mathbb{Z}$, et l''écriture correcte de l''ensemble $E$.', '[{"criterion":"Utilisation du théorème de Gauss","points":0.25},{"criterion":"Expression de x et y en fonction de k∈Z","points":0.25},{"criterion":"Écriture correcte de l''ensemble E","points":0.25}]'::jsonb, '2021', 'Exercice 1 - I - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Déterminer les points de $(D)$ dont les ordonnées sont des entiers compris entre $-126$ et $134$.', 'Les ordonnées des points de $E$ sont $y=20+65k$, $k\in\mathbb{Z}$. On pose :
$$-126 \le 20+65k \le 134 \iff -146 \le 65k \le 114 \iff -2{,}246 \le k \le 1{,}753$$

Comme $k\in\mathbb{Z}$ : $k\in\{-2,-1,0,1\}$.

- $k=-2$ : $M_1(-27,-110)$
- $k=-1$ : $M_2(-11,-45)$
- $k=0$ : $M_3(5,20)$
- $k=1$ : $M_4(21,85)$

Réponse : les points recherchés sont $M_1(-27,-110)$, $M_2(-11,-45)$, $M_3(5,20)$ et $M_4(21,85)$.', 'On encadre la formule de $y$ obtenue à la question précédente entre les deux bornes données, puis on extrait la liste des entiers $k$ satisfaisant l''inégalité, avant de calculer les coordonnées complètes de chaque point.

Piège à éviter : prendre les bornes de façon stricte au lieu de larges, ou oublier de calculer $x$ pour donner le couple complet.

Ce que l''examinateur attend : l''encadrement correct de $k$, et la liste complète des points avec leurs coordonnées.', '[{"criterion":"Encadrement de k et détermination des valeurs entières","points":0.25},{"criterion":"Liste complète des points avec leurs coordonnées","points":0.25}]'::jsonb, '2021', 'Exercice 1 - I - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit un point $A(-2;1;1)$ et un vecteur $\vec n(1;-2;3)$ de l''espace $\mathcal{E}$ muni d''un repère orthonormé $(O,\vec i,\vec j,\vec k)$. Déterminer une équation du plan $(P)$ contenant le point $A$ et de vecteur normal $\vec n$.', '$M(x,y,z)\in(P) \iff \overrightarrow{AM}\cdot\vec n=0$.

$\overrightarrow{AM}=(x+2,\ y-1,\ z-1)$ :
$$1(x+2)-2(y-1)+3(z-1)=0 \implies x+2-2y+2+3z-3=0 \implies x-2y+3z+1=0$$

Réponse : $(P) : x-2y+3z+1=0$.', 'Tout plan de vecteur normal $\vec n(a,b,c)$ passant par un point $A$ vérifie $\overrightarrow{AM}\cdot\vec n=0$ pour tout point $M$ du plan ; il suffit de développer ce produit scalaire.

Piège à éviter : erreur de signe lors du développement de $1(x-(-2))$.

Ce que l''examinateur attend : la définition par produit scalaire (ou la formule générale), et l''équation cartésienne exacte.', '[{"criterion":"Définition par produit scalaire ou formule générale","points":0.25},{"criterion":"Équation cartésienne exacte","points":0.25}]'::jsonb, '2021', 'Exercice 1 - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Donner une expression analytique de la réflexion de plan $(P) : x-2y+3z+1=0$.', 'Soit $M(x,y,z)$ et $M''(x'',y'',z'')$ son image par la réflexion $S_{(P)}$. Il existe $k\in\mathbb{R}$ tel que $\overrightarrow{MM''}=k\vec n$ : $x''=x+k$, $y''=y-2k$, $z''=z+3k$.

Le milieu $I\left(x+\frac k2,\ y-k,\ z+\frac{3k}2\right)$ appartient à $(P)$ :
$$\left(x+\frac k2\right)-2(y-k)+3\left(z+\frac{3k}2\right)+1=0$$
$$(x-2y+3z+1)+7k=0 \implies k = -\frac17(x-2y+3z+1)$$

(en effet $\frac12+2+\frac92=7=\|\vec n\|^2$). En substituant $k$ dans $x'',y'',z''$ :

Réponse :
$$\begin{cases} x'' = \frac67x+\frac27y-\frac37z-\frac17 \\ y'' = \frac27x+\frac37y+\frac67z+\frac27 \\ z'' = -\frac37x+\frac67y-\frac27z-\frac37 \end{cases}$$', 'Une réflexion par rapport à un plan est caractérisée par deux conditions : le milieu de $[MM'']$ appartient au plan, et $\overrightarrow{MM''}$ est colinéaire au vecteur normal. En introduisant le paramètre $k$, on résout une équation à une inconnue (dont le coefficient est $\|\vec n\|^2=7$), puis on substitue pour obtenir les coordonnées finales.

Piège à éviter : oublier le facteur $2$ caractéristique d''une réflexion (par opposition à une simple projection orthogonale).

Ce que l''examinateur attend : la mise en place des deux conditions géométriques, et le système final exact.', '[{"criterion":"Mise en place des conditions géométriques (milieu sur le plan + colinéarité)","points":0.5},{"criterion":"Système final exact","points":0.5}]'::jsonb, '2021', 'Exercice 1 - II - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Le plan complexe est rapporté à un repère $(O,\vec u,\vec v)$. On considère la transformation $g$ du plan d''écriture complexe $Z''=\dfrac{1+i}2Z+1$. Déterminer la nature et les éléments caractéristiques de $g$.', 'L''écriture est $Z''=aZ+b$ avec $a=\frac{1+i}2\in\mathbb{C}^*\setminus\{1\}$ : c''est une similitude directe.

Centre $\Omega$ : $z_\Omega=az_\Omega+b \implies z_\Omega(1-a)=1 \implies z_\Omega\left(\frac{1-i}2\right)=1 \implies z_\Omega=\frac2{1-i}=1+i$.

Rapport : $k=|a|=\left|\frac{1+i}2\right|=\frac{\sqrt2}2$.

Angle : $\theta=\arg(a)=\arg\left(\frac{1+i}2\right)=\frac\pi4\ [2\pi]$.

Réponse : $g$ est la similitude directe de centre $\Omega(1+i)$, de rapport $k=\dfrac{\sqrt2}2$ et d''angle $\theta=\dfrac\pi4$.', 'On reconnaît la forme $Z''=aZ+b$ (avec $a$ non réel) comme une similitude directe (homothétie + rotation) ; le centre est le point fixe de la transformation, le rapport est $|a|$, l''angle est $\arg(a)$.

Piège à éviter : ne pas simplifier correctement $\frac2{1-i}$ (multiplier par la quantité conjuguée $\frac{1+i}{1+i}$).

Ce que l''examinateur attend : l''identification de la nature, et le calcul du centre, du rapport et de l''angle.', '[{"criterion":"Identification de la nature (similitude directe)","points":0.25},{"criterion":"Calcul du centre Ω(1+i)","points":0.25},{"criterion":"Calcul du rapport k=√2/2","points":0.25},{"criterion":"Calcul de l''angle θ=π/4","points":0.25}]'::jsonb, '2021', 'Exercice 1 - III - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', '$\Omega$ est le point d''affixe $1+i$. Les points $A_n$ d''affixes $Z_n$ sont définis par $Z_0=0$ et $Z_{n+1}=1+\dfrac{1+i}2Z_n$ pour tout entier naturel $n$. Montrer que pour tout entier naturel $n$, les points $\Omega$, $A_n$ et $A_{n+4}$ sont alignés.', 'Comme $Z_{n+1}=g(Z_n)$, en centrant sur $\Omega$ : $Z_n-z_\Omega=a^n(Z_0-z_\Omega)$, où $a=\frac{1+i}2$.

Donc $Z_{n+4}-z_\Omega = a^{n+4}(Z_0-z_\Omega) = a^4(Z_n-z_\Omega)$.

Calculons $a^4$ : $a=\frac{\sqrt2}2e^{i\pi/4}$, donc $a^4=\left(\frac{\sqrt2}2\right)^4e^{i\pi}=\frac14\times(-1)=-\frac14$.

Donc $Z_{n+4}-z_\Omega=-\frac14(Z_n-z_\Omega)$, soit $\overrightarrow{\Omega A_{n+4}}=-\frac14\overrightarrow{\Omega A_n}$.

Ces vecteurs étant colinéaires, $\Omega$, $A_n$, $A_{n+4}$ sont alignés.

Réponse : $\overrightarrow{\Omega A_{n+4}}=-\dfrac14\overrightarrow{\Omega A_n}$, donc les trois points sont alignés.', 'L''alignement de trois points avec $\Omega$ se traduit par le fait que le rapport $\frac{Z_{n+4}-z_\Omega}{Z_n-z_\Omega}$ est réel ; en passant par la forme exponentielle de $a$ (rapport et angle de la similitude $g$), ce rapport se calcule simplement comme $a^4$.

Piège à éviter : essayer de développer manuellement $Z_{n+4}$ à partir de $Z_0$ au lieu de passer par la transformation centrée en $\Omega$.

Ce que l''examinateur attend : l''expression de $Z_n-z_\Omega$ en fonction de $a^n$, et le calcul de $a^4=-\frac14\in\mathbb{R}$ avec la conclusion sur l''alignement.', '[{"criterion":"Expression de Zn-zΩ en fonction de aⁿ","points":0.25},{"criterion":"Calcul de a⁴=-1/4∈R et conclusion sur l''alignement","points":0.25}]'::jsonb, '2021', 'Exercice 1 - III - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Pour tout entier naturel $n$, montrer que le triangle $\Omega A_nA_{n+1}$ est rectangle et isocèle.', 'Calculons le rapport $\dfrac{z_\Omega-Z_{n+1}}{Z_n-Z_{n+1}}$.

Comme $Z_{n+1}-z_\Omega=a(Z_n-z_\Omega)$, on a $Z_{n+1}=aZ_n+(1-a)z_\Omega$, donc :
$$Z_{n+1}-Z_n = (a-1)Z_n+(1-a)z_\Omega = (1-a)(z_\Omega-Z_n)$$

Ainsi $Z_n-Z_{n+1}=(a-1)(z_\Omega-Z_n)$, et :
$$\frac{z_\Omega-Z_{n+1}}{Z_n-Z_{n+1}} = \frac{a(Z_n-z_\Omega)\times(-1)}{(a-1)(z_\Omega-Z_n)} \ \Longrightarrow\ \frac{Z_{n+1}-z_\Omega}{Z_{n+1}-Z_n} = \frac{a}{a-1} = \frac{\frac{1+i}2}{\frac{1+i}2-1} = \frac{1+i}{i-1} = \frac{(1+i)^2}{-2} = \frac{2i}{-2} = -i$$

Comme $|-i|=1$ : $A_{n+1}\Omega=A_{n+1}A_n$, le triangle est isocèle en $A_{n+1}$.

Comme $\arg(-i)=-\frac\pi2\ [2\pi]$ : $(\overrightarrow{A_{n+1}A_n},\overrightarrow{A_{n+1}\Omega})=-\frac\pi2$, le triangle est rectangle en $A_{n+1}$.

Réponse : le rapport $\dfrac{Z_{n+1}-z_\Omega}{Z_{n+1}-Z_n}=-i$, donc le triangle $\Omega A_nA_{n+1}$ est rectangle et isocèle en $A_{n+1}$.', 'Pour montrer qu''un triangle $ABC$ est rectangle et isocèle en $A$, il suffit de calculer le rapport complexe $\frac{z_C-z_A}{z_B-z_A}$ : un module $1$ donne l''isocélie, un argument $\pm\frac\pi2$ donne l''angle droit.

Piège à éviter : calculer le rapport au mauvais sommet — le sommet du triangle rectangle isocèle ici est $A_{n+1}$, pas $\Omega$.

Ce que l''examinateur attend : l''établissement du rapport complexe approprié, et la déduction du caractère rectangle et isocèle.', '[{"criterion":"Établissement du rapport complexe approprié","points":0.5},{"criterion":"Déduction du caractère rectangle et isocèle","points":0.5}]'::jsonb, '2021', 'Exercice 1 - III - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une urne contient 6 boules indiscernables au toucher dont deux boules sont marquées $0$, trois boules sont marquées $\sqrt3$ et une boule marquée $-\sqrt3$. On tire successivement et sans remise deux boules de cette urne. On note $\lambda$ la variable aléatoire qui à chaque tirage associe la somme des nombres marqués sur les boules tirées. Déterminer la loi de probabilité de $\lambda$.', 'L''urne contient $\{0,0,\sqrt3,\sqrt3,\sqrt3,-\sqrt3\}$. Nombre total de tirages ordonnés : $A_6^2=6\times5=30$.

$\lambda=0$ : $(0,0)$ donne $A_2^2=2$ façons ; $(\sqrt3,-\sqrt3)$ ou $(-\sqrt3,\sqrt3)$ donnent $3\times1+1\times3=6$ façons. Total $8$ cas : $P(\lambda=0)=\frac8{30}=\frac4{15}$.

$\lambda=\sqrt3$ : $(0,\sqrt3)$ ou $(\sqrt3,0)$ : $2\times3+3\times2=12$ façons : $P(\lambda=\sqrt3)=\frac{12}{30}=\frac6{15}$.

$\lambda=-\sqrt3$ : $(0,-\sqrt3)$ ou $(-\sqrt3,0)$ : $2\times1+1\times2=4$ façons : $P(\lambda=-\sqrt3)=\frac4{30}=\frac2{15}$.

$\lambda=2\sqrt3$ : $(\sqrt3,\sqrt3)$ : $A_3^2=3\times2=6$ façons : $P(\lambda=2\sqrt3)=\frac6{30}=\frac3{15}$.

Vérification : $\frac4{15}+\frac6{15}+\frac2{15}+\frac3{15}=\frac{15}{15}=1$.

xi | -√3 | 0 | √3 | 2√3
P(λ=xi) | 2/15 | 4/15 | 6/15 | 3/15

Réponse : la loi de probabilité est donnée par le tableau ci-dessus.', 'Le tirage étant successif et sans remise, l''ordre compte : on utilise les arrangements $A_n^p$ pour dénombrer chaque valeur de $\lambda$, en listant systématiquement tous les couples ordonnés menant à cette valeur.

Piège à éviter : oublier l''ordre dans les tirages successifs, par exemple compter $(0,\sqrt3)$ mais oublier $(\sqrt3,0)$.

Ce que l''examinateur attend : un univers de taille $30$, la liste complète des valeurs de $\lambda$, et les probabilités exactes dans un tableau.', '[{"criterion":"Univers de taille 30 (ou calcul par arbre)","points":0.25},{"criterion":"Liste complète des valeurs de λ","points":0.25},{"criterion":"Probabilités exactes répertoriées dans un tableau","points":0.25}]'::jsonb, '2021', 'Exercice 2 - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Calculer l''espérance mathématique et l''écart-type de $\lambda$.', '$$E(\lambda) = -\sqrt3\times\frac2{15}+0\times\frac4{15}+\sqrt3\times\frac6{15}+2\sqrt3\times\frac3{15} = \frac{-2\sqrt3+6\sqrt3+6\sqrt3}{15} = \frac{10\sqrt3}{15} = \frac{2\sqrt3}3$$

$$E(\lambda^2) = 3\times\frac2{15}+0\times\frac4{15}+3\times\frac6{15}+12\times\frac3{15} = \frac{6+0+18+36}{15} = 4$$

$$V(\lambda) = E(\lambda^2)-[E(\lambda)]^2 = 4-\left(\frac{2\sqrt3}3\right)^2 = 4-\frac{12}9 = 4-\frac43 = \frac83$$

$$\sigma(\lambda) = \sqrt{\frac83} = \frac{2\sqrt2}{\sqrt3} = \frac{2\sqrt6}3$$

Réponse : $E(\lambda)=\dfrac{2\sqrt3}3$ et $\sigma(\lambda)=\dfrac{2\sqrt6}3$.', 'Application directe des formules de l''espérance et du théorème de König-Huygens ($V(\lambda)=E(\lambda^2)-[E(\lambda)]^2$) pour simplifier le calcul de la variance.

Piège à éviter : confondre l''écart-type $\sigma(\lambda)$ avec la variance $V(\lambda)$ (oublier la racine carrée).

Ce que l''examinateur attend : le calcul exact de l''espérance et de l''écart-type.', '[{"criterion":"Calcul exact de l''espérance","points":0.375},{"criterion":"Calcul exact de l''écart-type","points":0.375}]'::jsonb, '2021', 'Exercice 2 - I - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Le plan est muni d''un repère orthonormé direct $(O,\vec i,\vec j)$. $(\Sigma)$ est l''ensemble des points $M(X,Y)$ tels que $4X^2-Y^2=-4$. Déterminer la nature et les éléments caractéristiques de $(\Sigma)$.', 'En divisant par $-4$ : $\dfrac{Y^2}4-\dfrac{X^2}1=1$, soit $\dfrac{Y^2}{2^2}-\dfrac{X^2}{1^2}=1$ : une hyperbole d''axe focal $(OY)$.

Centre : $O(0,0)$. Sommets : $A(0,2)$ et $A''(0,-2)$. Demi-axe focal $b=2$, demi-axe non focal $a=1$.

$c=\sqrt{a^2+b^2}=\sqrt{1+4}=\sqrt5$. Foyers : $F(0,\sqrt5)$ et $F''(0,-\sqrt5)$.

Excentricité : $e=\dfrac cb=\dfrac{\sqrt5}2$. Asymptotes : $Y=2X$ et $Y=-2X$.

Réponse : $(\Sigma)$ est une hyperbole de centre $O$, de sommets $(0,\pm2)$, de foyers $(0,\pm\sqrt5)$, d''excentricité $e=\dfrac{\sqrt5}2$, d''asymptotes $Y=\pm2X$.', 'On met l''équation sous forme canonique $\frac{Y^2}{b^2}-\frac{X^2}{a^2}=1$ pour reconnaître une hyperbole à axe focal vertical, puis on lit directement ses éléments caractéristiques.

Piège à éviter : inverser $a$ et $b$ dans la formule de l''excentricité — pour un axe focal vertical, $e=c/b$, pas $c/a$.

Ce que l''examinateur attend : la nature (hyperbole), les sommets et foyers, et les asymptotes avec l''excentricité.', '[{"criterion":"Nature (hyperbole)","points":0.25},{"criterion":"Sommets et foyers","points":0.5},{"criterion":"Asymptotes et excentricité","points":0.25}]'::jsonb, '2021', 'Exercice 2 - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', '$r$ est la rotation de centre $O$ et d''angle $-\dfrac\pi6$. Donner l''expression analytique de $r$.', 'L''écriture complexe de $r$ est $z''=e^{-i\pi/6}z$, avec $e^{-i\pi/6}=\cos\left(-\frac\pi6\right)+i\sin\left(-\frac\pi6\right)=\frac{\sqrt3}2-\frac12i$.

$$x''+iy'' = \left(\frac{\sqrt3}2-\frac12i\right)(x+iy) = \left(\frac{\sqrt3}2x+\frac12y\right)+i\left(-\frac12x+\frac{\sqrt3}2y\right)$$

Réponse :
$$\begin{cases} x'' = \frac{\sqrt3}2x+\frac12y \\ y'' = -\frac12x+\frac{\sqrt3}2y \end{cases}$$', 'On applique la matrice de rotation d''angle $-\frac\pi6$, obtenue via la forme complexe $z''=e^{i\theta}z$ développée en parties réelle et imaginaire.

Piège à éviter : erreur de signe due à l''angle négatif $-\frac\pi6$.

Ce que l''examinateur attend : la formule générale de la rotation, et le développement exact du système.', '[{"criterion":"Formule générale de la rotation","points":0.25},{"criterion":"Développement et écriture exacte du système","points":0.5}]'::jsonb, '2021', 'Exercice 2 - II - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Déterminer une équation de l''ensemble $(\Sigma'')$, image de $(\Sigma)$ par $r$, puis donner la nature et les éléments caractéristiques de $(\Sigma'')$.', 'Équation de $(\Sigma'')$ : on exprime l''ancien point $(X,Y)$ en fonction du nouveau $(X'',Y'')$ via la rotation inverse $r^{-1}$ (angle $+\frac\pi6$) :
$$X = \frac{\sqrt3}2X''-\frac12Y'', \qquad Y = \frac12X''+\frac{\sqrt3}2Y''$$

En substituant dans $4X^2-Y^2=-4$ et en développant :
$$11X''^2-10\sqrt3\,X''Y''+Y''^2+16=0$$

Nature et éléments caractéristiques : une rotation est une isométrie, elle conserve la nature géométrique et toutes les longueurs.

- Nature : hyperbole.
- Centre : $r(O)=O(0,0)$.
- Sommets : images de $A(0,2)$ et $A''(0,-2)$ par $r$ (par ex. $r(A)=\left(1,\sqrt3\right)$).
- Foyers : images de $F(0,\sqrt5)$ et $F''(0,-\sqrt5)$ par $r$.
- Excentricité inchangée : $e=\dfrac{\sqrt5}2$.

Réponse : $(\Sigma'') : 11x^2-10\sqrt3\,xy+y^2+16=0$ ; c''est une hyperbole de centre $O$, image de $(\Sigma)$ par la rotation $r$, de mêmes dimensions et excentricité $\dfrac{\sqrt5}2$.', 'L''image d''une courbe d''équation $f(X,Y)=0$ par une transformation $T$ a pour équation $f(T^{-1}(X'',Y''))=0$ : on substitue donc la transformation inverse, pas la transformation directe. Comme une rotation est une isométrie, la nature et toutes les longueurs caractéristiques (sommets, foyers, excentricité) restent inchangées — seules les coordonnées tournent.

Piège à éviter : substituer la transformation directe au lieu de l''inverse pour trouver l''équation image.

Ce que l''examinateur attend : la substitution correcte avec l''inverse, l''équation développée exacte, et la nature/les caractéristiques déduites par conservation via l''isométrie.', '[{"criterion":"Substitution correcte avec l''inverse","points":0.25},{"criterion":"Équation développée exacte","points":0.25},{"criterion":"Nature et caractéristiques par conservation des isométries","points":0.25}]'::jsonb, '2021', 'Exercice 2 - II - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Construire dans le repère $(O,\vec i,\vec j)$, $(\Sigma)$ et $(\Sigma'')$.', 'Tracé de $(\Sigma)$ : placer les sommets $(0,2)$ et $(0,-2)$, tracer les asymptotes $Y=2X$ et $Y=-2X$, puis dessiner les deux branches hyperboliques orientées vers le haut et le bas.

Tracé de $(\Sigma'')$ : faire tourner la figure $(\Sigma)$ d''un angle de $-30°$ (sens horaire) autour de l''origine.

Réponse : représentation graphique des deux hyperboles, $(\Sigma'')$ étant $(\Sigma)$ tournée de $-\frac\pi6$ autour de $O$.', 'Les asymptotes servent de lignes guides indispensables pour tracer correctement toute hyperbole ; $(\Sigma'')$ s''obtient ensuite simplement en appliquant la rotation à la figure déjà tracée, sans recalcul.

Piège à éviter : dessiner des branches d''hyperbole qui traversent leurs propres asymptotes.

Ce que l''examinateur attend : l''exactitude des sommets et asymptotes, et l''allure globale correcte des deux courbes.', '[{"criterion":"Exactitude des asymptotes et sommets","points":0.25},{"criterion":"Calibrage et allure globale des deux hyperboles","points":0.25}]'::jsonb, '2021', 'Exercice 2 - II - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère une fonction numérique $f$ définie sur $\mathbb{R}$ par $f(x)=\dfrac{x+2}{e^x}$ et $(C)$ sa courbe représentative dans un repère orthonormé (unité sur les axes : $2$ cm). Étudier les variations de $f$.', '$f(x)=(x+2)e^{-x}$, dérivable sur $\mathbb{R}$.

$$f''(x) = 1\cdot e^{-x}+(x+2)(-e^{-x}) = e^{-x}(1-x-2) = (-x-1)e^{-x}$$

Comme $e^{-x}>0$, le signe de $f''(x)$ est celui de $(-x-1)$ : $f''(x)=0\iff x=-1$ ; $f''(x)>0$ pour $x<-1$ ; $f''(x)<0$ pour $x>-1$.

Limites : en $-\infty$, $(x+2)\to-\infty$ et $e^{-x}\to+\infty$, donc $f(x)\to-\infty$. En $+\infty$, $\frac{x+2}{e^x}\to0$ (croissances comparées).

$f$ croît strictement sur $]-\infty,-1]$, décroît strictement sur $[-1,+\infty[$. Maximum : $f(-1)=\frac{-1+2}{e^{-1}}=e\approx2{,}718$.

Réponse : $f$ croît strictement sur $]-\infty;-1]$ et décroît strictement sur $[-1;+\infty[$, avec un maximum absolu $e$ atteint en $x=-1$.', 'On calcule la dérivée (règle du produit), on étudie son signe (déterminé uniquement par le facteur $(-x-1)$ puisque $e^{-x}>0$), puis on calcule les limites aux bornes pour compléter le tableau de variation.

Piège à éviter : erreur de signe fréquente lors de la dérivation de $e^{-x}$ (oublier le signe moins).

Ce que l''examinateur attend : le calcul exact de $f''(x)$, les limites aux bornes, et un tableau de variation complet et exact.', '[{"criterion":"Calcul exact de f''(x)","points":0.25},{"criterion":"Limites aux bornes","points":0.25},{"criterion":"Tableau de variations complet et exact","points":0.25}]'::jsonb, '2021', 'Exercice 3 - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer une équation cartésienne de la tangente $(T)$ à $(C)$ au point d''abscisse $-1$.', 'L''équation de la tangente en $x_0$ est $y=f''(x_0)(x-x_0)+f(x_0)$.

$f''(-1)=(-(-1)-1)e^{-(-1)}=0\times e=0$. $f(-1)=e$.

$$y = 0(x-(-1))+e \iff y=e$$

Réponse : $(T) : y=e$.', 'Le point d''abscisse $-1$ étant un extremum local (question précédente), la dérivée y est nulle : la tangente est donc automatiquement horizontale, d''équation $y=f(-1)$.

Piège à éviter : chercher à tout prix une pente non nulle et s''embrouiller dans les calculs.

Ce que l''examinateur attend : l''application de la formule de la tangente et le résultat $y=e$.', '[{"criterion":"Application de la formule de la tangente et résultat y=e","points":0.25}]'::jsonb, '2021', 'Exercice 3 - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Construire la courbe $(C)$ de $f$ et $(T)$ dans le même repère.', 'Éléments à placer : l''asymptote horizontale $y=0$ en $+\infty$ ; la tangente horizontale $(T) : y=e\approx2{,}72$ au sommet $(-1,e)$ ; les points d''intersection avec les axes, $(0,2)$ et $(-2,0)$ ; puis le tracé soigné de $(C)$, croissante puis décroissante de part et d''autre de $x=-1$.

Réponse : graphique respectant l''échelle donnée ($2$ cm par unité), avec asymptote, tangente et points remarquables.', 'Le tracé combine les variations et limites déjà établies avec les points remarquables (intersections avec les axes) et la tangente horizontale au sommet.

Piège à éviter : ne pas respecter l''échelle donnée ($2$ cm par unité), ce qui entraîne une perte de points sur la présentation.

Ce que l''examinateur attend : le respect de l''échelle, la ligne de tangente et l''asymptote, et une allure globale correcte avec les points particuliers.', '[{"criterion":"Respect de l''échelle (2 cm)","points":0.25},{"criterion":"Ligne de tangente et asymptotes","points":0.25},{"criterion":"Allure globale et points particuliers","points":0.5}]'::jsonb, '2021', 'Exercice 3 - 1c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer les constantes réelles $a$, $b$ et $c$ telles que la fonction $F$ définie sur $\mathbb{R}$ par $F(x)=\dfrac{ax+b}{e^x}+cx$ soit une primitive de $f$.', '$F$ est primitive de $f$ ssi $F''(x)=f(x)$ pour tout $x$. Posons $F(x)=(ax+b)e^{-x}+cx$.

$$F''(x) = ae^{-x}+(ax+b)(-e^{-x})+c = (-ax+a-b)e^{-x}+c$$

On veut $F''(x)=f(x)=(x+2)e^{-x}$. Par identification :
$$\begin{cases} -a=1 \implies a=-1 \\ a-b=2 \implies -1-b=2 \implies b=-3 \\ c=0 \end{cases}$$

Réponse : $a=-1$, $b=-3$, $c=0$, soit $F(x)=-(x+3)e^{-x}$.', 'On dérive la forme proposée pour $F$ et on identifie terme à terme (coefficient de $x\cdot e^{-x}$, terme constant en $e^{-x}$, et terme constant hors exponentielle) avec l''expression de $f(x)$.

Piège à éviter : inattention dans les signes lors de la dérivation du produit par $e^{-x}$.

Ce que l''examinateur attend : le calcul de $F''(x)$, la mise en place du système d''identification, et les valeurs exactes de $a,b,c$.', '[{"criterion":"Calcul de la dérivée de F","points":0.25},{"criterion":"Système d''identification","points":0.25},{"criterion":"Valeurs exactes de a, b, c","points":0.25}]'::jsonb, '2021', 'Exercice 3 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer $\displaystyle\int_{-1}^0 f(x)\,dx$.', 'En utilisant la primitive $F(x)=-(x+3)e^{-x}$ :
$$\int_{-1}^0 f(x)\,dx = F(0)-F(-1)$$

$F(0)=-(0+3)e^0=-3$. $F(-1)=-(-1+3)e^{1}=-2e$.

$$\int_{-1}^0 f(x)\,dx = -3-(-2e) = 2e-3$$

Réponse : $\displaystyle\int_{-1}^0 f(x)\,dx = 2e-3 \approx 2{,}437$.', 'Application directe du théorème fondamental du calcul intégral : $\int_a^b f(x)dx=F(b)-F(a)$, avec la primitive déjà trouvée.

Piège à éviter : confondre $F(0)-F(-1)$ avec $F(-1)-F(0)$.

Ce que l''examinateur attend : la pose correcte des bornes avec la primitive, et la valeur exacte $2e-3$.', '[{"criterion":"Pose correcte des bornes et de la primitive","points":0.25},{"criterion":"Valeur exacte 2e-3","points":0.25}]'::jsonb, '2021', 'Exercice 3 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Un villageois nommé ABBA possède un terrain dont les contours sont formés par des droites et par la courbe $(C)$ d''équation $y=\dfrac{e^x-e^{-x}}{e^x+e^{-x}}$, allant de l''origine $(0,0)$ au point de coordonnées $(4,1)$. ABBA envisage de vendre tout son terrain ; dans cette zone, le m² coûte $2000$ F. Le repère utilisé a pour unités $100$ m sur l''axe des abscisses et $10$ m sur l''axe des ordonnées. Combien coûtera ce terrain entier que ABBA souhaite vendre ?', 'L''aire du terrain (dans le repère graphique) est donnée par :
$$\mathcal{A}_{\text{repère}} = \int_0^4 \frac{e^x-e^{-x}}{e^x+e^{-x}}\,dx$$

Cette expression est de la forme $\frac{u''(x)}{u(x)}$ avec $u(x)=e^x+e^{-x}>0$, de primitive $\ln(u(x))$ :
$$\mathcal{A}_{\text{repère}} = \big[\ln(e^x+e^{-x})\big]_0^4 = \ln(e^4+e^{-4})-\ln(2) = \ln\left(\frac{e^4+e^{-4}}2\right)$$

Numériquement : $e^4\approx54{,}598$, $e^{-4}\approx0{,}018$, donc $\frac{e^4+e^{-4}}2\approx27{,}308$, et $\mathcal{A}_{\text{repère}}\approx\ln(27{,}308)\approx3{,}307$ unités d''aire.

Conversion : $1$ unité d''aire $=100\text{ m}\times10\text{ m}=1000\text{ m}^2$. Aire réelle $\approx3{,}307\times1000\approx3307\text{ m}^2$.

Prix total : $3307\times2000\approx6\,614\,000$ F CFA (valeur approchée).

Réponse : le terrain entier coûtera environ $6\,614\,000$ F CFA.', 'On traduit la zone géographique par l''intégrale d''une fonction continue sur $[0,4]$, en reconnaissant la forme $\frac{u''}u$ pour obtenir la primitive $\ln|u|$, puis on convertit l''aire graphique en surface réelle grâce au facteur d''échelle des deux axes ($100\times10=1000$ m²/u.a.), avant de multiplier par le prix au m².

Piège à éviter : oublier de multiplier par l''échelle des deux axes — cela donnerait un terrain minuscule et un prix totalement faux.

Ce que l''examinateur attend : la pose et le calcul corrects de l''intégrale, la conversion en surface réelle, et le calcul du prix financier total.', '[{"criterion":"Pose et calcul de l''intégrale","points":0.5},{"criterion":"Conversion en surface réelle (m²)","points":0.5},{"criterion":"Calcul du prix financier total","points":0.5}]'::jsonb, '2021', 'Partie B - Tâche 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'La droite $(L)$ d''équation $y=\dfrac14x$ sépare, sur le terrain d''ABBA, la portion exploitée pour cultiver les pastèques (au-dessus de $(L)$, sous la courbe $(C)$) de celle exploitée pour cultiver les carottes. Combien aura ABBA s''il ne souhaite vendre que la portion réservée aux pastèques ?', 'La zone des pastèques est comprise entre $(C)$ (au-dessus) et $(L)$ (en dessous), de $x=0$ à $x=4$ :
$$\mathcal{A}_{\text{pastèque}} = \int_0^4\left(\frac{e^x-e^{-x}}{e^x+e^{-x}}-\frac14x\right)dx = \int_0^4\frac{e^x-e^{-x}}{e^x+e^{-x}}\,dx - \int_0^4\frac14x\,dx$$

La première intégrale vaut $\approx3{,}307$ u.a. (tâche précédente). La seconde :
$$\int_0^4\frac14x\,dx = \left[\frac18x^2\right]_0^4 = \frac{16}8 = 2\text{ u.a.}$$

Donc $\mathcal{A}_{\text{pastèque}} \approx 3{,}307-2 = 1{,}307$ u.a.

Surface réelle : $1{,}307\times1000\approx1307\text{ m}^2$.

Prix : $1307\times2000\approx2\,614\,000$ F CFA.

Réponse : s''il ne vend que la portion des pastèques, ABBA aura environ $2\,614\,000$ F CFA.', 'L''aire entre deux courbes $f\ge g$ sur $[a,b]$ est $\int_a^b(f(x)-g(x))dx$ ; on réutilise l''intégrale déjà calculée à la tâche précédente et on en soustrait l''aire triangulaire sous la droite $(L)$, avant de reconvertir en m² puis en F CFA.

Piège à éviter : inverser l''ordre des deux fonctions dans la soustraction, ou se tromper de bornes.

Ce que l''examinateur attend : l''expression de l''aire entre les deux courbes, l''intégration correcte de la droite $(L)$, et la conversion/le calcul financier final.', '[{"criterion":"Formule de la différence des deux fonctions","points":0.5},{"criterion":"Calcul exact de la surface des pastèques","points":0.5},{"criterion":"Montant financier final","points":0.5}]'::jsonb, '2021', 'Partie B - Tâche 2', 'C', 'draft');
COMMIT;