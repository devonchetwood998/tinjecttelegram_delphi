﻿unit TelegAPI.Emoji;

interface

type

TtgEmoji  = record
const

//Novos EMojis v11.0
{$REGION 'EMOJI 11.0'}
  SuperHeróiMulher      = '🦸♀️' ;
  SuperHeróiHomem       = '🦸♂️' ;
  SupervivênciaMulher   = '🦹♀️' ;
  HomemSuperando        = '🦹♂️' ;
  HomemCabeloVermelho   = '👨🦰' ;
  HomemCabeloVermelhoPeleClara = '👨🏻🦰' ;
  HomemCabeloVermelhoPeleLuzMédia = '👨🏼🦰' ;
  HomemCabeloVermelhoPeleMédia = '👨🏽🦰' ;
  HomemCabeloVermelhoPeleMédioEscuro = '👨🏾🦰' ;
  HomemCabeloVermelhoPeleEscura = '👨🏿🦰' ;
  HomemCabelosEncaracolados   = '👨🦱' ;
  HomemCabelosEncaracoladosPeleClara = '👨🏻🦱' ;
  HomemCabelosEncaracoladosPeleLuzMédia = '👨🏼🦱' ;
{
'👨🏽🦱' Homem, Cabelos Encaracolados: Tom De Pele Média =
'👨🏾🦱' Homem, Cabelos Encaracolados: Tom De Pele Médio-escuro =
'👨🏿🦱' Homem, Cabelos Encaracolados: Tom De Pele Escura =
'👨🦲' Homem Calvo =
'👨🏻🦲' Homem, Calvo: Tom De Pele Clara
'👨🏼🦲' Homem, Calvo: Tom De Pele De Luz Média
'👨🏽🦲' Homem, Calvo: Tom De Pele Média
'👨🏾🦲' Homem, Calvo: Tom De Pele Médio-escuro
'👨🏿🦲' Homem, Calvo: Tom De Pele Escura
'👨🦳' Homem, Cabelos Brancos
'👨🏻🦳' Homem, Cabelos Brancos: Tom De Pele Clara
'👨🏼🦳' Homem, Cabelos Brancos: Tom De Pele De Luz Média
'👨🏽🦳' Homem, Cabelos Brancos: Tom De Pele Média
'👨🏾🦳' Homem, Cabelos Brancos: Tom De Pele Médio-escuro
'👨🏿🦳' Homem, Cabelos Brancos: Tom De Pele Escura
'👩🦰' Mulher, Cabelo Vermelho
'👩🏻🦰' Mulher, Cabelo Vermelho: Tom De Pele Clara
'👩🏼🦰' Mulher, Cabelo Vermelho: Tom De Pele De Luz Média
'👩🏽🦰' Mulher, Cabelo Vermelho: Tom De Pele Média
'👩🏾🦰' Mulher, Cabelo Vermelho: Tom De Pele Médio-escuro
'👩🏿🦰' Mulher, Cabelo Vermelho: Tom De Pele Escura
'👩🦱' Mulher, Cabelos Encaracolados
'👩🏻🦱' Mulher, Cabelos Encaracolados: Tom De Pele Clara
'👩🏼🦱' Mulher, Cabelos Encaracolados: Tom De Pele De Luz Média
'👩🏽🦱' Mulher, Cabelos Encaracolados: Tom De Pele Média
'👩🏾🦱' Mulher, Cabelos Encaracolados: Tom De Pele Médio-escuro
'👩🏿🦱' Mulher, Cabelos Encaracolados: Tom De Pele Escura
'👩🦲' Mulher Calva
'👩🏻🦲' Mulher Calva: Tom De Pele Clara
'👩🏼🦲' Mulher Calva: Tom De Pele De Luz Média
'👩🏽🦲' Mulher, Calva: Tom De Pele Média
'👩🏾🦲' Mulher, Calva: Tom De Pele Médio-escuro
'👩🏿🦲' Mulher Calva: Tom De Pele Escura
'👩🦳' Mulher, Cabelos Brancos
'👩🏻🦳' Mulher, Cabelos Brancos: Tom De Pele Clara
'👩🏼🦳' Mulher, Cabelos Brancos: Tom De Pele De Luz Média
'👩🏽🦳' Mulher, Cabelos Brancos: Tom De Pele Média
'👩🏾🦳' Mulher, Cabelos Brancos: Tom De Pele Médio-escuro
'👩🏿🦳' Mulher, Cabelos Brancos: Tom De Pele Escura
'♾' Infinito
'🏴☠️ 'Bandeira De Pirata
Microbio = '🦠' ;M
Bagagem = '🧳' ;    ;
BolaFios = '🧶' ; ;
'🥺' Carinha Com Olhos Suplicantes =
'🧷' Pino De Segurança  =
'🧰' Caixa De Ferramentas
'🧹' Vassoura
'🧺' Cesta
'🥎' Softball
'🧁' Cupcake
'🧼' Barra De Sabão
'🦵' Perna
'🥭' Manga
'🧸' Ursinho De Pelúcia
'🧵' Carretel De Fio
'🧾' Recibo
'🧻' Rolo De Papel Higiênico
'🧴' Garrafa De Loção
'🥵' Carinha Superaquecido
'🧧' Envelope De Presente Vermelho
'🥶' Carinha Gelado
'🧮' ábaco
'🧿' Amuleto Nazaré
'🥰' Carinha Sorridente Com Olhos Sorridentes E Três Corações
'🥮' Bolo De Lua
'🧭' Bússola
'🦘' Canguru
'🦸' Super-herói
'🥴' Carinha Com Olhos Irregulares E Boca Ondulada
'🦴' Osso
'🥏' Disco Voador
'🦡' Texugo
'🦢' Cisne
'🧽' Esponja
'🦛' Hipopótamo
'🧫' Petri Dish
'🧬' Dna
'🧂' Salador
'🧯' Extintor De Incêndio
'🦷' Dente
'🥾' Botas De Caminhada
'🧲' ímã
'🥼' Bata De Laboratório
'🥿' Sapato Plano
'🦚' Pavão
'🦙' Lama
'🥳' Carinha Com Olhos Sorridentes E Chifre De Festa E Chapéu De Festa
'🧪' Tubo De Ensaio
'🦝' Raccoon
'🦞' Lagosta
'🦟' Mosquito
'🥬' Verde Frondoso
'🦜' Papagaio
'🥍' Lacrosse Stick E Bola
'🛹' Skateboard
'🦶' Pé
'🦹' Supervilância
'🧨' Foguete
'🧩' Peça De Quebra-cabeça
'🥯' Bagel
'🥽' Goggles
'🧱' Tijolos
}
{$ENDREGION 'EMOJI 11.0'}

