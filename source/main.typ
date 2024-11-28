#import "template.typ": *


#show: project.with(
  title: "Proposition de sujet de mémoire",
  subtitle : "Optimisation des processus metiers : l'Écart Bilan Technique chez GRTgaz",
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
  logo_company : image("logo_entreprise.png", width: 50%)
)


Ce document propose un sujet de mémoire pour mon projet de fin d’études d'ingénieur informatique, réalisé dans le cadre de mon apprentissage au sein de GRTgaz. Le sujet envisagé porte sur l'optimisation des processus métiers liés à l’Écart Bilan Technique (EBT). Afin de vous présenter ce sujet, je vais commencer par explorer la problématique  liée à l'EBT et les enjeux associés. Je définirai ensuite les objectifs du projet et les résultats attendus, avant de détailler la méthodologie envisagée pour atteindre ces objectifs.

#outline(indent: auto, title:auto)

= L’Écart Bilan Technique

== Définition

L’EBT correspond à la différence entre les quantités de gaz enregistrées en entrée et en sortie du réseau de GRTgaz.

$ "EBT" = sum "Quantités entrantes" - sum "Quantités sortantes" $

Les « quantités entrantes » incluent le gaz provenant de diverses sources : opérateurs adjacents #footnote[Opérateurs de transport de gaz situés à l’extérieur des frontières], stockages, terminaux méthaniers, producteurs de biométhane et rebours #footnote[Gaz réinjecté dans le réseau en raison d’un excédent de production de biométhane]. À l’inverse, les « quantités sortantes » englobent les livraisons destinées aux clients industriels, les mises à l’évent, le gaz carburant, ainsi que les variations de stock en conduite.

== Objectifs

L’objectif principal est de s’assurer que les quantités entrantes sont égales aux quantités sortantes. Si ce n’est pas le cas, cela indique un déséquilibre au sein du réseau, que nous appelons « EBT réalisé ».

Il est important de noter que toutes les entrées et sorties sont soit comptabilisées, soit estimées, y compris les variations de stock en conduite et les gaz mis à l’évent. Si un déséquilibre est détecté, il est nécessaire de l'expliquer. Les déséquilibres peuvent être dus à des causes accidentelles ou structurelles, et nous parlons alors respectivement d'« EBT inexpliqué » et d'« EBT modélisé ».

Les objectifs de l'EBT sont définis à la fois par la Commission de Régulation de l’Énergie (CRE) et par les équipes métiers.

=== Objectifs CRE

Du point de vue de la CRE, l'objectif central est de garantir la transparence et la maîtrise de l'EBT. Il est impératif que les fluctuations de l'EBT soient correctement expliquées afin d'identifier les causes des déséquilibres sur le réseau. La maîtrise de ces écarts a une importance particulière dans le cadre de la régulation tarifaire. En effet, il est nécessaire d'anticiper les variations de l'EBT pour préparer les discussions avec la CRE, notamment lors de révision des tarifs@CRETarifsAcces. Un de ces tarifs est le tarif d'accès des tiers aux réseaux de transport (ATRT).

Le tarif ATRT, est fixé par la CRE, définit le coût d'utilisation des infrastructures de transport et de distribution de gaz naturel. Il couvre les frais liés à l’acheminement du gaz depuis les points d’entrée du réseau (terminaux méthaniers ou interconnexions internationales) jusqu’aux consommateurs finaux, via les réseaux de transport (comme celui de GRTgaz) et de distribution. Ce tarif assure une facturation équitable et transparente, essentielle pour garantir un accès fiable et non discriminatoire aux réseaux de gaz. Pour la période tarifaire à venir (2024-2027) c'est le tarif ATRT8 (delibération de la CRE @CRE2024-22).

=== Objectifs métier

Les équipes métiers se concentrent sur des objectifs opérationnels pour assurer une gestion efficace de l'EBT. Parmi ces objectifs, la réduction des coûts liés au tarif CRE est une priorité. Parallèlement, une attention particulière est accordée à la gestion des anomalies, avec pour objectif de limiter le nombre de valeurs atypiques observées chaque année. Pour identifier et réduire ces valeurs, nous utilisons notamment la méthode _6 sigma_.

La méthode _6 sigma_ vise à améliorer la qualité des processus en réduisant les défauts et les variations@pillet2013six. Elle repose sur une démarche structurée appelée _DMAIC_, qui se décompose en cinq étapes : Définir, Mesurer, Analyser, Améliorer, Contrôler. À l’aide d’outils statistiques, elle permet d’identifier les problèmes et d’apporter des solutions durables.

