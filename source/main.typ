#import "template.typ": *


#show: project.with(
  title: "Proposition de sujet de mémoire",
  subtitle : "Optimisation des processus metiers : l'Écart Bilan Technique chez GRTgaz",
  authors: (
    (
      name: "Luca LARBOULLET-MARIN", 
      role: "Apprenti",
      poste: "Ingénieur gestion de l'énergie", 
      email: "l.larboulletmarin@gmail.com", 
      phone: "07 82 09 44 78"
    ),
    (
      name: "Stéphane GODET", 
      role:"Maître d'apprentissage",
      poste: "Ingénieur gestion de l'énergie", 
      email: "stephane.godet@grtgaz.com", 
      phone: "06 99 92 28 65"),
  ),
  logo_school: image("logo_ecole.png", width: 70%),
  logo_company : image("logo_entreprise.png", width: 50%)
)


Ce document propose un sujet de mémoire pour mon projet de fin d’études en ingénierie informatique, réalisé dans le cadre de mon apprentissage au sein de GRTgaz. L’objectif principal de ce mémoire est de traiter l’optimisation des processus métiers liés à l’Écart Bilan Technique (EBT),un indicateur crucial dans le cadre des activités de transport et de gestion de l’énergie de l’entreprise.

Ce document commence par une présentation de GRTgaz et du cadre de mon apprentissage, en mettant en lumière l’importance de l’EBT pour l’entreprise. Il explore ensuite la problématique actuelle liée au suivi de cet indicateur et les enjeux associés, avant de définir les objectifs du projet et les résultats attendus. Enfin, il détaille la méthodologie envisagée pour atteindre ces objectifs, tout en répondant aux critères académiques du mémoire de fin d’études.

= Introduction

== GRTgaz : acteur majeur du transport de gaz en France

Créée le 1er janvier 2005, GRTgaz est l'un des principaux gestionnaires de réseau de transport de gaz en France, succédant aux activités de Gaz de France #footnote[Groupe énergétique français créé en 1946]. Filiale d’ENGIE ($60,79 %$) et de la Société d'Infrastructures Gazières ($38,59 %$), GRTgaz joue un rôle central dans la transition énergétique grâce à ses solutions innovantes et durables. Elle partage cette mission avec Teréga, un autre acteur du réseau de transport dans le Sud-Ouest de la France.

En tant que gestionnaire de réseau, GRTgaz garantit l'approvisionnement en gaz via l'entretien, le développement et l’exploitation de son infrastructure. Elle propose des services de transport et de raccordement tout en assurant le respect des obligations réglementaires encadrées par la Commission de Régulation de l'Énergie. Par ailleurs, l'entreprise adopte une politique axée sur la qualité, la fiabilité et la sécurité de ses prestations pour répondre aux besoins du marché.

== Mon apprentissage chez GRTgaz

Je suis rattaché à la Direction Clients et Optimisation de GRTgaz, qui regroupe les activités liées à la relation client, à l’optimisation des flux de gaz, et à la supervision de la facturation et des contrats en veillant à la sécurité, à la fiabilité et à l'efficacité du transport de gaz. Au sein de cette direction, je suis intégré au Pôle Gestion de l’Énergie, qui se concentre sur la gestion des données de comptage, la facturation, et la maîtrise des indicateurs clés comme l’Écart Bilan Technique, essentiel pour le pilotage opérationnel.

En tant qu’apprenti ingénieur, j’interviens sur le développement et la maintenance des outils métiers pour le Pôle Gestion de l’Énergie. Mes missions incluent l'analyse des besoins métiers, la conception et le développement des outils, ainsi que le support technique. Je collabore étroitement avec la Direction des Systèmes d'Information (DSI) pour l’industrialisation des solutions et la gestion des flux de données. Mon poste nécessite une double expertise en informatique et en gestion de l’énergie, me permettant d’allier compétences techniques et compréhension des enjeux métiers.

= Contexte et problématique du projet

Le projet de mémoire s’inscrit dans le cadre des activités de GRTgaz et vise à optimiser les processus métiers liés à l’Écart Bilan Technique (EBT). Le projet n'a pas encore démarré, mais il est en cours de définition. Cette section présente la définition de l’EBT, ses enjeux pour GRTgaz, et la problématique actuelle liée à son suivi. Elle expose également les objectifs du projet et les résultats attendus pour l’entreprise.

== L’Écart Bilan Technique