{$REGION 'SUPER-REGION:PESSOAS'}

  {$REGION 'SMILES'}
   Sorridente                   = '😄';
   SorridenteLingua             = '😝';
   Impressionado                = '😱';
   Irritado                     = '😤';
   CabecaExplodindo             = '🤯';
   Triste                       = '😢';
   Apaixonado                   = '😍';
   Sorrindo                     = '😄';
   Sorrindo1                    = '😃';
   Sorrindo2                    = '😀';
   Sorrindo3                    = '😊';
   Sorrindo4                    = '😁';
   Sono                         = '😴';
   Branco                       = '☺';
   Piscando                     = '😉';
   Smiling5                     = '😍';
   ThrowingaKiss                = '😘';
   KissingClosedEyes            = '😚';
   Beijando                     = '😗';
   KissingSmilingEyes           = '😙';
   Preso0                       = '😜';
   Preso1                       = '😝';
   Preso2                       = '😛';
   Flushed                      = '😳';
   Pensativo                    = '😔';
   Aliviado                     = '😌';
   Naoutilizado                 = '😒';
   Decepcionado                 = '😞';
   Perseverante                 = '😣';
   Choro                        = '😢';
   ChorandoDeAlegria            = '😂';
   ChorandoAlto                 = '😭';
   Sonolento                    = '😪';
   DecepcionadoMasAliviado      = '😥';
   OpenMouthandColdSweat        = '😰';
   SmilingOpenMouthandColdSweat = '😅';
   ColdSweat                    = '😓';
   Cansado                      = '😩';
   Cansado1                     = '😫';
   Temível                      = '😨';
   ScreaminginFear              = '😱';
   Pouting                      = '😡';
   Triunfo                      = '😤';
   Confundido                   = '😖';
   Sorrindo7                    = '😆';
   Delicioso                    = '😋';
   MedicalMask                  = '😷';
   SmilingSunglasses            = '😎';
   Dormindo                     = '😴';
   Dizzy                        = '😵';
   Surpreendido                 = '😲';
   Preocupado                   = '😟';
   FrowningOpenMouth            = '😦';
   Angustiado                   = '😧';
   OpenMouth                    = '😮';
   Careta                       = '😬';
   Neutro                       = '😐';
   Confuso                      = '😕';
   Hushed                       = '😯';
   outMouth                     = '😶';
   SmilingHalo                  = '😇';
   Smirking                     = '😏';
   Expressionless               = '😑';
   SmilingHorns                 = '😈';
   Imp                          = '👿';

{$ENDREGION "SMILES"}

  {$REGION 'FACES'}
  const PapaiNoel        = '🎅';
  const Bot              = '🤖';
  const ManGuaPiMao      = '👲';
  const ManTurban        = '👳';
  const Bebê             = '👶';
  const Boy              = '👦';
  const Garota           = '👧';
  const Man              = '👨';
  const Mulher           = '👩';
  const OlderMan         = '👴';
  const OlderWoman       = '👵';
  const PersonBlondHair  = '👱';
  const BabyAngel        = '👼';
  const Princess         = '👸';
  const Kiss                      = '💏';
  const CoupleHeart               = '💑';
{$ENDREGION 'FACES'}

{$REGION 'GESTOS'}
   Like                                 = '👍🏻';
   Deslike                              = '👎🏻';
   ApertoDeMao                          = '🤝🏻';
   PazEAmor                             = '✌🏻';
   ApontaCima                           = '👆🏻';
   ApontaBaixo                          = '👇🏻';
   Palmas                               = '👏🏻';
   ThumbsUpSign                         = '👍';
   ThumbsDownSign                       = '👎';
   OKHandSign                           = '👌';
   FistedHandSign                       = '👊';
   RaisedFist                           = '✊';
   VictoryHand                          = '✌';
   WavingHandSign                       = '👋';
   RaisedHand                           = '✋';
   OpenHandsSign                        = '👐';
   WhiteUpPointingBackhandIndex         = '👆';
   WhiteDownPointingBackhandIndex       = '👇';
   WhiteRightPointingBackhandIndex      = '👉';
   WhiteLeftPointingBackhandIndex       = '👈';
   PersonRaisingBothHandsinCelebration  = '🙌';
   PersonFoldedHands                    = '🙏';
   WhiteUpPointingIndex                 = '☝';
   ClappingHandsSign                    = '👏';
   FlexedBiceps                         = '💪';
   NailPolish                           = '💅';
   DashSymbol                           = '💨';
   Orelha                               = '👂';
   Olhos                                = '👀';
   Nariz                                = '👃';
   Língua                               = '👅';
   Boca                                 = '👄';
{$ENDREGION 'GESTOS'}

