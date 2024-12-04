#import "template.typ": *

#show: project.with(
  title: "Proposition de sujet de mémoire",
  subtitle : "Optimisation d'un processus métier : l'Écart Bilan Technique",
  authors: (
    (
      name: "Stéphane GODET",
      role:"Maître d'apprentissage",
      poste: "Ingénieur gestion de l'énergie",
      email: "stephane.godet@grtgaz.com",
      phone: "06 99 92 28 65"
    ),
    (
      name: "Luca LARBOULLET-MARIN",
      role: "Apprenti",
      poste: "Ingénieur gestion de l'énergie",
      email: "l.larboulletmarin@gmail.com",
      phone: "07 82 09 44 78"
    ),
    (
      name: "Gérard CANESI",
      role: "Tuteur pédagogique",
      poste: "Professeur au CNAM",
      email: "gerard.canesi@lecnam.net ",
      phone: "06 52 06 79 95"
    ),
  ),
  logo_school: image("logo_ecole.png", width: 70%),
  logo_company : image("logo_entreprise.png", width: 50%),
  abstract:"Ce document propose un sujet de mémoire pour mon projet de fin d’études d'ingénieur informatique, réalisé dans le cadre de mon apprentissage au sein de GRTgaz. Le sujet envisagé porte sur l'optimisation d'un processus métier liés à l’Écart Bilan Technique."
)

= L'Écart Bilan Technique

== Définition

L'Écart Bilan Technique (EBT) correspond à la différence entre les quantités de gaz mesurées à l'entrée et à la sortie du réseau de GRTgaz. Les entrées incluent le gaz provenant des opérateurs adjacents #footnote[Opérateurs de transport de gaz situés à l'extérieur des frontières françaises], des stockages, des terminaux méthaniers, des producteurs de biométhane et des rebours #footnote[Points de réinjection du gaz excédentaire issu de la production de biométhane]. Les sorties, quant à elles, regroupent les livraisons aux clients industriels, aux distributions publiques, les mises à l'évent, le gaz carburant, ainsi que les variations de stock en conduite.

L'EBT joue un rôle central dans le fonctionnement du réseau, en garantissant une cohérence entre les flux entrants et sortants. Un déséquilibre signale une anomalie qui nécessite une analyse approfondie.

== Objectifs et enjeux

L'objectif principal de l'EBT est d'assurer un suivi précis de ces écarts pour répondre aux exigences de la Commission de Régulation de l'Énergie (CRE) et aux besoins internes de GRTgaz.

La CRE impose une transparence absolue et une maîtrise rigoureuse de cet indicateur, en lien notamment avec les discussions tarifaires, comme lors de la révision des tarifs d'accès des tiers aux réseaux de transport (ATRT) @CRETarifsAcces @CRE2024-22.

Pour GRTgaz, l'EBT est également un indicateur stratégique. Il permet de garantir la fiabilité des données de comptage et d'assurer la cohérence des flux gaziers. Les équipes métiers visent à réduire les valeurs atypiques, en s'appuyant sur un suivi méthodique des déséquilibres. En effet, ces derniers, qu'ils soient accidentels ou structurels, ont un impact financier direct en tant que dépenses d'exploitation, tout en influençant la régulation tarifaire de la CRE.

= Problématique

Le suivi de l’EBT repose actuellement sur des solutions de _shadow IT_, c’est-à-dire des outils développés en dehors du cadre informatique officiel de l’entreprise @rentrop2012shadow, tels que des fichiers Excel ou des bases de données locales. Si ces solutions répondent aux besoins immédiats des équipes, elles présentent des risques significatifs : pertes de données, erreurs de calcul, failles de sécurité et non-conformité aux standards de l’entreprise. De plus, chaque territoire de GRTgaz a adopté ses propres outils et méthodes de travail, compliquant le partage, la vérification des informations et la gestion globale de l’EBT.

