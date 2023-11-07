��    8      �  O   �      �     �  �   �  �   �  B  �    �  s  �  d   c
    �
  +  �  �     #  �           �     2  �  u  �  Z   A  ^   �  8   �  �   4  �   �  C   �  �   �  2  �  �   �  �  �  b   u  �  �     a!     b"     i"     n"     "     �"  =   �"     �"     �"  
   #  
   #     #     *#     =#     [#     d#  d   ~#  `   �#     D$  �   S$    I%  O   Z&    �&     �'     �'     �'  x  �'  |  Z)     �*  �   �*    �+  ~  �,  S  T.    �/  �   (1  m  �1  h  #5    �7  [  �8     �9  !  �9  �   ;  _  �;  �  #=  ]   �>  t   -?  F   �?  �   �?  �   �@  X   �A  �   �A  �  �B    �F  �  �G  u   xI  �  �I    �K     �L     �L     �L     �L  %   M  ?   +M     kM     pM  
   �M     �M     �M     �M  "   �M     �M     �M  v   N  W   �N     �N      O  +  !P  d   MQ  M  �Q      S     S     S  �  *S         3       1         ,         #          $       
   	      (          7       *                                      2          5   %                    4      '              -             /              "            !      &   .      0          8               +          6   )    "%s" not a valid entry. A boolean that specifies whether to use the X-Forwarded-Host header in preference to the Host header. This should only be enabled if a proxy which sets this header is in use. A boolean that specifies whether to use the X-Forwarded-Port header in preference to the SERVER_PORT META variable. This should only be enabled if a proxy which sets this header is in use. USE_X_FORWARDED_HOST takes priority over this setting. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of IP addresses, as strings, that: Allow the debug() context processor to add some variables to the template context. Can use the admindocs bookmarklets even if not logged in as a staff user. Are marked as "internal" (as opposed to "EXTERNAL") in AdminEmailHandler emails. A list of all available languages. The list is a list of two-tuples in the format (language code, language name) for example, ('ja', 'Japanese'). This specifies which languages are available for language selection. Generally, the default value should suffice. Only set this setting if you want to restrict language selection to a subset of the Django-provided languages.  A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). A string representing the language code for this installation. This should be in standard language ID format. For example, U.S. English is "en-us". It serves two purposes: If the locale middleware isn't in use, it decides which translation is served to all users. If the locale middleware is active, it provides a fallback language in case the user's preferred language can't be determined or is not supported by the website. It also provides the fallback translation when a translation for a given literal doesn't exist for the user's preferred language. A string representing the time zone for this installation. Note that this isn't necessarily the time zone of the server. For example, one server may serve multiple Django-powered sites, each with a separate time zone setting. A tuple representing a HTTP header/value combination that signifies a request is secure. This controls the behavior of the request object’s is_secure() method. Warning: Modifying this setting can compromise your site’s security. Ensure you fully understand your setup before changing it. Default Default: '' (Empty string). Password to use for the SMTP server defined in EMAIL_HOST. This setting is used in conjunction with EMAIL_HOST_USER when authenticating to the SMTP server. If either of these settings is empty, Django won't attempt authentication. Default: '' (Empty string). Username to use for the SMTP server defined in EMAIL_HOST. If empty, Django won't attempt authentication. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: '/accounts/profile/' The URL where requests are redirected after login when the contrib.auth.login view gets no next parameter. This is used by the login_required() decorator, for example. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'sessionid'. The name of the cookie to use for sessions.This can be whatever you want (as long as it's different from the other cookie names in your application). Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: 25. Port to use for the SMTP server defined in EMAIL_HOST. Default: 2621440 (i.e. 2.5 MB). The maximum size (in bytes) that an upload will be before it gets streamed to the file system. See Managing files for details. See also DATA_UPLOAD_MAX_MEMORY_SIZE. Default: 2621440 (i.e. 2.5 MB). The maximum size in bytes that a request body may be before a SuspiciousOperation (RequestDataTooBig) is raised. The check is done when accessing request.body or request.POST and is calculated against the total request size excluding any file upload data. You can set this to None to disable the check. Applications that are expected to receive unusually large form posts should tune this setting. The amount of request data is correlated to the amount of memory needed to process the request and populate the GET and POST dictionaries. Large requests could be used as a denial-of-service attack vector if left unchecked. Since web servers don't typically perform deep request inspection, it's not possible to perform a similar check at that level. See also FILE_UPLOAD_MAX_MEMORY_SIZE. Default: False. Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_USE_SSL. Default: False. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting EMAIL_USE_TLS. Note that EMAIL_USE_TLS/EMAIL_USE_SSL are mutually exclusive, so only set one of those settings to True. Default: None. Specifies a timeout in seconds for blocking operations like the connection attempt. Default: None. The URL where requests are redirected after a user logs out using LogoutView (if the view doesn't get a next_page argument). If None, no redirect will be performed and the logout view will be rendered. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: [] (Empty list). List of compiled regular expression objects representing User-Agent strings that are not allowed to visit any page, systemwide. Use this for bad robots/crawlers. This is only used if CommonMiddleware is installed (see Middleware). Django Edit Edit setting: %s Edit settings Enter the new setting value. Is this settings being overridden by an environment variable? Name Namespace: %s, not found Namespaces Overridden Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The file storage engine to use when collecting static files with the collectstatic management command. A ready-to-use instance of the storage backend defined in this setting can be found at django.contrib.staticfiles.storage.staticfiles_storage. The full Python path of the WSGI application object that Django's built-in servers (e.g. runserver) will use. The django-admin startproject management command will create a simple wsgi.py file with an application callable in it, and point this setting to that application. The list of validators that are used to check the strength of user's passwords. URL to use when referring to static files located in STATIC_ROOT. Example: "/static/" or "http://static.example.com/" If not None, this will be used as the base path for asset definitions (the Media class) and the staticfiles app. It must end in a slash if set to a non-empty value. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-09-06 21:36+0000
Last-Translator: j jacobs <j.jacobs@rijnlandslyceum-rls.nl>, 2023
Language-Team: Dutch (https://app.transifex.com/rosarior/teams/13584/nl/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: nl
Plural-Forms: nplurals=2; plural=(n != 1);
 "%s" is geen geldige invoer. Een boolean die aangeeft of de X-Forwarded-Host-header moet worden gebruikt in plaats van de Host-header. Dit mag alleen worden ingeschakeld als er een proxy wordt gebruikt die deze koptekst instelt. Een booleaanse waarde die aangeeft of de X-Forwarded-Port-header moet worden gebruikt in plaats van de SERVER_PORT META-variabele. Dit mag alleen worden ingeschakeld als er een proxy wordt gebruikt die deze koptekst instelt. USE_X_FORWARDED_HOST heeft voorrang op deze instelling. Een dictionary met de instellingen voor alle databases die met Django moeten worden gebruikt. Het is een geneste dictionary waarvan de inhoud een databasealias toewijst aan een dictionary dat de opties voor een individuele database bevat. De DATABASES-instelling moet een standaarddatabase configureren; er kan ook een willekeurig aantal aanvullende databases worden gespecificeerd. Een lijst met IP-adressen, als strings, die: Sta de debug() contextprocessor toe om enkele variabelen toe te voegen aan de sjablooncontext. Kan de admindocs-bookmarklets gebruiken, zelfs als ze niet zijn aangemeld als personeelsgebruiker. Worden gemarkeerd als "internal" (in tegenstelling tot "EXTERNAL") in e-mails van AdminEmailHandler. Een lijst met alle beschikbare talen. De lijst is een lijst met twee tuples in het formaat (taalcode, taalnaam) bijvoorbeeld ('ja', 'Japans'). Dit specificeert welke talen beschikbaar zijn voor taalselectie. Over het algemeen zou de standaardwaarde moeten volstaan. Stel deze instelling alleen in als u de taalselectie wilt beperken tot een subset van de door Django geleverde talen. Een lijst met back-endklassen voor verificatie (als tekenreeksen) die moeten worden gebruikt bij een poging om een gebruiker te verifiëren. Een lijst met strings die de host- / domeinnamen vertegenwoordigen die deze site kan bedienen. Dit is een beveiligingsmaatregel om HTTP Host-headeraanvallen te voorkomen, die zelfs mogelijk zijn onder veel schijnbaar veilige webserverconfiguraties. Waarden in deze lijst kunnen volledig gekwalificeerde namen zijn (bijv. 'www.example.com'), in welk geval ze exact worden vergeleken met de Host-header van het verzoek (niet hoofdlettergevoelig, exclusief poort). Een waarde die met een punt begint, kan worden gebruikt als jokerteken voor een subdomein: '.example.com' komt overeen met example.com, www.example.com en elk ander subdomein van example.com. Een waarde van '*' komt overal overeen; in dit geval bent u verantwoordelijk voor uw eigen validatie van de Host-header (misschien in een middleware; zo ja, dan moet deze middleware als eerste worden vermeld in MIDDLEWARE). Een tekenreeks die de taalcode voor deze installatie vertegenwoordigt. Dit moet in de standaardtaal-ID-indeling zijn. Amerikaans Engels is bijvoorbeeld "en-us". Het dient twee doelen: als de locale middleware niet in gebruik is, bepaalt het welke vertaling aan alle gebruikers wordt aangeboden. Als de locale middleware actief is, biedt het een reservetaal voor het geval de voorkeurstaal van de gebruiker niet kan worden bepaald of niet wordt ondersteund door de website. Het biedt ook de reservevertaling wanneer er geen vertaling voor een bepaalde letterlijke tekst bestaat voor de voorkeurstaal van de gebruiker. Een tekenreeks die de tijdzone voor deze installatie vertegenwoordigt. Merk op dat dit niet noodzakelijk de tijdzone van de server is. Eén server kan bijvoorbeeld meerdere door Django aangedreven sites bedienen, elk met een afzonderlijke tijdzone-instelling. Een tuple die een HTTP-header/waarde-combinatie vertegenwoordigt die een verzoek aangeeft, is veilig. Dit bepaalt het gedrag van de methode is_secure() van het verzoekobject. Waarschuwing: het wijzigen van deze instelling kan de beveiliging van uw site in gevaar brengen. Zorg ervoor dat u uw configuratie volledig begrijpt voordat u deze wijzigt. Standaardwaarde Standaard: '' (lege tekenreeks). Wachtwoord om te gebruiken voor de SMTP-server gedefinieerd in EMAIL_HOST. Deze instelling wordt gebruikt in combinatie met EMAIL_HOST_USER bij authenticatie bij de SMTP-server. Als een van deze instellingen leeg is, zal Django geen authenticatie proberen. Standaard: '' (lege tekenreeks). Gebruikersnaam om te gebruiken voor de SMTP-server gedefinieerd in EMAIL_HOST. Indien leeg, zal Django geen authenticatie proberen. Standaard: '/accounts/login/' De URL waar verzoeken worden omgeleid voor inloggen, vooral wanneer de login_required() -decorator wordt gebruikt. Deze instelling accepteert ook benoemde URL-patronen die kunnen worden gebruikt om configuratieduplicatie te verminderen, omdat u de URL niet op twee plaatsen hoeft te definiëren (instellingen en URLconf). Standaard: '/accounts/profiel/' De URL waar verzoeken worden omgeleid na inloggen wanneer de contrib.auth.login-weergave geen volgende parameter krijgt. Dit wordt bijvoorbeeld gebruikt door de login_required() decorator. Deze instelling accepteert ook benoemde URL-patronen die kunnen worden gebruikt om configuratieduplicatie te verminderen, omdat u de URL niet op twee plaatsen hoeft te definiëren (instellingen en URLconf). Standaard: 'django.contrib.sessions.backends.db'. Bepaalt waar Django sessiegegevens opslaat. Standaard: 'django.core.mail.backends.smtp.EmailBackend'. De backend om te gebruiken voor het versturen van e-mails. Standaard: 'localhost'. De host om te gebruiken voor versturen e-mail. Standaard: 'sessionid'. De naam van de cookie die voor sessies moet worden gebruikt. Dit kan zijn wat u maar wilt (zolang deze maar verschilt van de andere cookienamen in uw toepassing). Standaard: 'webmaster@localhost' Standaard e-mailadres om te gebruiken voor verschillende geautomatiseerde correspondentie van de sitemanager(s). Dit omvat geen foutmeldingen die naar ADMINS en MANAGERS zijn gestuurd; zie daarvoor SERVER_EMAIL. Standaard: 25. Poort om te gebruiken voor de SMTP server zoals vastgelegd in EMAIL_HOST. Standaard: 2621440 (d.w.z. 2,5 MB). De maximale grootte (in bytes) die een upload zal zijn voordat deze naar het bestandssysteem wordt gestreamd. Zie Bestanden beheren voor details. Zie ook DATA_UPLOAD_MAX_MEMORY_SIZE. Standaard: 2621440 (d.w.z. 2,5 MB). De maximale grootte in bytes die een aanvraagtekst mag hebben voordat een SuspiciousOperation (RequestDataTooBig) wordt verhoogd. De controle wordt uitgevoerd bij het openen van request.body of request.POST en wordt berekend op basis van de totale aanvraaggrootte, exclusief bestandsuploadgegevens. U kunt dit instellen op Geen om de controle uit te schakelen. Toepassingen die naar verwachting ongebruikelijk grote formulierberichten zullen ontvangen, moeten deze instelling afstemmen. De hoeveelheid verzoekgegevens is gecorreleerd aan de hoeveelheid geheugen die nodig is om het verzoek te verwerken en de GET- en POST-woordenboeken te vullen. Grote verzoeken kunnen worden gebruikt als een denial-of-service-aanvalsvector als deze niet is aangevinkt. Aangezien webservers doorgaans geen diepgaande verzoekinspectie uitvoeren, is het niet mogelijk om een vergelijkbare controle op dat niveau uit te voeren. Zie ook FILE_UPLOAD_MAX_MEMORY_SIZE. Standaard: False. Of u een TLS (beveiligde) verbinding wilt gebruiken wanneer u met de SMTP-server communiceert. Dit wordt gebruikt voor expliciete TLS-verbindingen, meestal op poort 587. Als u hangende verbindingen ervaart, zie dan de impliciete TLS-instelling EMAIL_USE_SSL. Standaard: False. Of u een impliciete TLS (beveiligde) verbinding wilt gebruiken wanneer u met de SMTP-server praat. In de meeste e-maildocumentatie wordt dit type TLS-verbinding SSL genoemd. Het wordt over het algemeen gebruikt op poort 465. Als u problemen ondervindt, zie dan de expliciete TLS-instelling EMAIL_USE_TLS. Merk op dat EMAIL_USE_TLS/EMAIL_USE_SSL elkaar wederzijds uitsluiten, dus stel slechts een van die instellingen in op True. Standaard: None. Specificeert een time-out in seconden voor het blokkeren van bewerkingen zoals de verbindingspoging. Standaard: Geen. De URL waar verzoeken worden omgeleid nadat een gebruiker uitlogt met LogoutView (als het overzicht geen argument next_page krijgt). Indien Geen, wordt er geen omleiding uitgevoerd en wordt de uitlogweergave weergegeven. Deze instelling accepteert ook benoemde URL-patronen die kunnen worden gebruikt om configuratieduplicatie te verminderen, omdat u de URL niet op twee plaatsen hoeft te definiëren (instellingen en URLconf). Standaard: [] (lege lijst). Lijst met gecompileerde reguliere-expressieobjecten die User-Agent-tekenreeksen vertegenwoordigen die geen systeempagina mogen bezoeken. Gebruik dit voor bad robots/crawlers. Dit wordt alleen gebruikt als CommonMiddleware is geïnstalleerd (zie Middleware). Django Bewerken Bewerk instelling: %s Instellingen bewerken De nieuwe instellingswaarde invoeren. Wordt deze instelling overschreven door een omgevingsvariabele? Naam Namespace: %s, niet gevonden Namespaces Overschreven Aantal instellingen Instelling namespaces Instelling met succes bijgewerkt.  Instellingen Instellingen in namespace: %s Overgenomen instellingen van een omgevingsvariabele krijgen voorrang en kunnen niet gewijzigd worden in dit overzicht. Instellingen bijgewerkt. Herstart uw installatie en ververs de browser om te activeren. Slimme instellingen De bestandsopslag-engine om te gebruiken bij het verzamelen van statische bestanden met de opdracht collectstatic management. Een kant-en-klare instantie van de storage-backend die in deze instelling is gedefinieerd, is te vinden op django.contrib.staticfiles.storage.staticfiles_storage. Het volledige Python-pad van het WSGI-toepassingsobject dat Django's ingebouwde servers (bijv. Runserver) zullen gebruiken. De opdracht django-admin startproject management maakt een eenvoudig wsgi.py-bestand met een programma dat kan worden aangeroepen en wijst deze instelling naar die applicatie. De lijst met validators die worden gebruikt om de sterkte van gebruikerswachtwoorden te controleren. URL die moet worden gebruikt bij het verwijzen naar statische bestanden in STATIC_ROOT. Voorbeeld: "/static/" of "http://static.example.com/" Als dit None is, wordt dit gebruikt als het basispad voor activadefinities (de mediaklasse) en de staticfiles-app. Het moet eindigen op een slash als het is ingesteld op een niet-lege waarde. Waarde Instellingen bekijken Waarschuwing Indien ingesteld op True, als de verzoek-URL niet overeenkomt met een van de patronen in de URLconf en niet eindigt in een slash, wordt een HTTP-omleiding uitgegeven naar dezelfde URL met een slash toegevoegd. Merk op dat de omleiding ervoor kan zorgen dat alle gegevens die in een POST-verzoek zijn ingediend, verloren gaan. De APPEND_SLASH-instelling wordt alleen gebruikt als CommonMiddleware is geïnstalleerd (zie Middleware). Zie ook PREPEND_WWW. 