{$REGION 'PERSONAGENS'}
  const LoiraFazerOq              = '🤷‍♀' ;
  const LoiraMaoNoRosto           = '🤦‍♀' ;
  const LoiraNotebook             = '👩🏼‍💻';
  const LoiraOla                  = '🙋🏼‍♀';
  const LoiraAteLogo              = '💁🏼‍♀';
  const LoiraTriste               = '🙍🏼‍♀';
  const AtendenteH                = '👨🏼‍💼';
  const AtendenteM                = '👩🏼‍💼';
  const PoliceOfficer             = '👮';
  const ConstructionWorker        = '👷';
  const Guardsman                 = '💂';
  const ManandWomanHoldingHands   = '👫';
  const família                   = '👪';
  const TwoMenHoldingHands        = '👬';
  const TwoWomenHoldingHands      = '👭';
  const BustinSilhouette          = '👤';
  const BustsinSilhouette         = '👥';
  const Pedestre                  = '🚶';
  const Runner                    = '🏃';
  const Dançarino                 = '💃';
  const WomanBunnyEars            = '👯';
  const OKGesture                 = '🙆';
  const NoGoodGesture             = '🙅';
  const InformationDeskPerson     = '💁';
  const HappyPersonRaisingOneHand = '🙋';
  const massagem                  = '💆';
  const Cortedecabelo             = '💇';
  const BrideVeil                 = '👰';
  const PersonPouting             = '🙎';
  const PersonFrowning            = '🙍';
  const PersonBowingDeeply        = '🙇';
 {$ENDREGION 'PERSONAGENS'}

{$ENDREGION 'SUPER-REGION:PESSOAS'}

{$REGION 'SUPER-REGION:NATUREZA'}

{$REGION 'FACES E ANIMAIS'}
  const ExtraterrestrialAlien = '👽';
  const SmilingCatOpenMouth = '😺';
  const GrinningCatSmilingEyes = '😸';
  const SmilingCatHeartShapedEyes = '😻';
  const KissingCatClosedEyes = '😽';
  const CatWrySmile = '😼';
  const WearyCat = '🙀';
  const CryingCat = '😿';
  const CatTearsofJoy = '😹';
  const PoutingCat = '😾';
  const Macaco = '🐵';
  const SeeNoEvilMonkey = '🙈';
  const HearNoEvilMonkey = '🙉';
  const SpeakNoEvilMonkey = '🙊';
  const Dog = '🐶';
  const Wolf = '🐺';
  const Cat = '🐱';
  const Mouse = '🐭';
  const Hamster = '🐹';
  const Frog = '🐸';
  const Tiger = '🐯';
  const Koala = '🐨';
  const Bear = '🐻';
  const Pig = '🐷';
  const PigNose = '🐽';
  const Cow = '🐮';
  const Boar = '🐗';
  const Macaco1 = '🐒';
  const Cavalo = '🐴';
  const Ovelha = '🐑';
  const Elefante = '🐘';
  const Panda = '🐼';
  const Pinguim = '🐧';
  const Bird = '🐦';
  const BabyChick = '🐤';
  const FrontFacingBabyChick = '🐥';
  const HatchingChick = '🐣';
  const Frango = '🐔';
  const Cobra = '🐍';
  const Tartaruga = '🐢';
  const Bug = '🐛';
  const Honeybee = '🐝';
  const Ant = '🐜';
  const LadyBeetle = '🐞';
  const Caracol = '🐌';
  const Polvo = '🐙';
  const SpiralShell = '🐚';
  const TropicalFish = '🐠';
  const Peixe = '🐟';
  const Dolphin = '🐬';
  const SpoutingWhale = '🐳';
  const Baleia = '🐋';
  const Cow1 = '🐄';
  const Ram = '🐏';
  const Rato = '🐀';
  const WaterBuffalo = '🐃';
  const Tiger1 = '🐅';
  const Coelho = '🐇';
  const Dragão = '🐉';
  const Cavalo1 = '🐎';
  const Cabra = '🐐';
  const Galo = '🐓';
  const Dog1 = '🐕';
  const Pig1 = '🐖';
  const Mouse1 = '🐁';
  const Ox = '🐂';
  const Dragão1 = '🐲';
  const Blowfish = '🐡';
  const Crocodilo = '🐊';
  const BactrianCamel = '🐫';
  const DromedaryCamel = '🐪';
  const Leopardo = '🐆';
  const Cat1 = '🐈';
  const Poodle = '🐩';
  const PawPrints = '🐾';
{$ENDREGION 'FACES E ANIMAIS'}