Au cœur de cette approche se trouve le concept de capabilité du processus, qui évalue la capacité d’un processus à respecter les spécifications attendues. Cette capabilité est exprimée par un indice sigma, calculé en comparant la dispersion des résultats (écart-type) aux limites spécifiées du processus@BazinConseilSixSigma. Un processus _6 sigma_ idéal produit des résultats qui restent dans des limites situées à six écarts-types de la moyenne, réduisant ainsi le risque de défauts.

Dans le contexte de l'EBT, nous calculons l'EBT inexpliqué (lié à des causes accidentelles) pour chaque jour de l’année. En calculant la moyenne et l’écart-type de ces valeurs sur une période donnée, par exemple 100 jours, nous pouvons évaluer la capabilité du processus en les comparant à un seuil défini. Cette analyse met en évidence les journées présentant des anomalies significatives, permettant aux équipes de prioriser leur traitement. Ainsi, elles se concentrent sur les jours les plus critiques pour optimiser l’EBT.

== Enjeux

Comme nous l'avons vu, l’EBT est un indicateur clé pour GRTgaz, qui permet de mesurer la cohérence des flux de gaz sur le réseau et d’assurer la fiabilité des données de comptage. Par ailleurs, il a un impact financier direct, étant comptabilisé comme une dépense d’exploitation, et constitue un élément important dans la régulation tarifaire supervisée par la CRE.

Ces enjeux soulignent la nécessité d’un suivi rigoureux et d’une maîtrise des déséquilibres, qu’ils soient liés à des causes accidentelles ou structurelles.

= Problématique

Les outils actuels de suivi de l’EBT présentent plusieurs limites. Leur complexité rend leur utilisation difficile pour les équipes métiers, et des pannes régulières nuisent à la continuité des opérations. De plus, les pratiques de _shadow IT_, comme l’utilisation de tableurs Excel ou d’autres solutions informelles, sont devenues courantes@rentrop2012shadow. Si ces pratiques permettent de contourner temporairement les diffcultés de développement d’outils dédiés, elles posent des problèmes de sécurité, de fiabilité des données et de conformité avec les standards de l’entreprise.

Par ailleurs, l’absence de documentation à jour et le manque de transfert de savoir-faire pénalisent la pérennité des solutions mises en place. Ces faiblesses affectent la capacité des équipes à maintenir une gestion efficace de l’EBT sur le long terme.

= Objectifs du projet

L’objectif principal de ce projet est de concevoir un outi pour le suivi de l’EBT, en tenant compte des spécificités métiers et des exigences réglementaires de la CRE. Cet outil devra être fiable et parfaitement intégré aux systèmes d’information existants de GRTgaz, tout en simplifiant et en optimisant les processus actuels.

Pour améliorer la gestion des données, le projet vise à repenser les flux d’alimentation des outils afin de les rendre plus simples et plus efficaces. Une automatisation des contrôles de cohérence sera mise en place pour identifier rapidement les anomalies et renforcer la qualité des données. Par ailleurs, une analyse approfondie des sources de données sera réalisée, comparant les cubes multidimensionnels (_OLAP_)  à des connexions au  _Data Warehouse_. L’objectif est de choisir l’approche la plus adaptée pour optimiser le traitement et l’exploitation des données. La cartographie des données et des référentiels métiers permettra également de mieux comprendre l’écosystème des données utilisées et d’identifier les éventuelles incohérences ou points d’amélioration.

L’outil devra être intuitif et ergonomique afin de faciliter son adoption par les équipes métiers. Des fonctionnalités de datavisualisation seront intégrées pour offrir une représentation claire et synthétique des données, facilitant ainsi l’analyse et la prise de décision. En parallèle, une documentation complète sera développée pour accompagner les utilisateurs, garantir une compréhension approfondie des fonctionnalités de l’outil et assurer sa pérennité.

Enfin, la conduite du changement jouera un rôle crucial dans ce projet. Pour permettre une transition fluide vers ce nouvel outil, des formations spécifiques et un accompagnement personnalisé seront proposés aux utilisateurs.

= Résultats attendus

Le projet doit aboutir à la mise en production d’un outil opérationnel pour le suivi de l’EBT, destiné à remplacer les solutions informelles actuellement utilisées.

Sur le plan des performances, les résultats attendus comprennent une réduction notable des déséquilibres inexpliqués et une diminution de la variabilité de l’EBT.

Enfin, l’intégration réussie de cet outil passera par une adoption par les équipes. Celle-ci sera soutenue par une documentation claire, des formations adaptées et un transfert de compétences.

= Phases clés du projet et rôles associés

== Analyse des besoins métiers