=== Définition

L’Écart Bilan Technique (EBT) correspond à la différence entre les quantités de gaz enregistrées en entrée et en sortie du réseau de GRTgaz. Il se calcule selon la formule suivante :

$ "EBT" = sum "Quantités entrantes" - sum "Quantités sortantes" $

Les « quantités entrantes » incluent le gaz provenant de diverses sources : opérateurs adjacents #footnote[Opérateurs de transport de gaz situés à l’extérieur des frontières], stockages, terminaux méthaniers, producteurs de biométhane et rebours #footnote[Gaz réinjecté dans le réseau en raison d’un excédent de production de biométhane]. À l’inverse, les « quantités sortantes » englobent les livraisons destinées aux clients industriels, les mises à l’évent, le gaz carburant, ainsi que les variations de stock en conduite.

Cet indicateur est crucial pour le bon fonctionnement du réseau. Un suivi précis de l’EBT permet de réduire les pertes et les erreurs de comptage, d’optimiser les flux et d’assurer la fiabilité des données de comptage. Par ailleurs, il a un impact financier direct, étant comptabilisé comme une dépense d’exploitation, et constitue un élément central dans la régulation tarifaire supervisée par la Commission de Régulation de l’Énergie (CRE).

=== Enjeux

L’importance stratégique de l’EBT repose sur plusieurs dimensions essentielles pour GRTgaz. Sur le plan opérationnel, sa maîtrise garantit une meilleure gestion des flux de gaz et une réduction des pertes potentielles. Sur le plan financier, un EBT bien géré contribue à diminuer les coûts d’exploitation et à stabiliser les dépenses liées au tarif que la CRE impose à GRTgaz. Enfin, sur le plan réglementaire, il constitue un levier clé pour répondre aux exigences de transparence et de régulation imposées par la CRE. Ces enjeux soulignent la nécessité d’un suivi rigoureux et d’une maîtrise des déséquilibres, qu’ils soient liés à des causes accidentelles ou structurelles.

== Problématique

Dans le cadre des activités de GRTgaz, la maîtrise de l’Écart Bilan Technique (EBT) est un enjeu stratégique comme énoncé précédemment.

Cependant, les outils actuels de suivi de l’EBT présentent plusieurs limites. Leur complexité rend leur utilisation difficile pour les équipes métiers, et des pannes régulières nuisent à la continuité des opérations. De plus, les pratiques de _shadow IT_, comme l’utilisation de tableurs Excel ou d’autres solutions informelles, sont devenues courantes. Si ces pratiques permettent de contourner temporairement les diffcultés de développement d’outils dédiés, elles posent des problèmes de sécurité, de fiabilité des données et de conformité avec les standards de l’entreprise.

Par ailleurs, l’absence de documentation à jour et le manque de transfert de savoir-faire entravent la pérennité des solutions mises en place. Ces faiblesses affectent la capacité des équipes à maintenir une gestion efficace de l’EBT sur le long terme. Il est donc nécessaire de développer une solution à la fois robuste, intuitive et adaptée aux besoins opérationnels tout en assurant un transfert des compétences adéquat.

== Objectifs du projet

Le projet a pour objectif de concevoir un outil métier performant pour le suivi de l’EBT. Cet outil devra être fiable, intégré aux systèmes existants de la Direction des Systèmes d’Information (DSI) et capable de répondre aux attentes des équipes métiers et des exigences de la CRE.

Pour garantir une meilleure gestion des données, le projet vise à simplifier les flux d’alimentation des outils et à automatiser les contrôles de cohérence. Cela permettra de détecter les incohérences rapidement et d’améliorer la qualité des données. Une attention particulière sera portée à la réduction des déséquilibres inexpliqués et à la stabilisation de l’EBT, à la fois au niveau national et territorial.

L’interface utilisateur constituera un aspect clé. L’outil devra être ergonomique et intuitif, afin de faciliter son adoption par les équipes métiers. Une documentation complète et accessible sera également produite pour accompagner les utilisateurs et garantir la pérennité de la solution.

Enfin, la conduite du changement jouera un rôle central dans ce projet. Des formations et un accompagnement personnalisé seront proposés pour faciliter la transition vers le nouvel outil et permettre aux équipes de l’utiliser efficacement. L’objectif est de garantir un transfert de compétences fluide, essentiel pour assurer la continuité des opérations.

== Résultats attendus