{$REGION 'NATUREZA'}
  const Bouquet = '💐';
  const CherryBlossom = '🌸';
  const Tulip = '🌷';
  const FourLeafClover = '🍀';
  const Rose = '🌹';
  const Girassol = '🌻';
  const Hibisco = '🌺';
  const MapleLeaf = '🍁';
  const LeafFlutteringinWind = '🍃';
  const FallenLeaf = '🍂';
  const Herb = '🌿';
  const EarofRice = '🌾';
  const Cogumelo = '🍄';
  const Cactus = '🌵';
  const PalmTree = '🌴';
  const EvergreenTree = '🌲';
  const DeciduousTree = '🌳';
  const Chestnut = '🌰';
  const Mudas = '🌱';
  const Blossom = '🌼';
  const RedApple = '🍎';
  const GreenApple = '🍏';
  const Tangerina = '🍊';
  const Limão = '🍋';
  const Cerejas = '🍒';
  const Uvas = '🍇';
  const Melancia = '🍉';
  const Morango = '🍓';
  const Peach = '🍑';
  const Melão = '🍈';
  const Banana = '🍌';
  const Pear = '🍐';
  const Abacaxi = '🍍';
  const RoastedSweetPotato = '🍠';
  const Beringela = '🍆';
  const Tomate = '🍅';
  const EarofMaize = '🌽';
  const WhiteFlower = '💮';
  const GlobeMeridians = '🌐';
  const Sun = '🌞';
  const FullMoon = '🌝';
  const NewMoon = '🌚';
  const NewMoonSymbol = '🌑';
  const WaxingCrescentMoonSymbol = '🌒';
  const FirstQuarterMoonSymbol = '🌓';
  const WaxingGibbousMoonSymbol = '🌔';
  const FullMoonSymbol = '🌕';
  const WaningGibbousMoonSymbol = '🌖';
  const LastQuarterMoonSymbol = '🌗';
  const WaningCrescentMoonSymbol = '🌘';
  const LastQuarterMoon = '🌜';
  const FirstQuarterMoon = '🌛';
  const CrescentMoon = '🌙';
  const EarthGlobeEuropaafrica = '🌍';
  const EarthGlobeAmericas = '🌎';
  const EarthGlobeAsiaAustralia = '🌏';
  const Vulcão = '🌋';
  const MilkyWay = '🌌';
  const ShootingStar = '🌠';
  const WhiteMediumStar = '⭐';
  const BlackSunRays = '☀';
  const SunBehindCloud = '⛅';
  const Nuvem = '☁';
  const HighVoltageSign = '⚡';
  const UmbrellaRainDrops = '☔';
  const Flocodeneve = '❄';
  const SnowmanoutSnow = '⛄';
  const Ciclone = '🌀';
  const Foggy = '🌁';
  const Arcoiris = '🌈';
  const WaterWave = '🌊';
{$ENDREGION 'NATUREZA'}

{$ENdREGION 'SUPER-REGION:NATUREZA'}

{$REGION 'SUPER-REGION:COMIDAS E BEBIDAS'}

{$REGION 'COMIDAS'}
  const Macarrao               = '🍜';
  const PizzaFatia             = '🍕';
  const Sorvete                = '🍧';
  const Açai                   = '🍨';
  const Restaurante            = '🍽';
  const GarfoeFaca             = '🍴';
  const Hambúrguer             = '🍔';
  const BatatasFritas          = '🍟';
  const PoultryLeg             = '🍗';
  const MeatonBone             = '🍖';
  const espaguete              = '🍝';
  const CurryandRice           = '🍛';
  const CamaraoFrito           = '🍤';
  const BentoBox               = '🍱';
  const Sushi                  = '🍣';
  const FishCakeSwirlDesign    = '🍥';
  const PanelaComComida  = '🥘';
  const RiceBall = '🍙';
  const RiceCracker = '🍘';
  const CookedRice = '🍚';
  const SteamingBowl = '🍜';
  const PotofFood = '🍲';
  const Oden = '🍢';
  const Dango = '🍡';
  const Culinária = '🍳';
  const Pão = '🍞';
  const Donut = '🍩';
  const Creme = '🍮';
  const SoftIceCream = '🍦';
  const IceCream = '🍨';
  const ShavedIce = '🍧';
  const BirthdayCake = '🎂';
  const Shortcake = '🍰';
  const Cookie = '🍪';
  const ChocolateBar = '🍫';
  const Candy = '🍬';
  const pirulito = '🍭';
  const HoneyPot = '🍯';

{$ENDREGION 'COMIDAS'}

{$REGION 'BEBIDAS'}
  const Bebida            = '🥃';
  const HotBeverage       = '☕';
  const TeacupoutHandle = '🍵';
  const SakeBottleandCup = '🍶';
  const BabyBottle = '🍼';
  const BeerMug = '🍺';
  const ClinkingBeerMugs = '🍻';
  const CocktailGlass = '🍸';
  const TropicalDrink = '🍹';
  const WineGlass = '🍷';
{$ENDREGION 'BEBIDAS'}

{$ENDREGION 'SUPER-REGION:COMIDAS E BEBIDAS'}

{$REGION 'SUPER-REGION:SIMBOLOS E BANDEIRAS'}