La première étape du projet consiste à l'analyse des besoins métiers. Elle permet de bien comprendre les attentes des utilisateurs. En collaboration avec les experts métiers, notamment les référents EBT et des responsables des données de comptage, je mènerai des entretiens pour recueillir les exigences techniques et fonctionnelles et également pour explorer les processus existants, en identifiant leurs limites et en définissant précisément les besoins de l’outil à développer. Mon rôle sera de formaliser ces besoins sous forme de spécifications fonctionnelles, servant de base à la phase de développement. Je ferai aussi le lien entre les attentes des utilisateurs et les solutions techniques envisagées.

== Prototypage et développement

Une fois les besoins métiers clairement définis, la phase de prototypage et de développement pourra commencer. Dans un premier temps, un _proof of concept_ (PoC) sera réalisé pour valider les choix techniques et fonctionnels. Ce PoC permettra de vérifier que les solutions envisagées, tant au niveau de l’architecture logicielle que de la modélisation des données, sont adaptées aux exigences identifiées. Il servira également de base pour orienter le développement en fonction des retours des utilisateurs.

À partir du PoC, des prototypes plus aboutis seront créés. Ces prototypes offriront une version fonctionnelle de l’outil, permettant de tester les fonctionnalités clés dans un environnement proche de la réalité. L’implication des utilisateurs à ce stade sera essentielle : leurs retours permettront d’affiner l’interface, de corriger les éventuelles incohérences et de s’assurer que l’outil réponde précisément aux besoins identifiés.

Mon rôle consistera à superviser l’ensemble de cette phase, depuis la conception initiale jusqu’à l’intégration des retours des utilisateurs.

== Industrialisation et intégration

L’étape suivante sera celle de l’industrialisation, où l’outil validé sera intégré dans le système d'information de GRTgaz. L'industrialisation consiste à transformer une activité, un processus ou un système artisanal en un format standardisé et répétable. Ce processus utilise des technologies, des méthodes et des outils pour augmenter l'efficacité, améliorer la qualité et réduire les coûts. Il comprend plusieurs étapes, telles que la standardisation du code, l’optimisation des performances, l’amélioration de l’interface utilisateur, l’intégration de fonctionnalités de gestion des erreurs, la documentation exhaustive et la conformité aux normes et réglementations. Ce concept s’inscrit dans une démarche plus large de génie logiciel, qui applique des principes d’ingénierie à toutes les phases du cycle de vie des logiciels, de leur conception à leur maintenance.

Cette phase impliquera une collaboration étroite avec la Direction des Systèmes d'Information (DSI). Ensemble, nous veillerons à l’intégration technique de l’outil tout en respectant les exigences de sécurité et de conformité des systèmes existants. Je serai chargé de formaliser les spécifications nécessaires pour assurer cette intégration, tandis que la DSI jouera un rôle clé dans la validation des aspects techniques, notamment en matière de sécurité et de conformité des données.

== Formation et transfert de compétences

Après l’industrialisation, une phase de formation et de transfert de compétences sera mise en place. Il sera crucial que les utilisateurs soient formés à l’utilisation de l'outil. Je serai responsable de l’organisation des sessions de formation et de la rédaction de la documentation nécessaire. Cette documentation couvrira les aspects techniques de l’outil, ainsi que son utilisation au quotidien. Un support sera également prévu pour résoudre d'éventuels problèmes rencontrés lors de la mise en service de l'outil.

== Suivi des résultats et évaluation de l’impact

Enfin, pour évaluer l'impact de l'outil sur les processus métiers, un suivi des résultats sera réalisé. Je serai en charge de l’analyse des performances de l'outil à travers des indicateurs définis en amont. L’objectif sera de mesurer la réduction de l'EBT, la qualité des données générées et l’adoption de l’outil par les utilisateurs. Un rapport détaillé sera préparé pour synthétiser les résultats, identifier les points d’amélioration et proposer des évolutions futures.

= Calendrier prévisionnel

Le calendrier prévisionnel du projet est le suivant :
- Analyse des besoins métiers : 1 mois
- Prototypage et développement : 2 à 3 mois
- Industrialisation et intégration : 1 à 3 mois
- Formation et transfert de compétences : 2 semaines à 1 mois

Si la charge minimale du projet faisant l’objet du mémoire, est de quatre mois à temps plein, je ne pourrai pas mener le projet dans son intégralité. Je devrai donc me concentrer sur les phases d'analyse des besoins métiers, du PoC et du prototypage.

Pour les phases de développement et d'industrialisation, cette partie pourait être amorcée mais devra être finalisée par un autre membre de l'équipe, référant de l'EBT au sein de mon pôle. Enfin, la phase de formation et de transfert de compétences sera assurée par les équipes métiers et la DSI.

#bibliography("bibliography.bib",title: "Reference")