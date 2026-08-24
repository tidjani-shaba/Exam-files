-- 2025 Baccalaureat C-E Mathematiques -- 25 questions (no explicit Serie C/E split found in this paper)
-- MAJOR CORRECTIONS vs source txt, verified against the real exam PDF:
-- Exercice 1 Q4b: source proof was invalid (computed f(e2)/f(e3) which does not establish (e2,e3) is a basis of Im f);
-- replaced with a correct direct argument (e2=-f(i), e3=2f(j), both nonzero multiples of the known basis of Im f).
-- Exercice 4 Q1-3: source completely fabricated a different function f_alpha(x)=(x-alpha)ln(x-alpha) on ]alpha,+inf[.
-- The REAL function (per PDF) is f_alpha(x)=(alpha-1)lnx-alpha*ln(x+1) on ]0,+inf[. All three questions re-solved from scratch
-- against the real definition. Q4c also fixed: source used a fabricated "f_0(x)=x*ln(x)" instead of the real f_8(x)=7lnx-8ln(x+1)
-- with bounds x=1 to x=7 (source said x=1 to x=e). Re-solved correctly.
-- Partie B: source Tache 2/3 used entirely fabricated numbers not matching the real PDF (wrong curve equation, wrong serum dose,
-- wrong threshold). Both re-solved fresh from the real PDF text. Tache 1 (land-area integral) requires exact coordinates from a
-- figure that could not be reliably read from the scan -- skipped rather than guessed, same policy as the 2021 Tache 3 case.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed -- this paper warrants extra scrutiny.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', '$E$ est un espace vectoriel sur $\mathbb{R}$ dont une base est $\mathcal{B}=(\vec i,\vec j,\vec k)$. Soit $f$ l''endomorphisme de $E$ défini par $f(\vec i)=\vec i-\vec j+2\vec k$, $f(\vec j)=2\vec i-\vec k$ et $f(\vec k)=2\vec j-5\vec k$. Déterminer la matrice $A$ de $f$ dans la base $\mathcal{B}$.', 'Les colonnes de $A$ sont les coordonnées de $f(\vec i)$, $f(\vec j)$, $f(\vec k)$ dans $\mathcal{B}$ :
$f(\vec i)=(1,-1,2)$, $f(\vec j)=(2,0,-1)$, $f(\vec k)=(0,2,-5)$.

Réponse :
$$A = \begin{pmatrix} 1 & 2 & 0 \\ -1 & 0 & 2 \\ 2 & -1 & -5 \end{pmatrix}$$', 'La matrice d''un endomorphisme dans une base se construit en plaçant en colonnes les coordonnées des images des vecteurs de base.

Piège à éviter : oublier les coefficients nuls (par exemple le terme en $\vec j$ absent de $f(\vec j)$).

Ce que l''examinateur attend : la matrice exacte, avec toutes ses composantes correctement placées.', '[{"criterion":"Matrice exacte avec toutes ses composantes","points":0.5}]'::jsonb, '2025', 'Exercice 1 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Montrer que $\ker f$ est une droite vectorielle dont on précisera une base.', 'Soit $\vec u=x\vec i+y\vec j+z\vec k\in\ker f$ : $A\begin{pmatrix}x\\y\\z\end{pmatrix}=\vec0$ donne
$$\begin{cases} x+2y=0 \\ -x+2z=0 \\ 2x-y-5z=0 \end{cases}$$

De la 1ère : $x=-2y$. De la 2ème : $z=x/2=-y$. Vérification dans la 3ème : $2(-2y)-y-5(-y)=-4y-y+5y=0$ (toujours vraie).

Donc $\vec u=y(-2\vec i+\vec j-\vec k)$ : $\ker f=\text{Vect}(-2\vec i+\vec j-\vec k)$, une droite vectorielle (vecteur générateur non nul).

Réponse : $\ker f$ est la droite vectorielle engendrée par $\vec e=2\vec i-\vec j+\vec k$ (ou son opposé $-2\vec i+\vec j-\vec k$).', 'On résout le système homogène $f(\vec u)=\vec0$ ; une des trois équations s''avère dépendante des deux autres, laissant un unique paramètre libre, dont on extrait le vecteur générateur.

Piège à éviter : ne pas vérifier la cohérence de la troisième équation, risquant de conclure prématurément à la solution nulle seule.

Ce que l''examinateur attend : la résolution complète du système, et l''indication claire d''un vecteur générateur non nul.', '[{"criterion":"Résolution du système","points":0.25},{"criterion":"Conclusion (dimension 1) avec base explicite","points":0.25}]'::jsonb, '2025', 'Exercice 1 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Montrer que $\operatorname{Im} f$ est un plan vectoriel dont on précisera une base.', 'D''après le théorème du rang : $\dim(E)=\dim(\ker f)+\dim(\operatorname{Im} f) \implies 3=1+\dim(\operatorname{Im} f) \implies \dim(\operatorname{Im} f)=2$ : c''est un plan vectoriel.

Les colonnes de $A$ engendrent $\operatorname{Im} f$. Prenons $f(\vec i)=(1,-1,2)$ et $f(\vec j)=(2,0,-1)$ : leurs composantes ne sont pas proportionnelles, donc ils sont libres.

Réponse : $\operatorname{Im} f$ est le plan vectoriel de base $(f(\vec i), f(\vec j)) = (\vec i-\vec j+2\vec k,\ 2\vec i-\vec k)$.', 'Le théorème du rang donne directement la dimension de l''image ; il suffit ensuite de choisir deux vecteurs images non colinéaires parmi les colonnes de $A$ pour obtenir une base.

Ce que l''examinateur attend : la justification de la dimension (théorème du rang), et le choix valide d''une base de 2 vecteurs libres.', '[{"criterion":"Justification de la dimension (théorème du rang)","points":0.25},{"criterion":"Choix valide d''une base de 2 vecteurs libres","points":0.25}]'::jsonb, '2025', 'Exercice 1 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Soit $\mathcal{B}''=(\vec e_1,\vec e_2,\vec e_3)$ avec $\vec e_1=2\vec i-\vec j+\vec k$, $\vec e_2=-\vec i+\vec j-2\vec k$ et $\vec e_3=4\vec i-2\vec k$. Montrer que $\mathcal{B}''$ est une base de $E$.', '$\mathcal{B}''$ contient $3$ vecteurs dans un espace de dimension $3$ : il suffit de vérifier qu''elle est libre, via le déterminant :
$$\det = \begin{vmatrix} 2 & -1 & 4 \\ -1 & 1 & 0 \\ 1 & -2 & -2 \end{vmatrix}$$

En développant selon la première colonne :
$$\det = 2(1\times(-2)-0\times(-2)) -(-1)((-1)\times(-2)-4\times(-2)) + 1((-1)\times0-4\times1)$$
$$= 2(-2) + 1(2+8) + 1(-4) = -4+10-4 = 2 \ne 0$$

Réponse : $\det(\mathcal{B}'')=2\ne0$, donc $\mathcal{B}''$ est une base de $E$.', 'Une famille de $n$ vecteurs dans un espace de dimension $n$ est une base si et seulement si elle est libre ; le calcul du déterminant est la méthode la plus directe.

Piège à éviter : erreur de signe dans le développement du déterminant.

Ce que l''examinateur attend : le calcul correct du déterminant (ou une démonstration équivalente de liberté).', '[{"criterion":"Calcul correct du déterminant","points":0.25}]'::jsonb, '2025', 'Exercice 1 - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Montrer que $\vec e_1\in\ker f$ et que $(\vec e_2,\vec e_3)$ est une base de $\operatorname{Im} f$.', '$\vec e_1\in\ker f$ : par linéarité, $f(\vec e_1)=2f(\vec i)-f(\vec j)+f(\vec k) = 2(1,-1,2)-(2,0,-1)+(0,2,-5) = (0,0,0)=\vec0$.

$(\vec e_2,\vec e_3)$ base de $\operatorname{Im} f$ : d''après la question 3, $\operatorname{Im} f=\text{Vect}(f(\vec i),f(\vec j))$. Or :
$$\vec e_2=(-1,1,-2) = -f(\vec i), \qquad \vec e_3=(4,0,-2) = 2f(\vec j)$$

(vérification directe des coordonnées). Comme $\vec e_2$ et $\vec e_3$ sont des multiples non nuls des vecteurs de base $f(\vec i)$ et $f(\vec j)$ de $\operatorname{Im} f$, ils sont eux-mêmes dans $\operatorname{Im} f$ et forment encore une base de ce plan.

Réponse : $f(\vec e_1)=\vec0$ donc $\vec e_1\in\ker f$ ; et $(\vec e_2,\vec e_3)=(-f(\vec i), 2f(\vec j))$ est une base de $\operatorname{Im} f$.', 'Pour $\vec e_1\in\ker f$, on calcule directement $f(\vec e_1)$ par linéarité et on vérifie qu''il s''annule. Pour la base de $\operatorname{Im} f$, la façon la plus directe est de reconnaître que $\vec e_2$ et $\vec e_3$ sont de simples multiples scalaires non nuls des vecteurs $f(\vec i)$, $f(\vec j)$ qui forment déjà une base de $\operatorname{Im} f$ (question 3) — un multiple non nul d''un vecteur de base reste dans l''espace et préserve la liberté.

Piège à éviter : chercher à re-décomposer $\vec e_2,\vec e_3$ dans la base canonique sans faire le lien direct avec $f(\vec i)$, $f(\vec j)$ déjà connus, ce qui alourdit inutilement la démonstration.

Ce que l''examinateur attend : la vérification $f(\vec e_1)=\vec0$, et l''identification de $\vec e_2,\vec e_3$ comme multiples de la base déjà connue de $\operatorname{Im} f$.', '[{"criterion":"Vérification de f(e1)=0","points":0.25},{"criterion":"Justification que (e2,e3) est une base de Im f","points":0.25}]'::jsonb, '2025', 'Exercice 1 - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Montrer que $f(\vec e_2)=-3\vec e_2-\dfrac12\vec e_3$ et $f(\vec e_3)=-8\vec e_2-\vec e_3$.', '$f(\vec e_2) = f(-\vec i+\vec j-2\vec k) = -(\vec i-\vec j+2\vec k)+(2\vec i-\vec k)-2(2\vec j-5\vec k) = \vec i-3\vec j+7\vec k$.

Exprimons $-3\vec e_2-\frac12\vec e_3$ dans $(\vec i,\vec j,\vec k)$ : $-3(-\vec i+\vec j-2\vec k)-\frac12(4\vec i-2\vec k) = (3\vec i-2\vec i)-3\vec j+(6\vec k+\vec k) = \vec i-3\vec j+7\vec k$. Égalité vérifiée.

$f(\vec e_3) = f(4\vec i-2\vec k) = 4(\vec i-\vec j+2\vec k)-2(2\vec j-5\vec k) = 4\vec i-8\vec j+18\vec k$.

Exprimons $-8\vec e_2-\vec e_3$ : $-8(-\vec i+\vec j-2\vec k)-(4\vec i-2\vec k) = (8\vec i-4\vec i)-8\vec j+(16\vec k+2\vec k) = 4\vec i-8\vec j+18\vec k$. Égalité vérifiée.

Réponse : les deux égalités sont vérifiées.', 'On calcule séparément chaque membre (image directe par $f$, et combinaison linéaire en $\vec e_2,\vec e_3$) dans la base canonique, puis on constate l''égalité des composantes.

Piège à éviter : erreurs de signe lors des développements.

Ce que l''examinateur attend : la démonstration complète des deux égalités.', '[{"criterion":"Démonstration de f(e2)=-3e2-e3/2","points":0.25},{"criterion":"Démonstration de f(e3)=-8e2-e3","points":0.25}]'::jsonb, '2025', 'Exercice 1 - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'En déduire la matrice $A''$ de $f$ dans la base $\mathcal{B}''$.', '$f(\vec e_1)=\vec0=0\vec e_1+0\vec e_2+0\vec e_3$ ; $f(\vec e_2)=0\vec e_1-3\vec e_2-\frac12\vec e_3$ ; $f(\vec e_3)=0\vec e_1-8\vec e_2-\vec e_3$.

Les colonnes de $A''$ sont les coefficients devant $\vec e_1,\vec e_2,\vec e_3$.

Réponse :
$$A'' = \begin{pmatrix} 0 & 0 & 0 \\ 0 & -3 & -8 \\ 0 & -\frac12 & -1 \end{pmatrix}$$', 'Une matrice dans une nouvelle base se construit en reportant les coordonnées des images des vecteurs de cette base, exprimées dans cette même base ; les calculs des questions précédentes fournissent déjà toutes les composantes nécessaires.

Piège à éviter : placer les coefficients en lignes au lieu de colonnes.

Ce que l''examinateur attend : l''écriture exacte de la matrice $A''$.', '[{"criterion":"Écriture exacte de la matrice A''","points":0.25}]'::jsonb, '2025', 'Exercice 1 - 4d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Le plan est muni d''un repère orthonormé direct $(O,\vec i,\vec j)$. On considère l''ensemble $(\Gamma)$ des points $M(x,y)$ tels que $x^2+y^2+2xy+\sqrt2(x-y)=0$. Soit $r$ la rotation de centre $O$ et d''angle $-\dfrac\pi4$, et $M''(x'',y'')$ l''image de $M(x,y)$ par $r$. Exprimer $x''$ et $y''$ en fonction de $x$ et $y$.', 'L''écriture complexe de $r$ est $z''=e^{-i\pi/4}z$, avec $e^{-i\pi/4}=\frac{\sqrt2}2-i\frac{\sqrt2}2$ :
$$x''+iy'' = \left(\frac{\sqrt2}2-i\frac{\sqrt2}2\right)(x+iy) = \frac{\sqrt2}2(x+y) + i\frac{\sqrt2}2(-x+y)$$

Réponse :
$$\begin{cases} x'' = \frac{\sqrt2}2(x+y) \\ y'' = \frac{\sqrt2}2(-x+y) \end{cases}$$', 'On applique la formule complexe de la rotation de centre $O$, $z''=e^{i\theta}z$, avec $\theta=-\frac\pi4$, puis on sépare parties réelle et imaginaire.

Piège à éviter : erreur de signe due à l''angle négatif $-\frac\pi4$.

Ce que l''examinateur attend : la méthode (complexe ou matricielle), et les deux expressions finales correctes.', '[{"criterion":"Méthode complexe ou matricielle","points":0.25},{"criterion":"Expressions finales correctes de x'' et y''","points":0.25}]'::jsonb, '2025', 'Exercice 2 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Montrer que $M\in(\Gamma) \iff x''^2=y''$, et en déduire que $(\Gamma)$ est l''image de la courbe $(\mathcal{C})$ d''équation $x^2=y$ par $r^{-1}$.', '$$x''^2 = \left(\frac{\sqrt2}2(x+y)\right)^2 = \frac12(x^2+2xy+y^2)$$
$$y'' = \frac{\sqrt2}2(-x+y) = -\frac{\sqrt2}2(x-y)$$

$x''^2=y'' \iff \frac12(x^2+y^2+2xy) = -\frac{\sqrt2}2(x-y) \iff x^2+y^2+2xy+\sqrt2(x-y)=0$, exactement l''équation de $(\Gamma)$.

Donc $M\in(\Gamma) \iff M''(x'',y'')\in(\mathcal{C})$ où $(\mathcal{C}) : x^2=y$. Comme $M''=r(M)$, $M=r^{-1}(M'')$ : $(\Gamma)$ est l''image de $(\mathcal{C})$ par $r^{-1}$.

Réponse : l''équivalence est démontrée, et $(\Gamma)=r^{-1}((\mathcal{C}))$.', 'On développe $x''^2$ et $y''$ en fonction de $x,y$, et l''équation $x''^2=y''$ se réécrit exactement comme l''équation de $(\Gamma)$ ; comme $M''=r(M) \iff M=r^{-1}(M'')$, l''ensemble $(\Gamma)$ est l''image réciproque via $r^{-1}$ de la parabole $(\mathcal{C})$.

Piège à éviter : confondre le sens de la transformation entre $r$ et $r^{-1}$.

Ce que l''examinateur attend : la démonstration de l''équivalence, et la déduction géométrique correcte avec $r^{-1}$.', '[{"criterion":"Démonstration de l''équivalence x''²=y''","points":0.5},{"criterion":"Déduction géométrique avec r⁻¹","points":0.25}]'::jsonb, '2025', 'Exercice 2 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Déterminer le foyer et une équation de la directrice de $(\mathcal{C})$, et en déduire ceux de $(\Gamma)$.', '$(\mathcal{C}) : x^2=y$ est une parabole d''axe $(Oy)$, forme canonique $x^2=4py$ avec $4p=1 \implies p=\frac14$.

Foyer : $F_{\mathcal{C}}\left(0,\frac14\right)$. Directrice : $y=-\frac14$.

$(\Gamma)=r^{-1}((\mathcal{C}))$, avec $r^{-1}$ la rotation d''angle $+\frac\pi4$.

Foyer de $(\Gamma)$ : $z_{F_\Gamma} = e^{i\pi/4}z_{F_{\mathcal{C}}} = \left(\frac{\sqrt2}2+i\frac{\sqrt2}2\right)\left(i\frac14\right) = -\frac{\sqrt2}8+i\frac{\sqrt2}8$, soit $F_\Gamma\left(-\frac{\sqrt2}8,\frac{\sqrt2}8\right)$.

Directrice de $(\Gamma)$ : $M(x,y)\in\mathcal{D}_\Gamma \iff y''=-\frac14 \iff \frac{\sqrt2}2(-x+y)=-\frac14 \iff x-y-\frac{\sqrt2}4=0$.

Réponse : $(\mathcal{C})$ a pour foyer $\left(0,\frac14\right)$ et directrice $y=-\frac14$ ; $(\Gamma)$ a pour foyer $\left(-\frac{\sqrt2}8,\frac{\sqrt2}8\right)$ et directrice $x-y-\frac{\sqrt2}4=0$.', 'On identifie d''abord les éléments de la parabole standard $(\mathcal{C})$, puis on leur applique la rotation $r^{-1}$ (multiplier l''affixe du foyer par $e^{i\pi/4}$ ; pour la directrice, réutiliser l''expression de $y''$ en fonction de $x,y$).

Piège à éviter : se tromper d''angle pour la transformation inverse ($+\frac\pi4$ et non $-\frac\pi4$).

Ce que l''examinateur attend : les éléments exacts de $(\mathcal{C})$, et leur transformation correcte pour obtenir ceux de $(\Gamma)$.', '[{"criterion":"Éléments de (C) (foyer et directrice)","points":0.5},{"criterion":"Déduction exacte des éléments de (Γ)","points":0.5}]'::jsonb, '2025', 'Exercice 2 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Construire $(\mathcal{C})$ et $(\Gamma)$.', 'Tracer $(\mathcal{C}) : y=x^2$, sommet $O(0,0)$, foyer $\left(0,\frac14\right)$, directrice $y=-\frac14$, passant par $(1,1)$, $(-1,1)$, $(2,4)$, $(-2,4)$.

Pour $(\Gamma)$, faire tourner $(\mathcal{C})$ de $+\frac\pi4$ ($45°$ dans le sens anti-horaire) autour de $O$ : son axe de symétrie devient la droite $y=-x$.

Réponse : tracé des deux paraboles sur le même repère, $(\Gamma)$ étant $(\mathcal{C})$ tournée de $+\frac\pi4$.', 'On trace d''abord $(\mathcal{C})$ avec ses points caractéristiques (sommet, foyer, directrice), puis on obtient $(\Gamma)$ en appliquant simplement une rotation de $45°$ à la figure déjà tracée.

Ce que l''examinateur attend : le tracé soigné de $(\mathcal{C})$ avec foyer/directrice, et celui de $(\Gamma)$ correctement orienté.', '[{"criterion":"Tracé de (C) avec foyer/directrice","points":0.5},{"criterion":"Tracé de (Γ) correctement orientée","points":0.5}]'::jsonb, '2025', 'Exercice 2 - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Un sac contient 4 jetons numérotés respectivement $-1$, $0$, $0$, $1$, indiscernables au toucher. On tire un jeton, on note son numéro $x$ et on le remet ; on tire un second jeton, on note $y$, on le remet ; on tire un troisième jeton, on note $z$, on le remet. À chaque tirage, on associe le point $M(x,y,z)$ dans un repère orthonormal $(O,\vec i,\vec j,\vec k)$. Soit $A(1,-1,-1)$. Démontrer que la probabilité pour que $M$ soit en $A$ est $\dfrac1{64}$.', 'Chaque tirage est avec remise : l''univers comporte $4\times4\times4=64$ issues équiprobables.

$M=A \iff x=1$ (probabilité $\frac14$, un seul jeton « 1 »), $y=-1$ (probabilité $\frac14$), $z=-1$ (probabilité $\frac14$).

Par indépendance des trois tirages :
$$P(M=A) = \frac14\times\frac14\times\frac14 = \frac1{64}$$

Réponse : $P(M=A)=\dfrac1{64}$.', 'Chaque coordonnée dépend d''un tirage indépendant avec remise ; on multiplie les probabilités individuelles de chaque valeur exacte requise.

Piège à éviter : confondre le nombre de valeurs distinctes ($-1,0,1$) avec le nombre total de jetons dans le sac (4, dont deux portent le $0$).

Ce que l''examinateur attend : le calcul du nombre total de cas ($4^3=64$), l''identification du seul cas favorable, et le résultat final.', '[{"criterion":"Calcul du nombre total de cas (4³=64)","points":0.25},{"criterion":"Identification du nombre de cas favorables (1)","points":0.25},{"criterion":"Résultat final","points":0.25}]'::jsonb, '2025', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'On note $E_1$ l''événement « $M$ appartient à l''axe des abscisses ». Démontrer que la probabilité de $E_1$ est $\dfrac14$.', '$M(x,y,z)\in(Ox) \iff y=0$ et $z=0$ ($x$ quelconque).

Parmi les 4 jetons, 2 portent le numéro $0$ : $P(y=0)=\frac24=\frac12$, $P(z=0)=\frac24=\frac12$. La condition sur $x$ est toujours vraie.

$$P(E_1) = 1\times\frac12\times\frac12 = \frac14$$

Réponse : $P(E_1)=\dfrac14$.', 'L''axe des abscisses est caractérisé par $y=0$ et $z=0$ ; il faut compter les 2 jetons « 0 » disponibles pour chacune de ces deux coordonnées (et non 1 seul), avant de multiplier les probabilités par indépendance.

Piège à éviter : oublier qu''il y a deux jetons portant le numéro $0$.

Ce que l''examinateur attend : la traduction algébrique de l''appartenance à l''axe, le dénombrement correct, et la probabilité simplifiée.', '[{"criterion":"Traduction algébrique (y=0 et z=0)","points":0.25},{"criterion":"Dénombrement correct","points":0.25},{"criterion":"Probabilité simplifiée","points":0.25}]'::jsonb, '2025', 'Exercice 3 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit $(P)$ le plan passant par $O$ et de vecteur normal $\vec n(1,1,1)$. Déterminer une équation cartésienne du plan $(P)$.', '$M(x,y,z)\in(P) \iff \overrightarrow{OM}\cdot\vec n=0 \iff x+y+z+d=0$.

Comme $(P)$ passe par $O(0,0,0)$ : $d=0$.

Réponse : $(P) : x+y+z=0$.', 'L''équation d''un plan de vecteur normal $(a,b,c)$ s''écrit $ax+by+cz+d=0$ ; comme le plan passe par l''origine, $d=0$ directement.

Ce que l''examinateur attend : la structure de l''équation, et la valeur de $d$ menant à l''équation finale.', '[{"criterion":"Structure de l''équation x+y+z+d=0","points":0.25},{"criterion":"Valeur de d et équation finale","points":0.25}]'::jsonb, '2025', 'Exercice 3 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'On note $E_2$ l''événement « $M$ appartient au plan $(P)$ ». Quelle est la probabilité de $E_2$ ?', '$M\in(P) \iff x+y+z=0$. Dénombrons les triplets $(x,y,z)$ issus de $\{-1,0_1,0_2,1\}$ dont la somme est nulle :

Cas $(0,0,0)$ : $2\times2\times2=8$ façons (deux jetons $0$ pour chaque position).

Cas permutations de $\{1,-1,0\}$ (une valeur de chaque) : $3!=6$ ordres possibles, et pour chacun, $1\times1\times2=2$ choix de jetons (le $0$ a 2 jetons disponibles) : $6\times2=12$ façons.

Total des cas favorables : $8+12=20$.

$$P(E_2) = \frac{20}{64} = \frac5{16}$$

Réponse : $P(E_2)=\dfrac5{16}$.', 'On liste les combinaisons de valeurs dont la somme est nulle ($\{0,0,0\}$ et $\{1,-1,0\}$), en tenant compte à chaque fois du nombre réel de jetons distincts disponibles pour chaque valeur (notamment les deux jetons « $0$ »), avant de sommer les cas favorables.

Piège à éviter : ne pas compter séparément les deux jetons $0$, ou négliger l''ordre des positions dans les triplets.

Ce que l''examinateur attend : le dénombrement exhaustif des cas favorables (20), et le calcul final de la probabilité simplifiée.', '[{"criterion":"Dénombrement exhaustif des cas favorables (20 cas)","points":0.5},{"criterion":"Calcul final de la probabilité simplifiée","points":0.5}]'::jsonb, '2025', 'Exercice 3 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $\alpha$ un réel donné et $f_\alpha$ la fonction définie sur $]0;+\infty[$ par $f_\alpha(x)=(\alpha-1)\ln x-\alpha\ln(x+1)$. Démontrer que $\displaystyle\lim_{x\to+\infty}f_\alpha(x)=-\infty$.', 'Écrivons $\ln(x+1) = \ln\big(x(1+\frac1x)\big) = \ln x+\ln\left(1+\frac1x\right)$ pour $x>0$. Alors :
$$f_\alpha(x) = (\alpha-1)\ln x - \alpha\left[\ln x+\ln\left(1+\frac1x\right)\right] = [(\alpha-1)-\alpha]\ln x - \alpha\ln\left(1+\frac1x\right)$$
$$f_\alpha(x) = -\ln x - \alpha\ln\left(1+\frac1x\right)$$

Quand $x\to+\infty$ : $-\ln x\to-\infty$, et $\ln\left(1+\frac1x\right)\to\ln(1)=0$, donc $-\alpha\ln\left(1+\frac1x\right)\to0$ pour tout $\alpha$ fixé.

Par somme, $f_\alpha(x)\to-\infty$.

Réponse : $\displaystyle\lim_{x\to+\infty}f_\alpha(x)=-\infty$, pour tout réel $\alpha$.', 'On réécrit $\ln(x+1)$ en faisant apparaître $\ln x$ explicitement, ce qui fait disparaître le terme dominant en $\ln x$ des deux morceaux de $f_\alpha$ presque entièrement (coefficient $(\alpha-1)-\alpha=-1$, indépendant de $\alpha$), ne laissant qu''un terme résiduel qui tend vers $0$.

Piège à éviter : essayer d''étudier la limite sans réorganiser l''écriture, ce qui masque la forme déterminée du résultat.

Ce que l''examinateur attend : la réécriture de $\ln(x+1)$ et la conclusion que le terme en $\alpha$ résiduel est borné/tend vers 0, laissant $-\ln x\to-\infty$ dominer.', '[{"criterion":"Réécriture et conclusion correcte de la limite","points":0.25}]'::jsonb, '2025', 'Exercice 4 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer, suivant les valeurs de $\alpha$, $\displaystyle\lim_{x\to0}f_\alpha(x)$.', 'Quand $x\to0^+$ (domaine $]0,+\infty[$) : $\ln x\to-\infty$ et $\ln(x+1)\to\ln(1)=0$.

$f_\alpha(x)=(\alpha-1)\ln x-\alpha\ln(x+1)$ : le second terme tend vers $0$ ; le premier terme dépend du signe de $(\alpha-1)$ :

- Si $\alpha>1$ : $(\alpha-1)>0$, donc $(\alpha-1)\ln x\to(\text{positif})\times(-\infty)=-\infty$.
- Si $\alpha<1$ : $(\alpha-1)<0$, donc $(\alpha-1)\ln x\to(\text{négatif})\times(-\infty)=+\infty$.
- Si $\alpha=1$ : $f_1(x)=-\ln(x+1)\to-\ln(1)=0$ (le terme en $\ln x$ disparaît entièrement).

Réponse : $\displaystyle\lim_{x\to0}f_\alpha(x) = -\infty$ si $\alpha>1$ ; $=+\infty$ si $\alpha<1$ ; $=0$ si $\alpha=1$.', 'Le terme $\ln(x+1)$ ne pose pas de problème (limite finie $0$) ; tout se joue sur le signe du coefficient $(\alpha-1)$ devant le terme divergent $\ln x\to-\infty$ — d''où la nécessité de distinguer trois cas selon le signe de $\alpha-1$.

Piège à éviter : oublier le cas particulier $\alpha=1$, où le terme en $\ln x$ s''annule complètement et la limite devient finie.

Ce que l''examinateur attend : la distinction rigoureuse des trois cas ($\alpha>1$, $\alpha=1$, $\alpha<1$) et la limite correcte dans chacun.', '[{"criterion":"Cas α>1","points":0.25},{"criterion":"Cas α<1","points":0.25},{"criterion":"Cas α=1","points":0.25}]'::jsonb, '2025', 'Exercice 4 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier le sens de variation de la fonction $f_\alpha$. On distinguera les cas $\alpha>1$, $\alpha=1$ et $\alpha<1$.', '$f_\alpha$ est dérivable sur $]0,+\infty[$ :
$$f_\alpha''(x) = \frac{\alpha-1}x - \frac\alpha{x+1} = \frac{(\alpha-1)(x+1)-\alpha x}{x(x+1)} = \frac{(\alpha-1)-x}{x(x+1)}$$

Comme $x(x+1)>0$ pour $x>0$, le signe de $f_\alpha''(x)$ est celui de $(\alpha-1)-x$.

**Cas $\alpha>1$** : $(\alpha-1)-x=0 \iff x=\alpha-1>0$ (point critique dans le domaine). $f_\alpha''(x)>0$ pour $x<\alpha-1$, $f_\alpha''(x)<0$ pour $x>\alpha-1$ : $f_\alpha$ croît sur $]0,\alpha-1]$ puis décroît sur $[\alpha-1,+\infty[$.

**Cas $\alpha=1$** : $(\alpha-1)-x=-x<0$ pour tout $x>0$ : $f_1$ est strictement décroissante sur $]0,+\infty[$.

**Cas $\alpha<1$** : $(\alpha-1)-x<0$ pour tout $x>0$ (puisque $\alpha-1<0$ et $-x<0$) : $f_\alpha$ est strictement décroissante sur $]0,+\infty[$.

Réponse : pour $\alpha>1$, $f_\alpha$ croît sur $]0,\alpha-1]$ puis décroît sur $[\alpha-1,+\infty[$ ; pour $\alpha\le1$, $f_\alpha$ est strictement décroissante sur tout $]0,+\infty[$.', 'On calcule $f_\alpha''$ et on la met sur un même dénominateur toujours positif ; le signe ne dépend alors que du numérateur $(\alpha-1)-x$, dont le point d''annulation $x=\alpha-1$ n''appartient au domaine $]0,+\infty[$ que si $\alpha>1$ — d''où la distinction de cas.

Piège à éviter : chercher le point critique $x=\alpha-1$ même quand $\alpha\le1$, alors qu''il est hors du domaine d''étude (négatif ou nul) et donc sans effet sur le signe de la dérivée.

Ce que l''examinateur attend : le calcul explicite de $f_\alpha''(x)$, et l''étude complète du signe dans les trois cas demandés.', '[{"criterion":"Calcul de f''α(x)","points":0.25},{"criterion":"Étude complète dans les trois cas","points":0.5}]'::jsonb, '2025', 'Exercice 4 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On pose $f(x)=f_8(x)=7\ln x-8\ln(x+1)$ pour tout $x\in]0,+\infty[$. Calculer $f''(7)$ et en déduire le signe de $f''$ sur $]0,+\infty[$.', '$$f''(x) = \frac7x-\frac8{x+1} = \frac{7(x+1)-8x}{x(x+1)} = \frac{7-x}{x(x+1)}$$

$$f''(7) = \frac{7-7}{7\times8} = 0$$

Comme $x(x+1)>0$ pour $x>0$, le signe de $f''(x)$ est celui de $(7-x)$ : $f''(x)>0$ sur $]0,7[$, $f''(7)=0$, $f''(x)<0$ sur $]7,+\infty[$.

Réponse : $f''(7)=0$ ; $f''$ est strictement positive sur $]0,7[$ et strictement négative sur $]7,+\infty[$.', 'On dérive avec la règle du logarithme $(\ln u)''=u''/u$, on réduit au même dénominateur (toujours positif sur le domaine), et le signe ne dépend plus que du numérateur $(7-x)$.

Ce que l''examinateur attend : la valeur de $f''(7)$, et l''étude correcte du signe de $f''(x)$.', '[{"criterion":"Valeur de f''(7)","points":0.25},{"criterion":"Étude correcte du signe de f''(x)","points":0.25}]'::jsonb, '2025', 'Exercice 4 - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer, à l''aide d''une intégration par parties, la primitive $L$ de la fonction $m : x\mapsto\ln x$ qui s''annule en $1$.', 'Posons $u(x)=\ln x$, $u''(x)=\frac1x$, $v''(x)=1$, $v(x)=x$.

$$\int\ln x\,dx = x\ln x - \int x\cdot\frac1x\,dx = x\ln x - x + C$$

$L(1)=0$ : $1\times\ln1-1+C=0 \implies -1+C=0 \implies C=1$.

Réponse : $L(x)=x\ln x-x+1$.', 'On applique l''IPP classique $1\cdot\ln x$, en intégrant le facteur $1$ et en dérivant $\ln x$, puis on fixe la constante par la condition $L(1)=0$.

Ce que l''examinateur attend : l''intégration par parties correcte, et l''expression finale exacte avec la constante déterminée.', '[{"criterion":"Intégration par parties et expression finale exacte","points":0.25}]'::jsonb, '2025', 'Exercice 4 - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer, en unités d''aires, l''aire $\mathcal{A}$ de la partie du plan délimitée par la courbe de $f$, l''axe des abscisses, et les droites d''équations $x=1$ et $x=7$.', 'Sur $[1,7]$, $f(x)=f_8(x)=7\ln x-8\ln(x+1)$. D''après la question 4.a, $f$ est croissante sur $]0,7[$ ; testons son signe : $f(1)=7\ln1-8\ln2=-8\ln2<0$, $f(7)=7\ln7-8\ln8$. Calculons : $7\ln7\approx13{,}62$, $8\ln8\approx16{,}64$, donc $f(7)\approx-3{,}02<0$ également : $f$ reste négative sur $[1,7]$ (croissante de $-8\ln2\approx-5{,}55$ vers $\approx-3{,}02$, sans jamais atteindre $0$ sur cet intervalle).

L''aire est donc :
$$\mathcal{A} = \int_1^7 |f(x)|\,dx = -\int_1^7 f(x)\,dx = -\int_1^7\big[7\ln x-8\ln(x+1)\big]dx$$

En utilisant $\int\ln x\,dx=x\ln x-x+C$ (question 4.b, valable de même pour $\ln(x+1)$ via $\int\ln(x+1)dx=(x+1)\ln(x+1)-(x+1)+C$) :
$$\int_1^7 f(x)\,dx = 7\big[x\ln x-x\big]_1^7 - 8\big[(x+1)\ln(x+1)-(x+1)\big]_1^7$$
$$= 7\big[(7\ln7-7)-(0-1)\big] - 8\big[(8\ln8-8)-(2\ln2-2)\big]$$
$$= 7(7\ln7-6) - 8(8\ln8-6-2\ln2)$$
$$= 49\ln7-42 - 64\ln8+48+16\ln2$$
$$= 49\ln7 - 64\ln8 + 16\ln2 + 6$$

Comme $\ln8=3\ln2$ : $-64\ln8=-192\ln2$, donc $-192\ln2+16\ln2=-176\ln2$ :
$$\int_1^7 f(x)\,dx = 49\ln7-176\ln2+6$$

Donc $\mathcal{A} = -(49\ln7-176\ln2+6) = 176\ln2-49\ln7-6$.

Réponse : $\mathcal{A} = 176\ln2-49\ln7-6$ unités d''aire (soit $\approx0{,}55$ u.a.).', 'Comme $f$ est strictement négative sur tout $[1,7]$ (vérifié aux deux bornes), l''aire est l''opposé de l''intégrale de $f$ ; on intègre chaque terme logarithmique séparément avec la primitive du type établi en 4.b (appliquée à $\ln x$ et, de façon analogue, à $\ln(x+1)$), puis on simplifie en utilisant $\ln8=3\ln2$.

Piège à éviter : oublier de vérifier le signe de $f$ sur l''intervalle avant d''intégrer directement (ce qui donnerait une aire négative, absurde).

Ce que l''examinateur attend : la vérification du signe de $f$ sur $[1,7]$, et le calcul exact de l''aire.', '[{"criterion":"Vérification du signe de f sur [1,7] et pose de l''intégrale","points":0.25},{"criterion":"Calcul exact de l''aire","points":0.25}]'::jsonb, '2025', 'Exercice 4 - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'On pose, pour $n\ge1$, $U_n=\displaystyle\sum_{k=1}^n f(k)$ (avec $f=f_8$). Démontrer que $U_n=-\ln\big[(n+1)!\big]-7\ln(n+1)$.', '$$U_n = \sum_{k=1}^n\big[7\ln k-8\ln(k+1)\big] = 7\sum_{k=1}^n\ln k - 8\sum_{k=1}^n\ln(k+1)$$

$\sum_{k=1}^n\ln k=\ln(n!)$. $\sum_{k=1}^n\ln(k+1)=\ln2+\ln3+\cdots+\ln(n+1)=\ln\left(\dfrac{(n+1)!}{1}\right)=\ln\big((n+1)!\big)$.

$$U_n = 7\ln(n!) - 8\ln\big((n+1)!\big)$$

Comme $(n+1)!=(n+1)\times n!$, donc $\ln(n!)=\ln\big((n+1)!\big)-\ln(n+1)$ :
$$U_n = 7\big[\ln((n+1)!)-\ln(n+1)\big] - 8\ln((n+1)!) = -\ln((n+1)!) - 7\ln(n+1)$$

Réponse : $U_n=-\ln\big[(n+1)!\big]-7\ln(n+1)$.', 'On développe la somme en regroupant les logarithmes par les propriétés $\sum\ln k=\ln(n!)$ et $\sum\ln(k+1)=\ln((n+1)!)$, puis on relie $\ln(n!)$ à $\ln((n+1)!)$ via $(n+1)!=(n+1)\cdot n!$ pour obtenir la forme demandée.

Ce que l''examinateur attend : le développement clair de la somme, avec l''utilisation de la relation entre $n!$ et $(n+1)!$.', '[{"criterion":"Développement clair de la somme algébrique","points":0.5}]'::jsonb, '2025', 'Exercice 4 - 5a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'En déduire que $U_n\le-\ln n$, et donner $\displaystyle\lim_{n\to+\infty}U_n$.', 'Pour $n\ge1$, $(n+1)!=1\times2\times\cdots\times(n+1) \ge n+1 > n$, donc $\ln((n+1)!)\ge\ln(n+1)>\ln n$.

De plus, $n+1\ge2$ pour $n\ge1$, donc $\ln(n+1)\ge\ln2>0$, d''où $7\ln(n+1)>0$.

Donc $\ln((n+1)!)+7\ln(n+1) > \ln n + 0 = \ln n$, ce qui donne :
$$U_n = -\big[\ln((n+1)!)+7\ln(n+1)\big] < -\ln n$$

Donc $U_n\le-\ln n$. Comme $\displaystyle\lim_{n\to+\infty}(-\ln n)=-\infty$, par comparaison :
$$\lim_{n\to+\infty} U_n = -\infty$$

Réponse : $U_n\le-\ln n$ et $\displaystyle\lim_{n\to+\infty}U_n=-\infty$.', 'On minore $\ln((n+1)!)$ par $\ln n$ (puisque $(n+1)!\ge n$) et on note que le terme $7\ln(n+1)$ retranché est strictement positif, ce qui majore $U_n$ par $-\ln n$ ; comme cette majorante tend vers $-\infty$, le théorème de comparaison conclut.

Ce que l''examinateur attend : la majoration rigoureuse menant à $U_n\le-\ln n$, et la limite exacte par comparaison.', '[{"criterion":"Majoration menant à Un≤-ln n","points":0.25},{"criterion":"Limite exacte par comparaison","points":0.25}]'::jsonb, '2025', 'Exercice 4 - 5b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Le nombre de personnes contaminées par une pandémie dans un pays de 20 millions d''habitants était de 3000 deux mois après l''apparition de la maladie, et de 12000 quatre mois après. L''immunité collective est atteinte quand 60% de la population est infectée. La vitesse de propagation de la maladie est proportionnelle au nombre de contaminés. On désigne par $h(t)$ le nombre d''habitants contaminés à l''instant $t$ (en mois). Déterminer, dans ces conditions, le temps au bout duquel l''immunité collective sera atteinte, si l''on néglige le nombre de nouveau-nés durant cette période.', '« Vitesse de propagation proportionnelle au nombre de contaminés » se traduit par $h''(t)=k\,h(t)$, dont les solutions sont $h(t)=C e^{kt}$.

Données : $h(2)=3000$, $h(4)=12000$ :
$$Ce^{2k}=3000, \qquad Ce^{4k}=12000$$

En divisant : $e^{4k-2k}=e^{2k}=\dfrac{12000}{3000}=4 \implies 2k=\ln4 \implies k=\ln2$.

Donc $Ce^{2\ln2}=3000 \implies 4C=3000 \implies C=750$.

$$h(t) = 750\,e^{(\ln2)t} = 750\times2^t$$

(Vérification : $h(2)=750\times4=3000$ ✓, $h(4)=750\times16=12000$ ✓.)

Immunité collective : $60\%$ de $20$ millions $=12\,000\,000$. On cherche $t$ tel que $h(t)=12\,000\,000$ :
$$750\times2^t = 12\,000\,000 \iff 2^t = 16\,000 \iff t = \log_2(16\,000) = \frac{\ln(16\,000)}{\ln2}$$

$$t \approx \frac{9{,}680}{0{,}693} \approx 13{,}97 \text{ mois}$$

Réponse : l''immunité collective sera atteinte après environ $13{,}97$ mois (soit au cours du $14^{\text{e}}$ mois).', 'On modélise la propagation par l''équation différentielle classique $y''=ky$ (croissance exponentielle), on détermine $k$ et la constante $C$ à partir des deux données numériques fournies, puis on résout l''équation exponentielle par passage au logarithme pour trouver le temps d''atteinte du seuil de $60\%$.

Piège à éviter : oublier de convertir le pourcentage en nombre absolu d''habitants ($60\%$ de $20$ millions $=12$ millions), et non $60\%$ du nombre de contaminés à un instant donné.

Ce que l''examinateur attend : l''établissement du modèle exponentiel avec détermination de $k$ et $C$, et la résolution numérique menant à $t\approx13{,}97$ mois.', '[{"criterion":"Établissement du modèle exponentiel h(t)=Ce^kt","points":0.75},{"criterion":"Détermination exacte de k=ln2 et C=750","points":0.75},{"criterion":"Résolution et conclusion t≈13,97 mois","points":0.75}]'::jsonb, '2025', 'Partie B - Tâche 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Un sérum est injecté à raison de $1\text{ cm}^3$ toutes les 12 heures dans le sang d''un malade. Après élimination naturelle, la quantité restante d''une dose (en cm³) au bout d''un temps $t$ (en heures) depuis son injection est $e^{-t/36}$, la quantité totale dans le sang étant le cumul des restes de toutes les doses déjà injectées. Le sérum n''est efficace que si le sang en contient en permanence une quantité au moins égale à $2\text{ cm}^3$. Déterminer l''instant à partir duquel le sérum sera efficace.', 'Les doses sont injectées aux instants $t=0,12,24,\ldots$ Juste avant la $(n+1)$-ième injection (à $t=12n^-$), la quantité totale restante des $n$ doses précédentes (injectées à $0,12,\ldots,12(n-1)$) est :
$$Q_n = \sum_{k=1}^n e^{-\frac{12(n-k+1)}{36}} = \sum_{j=1}^n e^{-j/3} = e^{-1/3}+e^{-2/3}+\cdots+e^{-n/3}$$

C''est une somme géométrique de raison $e^{-1/3}$, croissante avec $n$ (chaque nouvelle dose ajoute un terme positif), et qui tend vers $\dfrac{e^{-1/3}}{1-e^{-1/3}}=\dfrac1{e^{1/3}-1}\approx2{,}53$ quand $n\to+\infty$.

Entre deux injections, la quantité totale décroît continûment (chaque dose s''élimine exponentiellement) : le minimum de chaque cycle de 12h est donc atteint juste avant l''injection suivante, soit précisément $Q_n$.

Calculons $Q_n$ pour les premières valeurs de $n$ :
$$Q_4 = e^{-1/3}+e^{-2/3}+e^{-1}+e^{-4/3} \approx 0{,}717+0{,}513+0{,}368+0{,}264 = 1{,}86 < 2$$
$$Q_5 = Q_4+e^{-5/3} \approx 1{,}86+0{,}189 = 2{,}05 \ge 2$$

Ainsi, juste avant la $5^{\text{e}}$ injection (à $t=48\text{h}^-$), la quantité restante ($\approx1{,}86\text{ cm}^3$) est encore inférieure à $2\text{ cm}^3$ : le sérum n''est pas encore efficace en permanence.

Juste après la $5^{\text{e}}$ injection (à $t=48\text{h}$), la quantité passe à $Q_4+1\approx2{,}86\text{ cm}^3$, puis décroît continûment jusqu''à $Q_5\approx2{,}05\text{ cm}^3$ juste avant la $6^{\text{e}}$ injection (à $t=60\text{h}$) — restant $\ge2$ tout au long de cet intervalle. Comme $Q_n$ est croissante et tend vers $\approx2{,}53>2$, la quantité reste ensuite en permanence $\ge2\text{ cm}^3$ pour tous les cycles suivants.

Réponse : le sérum devient efficace en permanence à partir de $t=48$ heures (la $5^{\text{e}}$ injection) — c''est le premier instant après lequel la quantité de sérum dans le sang ne redescend plus jamais en dessous de $2\text{ cm}^3$.', 'La quantité totale de sérum dans le sang forme un motif en dents de scie : elle décroît continûment entre deux injections et bondit à chaque nouvelle dose. Le minimum de chaque cycle de 12h se situe donc juste avant l''injection suivante, ce qui ramène le problème à l''étude de la suite $Q_n$ (somme géométrique croissante des restes cumulés). On cherche le premier cycle entier dont le minimum reste $\ge2$.

Piège à éviter : ne vérifier que les minima juste-avant-injection sans remarquer qu''ils suffisent à caractériser tout le comportement (puisque la quantité ne fait que décroître entre deux injections, sans jamais remonter) ; ou confondre le cycle où le minimum *atteint* $\ge2$ avec l''instant précis où ce comportement démarre (qui est le début de ce cycle, c''est-à-dire l''injection elle-même, puisqu''avant l''injection précédente le niveau était encore insuffisant).

Ce que l''examinateur attend : la modélisation de $Q_n$ comme somme géométrique des restes cumulés, l''identification du fait que le minimum de chaque cycle est le point critique à surveiller, et la conclusion numérique correcte sur l''instant $t=48$h.', '[{"criterion":"Modélisation de la quantité cumulée comme somme géométrique","points":0.75},{"criterion":"Identification que le minimum de chaque cycle est le point critique","points":0.75},{"criterion":"Calcul numérique et conclusion t=48h","points":0.75}]'::jsonb, '2025', 'Partie B - Tâche 3', 'C', 'draft');
COMMIT;