{$REGION 'SIMBOLOS'}
  const YellowHeart = '💛';
  const BlueHeart = '💙';
  const PurpleHeart = '💜';
  const GreenHeart = '💚';
  const HeavyBlackHeart = '❤';
  const BrokenHeart = '💔';
  const GrowingHeart = '💗';
  const BeatingHeart = '💓';
  const TwoHearts = '💕';
  const SparklingHeart = '💖';
  const RevolvingHearts = '💞';
  const HeartArrow = '💘';
  const LoveLetter = '💌';
  const KissMark = '💋';
  const Ring = '💍';
  const GemStone = '💎';
  const HeartDecoration = '💟';
  const SpeechBalloon = '💬';
  const Pegadas = '👣';
  const ThoughtBalloon = '💭';
  const HeartRibbon = '💝';
  const Corarao          = '❤';
  const Check            = '✅';
  const Check2           = '✔';
  const Atencao          = '⚠';
  const SetaDireita      = '➡';
  const SetaEsquerda     = '⬅';
  const Relogio          = '🕒';
  const Conversa         = '💬';
  const Estrela          = '⭐';
  const Erro             = '❌';
  const Duvida           = '⁉';
  const Dormiu           = '💤';
  const DoubleExclamationMark = '‼';
  const ExclamationQuestionMark = '⁉';
  const HeavyExclamationMarkSymbol = '❗';
  const BlackQuestionMarkOrnament = '❓';
  const WhiteExclamationMarkOrnament = '❕';
  const WhiteQuestionMarkOrnament = '❔';
  const DownwardsBlackArrow = '⬇';
  const LeftwardsBlackArrow = '⬅';
  const BlackRightwardsArrow = '➡';
  const NorthEastArrow = '↗';
  const NorthWestArrow = '↖';
  const SouthEastArrow = '↘';
  const SouthWestArrow = '↙';
  const LeftRightArrow = '↔';
  const UpDownArrow = '↕';
  const AnticlockwiseDownwardsandUpwardsOpenCircleArrows = '🔄';
  const BlackLeftPointingTriangle = '◀';
  const BlackRightPointingTriangle = '▶';
  const UpPointingSmallRedTriangle = '🔼';
  const DownPointingSmallRedTriangle = '🔽';
  const LeftwardsArrowHook = '↩';
  const RightwardsArrowHook = '↪';
  const BlackLeftPointingDoubleTriangle = '⏪';
  const BlackRightPointingDoubleTriangle = '⏩';
  const BlackUpPointingDoubleTriangle = '⏫';
  const BlackDownPointingDoubleTriangle = '⏬';
  const ArrowPointingRightwardsthenCurvingDownwards = '⤵';
  const ArrowPointingRightwardsthenCurvingUpwards = '⤴';
  const TwistedRightwardsArrows = '🔀';
  const ClockwiseRightwardsandLeftwardsOpenCircleArrows = '🔁';
  const ClockwiseRightwardsandLeftwardsOpenCircleArrowsCircledOneOverlay = '🔂';
  const TopUpwardsArrowAbove = '🔝';
  const EndLeftwardsArrowAbove = '🔚';
  const BackLeftwardsArrowAbove = '🔙';
  const OnExclamationMarkLeftRightArrowAbove = '🔛';
  const SoonRightwardsArrowAbove = '🔜';
  const ClockwiseDownwardsandUpwardsOpenCircleArrows = '🔃';
  const UpPointingRedTriangle = '🔺';
  const DownPointingRedTriangle = '🔻';
  const UpwardsBlackArrow = '⬆';
  const Áries = '♈';
  const Touro = '♉';
  const Gêmeos = '♊';
  const Câncer = '♋';
  const Leo = '♌';
  const Virgo = '♍';
  const Libra = '♎';
  const Scorpius = '♏';
  const Sagitário = '♐';
  const Capricórnio = '♑';
  const Aquário = '♒';
  const Peixes = '♓';
  const Ophiuchus = '⛎';
  const FlagforJapan = '🇯🇵';
  const FlagforSouthKorea = '🇰🇷';
  const FlagforGermany = '🇩🇪';
  const FlagforChina = '🇨🇳';
  const FlagforUnitedStates = '🇺🇸';
  const FlagforFrance = '🇫🇷';
  const FlagforSpain = '🇪🇸';
  const FlagforItaly = '🇮🇹';
  const FlagforRussia = '🇷🇺';
  const FlagforUnitedKingdom = '🇬🇧';
  const Banheiro = '🚻';
  const MensSymbol = '🚹';
  const WomensSymbol = '🚺';
  const BabySymbol = '🚼';
  const WaterCloset = '🚾';
  const PotableWaterSymbol = '🚰';
  const PutLitterinitsPlaceSymbol = '🚮';
  const WheelchairSymbol = '♿';
  const NoSmokingSymbol = '🚭';
  const PassportControl = '🛂';
  const BaggageClaim = '🛄';
  const LeftLuggage = '🛅';
  const Alfândega = '🛃';
  const NoEntrySign = '🚫';
  const NoOneUnderEighteenSymbol = '🔞';
  const NoMobilePhones = '📵';
  const DoNotLitterSymbol = '🚯';
  const NonPotableWaterSymbol = '🚱';
  const NoBicycles = '🚳';
  const NoPedestrians = '🚷';
  const ChildrenCrossing = '🚸';
  const NoEntry = '⛔';
  const BlackUniversalRecyclingSymbol = '♻';
  const DiamondShapeaDotInside = '💠';
  const DoubleCurlyLoop = '➿';
  const LinkSymbol = '🔗';
  const CurlyLoop = '➰';
  const WavyDash = '〰';
  const PartAlternationMark = '〽';
  const TridentEmblem = '🔱';
  const BlackMediumSquare = '◼';
  const WhiteMediumSquare = '◻';
  const BlackMediumSmallSquare = '◾';
  const WhiteMediumSmallSquare = '◽';
  const BlackSmallSquare = '▪';
  const WhiteSmallSquare = '▫';
  const BlackSquareButton = '🔲';
  const WhiteSquareButton = '🔳';
  const MediumBlackCircle = '⚫';
  const MediumWhiteCircle = '⚪';
  const LargeRedCircle = '🔴';
  const LargeBlueCircle = '🔵';
  const WhiteLargeSquare = '⬜';
  const BlackLargeSquare = '⬛';
  const LargeOrangeDiamond = '🔶';
  const LargeBlueDiamond = '🔷';
  const SmallOrangeDiamond = '🔸';
  const SmallBlueDiamond = '🔹';
  const SquaredKatakanaKoko = '🈁';
  const SquaredCJKUnifiedIdeograph = '🈯';
  const SquaredCJKUnifiedIdeographaa = '🈳';
  const SquaredCJKUnifiedIdeographe = '🈵';
  const SquaredCJKUnifiedIdeograph1 = '🈴';
  const SquaredCJKUnifiedIdeograph2 = '🈲';
  const CircledIdeographAdvantage = '🉐';
  const SquaredCJKUnifiedIdeograph3 = '🈹';
  const SquaredCJKUnifiedIdeographb = '🈺';
  const SquaredCJKUnifiedIdeograph4 = '🈶';
  const SquaredCJKUnifiedIdeograph5 = '🈚';
  const SquaredCJKUnifiedIdeograph6 = '🈷';
  const SquaredCJKUnifiedIdeograph7 = '🈸';
  const SquaredKatakanaSa = '🈂';
  const CircledIdeographAccept = '🉑';
  const circledideographsecret = '㊙';
  const circledideographcongratulation = '㊗';
  const EightSpokedAsterisk = '✳';
  const Sparkle = '❇';
  const EightPointedBlackStar = '✴';
  const NegativeSquaredCrossMark = '❎';
  const WhiteHeavyCheckMark = '✅';
  const SixPointedStarMiddleDot = '🔯';
  const ChartUpwardsTrendandYenSign = '💹';
  const HeavyDollarSign = '💲';
  const CurrencyExchange = '💱';
  const CrossMark = '❌';
  const HeavyLargeCircle = '⭕';
  const HeavyMultiplicationX = '✖';
  const HeavyPlusSign = '➕';
  const HeavyMinusSign = '➕';
  const HeavyDivisionSign = '➗';
  const BlackSpadeSuit = '♠';
  const BlackHeartSuit = '♥';
  const BlackClubSuit = '♣';
  const BlackDiamondSuit = '♦';
  const HeavyCheckMark = '✔';
  const BallotBoxCheck = '☑';
  const RadioButton = '🔘';
{$ENDREGION 'SIMBOLOS'}

