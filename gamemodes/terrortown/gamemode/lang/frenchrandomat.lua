---- French randomat language strings
local L = LANG.CreateLanguage("FrançaisRandomat")
--- General text used in various places
L.hidden = "Caché"
L.last_words = "Derniers mots"
L.terrorists = "Terroristes"
L.spectators = "Spectateurs"
L.traitor = "Traitre"
L.traitors = "Traîtres"
L.monster = "Monstre"
L.monsters = "Monstres"
L.jester = "Bouffon"
L.jesters = "Bouffons"
L.independent = "Indépendant"
L.independents = "Indépendants"
L.innocent = "Innocente"
L.innocents = "Innocentes"
--- Round status messages
L.round_minplayers = "Pas assez de joueurs pour commencer un nouveau round..."
L.round_voting = "Vote en cours, le round est retardé de {num} secondes..."
L.round_begintime = "Un nouveau round commence dans {num} secondes. Préparez-vous."
L.round_selected = "Les Traitres ont été choisis."
L.round_started = "Le round a commencé !"
L.round_restart = "Le round a recommencé de force par un admin."
L.round_traitors_one = "Traitre, vous êtes seul."
L.round_traitors_more = "Traitre, voici vos alliés : {names}"
L.win_prevented = "La carte a été empêchée de terminer le tour."
L.win_showreport = "Regardons le rapport du round {num} secondes."
L.limit_time = "Limite de temps atteinte. {mapname} va bientôt charger."
L.win_traitor = "Les Traitres ont gagné !"
L.win_innocent = "Les Traitres ont été battus !"
L.win_monster = "Les Monstres ont gagné !"
L.limit_round = "Limite de round atteinte. {mapname} va bientôt charger."
L.limit_time = "Limite de temps atteinte. {mapname} va bientôt charger."
L.limit_left = "Il reste {num} round(s) ou {time} minutes avant que la carte change vers {mapname}."
--- Credit awards
L.credit_all = "{role}, vous avez reçu {num} crédit(s) d'équipement pour votre performance."
L.credit_kill = "Vous avez reçu {num} crédit(s) pour avoir tué un {role}."
--- Karma
L.karma_dmg_full = "Votre Karma est à {amount}, donc vous ferez plein dégâts ce round !"
L.karma_dmg_other = "Votre Karma est à {amount}. De ce fait tous les dégâts que vous faites seront réduits de {num}%"
--- Body identification messages
L.body_found = "{finder} à trouvé le corps de {victim}. {role}"
L.body_confirm = "{finder} a confirmé la mort de {victim}."
L.body_call = "{player} a appelé un Détective pour le corps de {victim} !"
L.body_call_error = "Vous devez confirmer la mort de ce joueur avant d'appeler un Détective !"
L.body_burning = "Aie ! Ce cadavre est en feu !"
L.body_credits = "Vous avez trouvé {num} crédit(s) sur le corps !"
--- Menus and windows
L.close = "Fermer"
L.cancel = "Annuler"
-- For navigation buttons
L.next = "Suivant"
L.prev = "Précédent"
-- Equipment buying menu
L.equip_title = "Équipement"
L.equip_tabtitle = "Commander de l'Équipement"
L.equip_statut = "Statut de la commande"
L.equip_cost = "Il vous reste {num} crédit(s)."
L.equip_help_cost = "Chaque équipement que vous achetez coûte 1 crédit."
L.equip_help_carry = "Vous ne pouvez que acheter où vous avez de la place."
L.equip_carry = "Vous pouvez porter cet objet."
L.equip_carry_own = "Vous portez déjà cet objet."
L.equip_carry_slot = "Vous avez déjà une arme dans l’emplacement {slot}."
L.equip_help_stock = "De certains objets vous ne pouvez en acheter qu'un par round."
L.equip_stock_deny = "Cet objet n'est plus en stock."
L.equip_stock_ok = "Cet objet est en stock."
L.equip_custom = "Objet ajouté par le serveur."
L.equip_spec_name = "Nom"
L.equip_spec_type = "Type"
L.equip_spec_desc = "Description"
L.equip_confirm = "Acheter"
-- Disguiser tab in equipment menu
L.disg_name = "Déguisement"
L.disg_menutitle = "Contrôle déguisement"
L.disg_not_owned = "Vous n'avez pas de Déguisement !"
L.disg_enable = "Activer déguisement"
L.disg_help1 = "Lorsque votre déguisement est actif, votre nom, santé et karma ne sont pas visibles quand quelqu'un vous regarde. De plus, vous n'apparaîtrez pas sur le radar du Détective."
L.disg_help2 = "Appuyez sur Numpad Enter pour basculer sur le déguisement sans le menu. Vous pouvez aussi lier une touche à 'ttt_toggle_disguise' avec la console."
-- Radar tab in equipment menu
L.radar_name = "Le Radar"
L.radar_menutitle = "Contrôle radar"
L.radar_not_owned = "Vous n'avez pas de Radar !"
L.radar_scan = "Faire un scan"
L.radar_auto = "Auto-répéter le scan"
L.radar_help = "Les résultats du scan restent pendant {num} secondes, après cela le Radar devra recharger et pourra être utilisé de nouveau."
L.radar_charging = "Votre Radar charge !"
-- Transfer tab in equipment menu
L.xfer_name = "Transfert"
L.xfer_menutitle = "Transférer crédits"
L.xfer_no_credits = "Vous n'avez aucun crédit à donner !"
L.xfer_send = "Envoyer un crédit"
L.xfer_help = "Vous ne pouvez envoyer des crédits qu'à vos amis {role}s."
L.xfer_no_recip = "Récepteur non valide, transfert annulé."
L.xfer_no_credits = "Pas assez de crédit pour le transfert."
L.xfer_success = "Transfert de crédit vers {player} complété."
L.xfer_received = "{player} vous a donné {num} crédit."
-- Radio tab in equipment menu
L.radio_name = "Radio"
L.radio_help = "Appuyez sur un bouton pour que votre Radio joue ce son."
L.radio_notplaced = "Vous devez placer la Radio pour la faire jouer un son."
-- Radio soundboard buttons
L.radio_button_scream = "Cri"
L.radio_button_expl = "Explosion"
L.radio_button_pistol = "Tir de Pistolet"
L.radio_button_m16 = "Tir de M16"
L.radio_button_deagle = "Tir de Deagle"
L.radio_button_mac10 = "Tir de MAC10"
L.radio_button_shotgun = "Tir fusil à pompe"
L.radio_button_rifle = "Tir de fusil"
L.radio_button_huge = "Tir de H.U.G.E"
L.radio_button_c4 = "Beep de C4"
L.radio_button_burn = "En feu"
L.radio_button_steps = "Bruits de pas"
-- Intro screen shown after joining
L.intro_help = "Si vous êtes nouveau, appuyez sur F1 pour des instructions !"
-- Radiocommands/quickchat
L.quick_title = "Touches de Quickchat"
L.quick_yes = "Oui."
L.quick_no = "Non."
L.quick_help = "À l'aide !"
L.quick_imwith = "Je suis avec {player}."
L.quick_see = "Je vois {player}."
L.quick_suspect = "{player} est suspect."
L.quick_traitor = "{player} est un Traitre !"
L.quick_inno = "{player} est innocent."
L.quick_check = "Y a quelqu'un  ?"
-- {player} in the quickchat text normally becomes a player nickname, but can
-- also be one of the below.  Keep these lowercase.
L.quick_nobody = "personne"
L.quick_disg = "quelqu'un de déguisé"
L.quick_corpse = "un corps non-identifié"
L.quick_corpse_id = "le corps de {player}"
--- Body search window
L.search_title = "Résultats de la fouille"
L.search_info = "les renseignements"
L.search_confirm = "Confirmer la mort"
L.search_call = "Appeler {role}"
-- Descriptions of pieces of information found
L.search_nick = "C'est le corps de {player}."
L.search_role = "C'était un {role}."
L.search_words = "Quelque chose vous dit que quelques unes des dernières paroles de cette personne étaient : '{lastwords}'"
L.search_armor = "Il avait une armure non-standard."
L.search_disg = "Il portait un dispositif qui permet de cacher son identité."
L.search_radar = "Il portait une sorte de radar. Ce radar ne fonctionne plus."
L.search_speed = "Chirurgicalement attachés à leurs jambes se trouvaient des dispositifs qui semblaient les faire bouger plus rapidement."
L.search_regen = "Vous trouvez un appareil accroché dans leurs veines qui semble provoquer une sorte de facteur de guérison accru. Il ne peut pas être supprimé."
L.search_c4 = "Dans une poche, il y a une note. Elle dit que couper le fil numéro {num} va désamorcer la bombe."
L.search_dmg_crush = "Il a beaucoup de fractures. On dirait que l'impact d'un objet lourd l'a tué."
L.search_dmg_bullet = "Il est évident qu'on lui a tiré dessus jusqu'à la mort."
L.search_dmg_fall = "Une chute lui a été fatale."
L.search_dmg_boom = "Ses blessures et les vêtements déchirés indiquent qu'une explosion l'a tué."
L.search_dmg_club = "Il est couvert d'ecchymoses et semble avoir été battu. Très clairement, il a été frappé à mort."
L.search_dmg_drown = "Le corps montre les signes d'une inévitable noyade."
L.search_dmg_stab = "Il s'est fait coupé et poignardé avant de saigner à mort."
L.search_dmg_burn = "Ça sent le terroriste grillé, non  ?"
L.search_dmg_tele = "On dirait que son ADN a été altéré par des émission de tachyons !"
L.search_dmg_car = "Pendant que cette personne traversait la route, ils s'est fait roulé dessus par un conducteur imprudent."
L.search_dmg_other = "Vous n'arrivez pas à identifier la cause de sa mort."
L.search_weapon = "Il semblerait qu'un {weapon} a été utilisé pour le tuer."
L.search_head = "Le blessure fatale a été portée à la tête. Impossible de crier."
L.search_time = "Il est mort {time} avant que vous fassiez l'enquête."
L.search_dna = "Ramassez un échantillon de l'ADN du tueur avec un Scanner ADN. Cet échantillon va se décomposer dans à peu près {time}."
L.search_kills1 = "Vous avez trouvé une liste de meurtres qui confirme la mort de {player}."
L.search_kills2 = "Vous avez trouvé une liste de meurtres avec les noms suivants :"
L.search_eyes = "En utilisant vos compétences de détectives, vous avez identifié la dernière personne qu'il a vu : {player}. Serait-ce le tueur, ou une coïncidence  ?"
-- Scoreboard
L.sb_playing = "Vous jouez à {map} avec {version} sur..."
L.sb_mapchange = "On change de carte dans {num} round(s) ou dans {time}"
L.sb_mia = "Sans nouvelles"
L.sb_confirmed = "Confirmés Morts"
L.sb_ping = "Ping"
L.sb_deaths = "Morts"
L.sb_score = "Score"
L.sb_karma = "Karma"
L.sb_info_help = "Fouillez le corps de ce joueur, et vous reverrez les résultats ici."
L.sb_tag_friend = "AMI"
L.sb_tag_susp = "SUSPECT"
L.sb_tag_avoid = "EVITER"
L.sb_tag_kill = "TUER"
L.sb_tag_miss = "ABSENT"
--- Help and settings menu (F1)
L.help_title = "Aide et options"
-- Tabs
L.help_tut = "Tutoriel"
L.help_tut_tip = "Comment fonctionne le TTT, en quelques étapes"
L.help_tut_find_role = "Trouver mon rôle"
L.help_settings = "Options"
L.help_settings_tip = "Options client"
-- Settings
L.set_title_gui = "Options d'interface"
L.set_tips = "Montrer des astuces en bas de l'écran pendant que vous êtes spectateurs"
L.set_startpopup = "Durée du pop-up de début de partie"
L.set_startpopup_tip = "Quand la partie commence, un petit pop-up apparaît en bas de votre écran pendant quelques secondes. Changez la durée de ce pop-up."
L.set_cross_opacity = "Opacité du curseur du viseur"
L.set_cross_disable = "Désactiver le curseur"
L.set_minimal_id = "ID de Cible minimaliste sous le curseur (pas de texte karma, d'astuces, etc)"
L.set_healthlabel = "Montrer le label de statut de santé sur la barre de vie"
L.set_lowsights = "Baisser l'arme quand vous utilisez le viseur"
L.set_lowsights_tip = "Activez pour positionner le modèle de l'arme plus bas sur l'écran pendant que vous visez. Vous pourrez ainsi voir plus facilement votre cible, mais ce sera moins réaliste."
L.set_fastsw = "Changement d'arme rapide"
L.set_fastsw_tip = "Activez pour parcourir les armes sans avoir à cliquer sur l'arme. Activez le menu des armes pour pouvoir les voir."
L.set_fastsw_menu = "Activer le menu avec changement d'arme rapide"
L.set_fastswmenu_tip = "Quand le changement d'arme rapide est activé, le menu des armes apparaîtra."
L.set_wswitch = "Désactiver la fermeture automatique du menu des armes"
L.set_wswitch_tip = "Par défaut les menu des armes ferme automatiquement après quelques secondes après le dernier scroll. Activez ceci pour le faire rester."
L.set_swselect = "Fermer le menu lorsque l'arme est sélectionnée"
L.set_swselect_tip = "Par défaut, le sélecteur d'arme se ferme lorsqu'une arme est sélectionnée. Désactivez-le pour qu'il reste actif. Ignoré lorsque la commutation rapide est activée."
L.set_cues = "Émettre un son quand un round commence ou finit"
L.set_raw_karma = "Afficher la valeur du karma brut"
L.set_raw_karma_tip = "Affiche la valeur brute du karma dans le tableau de bord au lieu du pourcentage de dégâts infligés par chaque joueur"
L.set_karma_total_pct = "Afficher le karma en pourcentage du total"
L.set_karma_total_pct_tip = "Affiche la valeur du karma dans le tableau de bord sous forme de pourcentage du karma total possible au lieu du pourcentage de dégâts infligés par chaque joueur"
L.set_color_mode = "Paramètres de couleur"
L.set_hide_role = "Cachez votre rôle dans le HUD"
L.set_hide_role_tip = "Par défaut, votre rôle apparaîtra en bas à gauche du HUD. Activez cette option pour éviter la triche à l'écran."
L.set_hide_ammo = "Cachez vos munitions d'armes dans le HUD"
L.set_hide_ammo_tip = "Par défaut, les munitions de votre arme apparaîtront en bas à gauche du HUD. Activez cette option si vous avez un autre module complémentaire qui le fait pour vous."
L.set_radio_button = "Bouton de menu radio"
L.set_radio_button_tip = "Sur quel bouton appuyer pour ouvrir/fermer le menu radio"
L.set_title_play = "Options de gameplay"
L.set_specmode = "Mode spectateur uniquement (toujours rester spectateur)"
L.set_specmode_tip = "Mode spectateur uniquement vous empêche de réapparaître quand une nouvelle partie commence, à la place vous resterez spectateur."
L.set_mute = "Mute les joueurs vivants quand ils meurent"
L.set_mute_tip = "Activez pour mute les joueurs vivants quand vous êtes mort/un spectateur."
L.set_title_lang = "Langue"
-- It may be best to leave this next one english, so english players can always
-- find the language setting even if it's set to a language they don't know.
L.set_lang = "Choisir une langue:"
--- Weapons and equipment, HUD and messages
-- Equipment actions, like buying and dropping
L.buy_no_stock = "Cette arme est à court de stock : vous l'avez déjà acheté ce round."
L.buy_pending = "Vous avez déjà une commande en attente, attendez de la recevoir d'abord."
L.buy_received = "Vous avez reçu votre équipement spécial."
L.buy_received_delay = "Vous recevrez votre équipement spécial lors de l'activation."
L.buy_favorite_toggle = "Basculer en favori"
L.buy_random = "Acheter de l'équipement au hasard"
L.drop_no_room = "Il n'y pas la place pour jeter votre arme !"
L.disg_turned_on = "Déguisement activé !"
L.disg_turned_off = "Déguisement désactivé."
-- Equipment item descriptions
L.item_passive = "Objet à effet passif"
L.item_active = "Objet à effet actif"
L.item_weapon = "Arme"
L.item_armor = "Armure"
L.item_armor_desc = [[
Réduit les dégâts de balles de
30% quand vous êtes touché.

Équipement par défaut des Détectives.]]
L.item_radar = "Le Radar"
L.item_radar_desc = [[
Vous laisse scanner des formes de vies.

Commence des scans automatiques dès 
que vous l'achetez. Configurez-le dans
l'onglet Radar de ce menu.]]
L.item_disg = "Déguisement"
L.item_disg_desc = [[
Cache votre ID. Évite de paraître comme
la dernière personne vue avant de mourir.

Basculez vers l'onglet Déguisement de ce menu
ou appuyez sur Numpad Enter.]]
L.item_speed = "Augmentation de la vitesse"
L.item_speed_desc = [[
Augmente le boost de vitesse donné pendant
tenant des griffes de 35% à 50%.]]
L.item_regen = "Régénération"
L.item_regen_desc = [[
Régénère passivement la santé
à raison de 1.5 PV par seconde.]]
-- C4
L.c4_hint = "Utilisez {usekey} pour amorcer ou désamorcer."
L.c4_no_disarm = "Vous ne pouvez pas désamorcer le C4 d'un autre Traitre, à moins qu'il soit mort."
L.c4_disarm_warn = "Un explosif C4 que vous avez planté a été désamorcé."
L.c4_armed = "Vous avez amorcé la bombe avec succès."
L.c4_disarmed = "Vous avez désamorcé la bombe avec succès."
L.c4_no_room = "Vous n'avez pas la place pour ce C4."
L.c4_desc = "Explosif surpuissant menu d'un minuteur."
L.c4_arm = "Amorcer le C4"
L.c4_arm_timer = "Minuteur"
L.c4_arm_secondes = "Secondes avant détonation :"
L.c4_arm_attempts = "Pendant le désamorçage, {num} des 6 fils va instantanément détoner quand coupé."
L.c4_remove_title = "Retrait"
L.c4_remove_pickup = "Ramasser C4"
L.c4_remove_destroy1 = "Détruire C4"
L.c4_remove_destroy2 = "Confirmer : destruction"
L.c4_disarm = "Désamorcer C4"
L.c4_disarm_cut = "Couper le fil {num}"
L.c4_disarm_t = "Coupez un fil pour désamorcer la bombe. En tant que Traitre, tous les fils fonctionneront. Les innocents n'ont pas cette chance !"
L.c4_disarm_owned = "Coupez un fil pour désamorcer la bombe. C'est votre bombe, donc tous les fils fonctionneront."
L.c4_disarm_other = "Coupez un fil pour désamorcer la bombe. Si vous vous trompez, ça va péter !"
L.c4_statut_armed = "ARMÉE"
L.c4_statut_disarmed = "DÉSARMÉE"
-- Visualizer
L.vis_name = "Visualiseur"
L.vis_hint = "Appuyez sur {usekey} pour ramasser (Détectives uniquement)."
L.vis_help_pri = "{primaryfire} pour jeter l'appareil activé."
L.vis_desc = [[
Dispositif de visualisation de scène de crime.

Analyse un corps pour montrer comment
la victime a été tuée, mais seulement s'il
est mort d'un coup de feu.]]
-- Decoy
L.decoy_name = "Leurre"
L.decoy_no_room = "Vous ne pouvez pas porter ce leurre."
L.decoy_broken = "Votre Leurre a été détruit !"
L.decoy_help_pri = "{primaryfire} plante le Leurre."
L.decoy_desc = [[
Montre un faux signe sur le radar
des détectives,et font que leur 
scanner ADN montre la position
du Leurre s'il cherche le vôtre.]]
-- Defuser
L.defuser_name = "DÉmineur"
L.defuser_help = "{primaryfire} désamorce le C4 ciblé."
L.defuser_desc = [[
Désamorce instantanément un explosif C4.

Usages illimités. Le C4 sera plus visible
si vous avez ça sur vous.]]
-- Flare gun
L.flare_name = "Pistolet de détresse"
L.flare_desc = [[
Peut être utilisé pour brûler les corps pour
qu'ils ne soient pas trouvés. Munitions limitées

Brûler un corps fait un son
distinct.]]
-- Health station
L.hstation_name = "Station de Soins"
L.hstation_hint = "Appuyez sur {usekey} pour recevoir des soins. Charge : {num}."
L.hstation_broken = "Votre Station de Soins a été détruite !"
L.hstation_help = "{primaryfire} place la Station de Soins."
L.hstation_desc = [[
Soigne les personnes qui l'utilise.

Recharge lente. Tout le monde peut l'utiliser, et
elle peut être endommagée. Peut être vérifiée pour
les échantillons ADN de ses utilisateurs.]]
-- Knife
L.knife_name = "Couteau"
L.knife_thrown = "Couteau lancé"
L.knife_desc = [[
Tue les cibles blessées sur le champ et
sans faire de bruit, mais à usage unique.

Peut être lancé avec l'alt-fire.]]
-- Poltergeist
L.polter_desc = [[
Plante des pousseurs sur des objets
pour les pousser violemment.

Ces éclats d'énergie peuvent frapper les gens
à proximité.]]
-- Radio
L.radio_broken = "Votre Radio a été détruite !"
L.radio_help_pri = "{primaryfire} place la Radio."
L.radio_desc = [[
Joue des sons pour distraire ou tromper.

Placez la radio quelque part, ensuite
jouez des sons depuis l'onglet Radio
dans ce menu.]]
-- Silenced pistol
L.sipistol_name = "Pistolet Silencieux"
L.sipistol_desc = [[
Pistolet bas bruit, utilise des munitions
de pistolet normales.

Les victimes ne crieront pas quand tuées.]]
-- Newton launcher
L.newton_name = "Lanceur de Newton"
L.newton_desc = [[
Pousse les gens à une distance de sécurité.

Munitions illimitées, mais lent à tirer.]]
-- Binoculars
L.binoc_name = "Binocles"
L.binoc_desc = [[
Zoomer sur des corps et les identifier
de loin.

Usages illimités, mais l'identification
prend quelques secondes.]]
L.binoc_help_pri = "{primaryfire} identifie un corps."
L.binoc_help_sec = "{secondaryfire} change le niveau de zoom."
-- UMP
L.ump_desc = [[
SMG expérimental qui désoriente
les cibles.

Utilise les munitions normales de SMG.]]
-- DNA scanner
L.dna_name = "Scanner ADN"
L.dna_identify = "Le corps doit être identifié pour récupérer l'ADN du tueur."
L.dna_notfound = "Pas d'échantillon ADN trouvé sur la cible."
L.dna_limit = "Limite de stockage atteinte. Retirez les vieux échantillons pour en ajouter de nouveaux."
L.dna_decayed = "L'échantillon ADN du tueur s'est dégradé."
L.dna_killer = "Échantillon ADN du tueur récupéré du corps !"
L.dna_no_killer = "L'ADN n'a pas pu être récupérée (le tueur s'est déconnecté  ?)."
L.dna_armed = "La bombe est amorcée ! Désamorcez-la d'abord !"
L.dna_object = "{num} nouveaux échantillon(s) ADN de l'objet."
L.dna_gone = "Pas d'ADN par ici."
L.dna_desc = [[
Collectez des échantillons ADN d'objets
et utilisez-les pour trouvez le 
propriétaire de cet ADN.

Essayez-le sur des corps tout frais pour récupérer l'ADN
du tueur pour le traquer.]]
L.dna_menu_title = "Contrôles de scan ADN"
L.dna_menu_sample = "Échantillon ADN trouvé sur {source}"
L.dna_menu_remove = "Supprimer la sélection"
L.dna_menu_help1 = "Voici les échantillons ADN que vous avez récupérer."
L.dna_menu_help2 = [[
Quand chargé, vous pouvez scanner la position du
joueur à qui l'échantillon ADN appartient.
Trouver des cibles distantes draine plus d'énergie.]]
L.dna_menu_scan = "Scan"
L.dna_menu_repeat = "Auto-répéteur"
L.dna_menu_ready = "PRÊT"
L.dna_menu_charge = "CHARGEMENT"
L.dna_menu_select = "SÉLECTIONNER ÉCHANTILLON"
L.dna_help_primary = "{primaryfire} pour récupérer un échantillon ADN"
L.dna_help_secondary = "{secondaryfire} pour ouvrir le contrôleur de scan"
-- Magneto stick
L.magnet_name = "Bâton magnétique"
L.magnet_help = "{primaryfire} pour attacher le corps sur cette surface."
-- Grenades and misc
L.grenade_smoke = "Grenade fumigène"
L.grenade_fire = "Grenade incendiaire"
L.unarmed_name = "Sans arme"
L.crowbar_name = "Pied de biche"
L.pistol_name = "Pistolet"
L.rifle_name = "Fusil de sniper"
L.shotgun_name = "Fusil à pompe"
-- Teleporter
L.tele_name = "TÉlÉporteur"
L.tele_failed = "Téléport raté."
L.tele_marked = "Position de téléport marquée."
L.tele_no_ground = "Impossible de téléporter à moins d'être sur un sol solide !"
L.tele_no_crouch = "Impossible de téléporter en étant accroupi !"
L.tele_no_mark = "Aucune position marquée. Marquez une destination avant de vous téléporter."
L.tele_no_mark_ground = "Impossible de marquer une position à moins d'être sur un sol solide !"
L.tele_no_mark_crouch = "Impossible de marquer une position en étant accroupi !"
L.tele_help_pri = "{primaryfire} téléporte la position marquée."
L.tele_help_sec = "{secondaryfire} marque la position actuelle."
L.tele_desc = [[
Teleporte vers un lieu marqué.

La téléportation fait du bruit, et le
nombre d'utilisations est limité.]]
-- Ammo names, shown when picked up
L.ammo_pistol = "Munitions 9mm"
L.ammo_smg1 = "Munitions SMG"
L.ammo_buckshot = "Munitions de fusil à pompe"
L.ammo_357 = "Munitions fusil"
L.ammo_alyxgun = "Munitions Deagle"
L.ammo_ar2altfire = "Munitions de pistolet de détresse"
L.ammo_gravity = "Munitions de Poltergeist"
--- HUD interface text
-- Round status
L.round_wait = "En attente"
L.round_prep = "Préparation"
L.round_active = "En cours"
L.round_post = "Terminé"
-- Health, ammo and time area
L.overtime = "PROLONGATIONS"
L.hastemode = "MODE HÂTIF"
-- TargetID health status
L.hp_healthy = "En Bonne Santé"
L.hp_hurt = "Touché"
L.hp_wounded = "Blessé"
L.hp_badwnd = "Grièvement Blessé"
L.hp_death = "Presque Mort"
-- TargetID karma status
L.karma_max = "Renommé"
L.karma_high = "Cru"
L.karma_med = "Gâchette facile"
L.karma_low = "Dangereux"
L.karma_min = "Irresponsable"
-- TargetID misc
L.corpse = "Corps"
L.corpse_hint = "Appuyez sur {usekey} pour fouiller. {walkkey} + {usekey} pour une fouille approfondie."
L.target_disg = "(DÉGUISÉ)"
L.target_unid = "Corps non-identifié"
L.target_credits = "Fouiller pour récupérer crédit non dépensés"
-- Traitor buttons (HUD buttons with hand icons that only traitors can see)
L.tbut_single = "Usage unique"
L.tbut_reuse = "Réutilisable"
L.tbut_retime = "Réutilisable après {num} sec"
L.tbut_help = "Appuyez sur {key} pour activer"
-- Equipment info lines (on the left above the health/ammo panel)
L.disg_hud = "Déguisé. Votre nom est caché."
L.radar_hud = "Radar prêt pour le prochain scan dans : {time}"
-- Spectator muting of living/dead
L.mute_living = "Joueurs vivants mutés"
L.mute_specs = "Spectateurs mutés"
L.mute_all = "Tous mutés"
L.mute_off = "Aucun mutés"
-- Prop possession
L.punch_title = "FRAPPE-O-METRE"
L.punch_help = "Touche de déplacement ou saut : frappe l'objet. Accroupir : quitter l'objet."
L.punch_bonus = "Votre mauvais score a baissé votre limite frappe-o-metre de {num}"
L.punch_malus = "Votre bon score a augmenté votre limite frappe-o-metre de {num} !"
-- Spectators
L.spec_help = "Cliquez pour observer un joueur, ou {usekey} sur un objet physique pour le posséder."
--- Info popups shown when the round starts
-- These are spread over multiple lines, hence the square brackets instead of
-- quotes. That's a Lua thing. Every line break (enter) will show up in-game.
L.info_popup_monster_comrades = [[Travaillez avec vos alliés pour tuer tous les autres.

Voici vos camarades :
{allylist}]]
L.info_popup_monster_alone = [[Vous n'avez pas d'alliés ce tour.

Tuez tous les autres pour gagner!]]
L.info_popup_traitor_comrades = [[Travaillez avec d'autres {traitors} pour tuer tous les autres.
Mais faites attention, ou votre trahison pourrait sortir au grand jour...

Voici vos camarades :
{traitorlist}]]
L.info_popup_traitor_alone = [[Vous n'avez pas d'amis {traitors} ce round.

Tuez tous les autres pour gagner !]]
L.info_popup_traitor_glitch = [[Travaillez avec d'autres {traitors} pour tuer tous les autres.
MAIS MÉFIEZ-VOUS! Il y a eu {aglitch} dans le système et l'un d'entre vous ne cherche pas le même but.
Ceux-ci peuvent ou non être vos camarades:
{traitorlist}]]
--- Various other text
L.name_kick = "Un joueur a été automatiquement expulsé pour avoir changé son nom pendant un round."
L.idle_popup = [[Vous avez étiez absent {num} secondes et a donc été mis dans le mode Spectateur uniquement. Dans ce mode, vous n'apparaîtrez pas quand un nouveau round démarre.

Vous pouvez basculer hors de ce mode quand vous voulez en appuyant sur {helpkey} et en décochant la case adéquat dans l'onglet Options. Vous pouvez aussi choisir de le désactiver maintenant.]]
L.idle_popup_close = "Ne rien faire"
L.idle_popup_off = "Désactiver le mode maintenant"
L.idle_warning = "Attention : on dirait que vous n'êtes plus là, vous allez être déplacé vers les spectateurs à moins de montrer de l'activité !"
L.spec_mode_warning = "Vous êtes en mode Spectateur et vous n'apparaîtrez pas quand un round commence. Pour désactivez ce mode, appuyez sur F1, allez à Options et décochez 'Mode Spectateur uniquement'."
--- Tips, shown at bottom of screen to spectators
-- Tips panel
L.tips_panel_title = "Astuces"
L.tips_panel_tip = "Astuce :"
-- Tip texts
L.tip1 = "Les traitres peuvent fouillez un corps silencieusement, sans confirmer la mort, en maintenant {walkkey} et en pressant {usekey} sur le corps."
L.tip2 = "Amorcer un explosif C4 avec un minuteur plus long va augmenter le nombre de fils qui va cause une explosion imminente quand un innocent essaiera de la désamorcer. L'explosif beepera plus doucement et à moins grande fréquence."
L.tip3 = "Les Détectives peuvent fouiller un corps pour trouver qui est 'reflété dans ses yeux'. C'est la dernière personne que le mort a vu. Ce n'est pas forcement le tueur si le mort a été tué dans le dos."
L.tip4 = "Personne ne saura que vous êtes mort jusqu'à ce qu'ils trouvent votre cadavre et vous identifie en le fouillant."
L.tip5 = "Quand un Traitre tue un Détective, ils reçoivent instantanément un crédit."
L.tip6 = "Quand un Traitre meure, tous les Détectives sont récompensés d'un crédit d'équipement."
L.tip7 = "Quand les Traitres ont bien avancé pour tuer les innocents, ils recevront un crédit d'équipement comme récompense."
L.tip8 = "Les Traitres et les Détectives peuvent prendre les crédits d'équipement non-dépensés des corps morts d'autres Traitres et Détectives."
L.tip9 = "Le Poltergeist peut transformer n'importe quel objet physique en un projectile mortel. Chaque coup est un accompagné de coups d'énergie qui fait mal à tout le monde à proximité."
L.tip10 = "Traitre ou Détective, gardez à l’œil les messages rouges en haut à droite. Ils sont importants pour vous."
L.tip11 = "Traitre ou Détective, gardez en tête que vous récompensés de crédits d'équipement si vos camarades et vous vous débrouillez bien. Assurez-vous de les dépenser !"
L.tip12 = "Le scanner ADN des Détectives peut être utilisé pour collecter des échantillons ADN d'armes et d'objets puis les scanner pour localiser le joueur qui les a utilisés. Pratique quand vous venez d'obtenir un échantillon d'un corps ou d'un C4 désamorcé !"
L.tip13 = "Quand vous êtes proches de quelqu'un quand vous le tuez, un peu de votre ADN est déposé sur le corps. Cet ADN peut être utilisé pour le Scanner ADN d'un Détective pour vous localiser. Vous feriez mieux de cacher le corps quand vous coupez quelqu'un !"
L.tip14 = "Plus vous étiez quand vous avez tué quelqu'un, plus vite votre échantillon d'ADN sur son corps se dégradera."
L.tip15 = "Vous êtes Traitre et vous allez sniper  ? Essayez le Déguisement. Si vous ratez voter coup, trouvez un endroit sécurisé, désactivez le Déguisement, et personne ne saura que c'était vous qui tirait."
L.tip16 = "En tant que Traitre, le Téléporteur peut vous aider à vous enfuir quand on vous traque, et vous permet de voyager rapidement à travers une grande carte. Assurez-vous de marquer une position sécurisée avant."
L.tip17 = "Les innocents sont tous groupés et vous n'arrivez pas à un en séparer un  ? Pourquoi pas utiliser la Radio pour jouer des sons de C4 ou d'un coup de feu pour les mener ailleurs  ?"
L.tip18 = "Avec la Radio, en tant que Traitre, vous pouvez jouer des sons dans votre Menu des Équipements après que la radio a été placée. Mettez en attente plusieurs sons en cliquant sur plusieurs boutons dans l'ordre dans lequel vous voulez qu'ils soient."
L.tip19 = "En tant que Détective, si vous avez des crédits en réserve, vous pourriez donner à un innocent de confiance un Démineur. Vous pourriez ensuite vous consacrez à un travail sérieux d'investigation et leur laisser le désamorçage risqué."
L.tip20 = "Les Binocles des Détectives permettent une vue et une fouille longue portée des corps. C'est pas bon pour les Traitres s'ils espéraient utiliser un corps comme appât. Bien sûr, ceux qui utilisent les Binocles sont désarmés et distraits..."
L.tip21 = "La Station de Soins des Détectives laisse les joueurs blessés guérir. Bien sûr, ces gens blessés pourraient bien être des Traitres..."
L.tip22 = "La Station de Soins enregistre un échantillon ADN de quiconque l'utilise. Les détectives peuvent l'utiliser avec le Scanner ADN pour trouver qui s'est soigné avec."
L.tip23 = "À l'inverse des armes et du C4, le dispositif Radio pour Traitres ne contiennent pas de échantillon ADN de la personne qui l'a planté. Ne vous inquiétez donc pas d'un Détective qui gâcherai votre couverture."
L.tip24 = "Appuyez sur {helpkey} pour voir un court tutoriel ou modifier des options spécifiques au TTT. Par exemple, vous pouvez désactiver ces astuces pour de bon."
L.tip25 = "Quand un Détective fouille un corps, les résultats sont disponibles pour tous les joueurs à travers le tableau de scores, en cliquant sur le nom de la personne morte."
L.tip26 = "Dans le tableau des scores, une icône de loupe à côté du nom de quelqu'un indique que vous avez déjà cherché des informations à propos de cette personne. Si l'icône est lumineuse, les données viennent d'un Détective et peut contenir des informations additionnelles."
L.tip27 = "En tant que Détective, les corps avec une loupe après leur nom ont été fouillés par un Détective et leur résultats sur accessibles pour tout le monde via le tableau des scores."
L.tip28 = "Les Spectateurs peuvent appuyer sur {mutekey} pour parcourir les mutes pour les spectateurs ou les joueurs vivants."
L.tip29 = "Si le serveur a installé des langues en plus, vous pouvez commuter sur une langue différent n'importe quand dans le menu Options."
L.tip30 = "Les commandes quickchat ou 'radio' sont accessibles avec {zoomkey}."
L.tip31 = "En tant que Spectateur, appuyez sur {duckkey} pour déverrouiller votre curseur et cliquer les boutons sur le panneau des astuces. Appuyez encore sur {duckkey} pour revenir en vue normale."
L.tip32 = "L'alt-fire du Pied de biche va pousser les autres joueurs."
L.tip33 = "Tirer à travers le viseur d'une arme augmentera légèrement votre précision et réduira le recul. S'accroupir, en revanche, non."
L.tip34 = "Les grenades fumigènes sont efficaces dans les bâtiments, surtout pour créer de la confusion dans les salles bondées."
L.tip35 = "En tant que Traitre, souvenez-vous que vous pouvez porter des cadavres et les cacher des pauvre yeux implorants des innocents et de leurs Détectives."
L.tip36 = "Le tutoriel accessible avec {helpkey} contient un aperçu des clés les plus importantes du jeu."
L.tip37 = "Sur le tableau des scores, cliquez sur le nom d'un joueur vivant et vous pouvez lui poser un label pour eux comme 'suspect' or 'ami'. Ce label apparaîtra sur la personne concernée en dessous de votre réticule."
L.tip38 = "Beaucoup des équipements qui sont posables (comme le C4, ou la Radio) peuvent aussi être fixés sur des murs avec l'alt-fire."
L.tip39 = "Le C4 qui explose à cause d'une erreur de déminage a une plus petite explosion qu'un C4 qui atteint zéro sur le minuteur."
L.tip40 = "Si vous voyez 'MODE HÂTIF' au-dessus du chrono du round, le round ne durera au début que quelques minutes, mais chaque mort prolongera le temps restant (comme capturer un point de contrôle dans TF2). Ce mode met la pression aux traitres pour faire bouger les choses."
-- 9/22/21
L.tip41 = "Vous pouvez régler le volume du microphone d'un joueur en cliquant avec le bouton droit sur son bouton de sourdine à la fin du tableau des scores."
--- Round report
L.report_title = "Rapport du round"
-- Tabs
L.report_tab_summary = "Sommaire"
L.report_tab_summary_tip = "Résumé du tour"
L.report_tab_hilite = "Temps forts"
L.report_tab_hilite_tip = "Temps forts du round"
L.report_tab_events = "Événements"
L.report_tab_events_tip = "Journal des événements qui sont arrivés ce round"
L.report_tab_scores = "Scores"
L.report_tab_scores_tip = "Points marqués par chaque joueur dans ce round seul"
-- Sumamry tab
L.summary_role_changed = "{starting} changé en {ending}"
-- Highlights tab
L.hilite_win_role_plural = "LES {role} GAGNENT"
L.hilite_win_role_singular = "LE {role} GAGNE"
L.hilite_win_role_singular_additional = "ET LE {role} GAGNE"
L.hilite_players1 = "Vous étiez {numplayers}, dont {numtraitors} traitres"
L.hilite_players2 = "Vous étiez {numplayers}, dont un traitre"
L.hilite_duration = "Le round a duré {time}"
-- Event log tab
L.report_save = "Save Log .txt"
L.report_save_tip = "Saves the Event Log to a text file"
L.report_save_error = "No Event Log data to save."
L.report_save_result = "The Event Log has been saved to:"
-- Score tab columns
L.col_time = "Temps"
L.col_event = "Événement"
L.col_player = "Joueur"
L.col_role = "Rôle"
L.col_kills1 = "Meurtres {innocent}"
L.col_kills2 = "Meurtres {traitor}"
L.col_kills3 = "Meurtres {jester}"
L.col_kills4 = "Meurtres Indep."
L.col_kills5 = "Meurtres Monstre"
L.col_points = "Points"
L.col_team = "Bonus d'équipe"
L.col_total = "Points totaux"
-- Name of a trap that killed us that has not been named by the mapper
L.something = "quelque chose"
-- Kill events
L.ev_blowup = "{victim} s'est fait exploser"
L.ev_blowup_trap = "{victim} s'est fait exploser par {trap}"
L.ev_tele_self = "{victim} s'est téléfrag"
L.ev_sui = "{victim} n'en pouvait plus et s'est tué"
L.ev_sui_using = "{victim} s'est tué avec {tool}"
L.ev_fall = "{victim} a fait une chute mortelle"
L.ev_fall_pushed = "{victim} a fait une chute mortelle après que {attacker} l'a poussé"
L.ev_fall_pushed_using = "{victim} a fait une chute mortelle après que {attacker} a utilisé {trap} pour le pousser"
L.ev_shot = "{victim} s'est fait tiré dessus par {attacker}"
L.ev_shot_using = "{victim} s'est fait tiré dessus par {attacker} avec un {weapon}"
L.ev_drown = "{victim} s'est noyé à cause de {attacker}"
L.ev_drown_using = "{victim} s'est noyé à cause de {trap} activé par {attacker}"
L.ev_boom = "{victim} est mort d'une explosion causée par {attacker}"
L.ev_boom_using = "{victim} est mort d'une explosion causée par {attacker} avec {trap}"
L.ev_burn = "{victim} s'est fait grillé par {attacker}"
L.ev_burn_using = "{victim} a brûlé de {trap} à cause de {attacker}"
L.ev_club = "{victim} a été battu par {attacker}"
L.ev_club_using = "{victim} a été roué de coups {attacker} avec {trap}"
L.ev_slash = "{victim} a été poignardé par {attacker}"
L.ev_slash_using = "{victim} s'est fait coupé par {attacker} avec {trap}"
L.ev_tele = "{victim}s'est fait téléfrag par {attacker}"
L.ev_tele_using = "{victim} s'est fait atomisé par {attacker} en utilisant {trap}"
L.ev_goomba = "{victim} s'est fait écrasé par la masse imposante de {attacker}"
L.ev_crush = "{victim} s'est fait broyé par {attacker}"
L.ev_crush_using = "{victim} s'est fait broyé par {attacker} avec {trap}"
L.ev_other = "{victim} est mort à cause de {attacker}"
L.ev_other_using = "{victim} est mort à cause de {attacker} avec {trap}"
-- Other events
L.ev_body = "{finder} a trouvé le corps de {victim}"
L.ev_c4_plant = "{player} a planté un C4"
L.ev_c4_boom = "Le C4 planté par {player} a explosé"
L.ev_c4_disarm1 = "{player} a désamorcé le C4 planté par {owner}"
L.ev_c4_disarm2 = "{player} a échoué au déminage du C4 planté par {owner}"
L.ev_credit = "{finder} a trouvé {num} crédit(s) sur le corps de {player}"
L.ev_start = "Les round a commencé"
L.ev_spawn = "{player} engendré comme un {role}"
L.ev_role_changed = "{player} a changé de rôle pour un {role}"
L.ev_win_traitor = "L'ignoble {role} a remporté la manche!"
L.ev_win_inno = "L'adorable {role} a remporté la manche!"
L.ev_win_monster = "Les monstres maléfiques ont gagné la manche!"
L.ev_win_time = "Le {role} a manqué de temps et a été perdu!"
L.ev_win_icon = "{role} a gagné"
L.ev_win_icon_time = "Limite de temps"
L.ev_win_icon_also = "{role} a également gagné"
L.ev_win_unknown = "Type de gain inconnu avec ID: {id}"
--- Awards/highlights
L.aw_sui1_title = "Leader du Culte du Suicide"
L.aw_sui1_text = "a montré les autres suicidaires comment on fait en y allant le premier."
L.aw_sui2_title = "Seul et DÉprimÉ"
L.aw_sui2_text = "est le seul qui s'est donné la mort."
L.aw_exp1_title = "Subventions des Recherches sur les Explosifs"
L.aw_exp1_text = "est reconnu pour ses recherches sur les explosifs. {num} cobayes ont contribué."
L.aw_exp2_title = "Recherche sur le Terrain"
L.aw_exp2_text = "a testé sa résistance aux explosions. Hélas, elle était trop faible."
L.aw_fst1_title = "Premier Sang"
L.aw_fst1_text = "a expédié la première mort d'un innocent dans les mains de traitres."
L.aw_fst2_title = "Premier Sang d'un Idiot"
L.aw_fst2_text = "a fait la peau le premier a un allié traitre. Bon travail."
L.aw_fst3_title = "Premier... BÊtisier"
L.aw_fst3_text = "a été le premier à tuer. Dommage que c'était un camarade innocent."
L.aw_fst4_title = "Premier Coup"
L.aw_fst4_text = "a envoyé le premier (bon) coup pour les terroristes innocents en abattant en premier un traitre."
L.aw_all1_title = "Le Plus Mortel Parmi Ses Pairs"
L.aw_all1_text = "est responsable de tous les meurtres des innocents ce round."
L.aw_all2_title = "Loup Solitaire"
L.aw_all2_text = "est responsable de tous les meurtres des traitres ce round."
L.aw_nkt1_title = "J'en Ai Eu Un, Patron !"
L.aw_nkt1_text = "a réussi à tuer un seul innocent. Sympa !"
L.aw_nkt2_title = "Une Balle Pour Deux"
L.aw_nkt2_text = "a montré que le premier n'était pas un coup de feu chanceux en tuant un autre gaillard."
L.aw_nkt3_title = "Traitre En SÉrie"
L.aw_nkt3_text = "a terminé trois vies innocentes du terrorisme aujourd'hui."
L.aw_nkt4_title = "Loup Parmi Les Loups-Moutons"
L.aw_nkt4_text = "mange des innocents pour le diner. Un diner composé de {num} plats."
L.aw_nkt5_title = "Agent Anti-Terrorisme"
L.aw_nkt5_text = "est pay chaque assassinat. Il est temps d'acheter un yacht de luxe."
L.aw_nki1_title = "Trahis Donc Ça"
L.aw_nki1_text = "a trouvé un traitre. Puis il l'a buté. Facile."
L.aw_nki2_title = "PostulÉ pour la Justice Squad"
L.aw_nki2_text = "a escorté deux traitres dans l'au-delà."
L.aw_nki3_title = "Est-ce Que Les Traitres RÊvent De Moutons Traitres ?"
L.aw_nki3_text = "a descendu trois traites."
L.aw_nki4_title = "EmployÉ d'Affaires Internes"
L.aw_nki4_text = "est payé à chaque assassinat. Il est temps de commander une cinquième piscine."
L.aw_fal1_title = "Non M. Bond, Je M'attends À Ce Que Vous Tombiez"
L.aw_fal1_text = "a poussé quelqu'un d'une grande altitude."
L.aw_fal2_title = "AtterrÉ"
L.aw_fal2_text = "a laissé son corps se fracasser sur le sol après être tombé d'une grande altitude."
L.aw_fal3_title = "La MÉtÉorite Humaine"
L.aw_fal3_text = "a écrasé quelqu'un en lui tombant dessus d'une haute altitude."
L.aw_hed1_title = "EfficacitÉ"
L.aw_hed1_text = "a découvert la joie des headshots et en a fait {num}."
L.aw_hed2_title = "Neurologie"
L.aw_hed2_text = "a retiré le cerveau de {num} têtes après un examen minutieux."
L.aw_hed3_title = "C'est À Cause Des Jeux-Vidéos"
L.aw_hed3_text = "n'a fait qu'appliquer son entraînement d'assassin et a headshot {num} ennemis."
L.aw_cbr1_title = "Plonk Plonk Plonk"
L.aw_cbr1_text = "a bon poignet avec son pied de biche, et {num} victimes en sont témoins."
L.aw_cbr2_title = "Freeman"
L.aw_cbr2_text = "a recouvert son pied de biche des cerveaux de pas moins de {num} personnes."
L.aw_pst1_title = "Le P'tit Salaud Persistant"
L.aw_pst1_text = "a tué {num} personnes avec un pistolet. Puis ils ont embrassé quelqu'un jusqu'à sa mort."
L.aw_pst2_title = "Massacre Petit Calibre"
L.aw_pst2_text = "a tué une petite armée de {num} personnes avec un pistolet. Il a vraisemblablement installé un petit fusil à pompe dans le canon."
L.aw_sgn1_title = "Mode Facile"
L.aw_sgn1_text = "mets les balles où ça fait mal, {num} terroristes en ont fait les frais."
L.aw_sgn2_title = "1000 Petites Balles"
L.aw_sgn2_text = "n'aimait pas vraiment son plomb, donc il a tout donné. {num} n'ont pas pu apprécier le moment."
L.aw_rfl1_title = "Point and Click"
L.aw_rfl1_text = "montre que tout ce dont vous avez besoin pour descendre {num} cibles est un fusil est une bonne main."
L.aw_rfl2_title = "Je Peux Voir Ta TÊte D'ici !"
L.aw_rfl2_text = "connait son fusil. Maintenant {num} autres le connaissent aussi."
L.aw_dgl1_title = "C'est Comme Un, Un Petit Fusil"
L.aw_dgl1_text = "commence à se débrouiller avec le Desert Eagle et a tué {num} joueurs."
L.aw_dgl2_title = "MaÎtre de l'Aigle"
L.aw_dgl2_text = "a flingué {num} joueurs avec le deagle."
L.aw_mac1_title = "Prier et Tuer"
L.aw_mac1_text = "a tué {num} personnes avec le MAC10, mais ne compte pas dire combien de munitions il a utilisé."
L.aw_mac2_title = "Mac 'n' Cheese"
L.aw_mac2_text = "se demande ce qu'il se passerai s'il pouvait porter deux MAC10. {num} fois deux ça fait ?"
L.aw_sip1_title = "Silence"
L.aw_sip1_text = "a fermé le clapet à {num} piplette(s) avec un pistolet silencieux."
L.aw_sip2_title = "Assassin Silencieux"
L.aw_sip2_text = "a tué {num} personnes qui ne se sont pas entendu mourir."
L.aw_knf1_title = "Le Couteau Qui Te ConnaÎt"
L.aw_knf1_text = "a poignardé quelqu'un en pleine tête devant tout internet."
L.aw_knf2_title = "OÛ Est-Ce Que T'as TrouvÉ Ça  ?"
L.aw_knf2_text = "n'était pas un Traitre, mais a quand même terrassé quelqu'un avec un couteau."
L.aw_knf3_title = "Regardez, C'est L'Homme Au Couteau !"
L.aw_knf3_text = "a trouvé {num} couteaux qui gisaient, et les a utilisés."
L.aw_knf4_title = "Le Plus Gros Couteau Du Monde"
L.aw_knf4_text = "a tué {num} avec un couteau. Ne me demandez pas comment."
L.aw_flg1_title = "À la rescousse"
L.aw_flg1_text = "a utilisé son pistolet de détresse pour {num} morts."
L.aw_flg2_title = "FusÉe = Feu"
L.aw_flg2_text = "a montré à {num} hommes comme c'est dangereux de porter des vêtements inflammables."
L.aw_hug1_title = "Expansion Digne D'un H.U.G.E"
L.aw_hug1_text = "a été en harmonie avec son H.U.G.E, et s'est débrouillé pour faire en sorte que les balles tuent {num} hommes."
L.aw_hug2_title = "Un Para Patient"
L.aw_hug2_text = "n'a fait que tirer, et a vu sa -H.U.G.E- patience le récompenser de {num} éliminations."
L.aw_msx1_title = "Poot Poot Poot"
L.aw_msx1_text = "a dégommé {num} victimes avec le M16."
L.aw_msx2_title = "Folie Moyenne PortÉe"
L.aw_msx2_text = "sais démonter avec le M16, et il l'a prouvé à {num} victimes."
L.aw_tkl1_title = "Oups..."
L.aw_tkl1_text = "a vu son doigt glisser quand il visait un copain."
L.aw_tkl2_title = "Double Oups"
L.aw_tkl2_text = "a cru qu'il a eu deux Traitres, mais s'est les deux fois trompé."
L.aw_tkl3_title = "OÙ Est Mon Karma ?!"
L.aw_tkl3_text = "ne s'est pas arrêté après avoir buté deux coéquipiers. Trois c'est son nombre chanceux."
L.aw_tkl4_title = "Équipocide"
L.aw_tkl4_text = "a massacré son équipe toute entière. OMGBANBANBAN."
L.aw_tkl5_title = "Roleplayer"
L.aw_tkl5_text = "a pris le rôle d'un malade, mais vraiment. C'est pour ça qu'il a tué la plupart de son équipe."
L.aw_tkl6_title = "Abruti"
L.aw_tkl6_text = "n'a pas compris dans quel camp il était, et il a tué le moitié de ses camarades."
L.aw_tkl7_title = "Plouc"
L.aw_tkl7_text = "a vraiment bien protégé son territoire en tuant plus d'un quart des ses collègues."
L.aw_brn1_title = "Comme Mamie Me Les Faisait"
L.aw_brn1_text = "a frit quelques hommes pour les rendre croustillants."
L.aw_brn2_title = "PyroÏde"
L.aw_brn2_text = "a été entendu rire aux éclats après avoir brûlé un paquet de ses victimes."
L.aw_brn3_title = "BrÛleur Pyrrhique"
L.aw_brn3_text = "les a tous cramés, et maintenant il est à court de grenades incendiaires ! Comment va-t-il surmonter ça !  ?"
L.aw_fnd1_title = "MÉdecin LÉgiste"
L.aw_fnd1_text = "a trouvé {num} corps qui traînaient."
L.aw_fnd2_title = "Attrapez Les Tous"
L.aw_fnd2_text = "a trouvé {num} corps pour sa collection."
L.aw_fnd3_title = "ArÔme De Mort"
L.aw_fnd3_text = "n'arrête pas de tomber sur des corps au hasard comme ça, {num} fois pour ce round."
L.aw_crd1_title = "Recycleur"
L.aw_crd1_text = "a rassemblé {num} crédits des corps."
L.aw_tod1_title = "Victoire À la Pyrrhus"
L.aw_tod1_text = "n'est mort que quelques secondes avant que son équipe remporte la victoire."
L.aw_tod2_title = "Je Hais Ce Jeu"
L.aw_tod2_text = "est mort juste après que le round ait commencé."
--- New and modified pieces of text are placed below this point, marked with the
--- version in which they were added, to make updating translations easier.
--- v23
L.set_avoid_det = "Éviter d'être choisi Détective"
L.set_avoid_det_tip = "Activez ceci pour demander au serveur de ne pas être choisi en tant que Détective si c'est possible. Vous ne serez pas Traitre plus souvent."
--- v24
L.drop_no_ammo = "Pas assez de munitions dans le chargeur de votre arme pour les jeter en tant que boîte de munitions."
--- v31
L.set_cross_brightness = "Luminosité du réticule"
L.set_cross_size = "Taille du réticule"
--- 2015-05-25
L.hat_retrieve = "Vous avez ramassé le chapeau d'un Détective."
--- 2017-03-09
L.sb_sortby = "Trier Par :"
--- 2018-07-24
L.equip_tooltip_main = "Menu d'Équipement"
L.equip_tooltip_radar = "Contrôle Radar"
L.equip_tooltip_disguise = "Contrôle Déguisement"
L.equip_tooltip_radio = "Contrôle Radio"
L.equip_tooltip_xfer = "Transfert crédits"
L.confgrenade_name = "Discombobulateur"
L.polter_name = "Poltergeist"
L.stungun_name = "Prototype UMP"
L.knife_instant = "MORT INSTANTANÉE"
L.dna_hud_type = "TYPE"
L.dna_hud_body = "CORPS"
L.dna_hud_item = "OBJET"
L.binoc_zoom_level = "NIVEAU"
L.binoc_body = "CORPS REPÉRÉ"
L.idle_popup_title = "Inactif"
--- 2021-06-07
L.sb_playervolume = "Volume du lecteur"
-- Custom Events
L.ev_defi = "{victim} a réapparu"
L.ev_disco = "{victim} debranché"
-- Role Weapons Configuration
L.roleweapons_title = "Configuration des armes de rôle"
L.roleweapons_tabtitle = "Armes de rôle"
L.roleweapons_tabtitle_tooltip = "Configurez les armes achetables qui sont ajoutées ou exclues de la boutique d'un rôle"
L.roleweapons_confirm = "Mettre à jour"
L.roleweapons_option_none = "Aucun"
L.roleweapons_option_none_tooltip = "Utiliser la configuration d'achat par défaut pour l'arme"
L.roleweapons_option_include = "Inclure"
L.roleweapons_option_include_tooltip = "Marquez cette arme comme explicitement achetable"
L.roleweapons_option_exclude = "Exclure"
L.roleweapons_option_exclude_tooltip = "Marquez cette arme comme explicitement NON achetable"
L.roleweapons_option_norandom = "Non aléatoire"
L.roleweapons_option_norandom_tooltip = "Assurez-vous que cette arme reste dans la boutique, quelle que soit la randomisation"
L.roleweapons_select_searchrole = "-Rôle de recherche-"
L.roleweapons_select_searchrole_tooltip = "Dans quel magasin de rôle rechercher"
L.roleweapons_select_saverole = "-Enregistrer le rôle-"
L.roleweapons_select_saverole_tooltip = "Quelle boutique de rôles affecter par ces changements de configuration"
-- Custom Roles sneaky in-built translations
L.target_assassin_target = "CIBLE"
L.target_assassin_target_team = "CIBLE de {player}"
L.target_current_target = "CIBLE ACTUELLE"
L.info_popup_assassin = [[Vous êtes {role}! {comrades}

Votre premier objectif est:
{assassintarget}

Vous infligerez plus à votre cible et moins de dégâts
à tous les autres joueurs. Mais prends soin de tuer le mal
joueur vous fera perdre votre bonus de dégâts et
peut-être même souffrir d'une pénalité!

Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.ev_beggar_converted = "Le {beggar} ({victim}) a été converti en {team} par {attacker}"
L.ev_beggar_killed = "Le {beggar} ({victim}) a été tué par {attacker} mais a réapparu"
L.ev_beggar_killed_delay = "Le {beggar} ({victim}) a été tué par {attacker} mais réapparaîtra dans {delay} secondes"
L.beggar_hidden_all_hud = "Vous apparaissez toujours comme {beggar} pour les autres"
L.beggar_hidden_innocent_hud = "Vous apparaissez toujours comme {beggar} pour {innocents}"
L.beggar_hidden_traitor_hud = "Vous apparaissez toujours comme {beggar} pour {traitors}"
L.info_popup_beggar = [[Vous êtes {role}! {traitors} pensent que vous êtes {ajester} et vous
n'inflige aucun dégât. Cependant, si vous pouvez convaincre quelqu'un de donner
vous un article de la boutique, vous rejoindrez leur équipe.]]
L.ev_bodysnatch = "{attacker} arraché au corps {role}, {victim}"
L.ev_bodysnatch_killed = "Le {bodysnatch} ({victim}) a été tué par {attacker} mais a réapparu"
L.ev_bodysnatch_killed_delay = "Le {bodysnatch} ({victim}) a été tué par {attacker} mais réapparaîtra dans {delay} secondes"
L.bodysnatcher_hidden_all_hud = "Vous apparaissez toujours comme {bodysnatcher} pour les autres"
L.bodysnatcher_hidden_team_hud = "Seule votre équipe sait que vous n'êtes plus {bodysnatcher}"
L.info_popup_bodysnatcher = [[Vous êtes {role}! {traitors} pensent que vous êtes {ajester} et vous
n'inflige aucun dégât. Utilisez votre dispositif d'arrachage de corps sur un cadavre
pour prendre leur rôle et rejoindre le combat!]]
L.ev_clown = "Le clown, {player}, s'est déchaîné"
L.win_clown = "Le {role} vous a tous assassiné!"
L.ev_win_clown = "Le {role} vicieux a remporté la manche!"
L.info_popup_clown = [[Vous êtes {role}! {traitors} pensent que vous êtes {ajester} et vous
n'inflige aucun dégât. Cependant, si une équipe gagnait la manche à la place, vous
deviennent hostiles, sont révélés à tous les joueurs et peuvent infliger des dégâts
Ordinaire. Soyez le dernier joueur debout à gagner.]]
L.info_popup_deputy = [[Vous êtes {role}! Si le {detective} meurt, vous prendrez
et obtenez la possibilité d'acheter des articles de magasin et de rechercher des corps.]]
L.info_popup_detective = [[Vous êtes {role}! Le QG vous a donné des ressources spéciales pour trouver les {traitors}.
Utilisez-les pour aider les {innocents} à survivre, mais soyez prudent:
les {traitors} chercheront à vous abattre en premier!
Appuyez sur {menukey} pour recevoir votre équipement!]]
L.ev_promote = "{player} a été promu {detective}"
L.detective_promotion_hud = "Vous avez été promu {detective}"
L.detective_special_hidden_hud = "Vous apparaissez comme {detective} pour les autres"
L.info_popup_doctor = [[Vous êtes {role}! Vous êtes ici pour garder vos coéquipiers en vie.
Utilisez vos outils pour garder vos compagnons {innocents} dans le combat!
Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.drunk_hud = "Vous serez dégrisé dans: {time}"
L.ev_drunk = "{player} s'est souvenu qu'il était {team}"
L.info_popup_drunk = [[Vous êtes {role}! Vous avez oublié dans quelle équipe vous êtes !
Attendez d'être sobre et rappelez-vous. Essayez de faire profil bas en attendant.]]
L.info_popup_glitch = [[Vous êtes {role}! Les {traitors} pensent que vous êtes l'un d'entre eux.
Essayez de vous fondre dans la masse et ne vous trahissez pas.]]
L.brainwash_help_pri = "Maintenez {primaryfire} pour faire revivre le cadavre."
L.brainwash_help_sec = "Le joueur ressuscité deviendra un traître."
L.ev_hypno = "{victim} a été hypnotisée"
L.info_popup_hypnotist = [[Vous êtes {role}! {comrades}
Vous pouvez utiliser votre appareil de lavage de cerveau sur un cadavre pour le faire revivre en tant que {atraitor}.
Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.info_popup_impersonator = [[Vous êtes {role}! {comrades}

Si le {detective} meurt, vous semblerez devenir un nouveau {detective} et gagnerez leur
capacités tout comme le {deputy}. Cependant, vous travaillez toujours pour les {traitors}.

Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.info_popup_innocent = [[Vous êtes {role}! Mais il y a des {traitors} autour...
À qui pouvez-vous faire confiance et qui est là pour vous remplir de balles?

Surveillez vos arrières et travaillez avec vos camarades pour vous en sortir vivant!]]
L.win_jester = "Le {role} vous a tous trompés!"
L.ev_win_jester = "Le {role} délicat a remporté la manche!"
L.info_popup_jester = [[Vous êtes {role}! Tu veux mourir mais toi
n'inflige aucun dégât, vous devez donc être tué par quelqu'un d'autre.]]
L.win_killer = "Le {role} vous a tous assassiné!"
L.ev_win_killer = "Le boucher {role} a remporté la manche!"
L.info_popup_killer = [[Vous êtes {role}! Essayez de tuer tout le monde et soyez le dernier debout!

Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.ev_win_lootgoblin = "Le {role} s'est échappé et a également remporté la manche!"
L.lootgoblin_hud = "Tu vas te transformer en: {time}"
L.info_popup_lootgoblin = [[Vous êtes {role}! Tout ce que vous voulez faire, c'est thésauriser votre
butin! Mais attention... Tout le monde veut tuer
vous et le voler pour eux-mêmes!]]
L.zombificator_help_pri = "Maintenez {primaryfire} pour zombifier un cadavre."
L.zombificator_help_sec = "Le joueur ressuscité deviendra un zombie."
L.info_popup_madscientist = [[Vous êtes {role}! Essayez de propager votre virus à
toutes les personnes! Utiliser votre appareil de zombification sur un mort
corps les fera revivre comme {azombie}.]]
L.info_popup_medium = [[Vous êtes {role}! En tant qu'{adetective}, le QG vous a donné des ressources spéciales pour trouver les {traitors}.
Vous pouvez voir les esprits des morts. Suivez les esprits
pour découvrir des secrets emportés dans la tombe.
Appuyez sur {menukey} pour recevoir votre équipement!]]
L.info_popup_mercenary = [[Vous êtes {role}! Essayez de survivre et aidez vos amis {innocents}!
Appuyez sur {menukey} pour recevoir votre équipement!]]
L.ev_win_oldman = "Le {role} a en quelque sorte survécu et a également remporté la manche!"
L.info_popup_oldman = [[Vous êtes {role}! La moindre brise pourrait tuer
vous si vous ne faites pas attention. Vous ne vous souciez pas de qui gagne aussi longtemps
tant que vous êtes vivant à la fin du tour.]]
L.info_popup_paladin = [[Vous êtes {role}! En tant qu'{adetective}, le QG vous a donné des ressources spéciales pour trouver les {traitors}.
Vous avez une aura de guérison qui est visible pour tout le monde.
Gardez vos amis près de vous, mais ne laissez surtout pas vos ennemis s'approcher!
Appuyez sur {menukey} pour recevoir votre équipement!]]
L.defibrillator_help_pri = "Tenez {primaryfire} pour faire revivre le cadavre."
L.defibrillator_help_sec = "The revived player will be respawned at their body's location."
L.info_popup_paramedic = [[Vous êtes {role}! Vous pouvez donner à vos camarades {innocents}
une seconde chance avec votre défibrillateur. Reste en vie
et ramenez le joueur le plus fort de votre équipe.]]
L.cure_help_pri = "{primaryfire} pour soigner un autre joueur."
L.cure_help_sec = "{secondfire} pour vous guérir."
L.cure_desc = [[Utiliser sur un joueur pour le soigner des {parasites}.
L'utiliser sur un joueur qui n'est pas infecté le tuera!]]
L.target_infected = "INFECTÉ PAR UN PARASITE"
L.infect_title = "L' INFECTION"
L.infect_help = "Vous réapparaîtrez lorsque la barre d'infection sera pleine."
L.ev_infect = "{victim} a infecté {attacker}"
L.info_popup_parasite = [[Vous êtes {role}! {comrades}
Infectez ceux qui vous tuent et attendez patiemment une chance de prendre le contrôle.
Assurez-vous de rester discret car votre hôte doit rester en vie pour que vous puissiez
réapparaître. Essayez d'éviter qu'ils soient guéris ou tués!
Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.haunt_title = "VOLONTÉ"
L.haunt_move = "DÉPLACER LES CLÉS: Déplacer (coût: {num}%)"
L.haunt_jump = "ESPACE: Sauter (Coût: {num}%)"
L.haunt_drop = "CLIC DROIT: Drop (Coût: {num}%)"
L.haunt_attack = "CLIC GAUCHE: Attaque (Coût: {num}%)"
L.ev_haunt = "{victim} a commencé à hanter {attacker}"
L.exor_help_pri = "{primaryfire} pour nettoyer un autre joueur."
L.exor_help_sec = "{secondfire} pour vous purifier."
L.exor_desc = "Utiliser sur un joueur pour exorciser un {phantom}"
L.info_popup_phantom = [[Vous êtes {role}! Essayez de survivre et aidez vos amis {innocent}!
Vous allez hanter le joueur qui vous tue en faisant apparaître de la fumée noire.
Si le joueur que vous hantez meurt, vous serez réapparu!]]
L.fake_cure_desc = "À utiliser sur un joueur pour lui faire croire que vous avez guéri le {parasite}."
L.bstation_name = "Station de bombes"
L.bstation_hint = "Appuyez sur {usekey pour simuler la réception de la santé. Charge: {num}."
L.bstation_broken = "Votre station de bombardement a été détruite!"
L.bstation_help = "{primaryfire} place la station de bombes."
L.bstation_desc = [[
Apparaît comme une station de santé pour les non-{traitors}.
   
Explose lorsqu'il est utilisé par un non-{traitor}.
{traitors} peuvent utiliser pour épuiser la fausse charge.]]
L.stationb_name = "Gare à la bombe"
L.stationb_help = "Maintenez {primaryfire} pour ajouter une bombe à une station de santé."
L.stationb_desc = [[
Convertit un {healthstation}
dans une {bombstation}.]]
L.info_popup_quack = [[Vous êtes {role}! {comrades}
Essayez de convaincre les autres que vous êtes un vrai {doctor}! Cependant, vos outils nuisent
au lieu de guérir. Vous savez que le meilleur remède à tout mal est la mort.
Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.target_revenger_lover = "VOTRE ÂME SOEUR"
L.info_popup_revenger = [[Vous êtes {role}! Vous êtes désespérément amoureux de {lover}.
Faites tout ce que vous pouvez pour les protéger. S'ils meurent, vous
être en mesure de retrouver leur meurtrier et d'obtenir votre vengeance.]]
L.ev_swap = "{victim} échangé avec {attacker}"
L.info_popup_swapper = [[Vous êtes {role}! {traitors} pensent que vous êtes {ajester} et vous
n'inflige aucun dégât cependant, si quelqu'un vous tue, il devient
le {swapper} et vous prenez leur rôle et pouvez rejoindre le combat.]]
L.info_popup_tracker = [[Vous êtes {role}! En tant qu'{adetective}, le QG vous a donné des ressources spéciales pour trouver les {traitors}.
Vous pouvez voir les pas des joueurs et suivre leurs traces.
Utilisez vos compétences pour garder un œil sur où les joueurs ont été.
Appuyez sur {menukey} pour recevoir votre équipement!]]
L.info_popup_traitor = [[Vous êtes {role}! {comrades}
Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.info_popup_trickster = [[Vous êtes {role}! Vous êtes {aninnocent} qui pouvez voir et
utilisez des pièges {traitor} sur toute la carte. S'amuser!]]
L.win_vampires = "Le {role} a pris le dessus!"
L.ev_win_vampire = "Le {role} a aspiré la vie de tout le monde!"
L.ev_vampi = "{victim} a été transformée en {vampire}"
L.ev_vampi_revert_converted = "Le dernier {vampire} Prime ({prime}) a été tué et tous leurs esclaves ont retrouvé leur humanité"
L.ev_vampi_kill_converted = "Le dernier {vampire} Prime ({prime}) a été tué et a emporté tous ses esclaves avec lui"
L.vam_fangs_help_pri = "Hold {primaryfire} to suck blood"
L.vam_fangs_help_sec = "Press {secondaryfire} to fade from view"
L.info_popup_vampire = [[Vous êtes {role}! {comrades}
Vous pouvez utiliser vos crocs (maintenez le clic gauche) pour boire du sang et recharger votre santé ou pour disparaître de la vue (clic droit).

Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.info_popup_veteran = [[Vous êtes {role}! Vous travaillez mieux sous pression.
Si vous êtes le dernier joueur {innocent} en vie, vous
inflige des dégâts supplémentaires.]]
L.win_zombies = "Le {role} a pris le dessus!"
L.ev_win_zombie = "L'infection {role} a conquis le monde!"
L.ev_zombi = "{victim} a été transformée en {zombie}"
L.info_popup_zombie = [[Vous êtes {role}! {comrades}
Tous les dégâts que vous infligez avec des armes à feu sont réduits.
Tuer quelqu'un avec vos griffes le transformera en {azombie}.
Appuyez sur la {menukey} pour recevoir votre équipement spécial!]]
L.zom_claws_help_pri = "Appuyez sur {primaryfire} pour attaquer."
L.zom_claws_help_sec = "Appuyez sur {secondfire} pour sauter. Appuyez sur {reload} pour cracher."
-- 2022 Custom Roles translation update
L.win_lovers = "Les amants ont survécu à tout le monde !"
L.hilite_lovers_primary = "LES AMOUREUX GAGNENT"
L.hilite_lovers_secondary = "ET LES AMOUREUX GAGNENT"
L.ev_win_lovers = "Les amants ont gagné la manche!"
L.scoreboard_cupid_your_lover = "VOTRE AMANT"
L.scoreboard_cupid_lover = "AMOUREUSE"
L.score_cupid_pairnames = "{lover1} et {lover2}"
L.score_cupid_paired = "Jumelé"
L.ev_cupid_paired = "{cupid} a fait tomber {lover1} et {lover2} amoureux"
L.info_popup_cupid_jester = [[Vous êtes {role}! {traitors} pensent que vous êtes {ajester} et vous
n'inflige aucun dégât. Cependant, vous pouvez utiliser votre arc pour faire deux
les joueurs tombent amoureux pour gagner/mourir ensemble.]]
L.info_popup_cupid_indep = [[Vous êtes {role}! Vous pouvez utiliser votre arc pour faire deux
les joueurs tombent amoureux pour gagner/mourir ensemble.]]
L.infscanner_help_pri = "Regardez un joueur pour commencer à scanner."
L.infscanner_help_sec = "Gardez le champ de vision ou vous perdrez votre cible."
L.infscanner_team = "ÉQUIPE"
L.infscanner_role = "RÔLE"
L.infscanner_track = "PISTE"
L.informant_config_show_radius = "Afficher le cercle du rayon de suivi"
L.info_popup_informant = [[Vous êtes {role}! {comrades}
Tenez votre scanner tout en regardant un joueur pour en savoir plus sur lui.
Appuyez sur {menukey} pour recevoir votre équipement spécial!]]
L.marshalbadge_help_pri = "Maintenez {primaryfire} pour suppléer un joueur."
L.marshalbadge_help_sec = "Le joueur ciblé deviendra un adjoint ou un imitateur"
L.ev_marshal_deputize = "{target} a été suppléé par {marshal}"
L.marshal_deputize_announce = "{amarshal} a promu {target} comme {adeputy}"
L.info_popup_marshal = [[Vous êtes {role}! En tant qu'{adetective}, le QG vous a donné des ressources spéciales pour trouver les {traitors}.
Vous avez un badge {deputy} qui peut transformer n'importe quel joueur en {deputy}.
Soyez prudent, cependant! S'il est utilisé sur un mauvais joueur, il deviendra {animpersonator} à la place!
Appuyez sur {menukey} pour recevoir votre équipement!]]
L.shadow_find_target = "TROUVEZ VOTRE CIBLE - {time}"
L.shadow_return_target = "RETOUR A VOTRE CIBLE - {time}"
L.shadow_target = "VOTRE CIBLE"
L.ev_win_shadow = "Le {role} est resté proche de sa cible et a également remporté la manche!"
L.score_shadow_following = "Suivante"
L.info_popup_shadow = [[Vous êtes {role}! Trouvez votre cible rapidement
et reste près d'eux. Si vous ne le faites pas, vous mourrez.
Survivez jusqu'à la fin du tour pour gagner.]]
L.ev_turncoat = "{nick} est {role} et a rejoint les {traitors}"
L.tur_changer = "Changeur d'équipe"
L.tur_changer_help_pri = "Appuyez sur {primaryfire} pour changer d'équipe."
L.tur_changer_help_sec = "Faire attention! Tout le monde sera informé."
L.info_popup_turncoat = [[Vous êtes {role}! Vous êtes {aninnocent} qui possède un appareil
qui vous basculera dans l'équipe {traitor} mais
l'annoncer à tout le monde. Fais-en bon usage!]]
L.ev_infected_succumbed = "Le {infected} ({victim}) a succombé à sa maladie et est devenu {azombie}"
L.infected_hud = "Vous succomberez dans: {time}"
L.info_popup_infected = [[Vous êtes {role}! Vous avez une maladie secrète
qui finira par vous transformer en {azombie}!
Aidez votre équipe à gagner ou attendez que vous tourniez
et répandre ta maladie jusqu'à la victoire...]]
L.info_popup_sapper = [[Vous êtes {role}! En tant qu'{adetective}, le QG vous a donné des ressources spéciales pour trouver les {traitors}.
Vous disposez d'une aura de protection contre les explosions visible par tous.
Gardez vos amis près de vous, mais ne laissez surtout pas vos ennemis s'approcher!
Appuyez sur {menukey} pour recevoir votre équipement!]]
-- Jingle Jam 2021 role translations
-- Boxer
L.box_gloves_help_pri = "Utilisez {primaryfire} pour faire tomber les armes des mains des joueurs"
L.box_gloves_help_sec = "Attaquez avec {secondfire} pour assommer les joueurs"
L.box_revive = "Appuyez sur '{usekey}' pour relancer"
L.ev_win_boxer = "Le {role} s'est frayé un chemin vers la victoire"
L.win_boxer = "Le {role} a marqué un KO!"
-- Communist
L.manifesto_help_pri = "Utilisez {primaryfire} pour convertir un joueur au communisme"
L.manifesto_help_sec = "Tous les {nameplural} gagnent ensemble"
L.ev_communismconvert = "{victim} s'est convertie et s'est tournée vers le communisme!"
L.ev_win_communist = "Le {role} a converti tous les joueurs restants"
L.win_communist = "Le communisme s'est propagé à tous les survivants"
L.hilite_win_communist = "COMMUNISME GAGNE"
L.hilite_lose_communist = "ET LE CAPITALISME GAGNE"
-- Santa
L.santa_help_pri = "Utilisez {primaryfire} pour offrir des cadeaux à de gentils enfants"
L.santa_help_sec = "Utilisez {secondfire} pour tirer du charbon sur de vilains enfants"
L.santa_load_gift = "Ouvrez votre menu d'achat avec {menukey} pour charger un cadeau!"
-- Taxidermist
L.taxidermy_help_pri = "Utilisez {primaryfire} pour taxidermiser un cadavre"
L.taxidermy_help_sec = "Les cadavres taxidermisés ne peuvent pas être inspectés"