Pourtant, GRTgaz dispose d’un système basé sur un cube multidimensionnel (_OLAP_) conçu pour calculer l’EBT. Ce cube repose sur un référentiel métier intégrant toutes les règles de calcul nécessaires. Cependant, ce système reste sous-exploité. L’habitude des équipes de recourir à leurs outils alternatifs, combinée à une mise à jour annuelle du référentiel par la Direction des Systèmes d’Information (DSI) au lieu d’une fréquence plus élevée, limite l’adoption et l’efficacité de cette solution.

Enfin, l’absence de documentation à jour et le manque de transfert de savoir-faire pénalisent la pérennité des solutions en place, rendant difficile l’harmonisation des pratiques et la comparaison des résultats entre les territoires. Ces faiblesses affectent la capacité des équipes à maintenir une gestion efficace de l’EBT sur le long terme.

= Objectifs du projet

Le projet vise à développer un nouvel outil pour le suivi de l'EBT. Cet outil remplacera les fichiers Excel et autres solutions non officielles actuellement utilisés. Il s’intégrera aux systèmes d’information existants, notamment les bases de données déjà en place.

L’outil devra permettre aux équipes de mieux comprendre et réduire les écarts inexpliqués. Pour cela, des fonctionnalités de datavisualisation seront intégrées, s’appuyant sur des solutions de _Business Intelligence_. Ces fonctionnalités faciliteront l’accès aux données et leur interprétation @OracleBI, grâce à des représentations claires et synthétiques.

Un autre objectif clé sera la création d’une documentation complète et structurée. Cette documentation détaillera l’utilisation de l’outil ainsi que les méthodes de calcul employées, offrant une référence fiable pour les mises à jour et les évolutions futures.

La réussite du projet dépendra en grande partie de l’adoption du nouvel outil par les équipes. Pour accompagner cette transition, un plan de conduite du changement sera mis en œuvre. Ce plan inclura des formations adaptées aux différents profils d’utilisateurs, une communication régulière sur les bénéfices de l’outil, ainsi qu’un accompagnement personnalisé pendant les premières phases d’utilisation @benzaida2008contribution. Ces actions viseront à lever les résistances potentielles et à en encourager l'adoption progressive et durable de la solution.

= Phases clés du projet et rôles associés

Dans le cadre de mon mémoire, qui s'étend sur quatre mois à temps plein, je me concentrerai sur deux phases principales : l'analyse des besoins métiers et la conception, suivie de la validation technique. La première phase consistera à comprendre les attentes des utilisateurs, tandis que la deuxième se focalisera sur la réalisation d'un _Proof of Concept_ (_PoC_) pour démontrer la faisabilité et valider l'approche technique @asanaProofOfConcept, avec le développement d'un prototype fonctionnel.

== Analyse des besoins

L'analyse des besoins métiers est une phase cruciale pour comprendre les attentes des utilisateurs. Cette analyse est d'autant plus importante que le suivi de l'EBT est réparti sur les quatre territoires de GRTgaz, chacun disposant de sa propre équipe d'analystes.

L'organisation actuelle implique des équipes de six à huit analystes par territoire, parmi lesquelles l'un est désigné comme référent territorial. Cette structure est coordonnée par un référent EBT national qui supervise l'ensemble des activités et guide les différentes équipes. Pour mener à bien cette phase d'analyse, des déplacements sur les différents sites et l'organisation de réunions seront nécessaires afin de recueillir les besoins spécifiques de chaque équipe.

Ma mission principale durant cette phase sera de collaborer avec les différents acteurs du projet : les référents EBT territoriaux, le référent national, les responsables des données de comptage et les équipes de management. L'analyse s'articulera autour de plusieurs axes : l'utilisation quotidienne de l'outil, les problématiques à résoudre, les spécificités de chaque territoire et les moments critiques d'utilisation. Cela constituera le socle du projet et aboutira à la rédaction de spécifications fonctionnelles détaillées. Mon rôle sera de faire le lien entre les besoins exprimés par les utilisateurs et les solutions techniques envisageables.

== Conception et validation technique