{$REGION 'HORARIO'}
  const ClockTwelveOclock = '🕛';
  const ClockTwelveThirty = '🕧';
  const ClockOneOclock = '🕐';
  const ClockOneThirty = '🕜';
  const ClockTwoOclock = '🕑';
  const ClockTwoThirty = '🕝';
  const ClockThreeOclock = '🕒';
  const ClockThreeThirty = '🕞';
  const ClockFourOclock = '🕓';
  const ClockFourThirty = '🕟';
  const ClockFiveOclock = '🕔';
  const ClockFiveThirty = '🕠';
  const ClockSixOclock = '🕕';
  const ClockSevenOclock = '🕖';
  const ClockEightOclock = '🕗';
  const ClockNineOclock = '🕘';
  const ClockTenOclock = '🕙';
  const ClockElevenOclock = '🕚';
  const ClockSixThirty = '🕡';
  const ClockSevenThirty = '🕢';
  const ClockEightThirty = '🕣';
  const ClockNineThirty = '🕤';
  const ClockTenThirty = '🕥';
  const ClockElevenThirty = '🕦';
{$ENDREGION 'HORARIO'}

{$REGION 'NUMEROS'}
  const Zero             = '0⃣';
  const Um               = '1⃣';
  const Dois             = '2⃣';
  const Tres             = '3⃣';
  const Quatro           = '4⃣';
  const Cinco            = '5⃣';
  const Seis             = '6⃣';
  const Sete             = '7⃣';
  const Oito             = '8⃣';
  const Nove             = '9⃣';
  const Dez              = '🔟';
  const Aterisco         = '*⃣';
  const KeycapDigitOne = '⃣';
  const KeycapDigitTwo = '⃣';
  const KeycapDigitThree = '⃣';
  const KeycapDigitFour = '⃣';
  const KeycapDigitFive = '⃣';
  const KeycapDigitSix = '⃣';
  const KeycapDigitSeven = '⃣';
  const KeycapDigitEight = '⃣';
  const KeycapDigitNine = '⃣';
  const KeycapDigitZero = '⃣';
  const KeycapTen = '🔟';
  const InputSymbolforNumbers = '🔢';
  const KeycapNumberSign = '# ⃣';
  const InputSymbolforLatinSmallLetters = '🔡';
  const InputSymbolforLatinLetters = '🔤';
  const InformationSource = 'ℹ';
  const SquaredOK = '🆗';
  const SquaredNEW = '🆕';
  const SquaredUPExclamationMark = '🆙';
  const SquaredCool = '🆒';
  const SquaredFree = '🆓';
  const SquaredNG = '🆖';
  const NegativeSquaredLatinCapitalLetterP = '🅿';
  const CircledLatinCapitalLetterM = 'Ⓜ';
  const SquaredCL = '🆑';
  const SquaredSOS = '🆘';
  const SquaredID = '🆔';
  const SquaredVS = '🆚';
  const NegativeSquaredLatinCapitalLetterA = '🅰';
  const NegativeSquaredLatinCapitalLetterB = '🅱';
  const NegativeSquaredAB = '🆎';
  const NegativeSquaredLatinCapitalLetterO = '🅾';
  const CopyrightSign = '©';
  const RegisteredSign = '®';
  const HundredPointsSymbol = '💯';
  const TradeMarkSign = '™';
  const InputSymbolforLatinCapitalLetters = '🔠';
{$ENDREGION 'NUMEROS'}

{$ENDREGION 'SUPER-REGION:SIMBOLOS E BANDEIRAS'}

{$REGION 'ATIVIDADES'}
  const PlayingCardBlackJoker = '🃏';
  const FlowerPlayingCards = '🎴';
  const MahjongTileRedDragon = '🀄';
  const GameDie = '🎲';
  const DirectHit = '🎯';
  const AmericanFootball = '🏈';
  const BasketballandHoop = '🏀';
  const SoccerBall = '⚽';
  const Baseball = '⚾';
  const TennisRacquetandBall = '🎾';
  const Bilhar = '🎱';
  const RugbyFootball = '🏉';
  const Boliche = '🎳';
  const FlaginHole = '⛳';
  const MountainBicyclist = '🚵';
  const Ciclista = '🚴';
  const ChequeredFlag = '🏁';
  const HorseRacing = '🏇';
  const troféu  = '🏆';
  const SkiandSkiBoot = '🎿';
  const Snowboarder = '🏂';
  const Nadador = '🏊';
  const Surfista = '🏄';
{$ENDREGION 'ATIVIDADES'}

