-- 2019 Baccalaureat C-E Mathematiques -- 32 questions (whole paper shared C-E, no exclusion needed)
-- Real official corrige with point values, condensed to house style.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Dans l''espace orienté et rapporté à un repère orthonormé direct $(O,\vec{i},\vec{j},\vec{k})$, $A$, $B$, $C$ et $D$ sont 4 points tels que $A$, $B$ et $C$ soient non alignés. On pose $\vec{u}=\overrightarrow{AB}\wedge\overrightarrow{AC}$. Déterminer l''ensemble $(\mathcal{E})$ des points $M$ de l''espace tels que $\overrightarrow{AM}\cdot\vec{u}=0$.', '$\vec{u}=\overrightarrow{AB}\wedge\overrightarrow{AC}$ est un vecteur normal au plan $(ABC)$, car $A$, $B$, $C$ ne sont pas alignés.

L''égalité $\overrightarrow{AM}\cdot\vec{u}=0$ signifie que $\overrightarrow{AM}$ est orthogonal au vecteur normal $\vec{u}$.

Réponse : $(\mathcal{E})$ est le plan $(ABC)$, passant par $A$ et de vecteur normal $\vec{u}$.', 'Le produit vectoriel $\overrightarrow{AB}\wedge\overrightarrow{AC}$ donne un vecteur normal au plan $(ABC)$ ; la condition $\overrightarrow{AM}\cdot\vec u=0$ caractérise exactement l''ensemble des points $M$ tels que $\overrightarrow{AM}$ soit orthogonal à cette normale, c''est-à-dire le plan lui-même.

Piège à éviter : confondre produit vectoriel ($\wedge$, donne un vecteur) et produit scalaire ($\cdot$, donne un réel).

Ce que l''examinateur attend : l''identification du rôle de $\vec u$ comme normale au plan $(ABC)$, et l''interprétation géométrique exacte de la condition d''orthogonalité.', '[{"criterion":"Mention du vecteur normal / plan (ABC)","points":0.5},{"criterion":"Conclusion claire de l''ensemble (E)","points":0.25}]'::jsonb, '2019', 'Exercice 1 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'On donne pour toute la suite de l''exercice : $A(1;2;1)$, $B(2;1;1)$, $C(0;1;-1)$ et $D(2;4;1)$. Montrer que les points $A$, $B$, $C$ et $D$ ne sont pas coplanaires.', '$\overrightarrow{AB}=(1,-1,0)$, $\overrightarrow{AC}=(-1,-1,-2)$, $\overrightarrow{AD}=(1,2,0)$.

Calculons $\vec u=\overrightarrow{AB}\wedge\overrightarrow{AC}$ :
$$\vec u = \big((-1)(-2)-(0)(-1),\ (0)(-1)-(1)(-2),\ (1)(-1)-(-1)(-1)\big) = (2,2,-2)$$

Produit mixte $(\overrightarrow{AB}\wedge\overrightarrow{AC})\cdot\overrightarrow{AD} = \vec u\cdot\overrightarrow{AD} = 2(1)+2(2)+(-2)(0) = 6$.

Comme ce produit mixte est non nul ($6\ne0$), le volume du parallélépipède formé est non nul, donc les quatre points ne sont pas coplanaires.

Réponse : $(\overrightarrow{AB}\wedge\overrightarrow{AC})\cdot\overrightarrow{AD}=6\ne0$, donc $A$, $B$, $C$, $D$ ne sont pas coplanaires.', 'Quatre points sont coplanaires si et seulement si le produit mixte de trois vecteurs qu''ils forment (depuis un même sommet) est nul ; obtenir une valeur non nulle prouve directement que $D$ n''appartient pas au plan $(ABC)$.

Piège à éviter : erreur de signe dans le calcul du produit vectoriel ou du produit mixte.

Ce que l''examinateur attend : le calcul correct des trois vecteurs, le calcul explicite du produit mixte, et une conclusion reliant la valeur non nulle à la non-coplanarité.', '[{"criterion":"Calcul des vecteurs AB, AC, AD","points":0.25},{"criterion":"Calcul du produit mixte non nul (=6)","points":0.25},{"criterion":"Conclusion rédigée","points":0.25}]'::jsonb, '2019', 'Exercice 1 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer une équation cartésienne du plan $(ABC)$.', 'Un vecteur normal à $(ABC)$ est $\vec u(2,2,-2)$ (question précédente), simplifiable en $\vec n(1,1,-1)$.

L''équation est de la forme $x+y-z+d=0$. Comme $A(1,2,1)\in(ABC)$ :
$$1+2-1+d=0 \implies d=-2$$

Réponse : $(ABC) : x+y-z-2=0$.', 'Les coefficients d''une équation cartésienne de plan sont les composantes d''un vecteur normal ; on détermine la constante $d$ en imposant qu''un point connu du plan la vérifie.

Piège à éviter : oublier de vérifier l''équation obtenue avec les deux autres points $B$ et $C$.

Ce que l''examinateur attend : l''utilisation du vecteur normal (ou d''un colinéaire), le remplacement d''un point pour trouver $d$, et l''équation cartésienne finale.', '[{"criterion":"Identification du vecteur normal","points":0.25},{"criterion":"Détermination du terme constant d","points":0.25},{"criterion":"Équation cartésienne finale","points":0.25}]'::jsonb, '2019', 'Exercice 1 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer l''expression analytique de la réflexion par rapport au plan $(ABC)$.', 'Soit $S$ la réflexion par rapport à $(ABC)$, $M(x,y,z)$ un point et $M''(x'',y'',z'')$ son image. Deux conditions caractérisent $M''$ :
- le milieu $I$ de $[MM'']$ appartient à $(ABC)$ ;
- $\overrightarrow{MM''}$ est colinéaire au vecteur normal $\vec n(1,1,-1)$.

Il existe $\lambda\in\mathbb{R}$ tel que $\overrightarrow{MM''}=\lambda\vec n$ : $x''=x+\lambda$, $y''=y+\lambda$, $z''=z-\lambda$.

Le milieu $I\left(x+\frac\lambda2,\ y+\frac\lambda2,\ z-\frac\lambda2\right)$ appartient à $(ABC)$ :
$$\left(x+\frac\lambda2\right)+\left(y+\frac\lambda2\right)-\left(z-\frac\lambda2\right)-2=0 \implies x+y-z-2+\frac{3\lambda}2=0 \implies \lambda=-\frac23(x+y-z-2)$$

En substituant $\lambda$ dans le système :
$$\begin{cases} x'' = \frac13x-\frac23y+\frac23z+\frac43 \\ y'' = -\frac23x+\frac13y+\frac23z+\frac43 \\ z'' = \frac23x+\frac23y+\frac13z-\frac43 \end{cases}$$

