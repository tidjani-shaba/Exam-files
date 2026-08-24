-- 2023 Baccalaureat C Mathematiques -- 28 questions (no Serie C/E split in this paper)
-- CORRECTED vs source txt: Exercice 2 Q1/Q2 -- source said the root is "i", verified against the real exam PDF and by
-- direct algebra that the actual root is "-i" (i is NOT a root of the given equation for general alpha). Fixed throughout Q1/Q2.
-- CORRECTED vs source txt: Partie B Tache 2 -- source had wrong sum(xi)=88.9 and sum(xi^2)=825.47 (recomputed: 86.9 and 795.27),
-- which had produced a nonsensical NEGATIVE regression slope for an advertising-vs-revenue relationship. Recomputed with correct sums.
-- Real official corrige with point values, condensed to house style.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère les fonctions numériques $f$ et $h$ de la variable réelle $x$ définies sur $D=]1;+\infty[$ par $f(x)=x-2+\ln\sqrt{x-1}$ et $h(x)=\dfrac{2x-2-\ln(x-1)}{2\sqrt{x-1}}$. Le plan est rapporté à un repère orthonormé $(O,\vec i,\vec j)$. Dresser le tableau de variations de $f$ sur $D$.', '$f(x) = x-2+\frac12\ln(x-1)$.

Limites : en $1^+$, $x-2\to-1$ et $\ln(x-1)\to-\infty$, donc $f(x)\to-\infty$. En $+\infty$, $f(x)\to+\infty$.

Dérivée : $$f''(x) = 1+\frac1{2(x-1)} = \frac{2x-1}{2(x-1)}$$

Pour $x>1$ : $2x-1>1>0$ et $2(x-1)>0$, donc $f''(x)>0$ sur $D$.

Réponse : $f$ est strictement croissante sur $]1;+\infty[$, avec $\displaystyle\lim_{x\to1^+}f(x)=-\infty$ et $\displaystyle\lim_{x\to+\infty}f(x)=+\infty$.', 'On transforme $\ln\sqrt{x-1}$ en $\frac12\ln(x-1)$ pour simplifier la dérivation, puis on calcule les limites aux bornes et le signe de la dérivée (ici évident, numérateur et dénominateur positifs pour $x>1$).

Piège à éviter : oublier cette transformation, et se tromper sur la limite $\ln(0^+)=-\infty$ quand $x\to1^+$.

Ce que l''examinateur attend : le calcul correct des deux limites, le calcul exact de $f''(x)$ avec justification du signe positif, et un tableau de variations complet.', '[{"criterion":"Calcul correct des deux limites aux bornes","points":0.25},{"criterion":"Calcul exact de f''(x) et justification de son signe positif","points":0.25},{"criterion":"Tableau de variations complet et exact","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que le réel $2$ est l''unique solution de l''équation $f(x)=0$.', 'Vérification : $f(2)=2-2+\ln\sqrt{2-1}=0+\ln(1)=0$. Donc $2$ est solution.

Unicité : $f$ est continue et strictement croissante sur $]1;+\infty[$ (question précédente), elle réalise donc une bijection de $]1;+\infty[$ vers $\mathbb{R}$. Donc $0$ admet un unique antécédent.

Réponse : $2$ est l''unique solution de $f(x)=0$ sur $]1;+\infty[$.', 'Deux étapes indispensables : vérifier que $x=2$ est solution (calcul direct), puis justifier l''unicité par la stricte monotonie de $f$ (bijection).

Piège à éviter : se contenter de vérifier $f(2)=0$ sans justifier l''unicité, ce qui fait perdre la moitié des points.

Ce que l''examinateur attend : le calcul explicite de $f(2)=0$, et la justification de l''unicité par continuité + stricte monotonie.', '[{"criterion":"Calcul explicite de f(2)=0","points":0.25},{"criterion":"Justification de l''unicité par continuité et stricte monotonie","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire, suivant les valeurs de $x$, le signe de $f(x)$.', '$f$ est strictement croissante et s''annule uniquement en $x=2$.

Pour $x\in]1,2[$ : $x<2\implies f(x)<f(2)=0$. En $x=2$ : $f(2)=0$. Pour $x\in]2,+\infty[$ : $x>2\implies f(x)>0$.

Réponse : $f(x)<0$ sur $]1,2[$, $f(2)=0$, $f(x)>0$ sur $]2,+\infty[$.', 'Une fonction strictement croissante qui s''annule en un point est négative avant ce point et positive après, par conservation de l''ordre.

Ce que l''examinateur attend : la déduction correcte du signe sur les deux intervalles $]1,2[$ et $]2,+\infty[$.', '[{"criterion":"Déduction correcte du signe sur ]1,2[ et ]2,+∞[","points":0.5}]'::jsonb, '2023', 'Exercice 1 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que $\forall x\in]1;+\infty[$, $h''(x)=\dfrac{f(x)}{2(x-1)\sqrt{x-1}}$, puis en déduire les variations de $h$.', '$h(x)=\dfrac{u(x)}{v(x)}$ avec $u(x)=2x-2-\ln(x-1)$, $v(x)=2\sqrt{x-1}$.

$u''(x)=2-\frac1{x-1}=\frac{2x-3}{x-1}$ ; $v''(x)=\frac1{\sqrt{x-1}}$.

$$u''(x)v(x)-u(x)v''(x) = \frac{2(2x-3)}{\sqrt{x-1}} - \frac{2x-2-\ln(x-1)}{\sqrt{x-1}} = \frac{2x-4+\ln(x-1)}{\sqrt{x-1}} = \frac{2f(x)}{\sqrt{x-1}}$$

$$h''(x) = \frac{\frac{2f(x)}{\sqrt{x-1}}}{4(x-1)} = \frac{f(x)}{2(x-1)\sqrt{x-1}}$$

Comme $2(x-1)\sqrt{x-1}>0$ pour $x>1$, le signe de $h''$ est celui de $f$ (question 3) : $h$ décroît strictement sur $]1,2[$, $h''(2)=0$, $h$ croît strictement sur $]2,+\infty[$.

Réponse : $h''(x)=\dfrac{f(x)}{2(x-1)\sqrt{x-1}}$ ; $h$ décroît sur $]1,2[$ et croît sur $]2,+\infty[$.', 'On applique la formule de dérivation d''un quotient, on réduit au même dénominateur, et l''expression obtenue au numérateur fait apparaître exactement $f(x)$. Le dénominateur étant toujours positif, le signe de $h''$ suit celui de $f$ déjà établi.

Piège à éviter : erreurs d''algèbre dans les fractions avec racine carrée.

Ce que l''examinateur attend : la démonstration détaillée de la formule de $h''(x)$, et la déduction exacte des variations.', '[{"criterion":"Démonstration détaillée de la formule de h''(x)","points":0.5},{"criterion":"Déduction exacte des variations de h","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On pose $I=\displaystyle\int_2^3 h(x)dx$. Calculer $\displaystyle\int_2^3\dfrac{\ln(x-1)}{2\sqrt{x-1}}dx$ à l''aide d''une intégration par parties, et en déduire la valeur de $I$.', 'Calcul de $J=\displaystyle\int_2^3\frac{\ln(x-1)}{2\sqrt{x-1}}dx$ par parties, avec $u(x)=\ln(x-1)$, $u''(x)=\frac1{x-1}$, $v''(x)=\frac1{2\sqrt{x-1}}$, $v(x)=\sqrt{x-1}$ :
$$J = \big[\sqrt{x-1}\ln(x-1)\big]_2^3 - \int_2^3\frac1{\sqrt{x-1}}dx = (\sqrt2\ln2-0) - \big[2\sqrt{x-1}\big]_2^3$$
$$J = \sqrt2\ln2 - (2\sqrt2-2) = \sqrt2\ln2-2\sqrt2+2$$

Comme $h(x)=\sqrt{x-1}-\dfrac{\ln(x-1)}{2\sqrt{x-1}}$ :
$$I = \int_2^3\sqrt{x-1}\,dx - J$$
$$\int_2^3\sqrt{x-1}\,dx = \left[\frac23(x-1)^{3/2}\right]_2^3 = \frac23(2\sqrt2)-\frac23(1) = \frac{4\sqrt2-2}3$$
$$I = \frac{4\sqrt2-2}3-(\sqrt2\ln2-2\sqrt2+2) = \frac{10\sqrt2-8-3\sqrt2\ln2}3$$

Réponse : $J=\sqrt2\ln2-2\sqrt2+2$ et $I=\dfrac{10\sqrt2-8-3\sqrt2\ln2}3$.', 'L''intégration par parties $\int uv''=[uv]-\int u''v$ s''applique en choisissant $u=\ln(x-1)$ (dont la dérivée est une fraction rationnelle simple). On décompose ensuite $h(x)$ pour réutiliser $J$ dans le calcul de $I$.

Piège à éviter : oublier de distribuer le signe moins lors de la soustraction de $J$.

Ce que l''examinateur attend : la mise en place correcte de l''intégration par parties avec le résultat intermédiaire, et le calcul de $\int\sqrt{x-1}\,dx$ menant à la valeur exacte de $I$.', '[{"criterion":"Pose correcte de l''intégration par parties et résultat intermédiaire","points":0.5},{"criterion":"Calcul de l''intégrale de √(x-1) et valeur exacte de I","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère la suite $(u_n)_n$ définie par $u_n=\displaystyle\sum_{j=0}^n\frac1n h\left(2+\frac jn\right)$. Soient $n\in\mathbb{N}^*$ et $j$ un entier naturel tel que $0\le j\le n-1$. En utilisant les variations de $h$ sur $[2;+\infty[$, démontrer que $\dfrac1n h\left(2+\dfrac jn\right) \le \displaystyle\int_{2+j/n}^{2+(j+1)/n} h(x)dx \le \dfrac1n h\left(2+\dfrac{j+1}n\right)$.', '$h$ est strictement croissante sur $[2,+\infty[$. Pour $x\in\left[2+\frac jn,2+\frac{j+1}n\right]$ :
$$h\left(2+\frac jn\right) \le h(x) \le h\left(2+\frac{j+1}n\right)$$

En intégrant sur cet intervalle (de longueur $\frac1n$), les bornes étant constantes :
$$\frac1n h\left(2+\frac jn\right) \le \int_{2+j/n}^{2+(j+1)/n}h(x)dx \le \frac1n h\left(2+\frac{j+1}n\right)$$

Réponse : l''encadrement est démontré par croissance de $h$ et intégration sur un intervalle de longueur $\frac1n$.', 'Si une fonction est encadrée par deux constantes sur $[a,b]$, son intégrale est encadrée par ces constantes multipliées par la largeur $(b-a)$ ; ici $b-a=\frac1n$.

Piège à éviter : ne pas préciser que c''est la croissance de $h$ qui permet de passer de l''encadrement sur $x$ à celui sur $h(x)$.

Ce que l''examinateur attend : l''application de la croissance de $h$ sur l''intervalle, puis le passage à l''intégrale.', '[{"criterion":"Application de la croissance de h sur l''intervalle","points":0.25},{"criterion":"Passage à l''intégrale et conclusion","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déduire de la question précédente que $u_n-\dfrac{h(3)}n \le I \le u_n-\dfrac{h(2)}n$.', 'En sommant l''inégalité précédente pour $j$ de $0$ à $n-1$ :
$$\sum_{j=0}^{n-1}\frac1n h\left(2+\frac jn\right) \le \sum_{j=0}^{n-1}\int_{2+j/n}^{2+(j+1)/n}h(x)dx \le \sum_{j=0}^{n-1}\frac1n h\left(2+\frac{j+1}n\right)$$

Par la relation de Chasles, la somme centrale vaut $\int_2^3h(x)dx=I$.

La somme de gauche vaut $u_n-\frac1n h(3)$ (elle manque le terme $j=n$ de $u_n$). La somme de droite, en posant $k=j+1$, vaut $u_n-\frac1n h(2)$ (elle manque le terme $k=0$).

Réponse : $u_n-\dfrac{h(3)}n \le I \le u_n-\dfrac{h(2)}n$.', 'On somme les encadrements membre à membre ; la relation de Chasles regroupe la somme d''intégrales contiguës en une seule intégrale de $2$ à $3$. Il faut repérer que $u_n$ (qui va de $j=0$ à $n$, donc $n+1$ termes) diffère des sommes partielles obtenues par exactement un terme de bord.

Piège à éviter : se tromper dans les indices, $u_n$ contenant $(n+1)$ termes et non $n$.

Ce que l''examinateur attend : la sommation des inégalités avec Chasles, et l''identification correcte des termes en fonction de $u_n$.', '[{"criterion":"Sommation des inégalités et utilisation de Chasles","points":0.25},{"criterion":"Identification correcte des termes en fonction de un","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 5c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer la limite de la suite $(u_n)_{n\in\mathbb{N}^*}$.', 'De l''encadrement précédent, on déduit : $I+\dfrac{h(2)}n \le u_n \le I+\dfrac{h(3)}n$.

Or $\displaystyle\lim_{n\to+\infty}\frac{h(2)}n=0$ et $\displaystyle\lim_{n\to+\infty}\frac{h(3)}n=0$.

Par le théorème des gendarmes :
$$\lim_{n\to+\infty} u_n = I$$

Réponse : $\displaystyle\lim_{n\to+\infty}u_n = I = \dfrac{10\sqrt2-8-3\sqrt2\ln2}3$.', 'On isole $u_n$ au centre de l''encadrement, puis on fait tendre $n$ vers $+\infty$ : les deux bornes convergent vers la même constante $I$, ce qui force $u_n\to I$ par le théorème des gendarmes.

Piège à éviter : oublier de réisoler $u_n$ avant de passer à la limite.

Ce que l''examinateur attend : l''application du théorème des gendarmes et la valeur finale.', '[{"criterion":"Application du théorème des gendarmes et valeur finale","points":0.25}]'::jsonb, '2023', 'Exercice 1 - 5d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Le plan est muni d''un repère orthonormé direct $(O,\vec i,\vec j)$. On considère l''équation $(E) : z^2+(-3\cos\alpha-1+i(3-5\sin\alpha))z+5\sin\alpha-2+i(-3\cos\alpha-1)=0$ d''inconnue complexe $z$, où $\alpha$ est un nombre réel. Montrer que $-i$ est une solution de $(E)$.', 'Remplaçons $z$ par $-i$ dans le membre de gauche de $(E)$.

$(-i)^2=-1$.

$(-i)\times\big[-3\cos\alpha-1+i(3-5\sin\alpha)\big] = -i(-3\cos\alpha-1) - i^2(3-5\sin\alpha) = i(3\cos\alpha+1)+(3-5\sin\alpha)$

En sommant les trois termes :
$$-1 + \big[(3-5\sin\alpha)+i(3\cos\alpha+1)\big] + \big[5\sin\alpha-2+i(-3\cos\alpha-1)\big]$$
$$= \big(-1+3-5\sin\alpha+5\sin\alpha-2\big) + i\big(3\cos\alpha+1-3\cos\alpha-1\big) = 0+0i = 0$$

Réponse : $-i$ vérifie l''équation $(E)$ pour tout réel $\alpha$, donc $-i$ est solution de $(E)$.', 'On substitue directement $z=-i$ dans le polynôme, en séparant soigneusement parties réelle et imaginaire ; tous les termes en $\alpha$ (contenant $\cos\alpha$ et $\sin\alpha$) s''annulent deux à deux, laissant $0+0i$.

Piège à éviter : confondre $(-i)^2=-1$ (identique à $i^2$), et se tromper de signe dans le produit $(-i)\times i(3-5\sin\alpha)=(3-5\sin\alpha)$.

Ce que l''examinateur attend : la substitution explicite et le calcul montrant que le résultat s''annule identiquement, pour tout $\alpha$.', '[{"criterion":"Substitution explicite et calcul montrant 0+0i=0","points":0.25}]'::jsonb, '2023', 'Exercice 2 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'En déduire l''autre solution de $(E)$.', 'Soit $z_1=-i$ et $z_2$ l''autre solution. Le produit des racines d''une équation $az^2+bz+c=0$ vaut $z_1z_2=\frac ca$ ; ici $a=1$ et $c=5\sin\alpha-2+i(-3\cos\alpha-1)$ :
$$(-i)z_2 = 5\sin\alpha-2+i(-3\cos\alpha-1)$$

En divisant par $-i$ (soit en multipliant par $i$, car $\frac1{-i}=i$) :
$$z_2 = i\big[5\sin\alpha-2+i(-3\cos\alpha-1)\big] = i(5\sin\alpha-2) - (-3\cos\alpha-1) = (3\cos\alpha+1)+i(5\sin\alpha-2)$$

Réponse : l''autre solution est $z_2=3\cos\alpha+1+i(-2+5\sin\alpha)$.', 'Connaissant une racine $z_1$, la relation entre coefficients et racines $z_1z_2=\frac ca$ donne directement l''autre racine sans refaire tout le discriminant.

Piège à éviter : erreur de signe lors de la division par $-i$ (rappel : $\frac1{-i}=i$, puisque $-i\times i=1$).

Ce que l''examinateur attend : l''utilisation de la relation entre coefficients et racines (produit ou somme), et l''expression exacte de $z_2$.', '[{"criterion":"Utilisation des relations coefficients-racines (produit ou somme)","points":0.25},{"criterion":"Expression exacte de z2","points":0.25}]'::jsonb, '2023', 'Exercice 2 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Montrer que l''ensemble des points $A_\alpha$ d''affixe $z_\alpha=3\cos\alpha+1+i(-2+5\sin\alpha)$, lorsque $\alpha$ décrit $\mathbb{R}$, est la conique $(\Gamma)$ d''équation $25x^2+9y^2-50x+36y-164=0$.', 'Les coordonnées $(x,y)$ de $A_\alpha$ vérifient :
$$\begin{cases} x=1+3\cos\alpha \\ y=-2+5\sin\alpha \end{cases} \iff \begin{cases} \cos\alpha=\frac{x-1}3 \\ \sin\alpha=\frac{y+2}5 \end{cases}$$

En utilisant $\cos^2\alpha+\sin^2\alpha=1$ :
$$\left(\frac{x-1}3\right)^2+\left(\frac{y+2}5\right)^2=1 \iff \frac{(x-1)^2}9+\frac{(y+2)^2}{25}=1$$

En multipliant par $225$ :
$$25(x-1)^2+9(y+2)^2=225$$
$$25x^2-50x+25+9y^2+36y+36-225=0$$
$$25x^2+9y^2-50x+36y-164=0$$

Réponse : l''ensemble des points $A_\alpha$ est bien la conique $25x^2+9y^2-50x+36y-164=0$.', 'L''affixe $z_\alpha=x+iy$ donne une représentation paramétrique en $\alpha$ ; on isole $\cos\alpha$ et $\sin\alpha$, puis on élimine le paramètre via $\cos^2\alpha+\sin^2\alpha=1$ pour obtenir l''équation cartésienne.

Piège à éviter : erreur de développement dans $(x-1)^2$ ou $(y+2)^2$.

Ce que l''examinateur attend : l''isolement de $\cos\alpha$ et $\sin\alpha$, et l''élimination du paramètre menant à la forme développée exacte.', '[{"criterion":"Isolement de cosα et sinα","points":0.25},{"criterion":"Élimination du paramètre α et forme développée exacte","points":0.25}]'::jsonb, '2023', 'Exercice 2 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $\Omega(1,-2)$ un point du plan. Déterminer une équation de $(\Gamma)$ dans le repère $(\Omega,\vec i,\vec j)$.', 'Soient $(X,Y)$ les coordonnées dans le repère $(\Omega,\vec i,\vec j)$ : $X=x-1$, $Y=y+2$.

En substituant dans $\dfrac{(x-1)^2}9+\dfrac{(y+2)^2}{25}=1$ :
$$\frac{X^2}9+\frac{Y^2}{25}=1$$

Réponse : l''équation de $(\Gamma)$ dans $(\Omega,\vec i,\vec j)$ est $\dfrac{X^2}9+\dfrac{Y^2}{25}=1$.', 'Le changement d''origine (translation vers $\Omega$) revient à poser $X=x-x_\Omega$, $Y=y-y_\Omega$ ; l''équation réduite s''obtient directement en substituant dans la forme déjà factorisée trouvée à la question précédente.

Piège à éviter : confondre les rôles de $X$ et $Y$ (petit axe / grand axe).

Ce que l''examinateur attend : la formule de changement d''origine, et l''équation réduite exacte.', '[{"criterion":"Formule de changement d''origine et équation réduite exacte","points":0.5}]'::jsonb, '2023', 'Exercice 2 - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire la nature exacte de $(\Gamma)$ ; préciser son excentricité et les coordonnées de ses sommets dans le repère $(\Omega,\vec i,\vec j)$.', '$\dfrac{X^2}9+\dfrac{Y^2}{25}=1$ est de la forme $\dfrac{X^2}{b^2}+\dfrac{Y^2}{a^2}=1$ avec $a=5$, $b=3$ ($a>b$) : c''est une ellipse d''axe focal vertical.

$c=\sqrt{a^2-b^2}=\sqrt{25-9}=4$. Excentricité : $e=\dfrac ca=\dfrac45=0{,}8$.

Sommets sur l''axe principal (vertical) : $A(0,5)$, $A''(0,-5)$. Sommets sur l''axe secondaire (horizontal) : $B(3,0)$, $B''(-3,0)$.

Réponse : $(\Gamma)$ est une ellipse d''excentricité $e=\dfrac45$, de sommets $A(0,5)$, $A''(0,-5)$, $B(3,0)$, $B''(-3,0)$ dans $(\Omega,\vec i,\vec j)$.', 'Une équation $\frac{X^2}{b^2}+\frac{Y^2}{a^2}=1$ avec $a>b$ représente une ellipse dont l''axe focal est l''axe $Y$ (vertical) ; l''excentricité est toujours $e=c/a$ avec $c^2=a^2-b^2$ ($a$ étant le plus grand des deux).

Piège à éviter : diviser par $b=3$ au lieu de $a=5$ pour l''excentricité.

Ce que l''examinateur attend : l''identification de la nature (ellipse), le calcul de l''excentricité, et les coordonnées exactes des quatre sommets.', '[{"criterion":"Identification de la nature (ellipse)","points":0.25},{"criterion":"Calcul de l''excentricité e=4/5","points":0.25},{"criterion":"Coordonnées exactes des quatre sommets","points":0.5}]'::jsonb, '2023', 'Exercice 2 - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Construire $(\Gamma)$ dans le repère $(\Omega,\vec i,\vec j)$.', 'Placer le centre $\Omega$, les sommets $A(0,5)$, $A''(0,-5)$, $B(3,0)$, $B''(-3,0)$, et éventuellement les foyers $F(0,4)$, $F''(0,-4)$.

Tracer une courbe ovale régulière et symétrique, allongée le long de l''axe vertical, passant par ces quatre sommets.

Réponse : ellipse tracée dans le repère $(\Omega,\vec i,\vec j)$, allongée selon l''axe des ordonnées.', 'On place d''abord les quatre sommets et le centre, puis on trace une courbe lisse et symétrique qui les relie, en respectant l''allongement vertical (puisque le grand axe est porté par $(\Omega Y)$).

Piège à éviter : dessiner des sommets pointus au lieu d''une courbe lisse tangente aux axes.

Ce que l''examinateur attend : le placement correct des axes/centre, le placement exact des sommets et foyers, et un tracé lisse et fidèle.', '[{"criterion":"Placement correct des axes et du centre","points":0.25},{"criterion":"Placement exact des sommets et foyers","points":0.25},{"criterion":"Tracé lisse et fidèle de l''ellipse","points":0.25}]'::jsonb, '2023', 'Exercice 2 - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Soient $B$ et $C$ deux points d''affixes respectives $-i$ et $3$. Déterminer l''écriture complexe de la similitude directe $S$ de centre $\Omega$ telle que $S(C)=B$.', 'L''écriture d''une similitude directe de centre $\Omega(z_\Omega)$ est $z''-z_\Omega=a(z-z_\Omega)$, $a\in\mathbb{C}^*$.

$z_\Omega=1-2i$, $z_C=3$, $z_B=-i$. La condition $S(C)=B$ donne :
$$z_B-z_\Omega = a(z_C-z_\Omega) \implies -i-(1-2i) = a(3-(1-2i)) \implies -1+i = a(2+2i)$$
$$a = \frac{-1+i}{2+2i} = \frac{(-1+i)(2-2i)}{8} = \frac{-2+2i+2i+2}8 = \frac{4i}8 = \frac12 i$$

En développant $z''-(1-2i)=\frac12i(z-(1-2i))$ :
$$z'' = \frac12iz - \frac12i - 1 + 1 - 2i = \frac12iz+1-\frac52i$$

Réponse : $z''=\dfrac12iz+1-\dfrac52i$.', 'Toute similitude directe s''écrit $z''=az+b$ ; connaissant le centre, on utilise la forme $z''-z_\Omega=a(z-z_\Omega)$ et on détermine $a$ à partir des affixes connues de $C$ et de son image $B$.

Piège à éviter : erreur de calcul lors de la division complexe (multiplier par le conjugué du dénominateur).

Ce que l''examinateur attend : le calcul du coefficient $a=\frac12i$, et la forme développée finale de $z''$.', '[{"criterion":"Calcul du coefficient a=1/2 i","points":0.25},{"criterion":"Forme développée finale de z''","points":0.25}]'::jsonb, '2023', 'Exercice 2 - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'En déduire l''angle de $S$.', 'L''angle $\theta$ d''une similitude directe $z''=az+b$ est un argument de $a$.

$a=\dfrac12i = \dfrac12e^{i\pi/2}$, donc $\theta=\arg(a)\equiv\dfrac\pi2\ [2\pi]$.

Réponse : l''angle de $S$ est $\dfrac\pi2$ radians (soit $90°$).', 'Pour une similitude directe $z''=az+b$, l''angle est $\theta=\arg(a)$ ; ici $a$ est un imaginaire pur strictement positif, dont l''argument vaut directement $\frac\pi2$.

Piège à éviter : confondre l''angle de la similitude avec son rapport ($k=|a|=\frac12$).

Ce que l''examinateur attend : l''identification de l''angle $\arg(a)=\frac\pi2$.', '[{"criterion":"Identification de l''angle arg(a)=π/2","points":0.25}]'::jsonb, '2023', 'Exercice 2 - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'L''espace est muni d''un repère orthonormé direct $(O,\vec i,\vec j,\vec k)$. Soient $A(-1,-1,0)$, $B(0,0,2)$ et $C(-1,1,2)$ trois points de l''espace. Montrer que les points $A$, $B$ et $C$ définissent un plan.', '$\overrightarrow{AB}=(1,1,2)$, $\overrightarrow{AC}=(0,2,2)$.

$$\overrightarrow{AB}\wedge\overrightarrow{AC} = \big(1\times2-2\times2,\ 2\times0-1\times2,\ 1\times2-1\times0\big) = (-2,-2,2) \ne \vec0$$

Comme $\overrightarrow{AB}\wedge\overrightarrow{AC}\ne\vec0$, les vecteurs ne sont pas colinéaires : $A$, $B$, $C$ ne sont pas alignés et définissent un plan unique $(ABC)$.

Réponse : $A$, $B$, $C$ définissent un plan.', 'Trois points définissent un plan s''ils ne sont pas alignés, c''est-à-dire si deux vecteurs qu''ils forment ne sont pas colinéaires — condition équivalente à un produit vectoriel non nul.

Piège à éviter : erreur d''inattention dans les soustractions de coordonnées.

Ce que l''examinateur attend : le calcul des vecteurs $\overrightarrow{AB}$, $\overrightarrow{AC}$, et la preuve de non-colinéarité via le produit vectoriel.', '[{"criterion":"Calcul des vecteurs AB et AC","points":0.25},{"criterion":"Preuve de non-colinéarité (produit vectoriel non nul)","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer une équation cartésienne de ce plan.', 'Un vecteur normal à $(ABC)$ est $\vec n=-\frac12(\overrightarrow{AB}\wedge\overrightarrow{AC})=(1,1,-1)$.

L''équation cartésienne est de la forme $x+y-z+d=0$. Comme $B(0,0,2)\in(ABC)$ :
$$0+0-2+d=0 \implies d=2$$

Réponse : $(ABC) : x+y-z+2=0$.', 'Le produit vectoriel fournit un vecteur normal (ici simplifié par un facteur $-\frac12$) ; on trouve la constante $d$ en substituant les coordonnées d''un des trois points.

Piège à éviter : oublier de simplifier le vecteur normal pour une équation plus lisible.

Ce que l''examinateur attend : la détermination du vecteur normal, et le calcul de $d$ menant à l''équation finale.', '[{"criterion":"Détermination du vecteur normal","points":0.25},{"criterion":"Calcul de la constante d et équation finale","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit $(P)$ le plan d''équation $x+y-z+2=0$. Déterminer l''expression analytique de la réflexion $f$ de plan $(P)$.', 'Soit $M(x,y,z)$ et $M''(x'',y'',z'')=f(M)$. Deux conditions : $\overrightarrow{MM''}$ colinéaire au vecteur normal $\vec n(1,1,-1)$, et le milieu $I$ de $[MM'']$ appartient à $(P)$.

$\overrightarrow{MM''}=k\vec n$ : $x''=x+k$, $y''=y+k$, $z''=z-k$.

$I\in(P)$ : $\frac{2x+k}2+\frac{2y+k}2-\frac{2z-k}2+2=0 \implies 2x+2y-2z+3k+4=0 \implies k=-\frac23(x+y-z+2)$.

En substituant $k$ :

Réponse :
$$\begin{cases} x'' = \frac13(x-2y+2z-4) \\ y'' = \frac13(-2x+y+2z-4) \\ z'' = \frac13(2x+2y+z+4) \end{cases}$$', 'Une réflexion transforme $M$ en $M''$ tel que $[MM'']$ soit perpendiculaire au plan et coupé en son milieu par lui : ces deux conditions donnent un paramètre $k$ (proportionnel à $\|\vec n\|^2=3$) que l''on substitue pour obtenir les coordonnées finales.

Piège à éviter : erreurs de signe lors du remplacement du paramètre $k$.

Ce que l''examinateur attend : la traduction géométrique (orthogonalité + milieu), le calcul de $k$, et l''expression analytique finale.', '[{"criterion":"Traduction géométrique de la réflexion (orthogonalité + milieu)","points":0.25},{"criterion":"Calcul du paramètre k","points":0.25},{"criterion":"Expression analytique finale","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit $g$ la transformation de l''espace d''expression analytique $x''=\frac13(-x+2y-2z+4)$, $y''=\frac13(2x-y-2z+4)$, $z''=\frac13(-2x-2y-z+8)$. Montrer que l''ensemble $(D)$ des points invariants par $g$ est la droite passant par $B$ dont un vecteur directeur est $\vec v(-1,-1,1)$.', '$M$ est invariant $\iff g(M)=M$ :
$$\begin{cases} 4x-2y+2z-4=0 \\ -2x+4y+2z-4=0 \\ 2x+2y+4z-8=0 \end{cases} \iff \begin{cases} 2x-y+z-2=0 \ (L_1)\\ -x+2y+z-2=0 \ (L_2)\\ x+y+2z-4=0 \ (L_3) \end{cases}$$

$L_1-L_2$ : $3x-3y=0 \implies x=y$. En substituant dans $L_3$ : $2x+2z-4=0 \implies z=2-x$.

En posant $x=-t$ : $\begin{cases}x=-t\\y=-t\\z=2+t\end{cases}$, $t\in\mathbb{R}$ : la droite passant par $B(0,0,2)$ (pour $t=0$) de vecteur directeur $\vec v(-1,-1,1)$.

Réponse : $(D)$ est la droite passant par $B(0,0,2)$, de vecteur directeur $\vec v(-1,-1,1)$.', 'On pose le système $x''=x,y''=y,z''=z$, on le résout (le système à 3 équations se réduit, deux équations étant dépendantes), et on paramètre la droite solution en identifiant un point particulier ($t=0$) et un vecteur directeur.

Piège à éviter : se perdre dans la résolution du système à trois équations.

Ce que l''examinateur attend : la pose correcte du système d''invariance, sa résolution, et l''identification de la droite passant par $B$ avec le vecteur $\vec v$.', '[{"criterion":"Pose correcte du système d''invariance g(M)=M","points":0.25},{"criterion":"Résolution du système","points":0.25},{"criterion":"Identification de la droite passant par B et du vecteur v","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soient $M$ et $M''$ deux points de l''espace tels que $g(M)=M''$. Montrer que $\overrightarrow{MM''}$ est un vecteur normal à la droite $(D)$.', '$\overrightarrow{MM''}=(x''-x,y''-y,z''-z)$ avec $x''-x=\frac13(-4x+2y-2z+4)$, $y''-y=\frac13(2x-4y-2z+4)$, $z''-z=\frac13(-2x-2y-4z+8)$.

Produit scalaire avec $\vec v(-1,-1,1)$ :
$$\overrightarrow{MM''}\cdot\vec v = -(x''-x)-(y''-y)+(z''-z)$$
$$= \frac13\big[(4x-2y+2z-4)+(-2x+4y+2z-4)+(-2x-2y-4z+8)\big] = \frac13(0)=0$$

Réponse : $\overrightarrow{MM''}\cdot\vec v=0$, donc $\overrightarrow{MM''}$ est orthogonal (normal) à $(D)$.', 'Deux vecteurs sont orthogonaux si leur produit scalaire est nul ; on exprime $\overrightarrow{MM''}$ en fonction de $(x,y,z)$ puis on calcule son produit scalaire avec le vecteur directeur $\vec v$ de $(D)$.

Piège à éviter : mal regrouper les termes en $x$, $y$, $z$ et les constantes lors du calcul littéral.

Ce que l''examinateur attend : l''expression exacte des coordonnées de $\overrightarrow{MM''}$, et le calcul du produit scalaire concluant à l''orthogonalité.', '[{"criterion":"Expression exacte des coordonnées de MM''","points":0.25},{"criterion":"Calcul du produit scalaire et conclusion de l''orthogonalité","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 4bi', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Montrer que le milieu du segment $[MM'']$ appartient à $(D)$.', 'Soit $K$ le milieu de $[MM'']$ :
$$x_K = \frac13(x+y-z+2), \quad y_K=\frac13(x+y-z+2), \quad z_K = -\frac13(x+y-z-4)$$

On constate $x_K=y_K$, et $z_K=2-x_K$. Ces deux conditions caractérisent exactement les points de $(D)$ (question 4.a).

Réponse : le milieu $K$ appartient bien à la droite $(D)$.', 'On calcule les coordonnées du milieu par la moyenne des coordonnées de $M$ et $M''$, puis on vérifie qu''elles satisfont les mêmes relations ($x=y$ et $z=2-x$) que celles caractérisant $(D)$.

Piège à éviter : erreurs de factorisation lors de la simplification des coordonnées de $K$.

Ce que l''examinateur attend : les coordonnées du milieu, et la preuve de son appartenance à $(D)$.', '[{"criterion":"Coordonnées du milieu K","points":0.25},{"criterion":"Preuve d''appartenance à (D)","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 4bii', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'En déduire que $g$ est un demi-tour.', 'Pour tout point $M$ : $\overrightarrow{MM''}$ est orthogonal à $(D)$ (question 4.b.i), et le milieu de $[MM'']$ appartient à $(D)$ (question 4.b.ii).

Ces deux propriétés caractérisent exactement le demi-tour (symétrie orthogonale par rapport à une droite, dans l''espace) d''axe $(D)$.

Réponse : $g$ est le demi-tour d''axe $(D)$.', 'Dans l''espace, l''application qui envoie $M$ sur $M''$ tel que $(D)$ soit à la fois orthogonale à $[MM'']$ et passe par son milieu est, par définition, le demi-tour d''axe $(D)$.

Piège à éviter : parler de « symétrie axiale » (terme réservé au plan) plutôt que de « demi-tour » dans l''espace.

Ce que l''examinateur attend : la conclusion correcte basée sur les deux propriétés précédentes.', '[{"criterion":"Conclusion correcte basée sur les deux propriétés précédentes","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Montrer que $(P)\perp(D)$.', 'Un vecteur normal à $(P) : x+y-z+2=0$ est $\vec n_P(1,1,-1)$. Un vecteur directeur de $(D)$ est $\vec v(-1,-1,1)$.

$\vec v = -1\cdot\vec n_P$ : les deux vecteurs sont colinéaires, donc $(D)$ est orthogonale à $(P)$.

Réponse : $(P)\perp(D)$.', 'Une droite est orthogonale à un plan si et seulement si son vecteur directeur est colinéaire au vecteur normal du plan.

Piège à éviter : confondre la condition d''orthogonalité droite-plan avec celle entre deux plans.

Ce que l''examinateur attend : la vérification de la colinéarité des deux vecteurs.', '[{"criterion":"Vérification de la colinéarité des deux vecteurs","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'En déduire que $f\circ g$ est une symétrie centrale dont on précisera le centre.', '$f$ est la réflexion de plan $(P)$, $g$ le demi-tour d''axe $(D)$, avec $(D)\perp(P)$ (question précédente) : $(D)$ coupe $(P)$ en un unique point $I$.

La composée d''une réflexion de plan $(P)$ et d''un demi-tour d''axe $(D)$ orthogonal à $(P)$ est la symétrie centrale de centre $I=(P)\cap(D)$.

Calcul de $I$ : $I\in(D) \implies I(-t,-t,2+t)$. En substituant dans $(P)$ :
$$(-t)+(-t)-(2+t)+2=0 \iff -3t=0 \iff t=0$$

Pour $t=0$ : $I=B(0,0,2)$.

Réponse : $f\circ g$ est la symétrie centrale de centre $B(0,0,2)$.', 'C''est un résultat classique de géométrie de l''espace : la composée d''une réflexion de plan $(P)$ et d''un demi-tour d''axe $(D)$ perpendiculaire à ce plan est la symétrie centrale de centre le point de percée $I=(P)\cap(D)$ ; il reste à calculer $I$ en substituant la paramétrisation de $(D)$ dans l''équation de $(P)$.

Piège à éviter : mauvaise identification du point d''intersection.

Ce que l''examinateur attend : l''identification du type de transformation (symétrie centrale), et la détermination exacte du centre.', '[{"criterion":"Identification du type de transformation (symétrie centrale)","points":0.25},{"criterion":"Détermination exacte du centre B(0,0,2)","points":0.25}]'::jsonb, '2023', 'Exercice 3 - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'KEMO envisage d''acquérir une balance constituée d''un ressort suspendu verticalement pouvant s''étirer d''au plus 7 cm. Une étude expérimentale montre que le ressort s''allonge de 2 cm lorsqu''on y accroche une masse de 4 kg, sachant que $mg=k\Delta l_0$ à l''équilibre ($k$ étant la constante de raideur du ressort). On donne $g=9{,}5$ N/kg. Déterminer la masse maximale que cette balance peut peser.', 'Données : $\Delta l_{max}=7\text{ cm}=0{,}07\text{ m}$ ; $m_0=4\text{ kg}$ donne $\Delta l_0=2\text{ cm}=0{,}02\text{ m}$.

Calcul de la raideur $k$ :
$$k = \frac{m_0g}{\Delta l_0} = \frac{4\times9{,}5}{0{,}02} = \frac{38}{0{,}02} = 1900\text{ N/m}$$

Calcul de la masse maximale (pour un allongement de $7$ cm) :
$$M_{max}g = k\Delta l_{max} \implies M_{max} = \frac{k\Delta l_{max}}g = \frac{1900\times0{,}07}{9{,}5} = \frac{133}{9{,}5} = 14\text{ kg}$$

Réponse : la masse maximale que cette balance peut peser est de $14$ kg.', 'L''élongation est proportionnelle à la masse accrochée (loi de Hooke, $F=k\Delta l$) : on calcule d''abord la raideur $k$ à partir des données de test, puis on l''applique à la capacité maximale d''allongement pour trouver la masse limite.

Piège à éviter : oublier de convertir les centimètres en mètres avant tout calcul (les unités du système international doivent être cohérentes).

Ce que l''examinateur attend : l''identification des relations physiques utiles, le calcul exact de la raideur $k=1900$ N/m, et le calcul final de la masse maximale ($14$ kg) avec conclusion.', '[{"criterion":"Identification des relations physiques et mathématiques utiles","points":0.75},{"criterion":"Calcul exact de la raideur k=1900 N/m","points":0.75},{"criterion":"Calcul exact de la masse maximale (14 kg) et conclusion","points":0.75}]'::jsonb, '2023', 'Partie B - Tâche 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'KEMO voudrait investir 130 000 FCFA dans la publicité. Sur les dix dernières années, ses frais de publicité $x_i$ (en dizaines de milliers de FCFA) et son chiffre d''affaires $y_i$ (en dizaines de millions de FCFA) sont : $x_i$ : 6 ; 6,5 ; 6,8 ; 7 ; 7,8 ; 9 ; 10,5 ; 11 ; 11,3 ; 11 et $y_i$ : 220 ; 229 ; 225 ; 237 ; 235 ; 247 ; 250 ; 268 ; 258 ; 264. En admettant un ajustement linéaire, estimer le chiffre d''affaires qu''il pourra espérer des frais de publicité investis.', '$130\,000$ FCFA correspond à $x=13$ (en dizaines de milliers).

Moyennes : $\bar x = \dfrac{86{,}9}{10}=8{,}69$ ; $\bar y=\dfrac{2433}{10}=243{,}3$.

$\sum x_i^2 = 795{,}27$, donc $V(X)=\dfrac{795{,}27}{10}-\bar x^2 = 79{,}527-75{,}5161=4{,}0109$.

$\sum x_iy_i = 21445{,}9$, donc $\operatorname{Cov}(X,Y) = 2144{,}59-(8{,}69\times243{,}3) = 2144{,}59-2114{,}277 = 30{,}313$.

Droite de régression $y=ax+b$ :
$$a = \frac{\operatorname{Cov}(X,Y)}{V(X)} = \frac{30{,}313}{4{,}0109} \approx 7{,}56$$
$$b = \bar y-a\bar x \approx 243{,}3-7{,}56\times8{,}69 \approx 177{,}62$$

Droite : $y\approx7{,}56x+177{,}62$.

Pour $x=13$ : $y(13)\approx7{,}56\times13+177{,}62 \approx 98{,}25+177{,}62 \approx 275{,}88$.

En FCFA : $275{,}88\times10\,000\,000 \approx 2\,758\,800\,000$ FCFA.

Réponse : le chiffre d''affaires estimé est d''environ $2\,758\,800\,000$ FCFA (soit environ $2{,}76$ milliards FCFA).', 'On calcule les moyennes $\bar x$, $\bar y$, puis la variance de $X$ et la covariance de $(X,Y)$ pour obtenir la pente $a=\operatorname{Cov}(X,Y)/V(X)$ et l''ordonnée à l''origine $b=\bar y-a\bar x$ de la droite de régression de $Y$ en $X$ ; on substitue enfin $x=13$ (conversion de $130\,000$ FCFA en dizaines de milliers).

Piège à éviter : bien reconvertir les échelles — $x$ est en dizaines de milliers de FCFA, et le résultat $y$ doit être multiplié par $10$ millions pour revenir en FCFA. Une pente négative serait incohérente ici : plus de publicité doit corréler avec plus de chiffre d''affaires.

Ce que l''examinateur attend : l''identification de l''ajustement linéaire avec le calcul des moyennes, la détermination de la droite $y=ax+b$, et le calcul de $y(13)$ converti en FCFA avec conclusion.', '[{"criterion":"Identification de l''ajustement linéaire et calcul des moyennes","points":0.75},{"criterion":"Détermination de l''équation de la droite y=ax+b","points":0.75},{"criterion":"Calcul de y(13) et conversion exacte en FCFA avec conclusion","points":0.75}]'::jsonb, '2023', 'Partie B - Tâche 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Le premier fournisseur de KEMO lui rend visite tous les 21 jours et était au marché le 20 décembre 2020. Le second lui rend visite tous les 16 jours et était au marché le 27 décembre 2020. Donner la date de la prochaine coïncidence des deux fournisseurs.', 'Soit $N$ le nombre de jours écoulés depuis le 20 décembre 2020. Le fournisseur 1 revient aux jours $N\equiv0\ [21]$ ; le fournisseur 2 (présent le 27 décembre, soit $7$ jours après le 20) revient aux jours $N\equiv7\ [16]$.

Système : $\begin{cases}N\equiv0\ [21]\\N\equiv7\ [16]\end{cases}$. De la première, $N=21k$. En substituant :
$$21k\equiv7\ [16] \iff 5k\equiv7\ [16]$$

Inverse de $5$ modulo $16$ : $5\times13=65=4\times16+1$, donc $5^{-1}\equiv13\ [16]$.
$$k\equiv7\times13\ [16] \equiv91\ [16] \equiv11\ [16]$$

La plus petite valeur positive est $k=11$, donc $N=21\times11=231$ jours.

Décompte du calendrier à partir du 20 décembre 2020 (2021 non bissextile) :
Décembre : $11$ jours restants ($231-11=220$) ; Janvier : $31$ ($220-31=189$) ; Février : $28$ ($189-28=161$) ; Mars : $31$ ($161-31=130$) ; Avril : $30$ ($130-30=100$) ; Mai : $31$ ($100-31=69$) ; Juin : $30$ ($69-30=39$) ; Juillet : $31$ ($39-31=8$) ; Août : $8$ jours.

Réponse : la prochaine coïncidence des deux fournisseurs est le $8$ août $2021$.', 'On traduit chaque cycle de visite en congruence modulaire, on résout le système par substitution (en trouvant l''inverse modulaire de $5$ mod $16$), puis on décompte le nombre de jours obtenu sur le calendrier réel, mois par mois.

Piège à éviter : bien compter l''écart entre le 20 et le 27 décembre ($7$ jours, pas $8$), et se rappeler que $2021$ n''est pas une année bissextile (février a $28$ jours).

Ce que l''examinateur attend : la traduction en système de congruences, la résolution explicite menant à $N=231$ jours, et le décompte exact des mois aboutissant à la date finale.', '[{"criterion":"Traduction en système de congruences","points":0.75},{"criterion":"Résolution explicite et obtention de N=231 jours","points":0.75},{"criterion":"Décompte exact des mois et date finale (8 août 2021)","points":0.75}]'::jsonb, '2023', 'Partie B - Tâche 3', 'C', 'draft');
COMMIT;