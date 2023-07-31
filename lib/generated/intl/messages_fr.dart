import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'fr';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "OK": MessageLookupByLibrary.simpleMessage("D\'ACCORD"),
        "after":
            MessageLookupByLibrary.simpleMessage("après la période d\'essai"),
        "bIn": MessageLookupByLibrary.simpleMessage("BYTES IN"),
        "bOut": MessageLookupByLibrary.simpleMessage("BYTES OUT"),
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cantPur":
            MessageLookupByLibrary.simpleMessage("Impossible d\'acheter"),
        "changeE": MessageLookupByLibrary.simpleMessage("Passer à l\'anglais "),
        "changeJ": MessageLookupByLibrary.simpleMessage("Passer au japonais"),
        "changeToFr":
            MessageLookupByLibrary.simpleMessage("Changer en Français"),
        "connected": MessageLookupByLibrary.simpleMessage("Connecté"),
        "connecting": MessageLookupByLibrary.simpleMessage("De liaison"),
        "connection": MessageLookupByLibrary.simpleMessage("Connexions"),
        "ctn": MessageLookupByLibrary.simpleMessage("Continuer"),
        "days": MessageLookupByLibrary.simpleMessage(
            "3 jours d\'essai gratuit, renouvellement à"),
        "disconnectVPN":
            MessageLookupByLibrary.simpleMessage("Déconnecter le VPN"),
        "download": MessageLookupByLibrary.simpleMessage("Télécharger"),
        "duration": MessageLookupByLibrary.simpleMessage("Durée"),
        "english": MessageLookupByLibrary.simpleMessage("Anglais"),
        "french": MessageLookupByLibrary.simpleMessage("Français"),
        "getPremium": MessageLookupByLibrary.simpleMessage("Obtenez la prime"),
        "go": MessageLookupByLibrary.simpleMessage("ALLER"),
        "hello": MessageLookupByLibrary.simpleMessage("Rapide classique"),
        "helloVpn":
            MessageLookupByLibrary.simpleMessage("VPN rapide classique"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonais"),
        "joinP": MessageLookupByLibrary.simpleMessage(
            "Rejoindre le forfait Premium"),
        "language": MessageLookupByLibrary.simpleMessage("Langues"),
        "month": MessageLookupByLibrary.simpleMessage("mois"),
        "noAds": MessageLookupByLibrary.simpleMessage("Pas de pubs"),
        "noPast": MessageLookupByLibrary.simpleMessage("Aucun achat passé"),
        "notConnected": MessageLookupByLibrary.simpleMessage("Pas connecté"),
        "packetReceivied": MessageLookupByLibrary.simpleMessage("PAQUET REÇU"),
        "paymentWill": MessageLookupByLibrary.simpleMessage(
            "Le paiement sera débité du compte iTunes lors de la confirmation de l\'achat. Pour garantir un service ininterrompu, tous les abonnements sont renouvelés automatiquement à moins que le renouvellement automatique ne soit désactivé au moins 24 heures avant la fin de la période en cours. Le compte est facturé pour le renouvellement dans les 24 heures avant la fin de la période en cours. Les utilisateurs peuvent gérer et annuler les abonnements dans les paramètres de leur compte sur l\'App Store. Veuillez noter que lorsque vous achetez un abonnement, la vente est définitive et nous ne fournirons pas de Votre achat sera soumis à la politique de paiement applicable d\'Apple, qui peut également ne pas prévoir de remboursement. "),
        "pleasePremium": MessageLookupByLibrary.simpleMessage(
            "Veuillez enregistrer la prime"),
        "prePur": MessageLookupByLibrary.simpleMessage(
            "Vous êtes Premium. Impossible d\'acheter"),
        "privacy": MessageLookupByLibrary.simpleMessage(
            "Classic Fast VPN - Secure collecte une quantité limitée de données pour vous offrir un service VPN rapide et fiable.\nExemples d\'informations que nous collectons lorsque vous utilisez cette application :\n• Informations spécifiques à l\'appareil telles que la version du système d\'exploitation, modèle matériel et adresse IP pour optimiser notre connexion réseau avec vous et garantir la qualité du service.\n• Données d\'activité agrégées et anonymisées, pour effectuer des analyses sur notre service, partager des informations sur l\'utilisation et vous assurer que vous pouvez accéder de manière fiable à certains sites Web ou applications .\n• Bande passante totale consommée et temps de connexion à notre service VPN\n• Informations de paiement et e-mail facultatif, lorsque vous achetez un forfait payant.\nTous les détails sur les données que nous collectons et sur la manière dont nous les traitons sont disponibles dans notre politique de confidentialité. \n"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage(
            "politique de confidentialité"),
        "profile": MessageLookupByLibrary.simpleMessage("profil"),
        "rate": MessageLookupByLibrary.simpleMessage(
            "Évaluez-nous sur l\'App Store"),
        "restore": MessageLookupByLibrary.simpleMessage("Restaurer"),
        "restoreYouPlan":
            MessageLookupByLibrary.simpleMessage("Restaurer votre plan"),
        "result": MessageLookupByLibrary.simpleMessage("Résultat"),
        "selectLocation":
            MessageLookupByLibrary.simpleMessage("Sélectionnez l\'emplacement"),
        "serverPublic":
            MessageLookupByLibrary.simpleMessage("IP PUBLIQUE DU SERVEUR"),
        "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "sever": MessageLookupByLibrary.simpleMessage("SERVEUR"),
        "shareApp":
            MessageLookupByLibrary.simpleMessage("Partager l\'application"),
        "smthe": MessageLookupByLibrary.simpleMessage("Quelque chose erreur"),
        "smthw":
            MessageLookupByLibrary.simpleMessage("Quelque chose ne va pas"),
        "sorryCant": MessageLookupByLibrary.simpleMessage(
            "Désolé, je ne peux pas acheter maintenant"),
        "sorrydis": MessageLookupByLibrary.simpleMessage(
            "Désolé, déconnecté du serveur de test"),
        "speed": MessageLookupByLibrary.simpleMessage("VITESSE"),
        "speedTest": MessageLookupByLibrary.simpleMessage("Test de rapidité"),
        "start": MessageLookupByLibrary.simpleMessage("COMMENCER"),
        "status": MessageLookupByLibrary.simpleMessage("Statut"),
        "stop": MessageLookupByLibrary.simpleMessage("ARRÊT"),
        "subscribe": MessageLookupByLibrary.simpleMessage("S\'abonner"),
        "term":
            MessageLookupByLibrary.simpleMessage("Conditions d\'utilisation"),
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Conditions d\'utilisation"),
        "unlimited": MessageLookupByLibrary.simpleMessage(
            "Connexion illimitée et rapide"),
        "unlock": MessageLookupByLibrary.simpleMessage(
            "Déverrouiller l\'emplacement VPN"),
        "upload": MessageLookupByLibrary.simpleMessage("Télécharger"),
        "viewProfile": MessageLookupByLibrary.simpleMessage("Voir le profil"),
        "wait": MessageLookupByLibrary.simpleMessage("ATTENDEZ"),
        "week": MessageLookupByLibrary.simpleMessage("semaine"),
        "year": MessageLookupByLibrary.simpleMessage("année"),
        "yourAreP": MessageLookupByLibrary.simpleMessage("Vous êtes Premium"),
        "yourPrivacy": MessageLookupByLibrary.simpleMessage(
            "Votre vie privée est importante"),
        "yourPrivateId": MessageLookupByLibrary.simpleMessage("VOTRE IP PRIVÉE")
      };
}