Réponse : les expressions ci-dessus donnent l''expression analytique de la réflexion par rapport à $(ABC)$.', 'Une réflexion par rapport à un plan est caractérisée par deux conditions géométriques : le milieu du segment $[MM'']$ appartient au plan, et $\overrightarrow{MM''}$ est colinéaire à la normale du plan. En introduisant le paramètre $\lambda$, on résout une équation à une inconnue en fonction de $x,y,z$, puis on substitue pour obtenir $x'',y'',z''$.

Piège à éviter : erreur de signe lors du remplacement de $\lambda$ dans l''expression de $z''$.

Ce que l''examinateur attend : la mise en place correcte des deux conditions géométriques, le calcul rigoureux de $\lambda$, et l''expression explicite de $x'',y'',z''$.', '[{"criterion":"Mise en place des deux conditions géométriques","points":0.25},{"criterion":"Obtention du paramètre λ","points":0.25},{"criterion":"Expression finale exacte des coordonnées","points":0.25}]'::jsonb, '2019', 'Exercice 1 - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Résoudre dans l''ensemble $\mathbb{C}$ des nombres complexes l''équation $z^2-(1-2i)z+1+5i=0$.', 'Discriminant : $\Delta = [-(1-2i)]^2-4(1)(1+5i) = (1-4i-4)-4-20i = -7-24i$.

Cherchons une racine carrée $\delta=x+iy$ de $\Delta$ :
$$\begin{cases} x^2-y^2=-7 \\ 2xy=-24 \\ x^2+y^2=|\Delta|=\sqrt{49+576}=\sqrt{625}=25 \end{cases}$$

En combinant la 1ère et la 3ème équation : $2x^2=18\implies x=\pm3$ et $2y^2=32\implies y=\pm4$.

Comme $2xy=-24<0$, $x$ et $y$ sont de signes contraires : $\delta=3-4i$.

Les solutions sont :
$$z_1 = \frac{(1-2i)+(3-4i)}2 = 2-3i, \qquad z_2 = \frac{(1-2i)-(3-4i)}2 = -1+i$$

Réponse : $S=\{2-3i,\ -1+i\}$.', 'Pour une équation du second degré à coefficients complexes, on calcule le discriminant $\Delta$ puis on cherche explicitement une racine carrée complexe de $\Delta$ en résolvant le système sur $x,y$ (parties réelle/imaginaire et module), en utilisant le signe de $2xy$ pour apparier correctement $x$ et $y$.

Piège à éviter : mal apparier les signes de $x$ et $y$ — comme $2xy=-24$ est négatif, $x=3$ doit être associé à $y=-4$, pas $y=4$.

Ce que l''examinateur attend : le calcul correct de $\Delta=-7-24i$, la recherche explicite d''une racine carrée $\delta$, et le calcul exact des deux racines.', '[{"criterion":"Calcul du discriminant","points":0.25},{"criterion":"Détermination de la racine carrée du discriminant","points":0.5},{"criterion":"Obtention des deux solutions complexes","points":0.25}]'::jsonb, '2019', 'Exercice 2 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec u,\vec v)$. $A$ et $B$ sont les points d''affixes $z_A=2-3i$ et $z_B=-1+i$. Soient $(\mathcal{C})$ le cercle de centre $A$ et de rayon $7$, et $(\mathcal{C}'')$ le cercle de centre $B$ et de rayon $1$. Montrer que tout point du cercle $(\mathcal{C}'')$ est intérieur au cercle $(\mathcal{C})$.', 'Distance entre les centres : $AB=|z_B-z_A|=|(-1+i)-(2-3i)|=|-3+4i|=\sqrt{9+16}=\sqrt{25}=5$.

Soit $M$ un point quelconque de $(\mathcal{C}'')$, donc $BM=1$. Par l''inégalité triangulaire :
$$AM \le AB+BM = 5+1=6$$

Comme $6<7=$ rayon de $(\mathcal{C})$, tout point de $(\mathcal{C}'')$ est à une distance de $A$ strictement inférieure à $7$.

Réponse : $AB+r''=5+1=6<7=R$, donc $(\mathcal{C}'')$ est entièrement intérieur à $(\mathcal{C})$.', 'Un cercle de centre $B$, rayon $r''$, est entièrement à l''intérieur d''un cercle de centre $A$, rayon $R$, dès que $AB+r''<R$ (inégalité triangulaire appliquée au pire cas) ; ici $5+1=6<7$ démontre le résultat.

Piège à éviter : se contenter d''un argument visuel/graphique au lieu de formaliser avec la distance $AB$ et l''inégalité triangulaire.

Ce que l''examinateur attend : le calcul de $AB=5$, et la comparaison $AB+r''<R$ justifiant l''inclusion.', '[{"criterion":"Calcul de AB=5","points":0.25},{"criterion":"Justification complète de l''inclusion","points":0.25}]'::jsonb, '2019', 'Exercice 2 - 2ai', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $(\mathcal{C}'''')$ un cercle de centre $\Omega$, extérieurement tangent à $(\mathcal{C}'')$ et intérieurement tangent à $(\mathcal{C})$. Justifier que $\Omega A+\Omega B=8$.', 'Soit $r''''$ le rayon de $(\mathcal{C}'''')$.

Tangence extérieure avec $(\mathcal{C}'')$ (centre $B$, rayon $1$) : $\Omega B = r''''+1 \implies r''''=\Omega B-1$.

Tangence intérieure avec $(\mathcal{C})$ (centre $A$, rayon $7$) : $\Omega A = 7-r''''$.

En substituant $r''''$ :
$$\Omega A = 7-(\Omega B-1) = 8-\Omega B \implies \Omega A+\Omega B=8$$

Réponse : $\Omega A+\Omega B=8$.', 'La tangence extérieure de deux cercles impose que la distance entre leurs centres soit la somme de leurs rayons ; la tangence intérieure impose qu''elle soit la différence des rayons. En éliminant le rayon inconnu $r''''$ entre ces deux relations, on obtient directement une constante.

Piège à éviter : inverser les formules de tangence intérieure et extérieure.