{$REGION 'LUGARES'}
  const FishingPoleandFish = '🎣';
  const HouseBuilding = '🏠';
  const HouseGarden = '🏡';
  const Escola  = '🏫';
  const OfficeBuilding = '🏢';
  const JapanesePostOffice = '🏣';
  const Hospital  = '🏥';
  const Banco  = '🏦';
  const ConvenienceStore = '🏪';
  const LoveHotel = '🏩';
  const Hotel = '🏨';
  const casamento = '💒';
  const Igreja  = '⛪';
  const Moto             = '🏍';
  const Carro            = '🚘';
  const Barco           = '🚢';
  const DepartmentStore = '🏬';
  const EuropeanPostOffice = '🏤';
  const SunsetoverBuildings = '🌇';
  const CityscapeatDusk = '🌆';
  const JapaneseCastle = '🏯';
  const EuropeanCastle = '🏰';
  const Tent = '⛺';
  const Fábrica = '🏭';
  const TokyoTower = '🗼';
  const SilhouetteofJapan = '🗾';
  const MountFuji = '🗻';
  const SunriseoverMountains = '🌄';
  const Nascerdosol = '🌅';
  const NightStars = '🌃';
  const StatueofLiberty = '🗽';
  const BridgeatNight = '🌉';
  const CarouselHorse = '🎠';
  const FerrisWheel = '🎡';
  const fonte = '⛲';
  const RollerCoaster = '🎢';
  const Ship = '🚢';
  const Veleiro = '⛵';
  const Lancha = '🚤';
  const Rowboat = '🚣';
  const Âncora = '⚓';
  const Foguete = '🚀';
  const Avião = '✈';
  const Seat = '💺';
  const Helicóptero = '🚁';
  const SteamLocomotive = '🚂';
  const Bonde = '🚊';
  const estação  = '🚉';
  const MountainRailway = '🚞';
  const Train = '🚆';
  const HighSpeedTrain = '🚄';
  const HighSpeedTrainBulletNose = '🚅';
  const LightRail = '🚈';
  const Metro = '🚇';
  const Monotrilho = '🚝';
  const TramCar = '🚋';
  const RailwayCar = '🚃';
  const Trólebus = '🚎';
  const Bus = '🚌';
  const OncomingBus = '🚍';
  const RecreationalVehicle = '🚙';
  const OncomingAutomobile = '🚘';
  const Automobile = '🚗';
  const Táxi = '🚕';
  const OncomingTaxi = '🚖';
  const ArticulatedLorry = '🚛';
  const DeliveryTruck = '🚚';
  const PoliceCarsRevolvingLight = '🚨';
  const PoliceCar = '🚓';
  const OncomingPoliceCar = '🚔';
  const FireEngine = '🚒';
  Const Ambulância = '🚑';
  const Minibus = '🚐';
  const Bicycle = '🚲';
  const AerialTramway = '🚡';
  const SuspensionRailway = '🚟';
  const MountainCableway = '🚠';
  const Trator = '🚜';
  const BarberPole = '💈';
  const BusStop = '🚏';
  const Ticket = '🎫';
{$ENDREGION 'LUGARES'}