Après l'analyse des besoins, la phase suivante est la conception technique et sa validation. Elle commence par une période de recherche et de conception, suivie d’un _PoC_ pour valider les choix techniques.

La première étape consiste à analyser l'existant. Actuellement, les données de l'EBT sont stockées dans un cube _OLAP_ et accessibles via des requêtes _MDX_ #footnote[Langage de requête pour les cubes multidimensionnels] (_Multidimensional Expressions_). Cependant, des incohérences dans les calculs existent, dues à une mise à jour asynchrone du référentiel métier. Il est donc nécessaire de revoir la gestion de ce référentiel.

La méthode _Six Sigma_, actuellement utilisée dans le suivi de l'EBT, aide à identifier et réduire les valeurs atypiques qui causent les déséquilibres @pillet2013six. Cette approche, basée sur le modèle DMAIC (Définir, Mesurer, Analyser, Innover, Contrôler), évalue la capacité des processus à respecter les spécifications @BazinConseilSixSigma. Actuellement, les calculs sont réalisés dans Excel avec des macros _VBA_ #footnote[Langage de programmation pour Excel qui permet d'automatiser des tâches répétitives, de créer des macros pour manipuler et traiter des données] (_Visual Basic for Applications_), limitant leur efficacité et maintenabilité. Pour moderniser ces processus, _Python_ semble être le langage le plus adapté. Il offre des capacités puissantes pour la manipulation des données et les calculs statistiques. De plus, GRTgaz dispose déjà d’une équipe _Data_ au sein de la DSI, ce qui faciliterait l’intégration du développement dans leurs processus. _Python_ est aussi compatible avec la nouvelle plateforme  _Data_ de GRTgaz, qui embarque _Snowflake_ #footnote[Plateforme d'hebergement de données dans le cloud] pour le stockage et l'analyse des données.

Concernant la visualisation, deux options sont possibles : _Power BI_, déjà intégré dans la suite _Microsoft_ de GRTgaz, ou _Streamlit_, un module _Python_ compatible avec _Snowflake_. La question du stockage des résultats devra également être abordée.

Pour valider ces choix techniques, un _PoC_ sera développé. Cela permettra de tester les fonctionnalités essentielles et valider l'architecture. Les retours des utilisateurs permettront d'affiner l'interface et de corriger les incohérences avant le développement complet. Cette phase nécessitera une collaboration étroite avec l'équipe _Data_ pour valider l’approche technique, identifier les synergies avec les outils existants, et optimiser les flux de données. Il sera aussi important de réfléchir à la structure des tables (faits, dimensions) et à la création de vues _SQL_ #footnote[Langage de requête pour les bases de données relationnelles] (_Structured Query Language_) pour faciliter l'accès aux données.

= Calendrier prévisionnel

Le calendrier prévisionnel de la partie du projet qui me concerne est le suivant :

#show table.cell: set text(style: "normal", size: 9pt)
#show table.cell.where(x: 0): set text(style: "normal", weight: "bold",size:11pt)
#show table.cell.where(y: 0): set text(style: "normal", weight: "bold",size:11pt)

#figure(
    table(columns: 5,
    align: horizon,
    [Mois], [Semaine 1], [Semaine 2], [Semaine 3], [Semaine 4],
    [1], [Préparation et organisation de l’analyse], [Recueil des besoins], [Analyse et synthèse des retours], [Rédaction des spécifications fonctionnelles],
    [2], [Analyse de l'existant], [Conception de l'architecture], [Développement du PoC (début)], [Revue et ajustement des choix techniques],
    [3], [Développement du PoC (suite)], [Tests de validation du PoC], [Révisions et ajustements sur le PoC], [Finalisation du PoC et documentation],
    [4], [Finalisation du PoC], [Validation technique et utilisateur], [Rédaction de la documentation], [Présentation finale]
    ),
    caption: [
        Calendrier prévisionnel du projet de mémoire
    ]
)

#pagebreak()

#bibliography("bibliography.bib", title: "Bibliographie", style: "ieee")