Ce que l''examinateur attend : l''écriture correcte de $\Omega B=r''''+1$ et $\Omega A=7-r''''$, et la combinaison menant à $\Omega A+\Omega B=8$.', '[{"criterion":"Traduction des deux tangences","points":0.25},{"criterion":"Élimination de r'''' et conclusion","points":0.25}]'::jsonb, '2019', 'Exercice 2 - 2aii', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', '$O''$ désigne le milieu de $[AB]$ ; on pose $\vec i=\dfrac{\overrightarrow{BA}}{AB}$ et $\vec j$ le vecteur unitaire tel que $(O'',\vec i,\vec j)$ soit un repère orthonormé direct auquel le plan est maintenant rapporté. On pose $\overrightarrow{O''\Omega}=x\vec i+y\vec j$ avec $x\in[-4;4]$, et $(D)$ la droite d''équation $x=\frac{32}5$. Justifier que $\Omega A=\sqrt{\left(x-\frac52\right)^2+y^2}$ et $\Omega B=\sqrt{\left(x+\frac52\right)^2+y^2}$.', 'Dans le repère $(O'',\vec i,\vec j)$, $O''$ est l''origine. Comme $AB=5$, $O''A=O''B=\frac52$.

$\vec i$ étant dirigé de $B$ vers $A$, on a $A\left(\frac52,0\right)$ et $B\left(-\frac52,0\right)$. Le point $\Omega$ a pour coordonnées $(x,y)$.

Par la formule de la distance euclidienne :
$$\Omega A = \sqrt{\left(\frac52-x\right)^2+y^2} = \sqrt{\left(x-\frac52\right)^2+y^2}$$
$$\Omega B = \sqrt{\left(-\frac52-x\right)^2+y^2} = \sqrt{\left(x+\frac52\right)^2+y^2}$$

Réponse : les deux expressions données pour $\Omega A$ et $\Omega B$ sont bien vérifiées.', 'Le nouveau repère place le milieu $O''$ de $[AB]$ à l''origine, avec $A$ et $B$ symétriques sur l''axe des abscisses (à $\pm\frac52$, la moitié de $AB=5$) ; il ne reste qu''à appliquer la formule usuelle de la distance entre deux points.

Piège à éviter : inverser les signes des coordonnées de $A$ et $B$ dans le nouveau repère.

Ce que l''examinateur attend : les coordonnées correctes de $A\left(\frac52,0\right)$ et $B\left(-\frac52,0\right)$, et l''application rigoureuse de la formule de distance.', '[{"criterion":"Coordonnées de A et B dans le repère (O'',i,j)","points":0.25},{"criterion":"Expression exacte de ΩA et ΩB","points":0.25}]'::jsonb, '2019', 'Exercice 2 - 2bi', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Montrer que : $\Omega A+\Omega B=8 \implies \Omega A=-\frac58x+4$.', '$\Omega A^2 = \left(x-\frac52\right)^2+y^2 = x^2-5x+\frac{25}4+y^2$ et $\Omega B^2 = x^2+5x+\frac{25}4+y^2$.

$$\Omega B^2-\Omega A^2 = 10x$$

Or $\Omega B^2-\Omega A^2=(\Omega B-\Omega A)(\Omega B+\Omega A)$, et $\Omega A+\Omega B=8$ :
$$(\Omega B-\Omega A)\times8 = 10x \implies \Omega B-\Omega A = \frac54x$$

En combinant avec $\Omega A+\Omega B=8$ (soustraction) :
$$2\Omega A = 8-\frac54x \implies \Omega A = 4-\frac58x = -\frac58x+4$$

Réponse : $\Omega A = -\dfrac58x+4$.', 'Plutôt que d''élever une somme de racines carrées au carré (calcul très lourd), on utilise l''identité $a^2-b^2=(a-b)(a+b)$ : la différence des carrés des distances élimine $y^2$ et la constante, ne laissant que $10x$, que l''on combine avec $\Omega A+\Omega B=8$.

Piège à éviter : tenter d''isoler une racine et d''élever au carré deux fois de suite, ce qui multiplie les risques d''erreur.

Ce que l''examinateur attend : le calcul explicite de $\Omega B^2-\Omega A^2=10x$, sa factorisation, et la déduction algébrique exacte de $\Omega A$.', '[{"criterion":"Calcul de ΩB²-ΩA²=10x","points":0.25},{"criterion":"Déduction de ΩB-ΩA","points":0.25},{"criterion":"Calcul final de ΩA","points":0.25}]'::jsonb, '2019', 'Exercice 2 - 2bii', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire que si $\Omega A+\Omega B=8$ alors $\dfrac{\Omega A}{d(\Omega,(D))}=\dfrac58$, et donner la nature de la conique à laquelle $\Omega$ appartient.', '$(D)$ a pour équation $x=\frac{32}5$. Pour $x\le4<\frac{32}5$ : $d(\Omega,(D)) = \left|x-\frac{32}5\right| = \frac{32}5-x$.

D''après la question précédente :
$$\Omega A = 4-\frac58x = \frac58\left(\frac{32}5-x\right)$$

Donc :
$$\frac{\Omega A}{d(\Omega,(D))} = \frac{\frac58\left(\frac{32}5-x\right)}{\frac{32}5-x} = \frac58$$

Ce rapport constant $e=\frac58$ vérifie $0<e<1$ : l''ensemble des points $\Omega$ décrit une ellipse d''excentricité $e=\frac58$, de foyer $A$ et de directrice $(D)$.

Réponse : $\dfrac{\Omega A}{d(\Omega,(D))}=\dfrac58$ ; l''ensemble des points $\Omega$ est une ellipse.', 'La définition monofocale d''une conique dit que le lieu des points $M$ tels que $\frac{MF}{d(M,D)}=e$ (constante) est une conique de foyer $F$, directrice $(D)$ et excentricité $e$ ; $e<1$ caractérise une ellipse.

Piège à éviter : oublier de vérifier $x\le4$, nécessaire pour lever la valeur absolue dans $d(\Omega,(D))$.

Ce que l''examinateur attend : l''expression correcte de $d(\Omega,(D))$, le calcul du rapport constant $\frac58$, et l''identification explicite de l''ellipse (avec $e<1$).', '[{"criterion":"Calcul explicite de la distance à (D)","points":0.25},{"criterion":"Démonstration du rapport égal à 5/8","points":0.25},{"criterion":"Identification de l''ellipse avec justification (e<1)","points":0.25}]'::jsonb, '2019', 'Exercice 2 - 2biii', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une urne contient 7 boules noires et 7 boules jaunes indiscernables au toucher. On tire au hasard et successivement, avec remise, $n$ boules de cette urne ($n>1$). Calculer la probabilité d''obtenir des boules de même couleur.', 'L''urne contient $14$ boules. À chaque tirage, $P(\text{noire})=P(\text{jaune})=\frac7{14}=\frac12$, et les tirages sont indépendants (avec remise).

« Boules de même couleur » se décompose en deux événements incompatibles : $n$ noires (probabilité $\left(\frac12\right)^n$) ou $n$ jaunes (probabilité $\left(\frac12\right)^n$).

$$P = \left(\frac12\right)^n+\left(\frac12\right)^n = 2\times\left(\frac12\right)^n = \frac1{2^{n-1}}$$

Réponse : $P = \dfrac1{2^{n-1}}$.', 'L''équiprobabilité noir/jaune persiste à chaque tirage grâce à la remise (indépendance) ; l''événement « même couleur » se décompose en deux cas disjoints (tout noir ou tout jaune), d''où l''addition des deux probabilités.

Piège à éviter : utiliser une loi hypergéométrique (tirage sans remise) alors que le tirage est explicitement avec remise.

Ce que l''examinateur attend : l''identification de la probabilité élémentaire ($\frac12$), l''addition des deux cas, et le résultat simplifié.', '[{"criterion":"Définition des probabilités élémentaires","points":0.25},{"criterion":"Expression formelle de la somme","points":0.25},{"criterion":"Résultat final réduit","points":0.25}]'::jsonb, '2019', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Justifier que la probabilité $p$ d''obtenir exactement une boule noire (sur les $n$ tirages) est $p=\dfrac{n}{2^n}$.', 'Soit $X$ le nombre de boules noires obtenues sur les $n$ tirages. $X$ suit la loi binomiale $\mathcal{B}\left(n,\frac12\right)$.

$$P(X=1) = \binom{n}1\left(\frac12\right)^1\left(\frac12\right)^{n-1} = n\times\left(\frac12\right)^n = \frac{n}{2^n}$$

Réponse : $p=\dfrac{n}{2^n}$.', '$n$ répétitions indépendantes d''une épreuve à deux issues (Bernoulli) définissent une loi binomiale ; obtenir exactement une boule noire nécessite de choisir sa position parmi les $n$ tirages ($\binom n1=n$ choix), d''où le facteur $n$.

Piège à éviter : oublier le coefficient binomial $\binom n1=n$, ce qui correspondrait à tort au seul cas où la noire sort au premier tirage.

Ce que l''examinateur attend : l''identification de la loi $\mathcal B\left(n,\frac12\right)$, l''application du coefficient binomial, et le calcul menant à $\frac{n}{2^n}$.', '[{"criterion":"Identification de la loi binomiale","points":0.25},{"criterion":"Écriture de la formule de Bernoulli","points":0.25},{"criterion":"Obtention de la formule exacte p=n/2ⁿ","points":0.25}]'::jsonb, '2019', 'Exercice 3 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'On désigne par $(u_n)$ la suite définie par $u_n=\dfrac{n}{2^n}$ avec $n>1$. Calculer $\dfrac{u_{n+1}}{u_n}$ et en déduire que la suite $(u_n)$ est décroissante.', '$$\frac{u_{n+1}}{u_n} = \frac{\frac{n+1}{2^{n+1}}}{\frac n{2^n}} = \frac{n+1}n\times\frac{2^n}{2^{n+1}} = \frac{n+1}{2n}$$

Comparons ce rapport à $1$ : $(n+1)-2n = 1-n$. Pour $n\ge2$, $1-n\le-1<0$, donc $n+1<2n$, soit :
$$\frac{u_{n+1}}{u_n} = \frac{n+1}{2n} < 1$$

Comme tous les termes $u_n$ sont strictement positifs, $\frac{u_{n+1}}{u_n}<1$ prouve que $(u_n)$ est strictement décroissante pour $n>1$.

Réponse : $\dfrac{u_{n+1}}{u_n}=\dfrac{n+1}{2n}$ ; la suite $(u_n)$ est décroissante.', 'Pour une suite à termes strictement positifs, comparer le rapport $\frac{u_{n+1}}{u_n}$ à $1$ est le moyen le plus direct d''en déterminer le sens de variation : un rapport $<1$ signifie que chaque terme est plus petit que le précédent.

Piège à éviter : oublier de préciser que les termes $u_n$ sont strictement positifs avant d''appliquer la règle du rapport.

Ce que l''examinateur attend : le calcul et la simplification du rapport, la comparaison explicite à $1$ pour $n>1$, et la conclusion sur la décroissance.', '[{"criterion":"Expression simplifiée du rapport","points":0.25},{"criterion":"Preuve que le rapport est inférieur à 1 pour n>1","points":0.25},{"criterion":"Conclusion rédigée sur la décroissance","points":0.25}]'::jsonb, '2019', 'Exercice 3 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Montrer que la suite $(u_n)$ converge vers $0$.', 'Méthode (croissances comparées) : en écrivant $u_n=\dfrac n{2^n}=\dfrac{n}{e^{n\ln2}}$ :
$$\lim_{n\to+\infty} u_n = \frac1{\ln2}\lim_{n\to+\infty}\frac{n\ln2}{e^{n\ln2}}$$

Par croissances comparées, $\displaystyle\lim_{t\to+\infty}\frac t{e^t}=0$, donc :
$$\lim_{n\to+\infty} u_n = 0$$

(Autre méthode : pour $n\ge4$, $2^n\ge n^2$, donc $0<\frac n{2^n}\le\frac n{n^2}=\frac1n\to0$, et par théorème des gendarmes, $u_n\to0$.)

Réponse : $(u_n)$ converge vers $0$.', 'L''expression $\frac{n}{2^n}$ oppose une croissance polynomiale ($n$) à une croissance exponentielle ($2^n=e^{n\ln2}$) : le théorème des croissances comparées affirme que l''exponentielle l''emporte toujours, donnant une limite nulle.

Piège à éviter : affirmer directement que « l''infini sur l''infini vaut 0 » sans citer le théorème des croissances comparées ni justifier la réécriture sous forme exponentielle.

Ce que l''examinateur attend : le passage par les croissances comparées (ou un encadrement adapté), et la conclusion exacte sur la limite nulle.', '[{"criterion":"Justification du calcul de limite par croissances comparées","points":0.5},{"criterion":"Conclusion sur la convergence vers 0","points":0.25}]'::jsonb, '2019', 'Exercice 3 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère la fonction $g$ définie sur $]0;+\infty[$ par $g(x)=x^2+\ln x$. $(E_0)$ et $(E)$ sont les équations différentielles $(E_0) : v(x)+xv''(x)=0$ et $(E) : v(x)+xv''(x) = 3x^2+\ln x+1$, où $v$ est définie et dérivable sur $]0;+\infty[$. Vérifier que $g$ est une solution de $(E)$, et justifier que $u(x)=\dfrac1x$ est une solution de $(E_0)$.', 'Pour $g$ et $(E)$ : $g(x)=x^2+\ln x$, $g''(x)=2x+\frac1x$.
$$g(x)+xg''(x) = (x^2+\ln x)+x\left(2x+\frac1x\right) = x^2+\ln x+2x^2+1 = 3x^2+\ln x+1$$
Ce résultat est exactement le second membre de $(E)$ : $g$ est solution de $(E)$.

Pour $u$ et $(E_0)$ : $u(x)=x^{-1}$, $u''(x)=-\frac1{x^2}$.
$$u(x)+xu''(x) = \frac1x+x\left(-\frac1{x^2}\right) = \frac1x-\frac1x = 0$$
Donc $u$ est solution de $(E_0)$.

Réponse : $g$ est solution de $(E)$ et $u$ est solution de $(E_0)$.', 'Pour vérifier qu''une fonction est solution d''une équation différentielle, on calcule sa dérivée, on la substitue dans l''expression proposée, et on simplifie pour retrouver le second membre attendu.

Piège à éviter : erreur de dérivée sur $\frac1x$, dont la dérivée est $-\frac1{x^2}$.

Ce que l''examinateur attend : le calcul de $g''(x)$ et sa substitution rigoureuse dans $(E)$, puis le calcul de $u''(x)$ et sa substitution dans $(E_0)$.', '[{"criterion":"Vérification complète pour g","points":0.5},{"criterion":"Justification complète pour u","points":0.5}]'::jsonb, '2019', 'Problème - A - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $w$ une autre solution de $(E_0)$ et $k$ la fonction définie sur $]0;+\infty[$ par $k(x)=\dfrac{w(x)}{u(x)}$. Montrer que $k$ est une fonction constante et en déduire toutes les solutions de $(E_0)$.', 'Comme $u(x)=\frac1x$, on a $k(x)=x\cdot w(x)$.

$k$ est dérivable comme produit de fonctions dérivables :
$$k''(x) = 1\cdot w(x)+x\cdot w''(x) = w(x)+xw''(x)$$

Or $w$ est solution de $(E_0)$ : $w(x)+xw''(x)=0$ pour tout $x>0$. Donc $k''(x)=0$ sur $]0;+\infty[$ : $k$ est constante, $k(x)=C$ pour une certaine $C\in\mathbb{R}$.

De $k(x)=C$ : $w(x)=C\cdot u(x)=\dfrac Cx$.

Réponse : $k$ est constante ; les solutions de $(E_0)$ sont les fonctions $v(x)=\dfrac Cx$, $C\in\mathbb{R}$.', 'Pour prouver qu''une fonction est constante sur un intervalle, on montre que sa dérivée y est nulle. En écrivant $k(x)=xw(x)$, la dérivée du produit redonne exactement le membre de gauche de $(E_0)$, qui s''annule puisque $w$ est solution de $(E_0)$.

Piège à éviter : dériver $k=\frac wu$ avec la formule du quotient sans simplifier d''abord $u(x)=\frac1x$, ce qui alourdit inutilement le calcul.

Ce que l''examinateur attend : le calcul correct de $k''(x)$, le lien explicite avec l''équation $(E_0)$ vérifiée par $w$, et l''expression finale des solutions $v(x)=\frac Cx$.', '[{"criterion":"Dérivation de k(x) et preuve de la constance","points":0.5},{"criterion":"Expression générale des solutions de (E0)","points":0.5}]'::jsonb, '2019', 'Problème - A - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $h$ une fonction définie et dérivable sur $]0;+\infty[$. Montrer que $h$ est solution de $(E)$ si et seulement si $h-g$ est solution de $(E_0)$.', '$h$ est solution de $(E)$
$$\iff h(x)+xh''(x) = 3x^2+\ln x+1$$

Or $g(x)+xg''(x)=3x^2+\ln x+1$ (question A.1), donc :
$$\iff h(x)+xh''(x) = g(x)+xg''(x)$$
$$\iff [h(x)-g(x)]+x[h''(x)-g''(x)] = 0$$
$$\iff (h-g)(x)+x(h-g)''(x) = 0$$
$$\iff h-g \text{ est solution de } (E_0)$$

Réponse : $h$ solution de $(E) \iff h-g$ solution de $(E_0)$.', 'C''est le principe de structure des équations différentielles linéaires : la solution générale d''une équation avec second membre est la somme d''une solution particulière ($g$) et de la solution générale de l''équation homogène associée ($(E_0)$).

Piège à éviter : ne démontrer qu''un seul sens de l''implication au lieu de l''équivalence complète.

Ce que l''examinateur attend : une chaîne d''équivalences (ou le traitement explicite des deux sens), avec un regroupement correct des termes en $(h-g)$ et $(h-g)''$.', '[{"criterion":"Preuve complète de la double implication / équivalence","points":0.5}]'::jsonb, '2019', 'Problème - A - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déduire la forme générale des solutions de $(E)$.', 'D''après la question précédente, $h$ solution de $(E) \iff h-g$ solution de $(E_0)$.

D''après la question A.2, les solutions de $(E_0)$ sont $\dfrac Cx$, $C\in\mathbb{R}$. Donc :
$$h(x)-g(x) = \frac Cx \implies h(x) = g(x)+\frac Cx = x^2+\ln x+\frac Cx$$

Réponse : la forme générale des solutions de $(E)$ est $v(x)=x^2+\ln x+\dfrac Cx$, $C\in\mathbb{R}$.', 'Il suffit de combiner les deux résultats précédents : $h(x)=g(x)+v_0(x)$, où $v_0$ est n''importe quelle solution de l''équation homogène $(E_0)$.

Piège à éviter : oublier de mentionner la constante réelle arbitraire $C$.

Ce que l''examinateur attend : l''utilisation du résultat $h=g+\text{solution de }(E_0)$, et l''écriture explicite de $h(x)$.', '[{"criterion":"Expression exacte de la solution générale","points":0.5}]'::jsonb, '2019', 'Problème - A - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier les variations de la fonction $g(x)=x^2+\ln x$, définie sur $]0;+\infty[$.', '$g$ est dérivable sur $]0;+\infty[$ : $g''(x)=2x+\dfrac1x=\dfrac{2x^2+1}x$.

Pour tout $x>0$ : $x>0$ et $2x^2+1\ge1>0$, donc $g''(x)>0$ sur tout le domaine : $g$ est strictement croissante.

Limites : en $0^+$, $x^2\to0$ et $\ln x\to-\infty$, donc $g(x)\to-\infty$. En $+\infty$, $x^2\to+\infty$ et $\ln x\to+\infty$, donc $g(x)\to+\infty$.

Réponse : $g$ est strictement croissante sur $]0;+\infty[$, avec $\displaystyle\lim_{x\to0^+}g(x)=-\infty$ et $\displaystyle\lim_{x\to+\infty}g(x)=+\infty$.', 'L''étude complète requiert la dérivée, l''analyse de son signe (ici évident car numérateur et dénominateur sont tous deux strictement positifs), le calcul des limites aux bornes, et une conclusion claire sur le sens de variation.

Piège à éviter : oublier de donner les limites aux bornes.

Ce que l''examinateur attend : la dérivée correcte, la justification de son signe positif, le calcul exact des limites, et une conclusion rédigée sur la stricte croissance.', '[{"criterion":"Dérivée et signe","points":0.5},{"criterion":"Limites aux bornes","points":0.25},{"criterion":"Sens de variation","points":0.25}]'::jsonb, '2019', 'Problème - B - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que l''équation $g(x)=0$ admet sur $]0;+\infty[$ une unique solution $\alpha$, et justifier que $\alpha_0=0{,}65$ est une valeur approchée de $\alpha$ à $10^{-2}$ près par défaut.', '$g$ est continue et strictement croissante sur $]0;+\infty[$, avec $g(]0;+\infty[)=\,]-\infty;+\infty[$. Comme $0$ appartient à cet intervalle, d''après le théorème de la bijection, $g(x)=0$ admet une unique solution $\alpha\in\,]0;+\infty[$.

Calculons $g(0{,}65)$ et $g(0{,}66)$ :
$g(0{,}65) = (0{,}65)^2+\ln(0{,}65) \approx 0{,}4225-0{,}4308 = -0{,}0083 < 0$
$g(0{,}66) = (0{,}66)^2+\ln(0{,}66) \approx 0{,}4356-0{,}4155 = +0{,}0201 > 0$

Comme $g(0{,}65)<0<g(0{,}66)$ et $g$ strictement croissante, $0{,}65<\alpha<0{,}66$.

Réponse : $g(x)=0$ admet une unique solution $\alpha$, avec $0{,}65<\alpha<0{,}66$ (donc $\alpha_0=0{,}65$ à $10^{-2}$ près par défaut).', 'L''existence et l''unicité de $\alpha$ reposent sur le théorème de la bijection (TVI + stricte monotonie) ; pour la valeur approchée, on calcule les images des deux bornes d''un intervalle de largeur $10^{-2}$ pour prouver le changement de signe.

Piège à éviter : oublier de mentionner la continuité de $g$, indispensable pour appliquer le TVI.

Ce que l''examinateur attend : l''énoncé clair des trois conditions du TVI (continuité, stricte monotonie, $0$ dans l''image), et les calculs numériques de $g(0{,}65)<0$ et $g(0{,}66)>0$.', '[{"criterion":"Application du TVI (unicité de α)","points":0.25},{"criterion":"Calculs numériques et conclusion sur la valeur approchée","points":0.25}]'::jsonb, '2019', 'Problème - B - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que $g(x)>0 \iff x>\alpha$.', '$g$ est strictement croissante sur $]0;+\infty[$ et $g(\alpha)=0$.

Si $x>\alpha$, alors $g(x)>g(\alpha)=0$. Si $0<x<\alpha$, alors $g(x)<g(\alpha)=0$.

Réponse : $g(x)>0 \iff x>\alpha$.', 'La stricte croissance conserve l''ordre des inégalités ($x>y\iff g(x)>g(y)$) ; appliqué au point d''annulation $\alpha$, le signe de $g$ se déduit directement de la position de $x$ par rapport à $\alpha$.

Piège à éviter : conclure sans mentionner explicitement la stricte croissance de $g$.

Ce que l''examinateur attend : le lien direct entre la stricte croissance de $g$ et le signe de $g(x)$.', '[{"criterion":"Déduction du signe de g(x)","points":0.25}]'::jsonb, '2019', 'Problème - B - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Pour toute la suite, $f$ est la fonction définie sur $]0;+\infty[$ par $f(x)=\sqrt{x^2+\ln^2(x)}$, de courbe représentative $(\mathcal{C}_f)$ dans un repère orthonormé $(O,\vec i,\vec j)$ ($g$ restant la même fonction). Calculer les limites de $f$ aux bornes de son ensemble de définition.', 'En $0^+$ : $x^2\to0$ et $\ln x\to-\infty \implies \ln^2(x)\to+\infty$. Par somme, $x^2+\ln^2(x)\to+\infty$, donc par composition avec la racine carrée, $f(x)\to+\infty$.

En $+\infty$ : $x^2\to+\infty$ et $\ln^2(x)\to+\infty$. Par somme puis composition, $f(x)\to+\infty$.

Réponse : $\displaystyle\lim_{x\to0^+}f(x)=+\infty$ et $\displaystyle\lim_{x\to+\infty}f(x)=+\infty$.', 'Aucune de ces deux limites n''est indéterminée : il suffit de composer la limite de l''expression sous la racine avec la fonction racine carrée.

Piège à éviter : ne pas remarquer qu''élever le logarithme au carré transforme $-\infty$ (en $0^+$) en $+\infty$.

Ce que l''examinateur attend : le calcul de la limite sous le radical à chaque borne, et la déduction exacte des deux limites finales.', '[{"criterion":"Limite en 0+","points":0.25},{"criterion":"Limite en +∞","points":0.25}]'::jsonb, '2019', 'Problème - C - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer $f''$ et vérifier que pour tout $x>0$, $f''(x)=\dfrac{g(x)}{xf(x)}$.', '$f(x)=\sqrt{u(x)}$ avec $u(x)=x^2+\ln^2(x)>0$ sur $]0;+\infty[$, donc $f$ est dérivable, avec $f''(x)=\dfrac{u''(x)}{2f(x)}$.

$$u''(x) = 2x+2\cdot\frac1x\cdot\ln x = 2x+\frac{2\ln x}x = \frac{2x^2+2\ln x}x = \frac{2(x^2+\ln x)}x = \frac{2g(x)}x$$

Donc :
$$f''(x) = \frac{\frac{2g(x)}x}{2f(x)} = \frac{g(x)}{xf(x)}$$

Réponse : $f''(x)=\dfrac{g(x)}{xf(x)}$.', 'La dérivée d''une composée $\sqrt u$ suit $\frac{u''}{2\sqrt u}$ ; pour dériver $\ln^2(x)$, on utilise la règle de la puissance $[v^2]''=2v''v$. La mise au même dénominateur fait apparaître naturellement $g(x)=x^2+\ln x$.

Piège à éviter : oublier la chaîne de dérivation de $\ln^2(x)$ (dérivée $\frac{2\ln x}x$, pas $\frac1{x^2}$).

Ce que l''examinateur attend : le calcul intermédiaire propre de $u''(x)$, puis la substitution et simplification menant à la forme demandée.', '[{"criterion":"Calcul de la dérivée de x²+ln²(x)","points":0.25},{"criterion":"Simplification et forme finale demandée","points":0.25}]'::jsonb, '2019', 'Problème - C - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Dresser le tableau de variation de $f$.', '$f''(x)=\dfrac{g(x)}{xf(x)}$, avec $x>0$ et $f(x)>0$ pour tout $x$ : le signe de $f''(x)$ est donc celui de $g(x)$.

D''après la Partie B (question B.2.b) : $g(x)<0$ sur $]0;\alpha[$, $g(\alpha)=0$, $g(x)>0$ sur $]\alpha;+\infty[$.

Donc $f$ est strictement décroissante sur $]0;\alpha]$, strictement croissante sur $[\alpha;+\infty[$, avec un minimum absolu $f(\alpha)$.

Réponse : $f$ décroît de $+\infty$ à $f(\alpha)$ sur $]0;\alpha]$, puis croît de $f(\alpha)$ à $+\infty$ sur $[\alpha;+\infty[$.', 'Comme le dénominateur $xf(x)$ est toujours strictement positif, l''étude du signe de $f''$ se réduit entièrement à celle de $g$, déjà faite en Partie B.

Piège à éviter : oublier d''indiquer les limites aux extrémités du tableau.

Ce que l''examinateur attend : la justification du signe de $f''$ par celui de $g$, le placement correct de $\alpha$ et des flèches, et les limites en $0^+$/$+\infty$.', '[{"criterion":"Justification du signe de la dérivée","points":0.25},{"criterion":"Tableau complet et exact","points":0.25}]'::jsonb, '2019', 'Problème - C - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que la droite d''équation $y=x$ est asymptote oblique à $(\mathcal{C}_f)$ en $+\infty$.', '$$f(x)-x = \sqrt{x^2+\ln^2(x)}-x = \frac{(x^2+\ln^2(x))-x^2}{\sqrt{x^2+\ln^2(x)}+x} = \frac{\ln^2(x)}{\sqrt{x^2+\ln^2(x)}+x}$$

(en multipliant par la quantité conjuguée). En mettant $x$ en facteur au dénominateur :
$$f(x)-x = \frac{\ln x}x\cdot\frac{\ln x}{\sqrt{1+\left(\frac{\ln x}x\right)^2}+1}$$

Par croissances comparées, $\dfrac{\ln x}x\to0$ quand $x\to+\infty$, donc :
$$\lim_{x\to+\infty}[f(x)-x] = 0$$

Réponse : la droite $y=x$ est asymptote oblique à $(\mathcal{C}_f)$ en $+\infty$.', 'Une droite $y=ax+b$ est asymptote oblique en $+\infty$ si $f(x)-(ax+b)\to0$ ; on lève l''indétermination « $\infty-\infty$ » en multipliant par la quantité conjuguée, ce qui fait apparaître un quotient traitable par croissances comparées.

Piège à éviter : calculer la limite directement sans passer par la conjuguée, ou sans citer la croissance comparée $\frac{\ln x}x\to0$.

Ce que l''examinateur attend : l''utilisation explicite de la quantité conjuguée, la factorisation par $x$, et la démonstration de la limite nulle.', '[{"criterion":"Utilisation de l''expression conjuguée","points":0.25},{"criterion":"Calcul de la limite nulle et conclusion","points":0.25}]'::jsonb, '2019', 'Problème - C - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Tracer $(\mathcal{C}_f)$ avec soin (unité d''axe : $1{,}5$ cm ; prendre $\alpha=0{,}6$).', 'Éléments à placer, à l''échelle $1{,}5$ cm par unité :
- asymptote verticale : $x=0$ (axe des ordonnées) ;
- asymptote oblique en $+\infty$ : la première bissectrice $y=x$ ;
- minimum en $x=\alpha\approx0{,}6$ : $f(0{,}6)=\sqrt{0{,}36+\ln^2(0{,}6)}\approx\sqrt{0{,}36+0{,}2609}\approx0{,}79\approx0{,}8$, avec tangente horizontale au point $(0{,}6\,;0{,}8)$ ;
- point remarquable $(1,1)$, puisque $f(1)=\sqrt{1+0}=1$.

Réponse : courbe décroissante puis croissante de part et d''autre de son minimum $(0{,}6\,;0{,}8)$, tendant vers l''asymptote $y=x$ en $+\infty$ et vers $+\infty$ le long de l''asymptote verticale $x=0$ en $0^+$.', 'Le tracé combine toutes les informations déjà obtenues : les deux asymptotes, la position du minimum (avec sa tangente horizontale), et quelques points remarquables pour caler le dessin.

Piège à éviter : ne pas respecter l''échelle imposée ($1{,}5$ cm) ou oublier la tangente horizontale au minimum.

Ce que l''examinateur attend : le respect de l''échelle et des asymptotes, le placement exact du minimum avec sa tangente, et une allure globale soignée.', '[{"criterion":"Respect de l''échelle et des asymptotes","points":0.5},{"criterion":"Placement du minimum et allure soignée de la courbe","points":0.5}]'::jsonb, '2019', 'Problème - C - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $M(x;y)$ un point de la courbe représentative de la fonction $x\mapsto\ln x$. Justifier que $OM=f(x)$.', '$M$ appartient à la courbe de $\ln$, donc $M(x,\ln x)$. $O$ est l''origine $(0,0)$.

$$OM = \sqrt{(x-0)^2+(\ln x-0)^2} = \sqrt{x^2+\ln^2(x)}$$

Or $f(x)=\sqrt{x^2+\ln^2(x)}$. Donc $OM=f(x)$.

Réponse : $OM=f(x)$.', 'La formule usuelle de distance euclidienne appliquée à $O(0,0)$ et $M(x,\ln x)$ redonne exactement l''expression algébrique de $f$.

Ce que l''examinateur attend : les coordonnées correctes de $M(x,\ln x)$, et l''application directe de la formule de distance.', '[{"criterion":"Démonstration exacte","points":0.25}]'::jsonb, '2019', 'Problème - C - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire l''abscisse du point $M$ en lequel la distance $OM$ est minimale.', 'D''après la question précédente, $OM=f(x)$ ; $OM$ est donc minimale exactement quand $f(x)$ est minimale.

D''après le tableau de variation de $f$ (question C.3), $f$ atteint son minimum absolu unique en $x=\alpha$.

Réponse : l''abscisse rendant $OM$ minimale est $x=\alpha$ (environ $0{,}65$).', 'Minimiser $OM$ revient exactement à minimiser $f(x)=OM$ : le tableau de variation déjà établi donne directement la réponse, sans nouveau calcul.

Piège à éviter : donner l''ordonnée au lieu de l''abscisse demandée.

Ce que l''examinateur attend : le lien entre le minimum de $f$ et celui de $OM$, et la conclusion $x=\alpha$.', '[{"criterion":"Déduction directe via le tableau de variation","points":0.25}]'::jsonb, '2019', 'Problème - C - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $x$ un réel strictement positif. Justifier que $x\le f(x)$.', 'Pour tout $x>0$, $\ln^2(x)\ge0$ (un carré est toujours positif ou nul).

En ajoutant $x^2$ : $x^2+\ln^2(x)\ge x^2$.

Comme la racine carrée est croissante sur $\mathbb{R}^+$ : $\sqrt{x^2+\ln^2(x)}\ge\sqrt{x^2}=x$ (pour $x>0$).

Réponse : $x\le f(x)$ pour tout $x>0$.', 'La positivité d''un carré ($\ln^2x\ge0$) permet de minorer $f(x)$ par $\sqrt{x^2}=x$ ; géométriquement, cela confirme que $(\mathcal{C}_f)$ reste toujours au-dessus de son asymptote $y=x$.

Piège à éviter : écrire $\sqrt{x^2}=x$ sans préciser que $x>0$.

Ce que l''examinateur attend : l''utilisation de $\ln^2(x)\ge0$ et de la croissance de la racine carrée.', '[{"criterion":"Démonstration complète","points":0.25}]'::jsonb, '2019', 'Problème - C - 6a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que $\sqrt{x^2+\ln^2(x)}-x \le \dfrac{\ln^2(x)}{2x}$.', 'En multipliant par la quantité conjuguée :
$$\sqrt{x^2+\ln^2(x)}-x = \frac{\ln^2(x)}{\sqrt{x^2+\ln^2(x)}+x}$$

D''après la question C.6.a, $\sqrt{x^2+\ln^2(x)}=f(x)\ge x$, donc $\sqrt{x^2+\ln^2(x)}+x \ge 2x$.

En passant à l''inverse (quantités positives) :
$$\frac1{\sqrt{x^2+\ln^2(x)}+x} \le \frac1{2x}$$

En multipliant par $\ln^2(x)\ge0$ :
$$\frac{\ln^2(x)}{\sqrt{x^2+\ln^2(x)}+x} \le \frac{\ln^2(x)}{2x}$$

Réponse : $\sqrt{x^2+\ln^2(x)}-x \le \dfrac{\ln^2(x)}{2x}$.', 'On réutilise la même transformation par quantité conjuguée qu''à la question C.4.a. L''inégalité $f(x)\ge x$ (question C.6.a) minore le dénominateur par $2x$ ; en passant à l''inverse (ce qui inverse le sens de l''inégalité), on obtient la majoration cherchée.

Piège à éviter : oublier d''inverser le sens de l''inégalité lors du passage à l''inverse.

Ce que l''examinateur attend : l''expression fractionnaire via la conjuguée, l''utilisation rigoureuse de $f(x)\ge x$, et le passage à l''inverse correct.', '[{"criterion":"Expression fractionnaire","points":0.25},{"criterion":"Minoration du dénominateur et conclusion finale","points":0.25}]'::jsonb, '2019', 'Problème - C - 6b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que : $\dfrac32 \le \displaystyle\int_1^2 f(x)\,dx \le \dfrac16\ln^3(2)+\dfrac32$.', 'Des questions C.6.a et C.6.b, pour tout $x\in[1,2]$ : $x \le f(x) \le x+\dfrac{\ln^2(x)}{2x}$.

En intégrant sur $[1,2]$ (croissance de l''intégrale) :
$$\int_1^2 x\,dx \le \int_1^2 f(x)\,dx \le \int_1^2\left(x+\frac{\ln^2(x)}{2x}\right)dx$$

$\displaystyle\int_1^2 x\,dx = \left[\frac{x^2}2\right]_1^2 = 2-\frac12 = \frac32$.

Pour l''intégrale de droite, $\frac1x\ln^2(x)=u''(x)u(x)^2$ avec $u(x)=\ln x$, de primitive $\frac13u(x)^3$ :
$$\int_1^2\frac{\ln^2(x)}x\,dx = \left[\frac13\ln^3(x)\right]_1^2 = \frac13\ln^3(2)$$
$$\int_1^2\left(x+\frac{\ln^2(x)}{2x}\right)dx = \frac32+\frac12\left(\frac13\ln^3(2)\right) = \frac32+\frac16\ln^3(2)$$

Réponse : $\dfrac32 \le \displaystyle\int_1^2 f(x)\,dx \le \dfrac16\ln^3(2)+\dfrac32$.', 'La croissance de l''intégrale (si $g\le f\le h$ sur $[a,b]$, alors leurs intégrales conservent l''ordre) permet d''intégrer directement l''encadrement obtenu aux questions C.6.a/b. La primitive de $\frac{\ln^2x}x$ s''obtient en reconnaissant la forme $u''u^2$, de primitive $\frac{u^3}3$.

Piège à éviter : ne pas reconnaître la primitive de $\frac{\ln^2(x)}x$ sous la forme $u''u^2$.

Ce que l''examinateur attend : l''utilisation de la croissance de l''intégrale, le calcul exact de $\int_1^2x\,dx=\frac32$, et la reconnaissance de la primitive donnant $\frac13\ln^3(2)$.', '[{"criterion":"Intégration de l''encadrement","points":0.25},{"criterion":"Calculs des primitives et résultat final","points":0.25}]'::jsonb, '2019', 'Problème - C - 7a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire, en unité d''aire, une valeur approchée à $10^{-1}$ près par défaut de l''aire de la portion du plan constituée des points $M(x;y)$ tels que $1\le x\le2$ et $0\le y\le f(x)$.', '$f$ étant continue et strictement positive sur $[1,2]$, l''aire de ce domaine est $\mathcal A=\displaystyle\int_1^2 f(x)\,dx$.

D''après la question précédente : $\dfrac32 \le \mathcal A \le \dfrac32+\dfrac16\ln^3(2)$.

Numériquement : $\ln2\approx0{,}69315 \implies \ln^3(2)\approx0{,}3330 \implies \dfrac16\ln^3(2)\approx0{,}0555$.

Donc $1{,}5 \le \mathcal A \le 1{,}5555$.

La valeur approchée à $10^{-1}$ près par défaut est $1{,}5$.

Réponse : l''aire vaut approximativement $1{,}5$ unité d''aire (à $10^{-1}$ près par défaut).', 'L''aire sous une courbe positive s''exprime par l''intégrale définie de la fonction ; l''encadrement numérique montre que la valeur exacte se situe entre $1{,}5$ et $1{,}5555$, dont la troncature par défaut à $10^{-1}$ reste $1{,}5$.

Piège à éviter : confondre valeur approchée par défaut (qui tronque) et valeur arrondie — $1{,}5555$ tronqué par défaut à $10^{-1}$ donne $1{,}5$, pas $1{,}6$.

Ce que l''examinateur attend : l''identification de l''aire comme $\int_1^2f(x)\,dx$, l''utilisation de la valeur numérique de $\ln2$, et la valeur finale exacte $1{,}5$.', '[{"criterion":"Lien entre l''aire et l''intégrale","points":0.25},{"criterion":"Obtention de la valeur approchée 1,5 u.a.","points":0.25}]'::jsonb, '2019', 'Problème - C - 7b', 'C', 'draft');
COMMIT;