{$REGION 'VARIADOS'}

  const Violao           = '🎸';
  const Chegada          = '🏁';
  const Futebol          = '⚽';
  const NaMosca          = '🎯';
  const Dinheiro         = '💵';
  const EnviarCel        = '📲';
  const Enviar           = '📩';
  const Fone             = '📞';
  const Onibus           = '🚍';
  const Aviao            = '✈';
  const Joystick         = '🎮';
  const Cartao           = '💳';
  const TuboEnsaio       = '🧪';
  const Pilula           = '💊';
  const SacolaCompras    = '🛍';
  const CarrinhoCompras  = '🛒';
  const Ampulheta        = '⏳';
  const Presente         = '🎁';
  const Email            = '📧';
  const AgendaAzul       = '📘';
  const AgendaVerde      = '📗';
  const AgendaVermelha   = '📕';
  const ClipPapel        = '📎';
  const CanetaAzul       = '🖊';
  const Lapis            = '✏';
  const LapisEPapel      = '📝';
  const CadeadoEChave    = '🔐';
  const Lupa             = '🔎';

  const JapaneseOgre = '👹';
  const JapaneseGoblin = '👺';
  const Crânio = '💀';
  const PileofPoo = '💩';

  const TopHat = '🎩';
  const Coroa = '👑';
  const WomansHat = '👒';
  const AthleticShoe = '👟';
  const MansShoe = '👞';
  const WomansSandal = '👡';
  const HighHeeledShoe = '👠';
  const WomansBoots = '👢';
  const camiseta = '👕';
  const Gravata = '👔';
  const WomansClothes = '👚';
  const Dress = '👗';
  const RunningShirtSash = '🎽';
  const Jeans = '👖';
  const Quimono = '👘';
  const Biquíni = '👙';
  const Pasta = '💼';
  const Bolsa = '👜';
  const Pouch = '👝';
  const Bolsa1 = '👛';
  const Óculos = '👓';
  const Ribbon = '🎀';
  const ClosedUmbrella = '🌂';
  const Batom = '💄';
  const ArtistPalette = '🎨';
  const ClapperBoard = '🎬';
  const Microfone = '🎤';
  const Headphone = '🎧';
  const MusicalScore = '🎼';
  const NotaMusical = '🎵';
  const MultipleMusicalNotes = '🎶';
  const MusicalKeyboard = '🎹';
  const Violino = '🎻';
  const Trombeta = '🎺';
  const saxofone  = '🎷';
  const Guitar = '🎸';
  const AlienMonster = '👾';
  const VideoGame = '🎮';

  const VerticalTrafficLight = '🚦';
  const HorizontalTrafficLight = '🚥';
  const WarningSign = '⚠';
  const ConstructionSign = '🚧';
  const JapaneseSymbolforBeginner = '🔰';
  const FuelPump = '⛽';
  const IzakayaLantern = '🏮';
  const SlotMachine = '🎰';
  const HotSprings = '♨';
  const Moyai = '🗿';
  const CircusTent = '🎪';
  const PerformingArts = '🎭';
  const RoundPushpin = '📍';
  const TriangularFlagonPost = '🚩';
  const EMailSymbol = '📧';
  const InboxTray = '📥';
  const OutboxTray = '📤';
  const Envelope = '✉';
  const EnvelopeDownwardsArrowAbove = '📩';
  const IncomingEnvelope = '📨';
  const PostalHorn = '📯';
  const ClosedMailboxRaisedFlag = '📫';
  const ClosedMailboxLoweredFlag = '📪';
  const OpenMailboxRaisedFlag = '📬';
  const OpenMailboxLoweredFlag = '📭';
  const Caixapostal = '📮';
  const pacote  = '📦';
  const Memo = '📝';
  const PageFacingUp = '📄';
  const PageCurl = '📃';
  const BookmarkTabs = '📑';
  const BarChart = '📊';
  const ChartUpwardsTrend = '📈';
  const ChartDownwardsTrend = '📉';
  const Scroll = '📜';
  const Area_de_transferencia = '📋';
  const Calendário = '📅';
  const TearOffCalendar = '📆';
  const CardIndex = '📇';
  const FileFolder = '📁';
  const OpenFileFolder = '📂';
  const BlackScissors = '✂';
  const Pino = '📌';
  const Clipede_papel = '📎';
  const BlackNib = '✒';
  const Lápis = '✏';
  const StraightRuler = '📏';
  const TriangularRuler = '📐';
  const ClosedBook = '📕';
  const GreenBook = '📗';
  const BlueBook = '📘';
  const OrangeBook = '📙';
  const Caderno = '📓';
  const NotebookDecorativeCover = '📔';
  const Ledger = '📒';
  const Livros = '📚';
  const OpenBook = '📖';
  const Marcador = '🔖';
  const NameBadge = '📛';
  const Microscópio = '📛';
  const Telescópio = '🔭';
  const Jornal = '📰';
  const MoneyBag = '💰';
  const BanknoteYenSign = '💴';
  const BanknoteDollarSign = '💵';
  const BanknotePoundSign = '💷';
  const BanknoteEuroSign = '💶';
  const CreditCard = '💳';
  const MoneyWings = '💸';
  const MovieCamera = '🎥';
  const Câmera = '📷';
  const VideoCamera = '📹';
  const fita_de_video  = '📼';
  const OpticalDisc = '💿';
  const DVD = '📀';
  const Minidisc = '💽';
  const FloppyDisk = '💾';
  const PersonalComputer = '💻';
  const MobilePhone = '📱';
  const BlackTelephone = '☎';
  const TelephoneReceiver = '📞';
  const Pager = '📟';
  const FaxMachine = '📠';
  const SatelliteAntenna = '📡';
  const Televisão = '📺';
  const Rádio = '📻';
  const SpeakerThreeSoundWaves = '🔊';
  const SpeakerOneSoundWave = '🔉';
  const Altofalante = '🔈';
  const SpeakerCancellationStroke = '🔇';
  const Bell = '🔔';
  const BellcancellationStroke = '🔕';
  const PublicAddressLoudspeaker = '📢';
  const CheeringMegaphone = '📣';
  const HourglassFlowingSand = '⏳';
  const Hourglass = '⌛';
  const AlarmClock = '⏰';
  const Watch = '⌚';
  const OpenLock = '🔓';
  const Lock = '🔒';
  const LockInkPen = '🔏';
  const ClosedLockKey = '🔐';
  const Key = '🔑';
  const LeftPointingMagnifyingGlass = '🔎';
  const ElectricLightBulb = '💡';
  const ElectricTorch = '🔦';
  const ElectricPlug = '🔌';
  const Bateria = '🔋';
  const RightPointingMagnifyingGlass = '🔍';
  const Wrench = '🔧';
  const NutandBolt = '🔩';
  const Martelo = '🔨';
  const MobilePhoneRightwardsArrowatLeft = '📲';
  const AntennaBars = '📶';
  const Cinema = '🎦';
  const VibrationMode = '📳';
  const MobilePhoneOff = '📴';


  const AutomatedTellerMachine = '🏧';

  const PineDecoration = '🎍';
  const JapaneseDolls = '🎎';
  const SchoolSatchel = '🎒';
  const GraduationCap = '🎓';
  const CarpStreamer = '🎏';
  const Fireworks = '🎆';
  const FireworkSparkler = '🎇';
  const WindChime = '🎐';
  const MoonViewingCeremony = '🎑';
  const JackOLantern = '🎃';
  const Fantasma = '👻';
  const FatherChristmas = '🎅';
  const ChristmasTree = '🎄';
  const WrappedPresent = '🎁';
  const TanabataTree = '🎋';
  const PartyPopper = '🎉';
  const ConfettiBall = '🎊';
  const Balão = '🎈';
  const CrossedFlags = '🎌';
  const CrystalBall = '🔮';
  const HighBrightnessSymbol = '🔆';
  const LowBrightnessSymbol = '🔅';
  const Banheira = '🛁';
  const Bath = '🛀';
  const Shower = '🚿';
  const WC = '🚽';
  const Porta = '🚪';
  const SmokingSymbol = '🚬';
  const Bomb = '💣';
  const Pistola = '🔫';
  const Hocho = '🔪';
  const Pílula = '💊';
  const Seringa = '💉';
  const Fogo = '🔥';
  const Sparkles = '✨';
  const GlowingStar = '🌟';
  const DizzySymbol = '💫';
  const CollisionSymbol = '💥';
  const AngerSymbol = '💢';
  const SplashingSweatSymbol = '💦';
  const Gota = '💧';
  const SleepingSymbol = '💤';
{$ENDREGION 'VARIADOS'}

end;

implementation


end.