Le projet doit aboutir à la mise en production d’un outil robuste et opérationnel pour le suivi de l’EBT. Ce nouvel outil devra remplacer les solutions informelles actuellement utilisées et répondre aux standards de qualité et de fiabilité attendus par GRTgaz.

En termes de performance, les résultats attendus incluent une réduction significative des déséquilibres inexpliqués et une diminution de la variabilité de l’EBT. Ces améliorations contribueront à renforcer la fiabilité des données et à optimiser les coûts d’exploitation, tout en assurant la conformité avec les exigences réglementaires.

Enfin, l’intégration réussie de cet outil se traduira par une adoption effective par les équipes métiers, soutenue par une documentation claire et des compétences bien transférées. Cela permettra à GRTgaz de stabiliser durablement la gestion de l’EBT et d’améliorer ses processus opérationnels.

= Phases clés du projet et rôles associés

Le projet devra suivre une démarche structurée visant à concevoir un outil adapté aux besoins du métier. Cette approche repose sur des phases clés, chacune ayant un objectif précis et un rôle essentiel dans la réussite du projet.

== Analyse des besoins métiers

La première étape du projet consiste en une analyse des besoins métiers. Elle représente un moment clé, car elle permet de bien comprendre les attentes des utilisateurs. En collaboration avec les experts métiers, notamment les référents EBT et des responsables des données de comptage, je mènerai des entretiens pour recueillir les exigences techniques et fonctionnelles et également pour explorer les processus existants, en identifiant leurs limites et en définissant précisément les besoins de l’outil à développer. Mon rôle sera de formaliser ces besoins sous forme de spécifications fonctionnelles, servant de base à la phase de développement. Je ferai aussi le lien entre les attentes des utilisateurs et les solutions techniques envisagées.

== Prototypage et développement

Une fois les besoins métiers bien définis, nous passerons à la phase de prototypage et de développement. L’architecture logicielle et la modélisation des données seront conçues pour répondre aux exigences identifiées. À ce stade, je serai responsable de la conception initiale de l’outil et de son développement. Des prototypes seront créés afin de valider les choix techniques et fonctionnels. L’implication des utilisateurs sera cruciale, car leurs retours permettront d’ajuster les fonctionnalités et de garantir l’adéquation de l’outil avec les besoins identifiés. Mon rôle sera de coordonner l’intégration de ces retours tout au long du développement, en m'assurant que le produit final soit conforme aux attentes.

== Industrialisation et intégration

L’étape suivante sera celle de l’industrialisation, où l’outil validé sera intégré dans le système d'information de GRTgaz. Cette phase impliquera une collaboration étroite avec la Direction des Systèmes d'Information (DSI). Ensemble, nous veillerons à l’intégration technique de l’outil tout en respectant les exigences de sécurité et de conformité des systèmes existants. Je serai chargé de formaliser les spécifications nécessaires pour assurer cette intégration. La DSI jouera un rôle clé dans la validation des aspects techniques, notamment en matière de sécurité et de conformité des données.

== Formation et transfert de compétences

Après l’industrialisation, une phase de formation et de transfert de compétences sera mise en place. Il sera crucial que les utilisateurs soient formés à l’utilisation de l'outil. Je serai responsable de l’organisation des sessions de formation et de la rédaction de la documentation nécessaire. Cette documentation couvrira les aspects techniques de l’outil, ainsi que son utilisation au quotidien. Un support sera également prévu pour résoudre d'éventuels problèmes rencontrés lors de la mise en service de l'outil.

== Suivi des résultats et évaluation de l’impact

Enfin, pour évaluer l'impact de l'outil sur les processus métiers, un suivi des résultats sera réalisé. Je serai en charge de l’analyse des performances de l'outil à travers des indicateurs définis en amont. L’objectif sera de mesurer la réduction de l'EBT, la qualité des données générées et l’adoption de l’outil par les utilisateurs. Un rapport détaillé sera préparé pour synthétiser les résultats, identifier les points d’amélioration et proposer des évolutions futures.

= Mon rôle global dans le projet

Mon rôle tout au long de ce projet sera donc celui de coordinateur, garantissant l’harmonie entre les différentes parties prenantes. En tant que _Product Owner_, je m'assurerai que les besoins métiers sont bien pris en compte et traduits en solutions techniques adéquates. Je serai aussi le _Lead Developer_, responsable de la conception et du développement de l'outil.