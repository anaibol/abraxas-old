Attribute VB_Name = "Declaraciones"
Option Explicit

Public DatPath As String
Public MapPath As String
Public CharPath As String

Public ServidorIni As String

Public aClon As New clsAntiMassClon

'Public TrashCollector As New Collection

Public Enum eChatType
    Norm = 1
    Guil = 2
    Komp = 3
    Priv = 4
    Glob = 5
    Yell = 6
    GM = 7
    GM_Yell = 8
End Enum

Public Const Max_Integer_Value As Integer = 32767
                
Public Const MaxSPAWNATTEMPS = 60
Public Const INFInitE_Loops As Byte = 255
Public Const FXSANGRE = 14

Public Const iFragataFantasmal = 87
Public Const iBarca = 84
Public Const iGalera = 85
Public Const iGaleon = 86
Public Const iBarcaCiuda = 395
Public Const iBarcaPk = 396
Public Const iGaleraCiuda = 397
Public Const iGaleraPk = 398
Public Const iGaleonCiuda = 399
Public Const iGaleonPk = 400

Public Enum FXIDs
    FX_WARP = 1
    FX_MEDITARCHICO = 4
    FX_MEDITARMEDIANO = 5
    FX_MEDITARGRANDE = 6
    FX_MEDITARXGRANDE = 16
    FX_MEDITARXXGRANDE = 34
End Enum

Public Enum iMinerales
    HierroCrudo = 192
    PlataCruda = 193
    OroCrudo = 194
    LingoteDeHierro = 386
    LingoteDePlata = 387
    LingoteDeOro = 388
End Enum

Public Enum PlayerType
    User = 1
    Consejero = 2
    SemiDios = 4
    Dios = 8
    Admin = 10
    RoleMaster = 20
End Enum

Public Enum eClass
    Mage = 1       'Mago
    Cleric      'Cl�rigo
    Warrior     'Guerrero
    Assasin     'Asesino
    Thief       'Ladr�n
    Bard        'Bardo
    Druid       'Druida
    Bandit      'Bandido
    Paladin     'Palad�n
    Hunter      'Cazador
    Pirat       'Pirata
End Enum

Public Enum eCiudad
    cUllathorpe = 1
    cNix
    cBanderbill
    cLindos
    cArghal
End Enum

Public Enum eRaza
    Humano = 1
    Elfo
    Drow
    Gnomo
    Enano
End Enum

Enum eGenero
    Hombre = 1
    Mujer
End Enum

Public Const LimitePrincipiante As Byte = 14

Public Type tCabecera 'Cabecera de los con
    Desc As String * 255
    Crc As Long
    MagicWord As Long
End Type

Public MiCabecera As tCabecera

Public Const TIEMPO_INICIOMEDITAR As Integer = 500

Public Const NingunEscudo As Integer = 2
Public Const NingunCasco As Integer = 2
Public Const NingunArma As Integer = 2

Public Const EspadaMataDragonesIndex As Integer = 402
Public Const LAUDMAGICO As Integer = 696
Public Const FLAUTAMAGICA As Integer = 208

Public Const LAUDELFICO As Integer = 1049
Public Const FLAUTAELFICA As Integer = 1050

Public Const APOCALIPSIS_SPELL_Index As Integer = 25
Public Const DESCARGA_SPELL_Index As Integer = 23

Public Const SLOTS_POR_FILA As Byte = 5

Public Const MaxPetsENTRENADOR As Byte = 7

Public Const TIEMPO_CARCEL_PIQUETE As Long = 10

'
'TRIGGERS
'
'NADA nada
'BAJOTECHO bajo techo
'EnPlataforma
'POSINVALIDA los npcs no pueden pisar tiles con este trigger
'ZONASEGURA no se puede robar o pelear desde este trigger
'ANTIPIQUETE
'ZONAPELEA al pelear en este trigger no se caen las cosas y no cambia el estado de ciuda o crimi
'
Public Enum eTrigger
    NADA = 0
    BAJOTECHO = 1
    EnPlataforma = 2
    POSINVALIDA = 3
    ZONASEGURA = 4
    ANTIPIQUETE = 5
    ZONAPELEA = 6
End Enum

'
'constantes para el trigger 6
'
'@see eTrigger
'TRIGGER6_PERMITE TRIGGER6_PERMITE
'TRIGGER6_PROHIBE TRIGGER6_PROHIBE
'TRIGGER6_AUSENTE El trigger no aparece
'
Public Enum eTrigger6
    TRIGGER6_PERMITE = 1
    TRIGGER6_PROHIBE = 2
    TRIGGER6_AUSENTE = 3
End Enum

'TODO: Reemplazar por un enum
Public Const Bosque As String = "BOSQUE"
Public Const Nieve As String = "NIEVE"
Public Const Desierto As String = "DESIERTO"
Public Const Ciudad As String = "CIUDAD"
Public Const Campo As String = "CAMPO"
Public Const Dungeon As String = "DUNGEON"

'<<<<<< Targets >>>>>>
Public Enum TargetType
    uUsuarios = 1
    uNpc = 2
    uUsuariosYnpc = 3
    uTerreno = 4
End Enum

'<<<<<< Acciona sobre >>>>>>
Public Enum TipoHechizo
    uPropiedades = 1
    uEstado = 2
    uMaterializa = 3    'Nose usa
    uInvocacion = 4
End Enum

Public Const EsfuerzoTalar As Byte = 3

Public Const EsfuerzoPescar As Byte = 3

Public Const EsfuerzoExcavar As Byte = 5

Public Const FX_TELEPORT_Index As Integer = 1

Public Const PORCENTAJE_MATERIALES_UPGRADE As Single = 0.85

'La utilidad de esto es casi nula, s�lo se revisa si fue a la cabeza...
Public Enum PartesCuerpo
    bCabeza = 1
    bPiernaIzquierda = 2
    bPiernaDerecha = 3
    bBrazoDerecho = 4
    bBrazoIzquierdo = 5
    bTorso = 6
End Enum

Public Const Guardias As Integer = 6

Public Const STANDARD_BOUNTY_HUNTER_Message As String = "Se te otorg� un premio por ayudar al proyecto reportando bugs, el mismo est� disponible en tu b�veda."

Public Const MaxOro As Long = 99999999
Public Const MaxExp As Long = 999999999

Public Const MaxAtributos As Byte = 40
Public Const MINATRIBUTOS As Byte = 6

Public Const LingoteHierro As Integer = 386
Public Const LingotePlata As Integer = 387
Public Const LingoteOro As Integer = 388
Public Const Le�a As Integer = 58
Public Const Le�aElfica As Integer = 1006

Public Const MaxNpcs As Integer = 10000
Public Const MaxChars As Integer = 10000

Public Const HACHA_LE�ADOR As Integer = 127
Public Const HACHA_LE�A_ELFICA As Integer = 1005
Public Const PIQUETE_MINERO As Integer = 187

Public Const DAGA As Integer = 15
Public Const FOGATA_APAG As Integer = 136
Public Const FOGATA As Integer = 63
Public Const ORO_MINA As Integer = 194
Public Const PLATA_MINA As Integer = 193
Public Const HIERRO_MINA As Integer = 192
Public Const MARTILLO_HERRERO As Integer = 389
Public Const SERRUCHO_CARPINTERO As Integer = 198
Public Const ObjArboles As Integer = 4
Public Const RED_PESCA As Integer = 543
Public Const CA�A_PESCA As Integer = 138

Public Enum eNpcType
    Comun = 0
    GuardiaReal = 2
    Entrenador = 3
    Noble = 5
    DRAGON = 6
    Timbero = 7
    Pirata = 8
End Enum

'********** CONSTANTANTES ***********

'Cantidad de skills
Public Const NumSkills As Byte = 19

'Cantidad de Atributos
Public Const NUMATRIBUTOS As Byte = 5

'Cantidad de Clases
Public Const NUMCLASES As Byte = 11

'Cantidad de Razas
Public Const NUMRAZAS As Byte = 5

'Valor Maximo de cada skill
Public Const MaxSkillPoints As Byte = 100


'Direccion
Public Enum eHeading
    NORTH = 1
    EAST = 2
    SOUTH = 3
    WEST = 4
End Enum

'Cantidad Maxima de Mascotas
Public Const MaxPets As Byte = 5
Public Const MaxPetsALaVez As Byte = 3

'%%%%%%%%%% CONSTANTES DE INDICES %%%%%%%%%%%%%%%
Public Const vlASALTO As Integer = 100
Public Const vlASESINO As Integer = 1000
Public Const vlCAZADOR As Integer = 5
Public Const vlNoble As Integer = 5
Public Const vlLadron As Integer = 25
Public Const vlProleta As Integer = 2

Public Const iObjCuerpoMuerto As Integer = 1053

Public Const iORO As Byte = 12
Public Const Pescado As Byte = 139

Public Enum PECES_POSIBLES
    PESCADO1 = 139
    PESCADO2 = 544
    PESCADO3 = 545
    PESCADO4 = 546
End Enum

'%%%%%%%%%% CONSTANTES DE INDICES %%%%%%%%%%%%%%%
Public Enum eSkill
    Magia = 1
    Robar = 2
    Tacticas = 3
    Armas = 4
    Meditar = 5
    Apu�alar = 6
    Ocultarse = 7
    Supervivencia = 8
    Talar = 9
    Defensa = 10
    Pesca = 11
    Mineria = 12
    Carpinteria = 13
    Herreria = 14
    Liderazgo = 15
    Domar = 16
    Proyectiles = 17
    Wrestling = 18
    Navegacion = 19
End Enum

Public Enum eAtributos
    Fuerza = 1
    Agilidad = 2
    Inteligencia = 3
    Carisma = 4
    Constitucion = 5
End Enum

Public Const AdicionalHPGuerrero As Byte = 2 'HP adicionales cuando sube de nivel
Public Const AdicionalHPCazador As Byte = 1 'HP adicionales cuando sube de nivel

Public Const AumentoSTDef As Byte = 15
Public Const AumentoStBandido As Byte = AumentoSTDef + 23
Public Const AumentoSTLadron As Byte = AumentoSTDef + 3
Public Const AumentoSTMago As Byte = AumentoSTDef - 1

'Tama�o del mapa
Public Const XMaxMapSize As Byte = 100
Public Const XMinMapSize As Byte = 1
Public Const YMaxMapSize As Byte = 100
Public Const YMinMapSize As Byte = 1

'Tama�o en Tiles de la pantalla de visualizacion
Public Const XWindow As Byte = 17
Public Const YWindow As Byte = 13

'Sonidos FX!

'DROP
Public Const SND_DROP_JEWEL As Byte = 222         'JEWEL
Public Const SND_DROP_ARMOR As Byte = 226         'AMROR
Public Const SND_DROP_COINS As Byte = 228         'COINS
Public Const SND_DROP_PERGAMINO As Byte = 229     'PERGAMINO
Public Const SND_DROP_ARROW As Byte = 230        'ARROWS
Public Const SND_DROP_SHIELD As Byte = 232        'SHIELD
Public Const SND_DROP_WEAPON As Byte = 233        'WEAPON
Public Const SND_DROP_BOW As Byte = 234           'BOW
Public Const SND_DROP_KEY As Byte = 235           'KEY

'/\\\\\\\\\\\\\\\\\\COMBATE\\\\\\\\\\\\\\\\\

Public Const SND_SACARARMA As Byte = 210    'SACA ARMA
Public Const SND_GUARDARARMA As Byte = 211  'GUARDA ARMA

Public Const SND_SWING As Byte = 212        'USER FALLA
Public Const SND_SWING2 As Byte = 213       'USER FALLA 2
Public Const SND_NpcSWING As Byte = 2       'Npc FALLA

Public Const SND_IMPACTO As Byte = 10       'USER HITTED
Public Const SND_IMPACTO2 As Byte = 12      'Npc HITTED

Public Const SND_APU As Byte = 221          'STAB

Public Const SND_USERMUERTE As Byte = 11    'USER DEATH
'/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Public Const SND_DRINK As Byte = 46

Public Const SND_TALAR As Byte = 13
Public Const SND_PESCAR As Byte = 14
Public Const SND_MINERO As Byte = 15
Public Const SND_WARP As Byte = 3
Public Const SND_PUERTA As Byte = 5
Public Const SND_NIVEL As Byte = 6


Public Const SND_LE�ADOR As Byte = 13
Public Const SND_AVE As Byte = 21
Public Const SND_AVE2 As Byte = 22
Public Const SND_AVE3 As Byte = 34
Public Const SND_GRILLO As Byte = 28
Public Const SND_GRILLO2 As Byte = 29

Public Const MARTILLOHERRERO As Byte = 41
Public Const LABUROCARPINTERO As Byte = 42

'Cantidad Maxima de objetos por slot del inventario
Public Const MaxInvObjs As Integer = 1000

'Cantidad Maxima de objetos por slot del cintur�n
Public Const MaxBeltObjs As Integer = 1000

'Cantidad de slots en el inventario
Public Const MaxInvSlots As Byte = 20
Public Const MaxBeltSlots As Byte = 4
Public Const MaxBankSlots As Byte = 30
Public Const MaxNpcInvSlots As Byte = 50
Public Const MaxSpellSlots As Byte = 35
Public Const MaxCompaSlots As Byte = 50
Public Const MaxPlataformSlots As Byte = 10

'Constante para indicar que se esta usando ORO
Public Const FLAGORO As Integer = MaxInvSlots + 1

'CATEGORIAS PRINCIPALES
Public Enum eObjType
    otUseOnce = 1
    otArma = 2
    otArmadura = 3
    otArbol = 4
    otGuita = 5
    otPuerta = 6
    otContenedor = 7
    otCartel = 8
    otLlave = 9
    otForo = 10
    otPocion = 11
    otBebida = 13
    otLe�a = 14
    otFogata = 15
    otEscudo = 16
    otCasco = 17
    otAnillo = 18
    otPortal = 19
    otYacimiento = 22
    otMineral = 23
    otPergamino = 24
    otInstrumento = 26
    otYunque = 27
    otFragua = 28
    otBarco = 31
    otFlecha = 32
    otBotellaVacia = 33
    otBotellaLlena = 34
    otMancha = 35          'No se usa
    otArbolElfico = 36
    otPasaje = 37
    otCuerpoMuerto = 38
    otCinturon = 39
    otAlijo = 40
    otCualquiera = 1000
End Enum

'Texto
Public Const FONTTYPE_TALK As String = "~255~255~255~0~0"
Public Const FONTTYPE_FIGHT As String = "~255~0~0~0~0"
Public Const FONTTYPE_WARNING As String = "~32~51~223~0~1"
Public Const FONTTYPE_INFO As String = "~255~255~255~0~0"
Public Const FONTTYPE_INFOBOLD As String = "~65~190~156~0~0"
Public Const FONTTYPE_EJECUCION As String = "~130~130~130~0~0"
Public Const FONTTYPE_PARTY As String = "~255~180~255~0~0"
Public Const FONTTYPE_VENENO As String = "~0~255~0~0~0"
Public Const FONTTYPE_GUILD As String = "~255~255~255~0~0"
Public Const FONTTYPE_SERVER As String = "~0~185~0~0~0"
Public Const FONTTYPE_GUILDMSG As String = "~228~199~27~0~0"
Public Const FONTTYPE_CENTINELA As String = "~0~255~0~0~0"

'Estadisticas
Public Const STAT_MaxELV As Byte = 50
Public Const STAT_MaxHP As Integer = 999
Public Const STAT_MaxSta As Integer = 999
Public Const STAT_MaxMan As Integer = 3000
Public Const STAT_MaxHit_UNDER35 As Byte = 99
Public Const STAT_MaxHit_OVER35 As Integer = 999

Public Const ELU_SKILL_INICIAL As Byte = 30
Public Const EXP_ACIERTO_SKILL As Byte = 5
Public Const EXP_FALLO_SKILL As Byte = 3

'**************************************************************
'**************************************************************
'************************ TIPOS *******************************
'**************************************************************
'**************************************************************
    Public Type Position
        X As Integer
        Y As Integer
    End Type
    
    Public Type WorldPos
        Map As Integer
        X As Integer
        Y As Integer
    End Type

    Public Type tHechizo
        Nombre As String
        Desc As String
        PalabrasMagicas As String
        
        HechizeroMsg As String
        TargetMsg As String
        PropioMsg As String
        
    'Resis As Byte
        
        Tipo As TipoHechizo
        
        WAV As Integer
        FXgrh As Integer
        Loops As Byte
        
        SubeHP As Byte
        MinHP As Integer
        MaxHP As Integer
        
        SubeMana As Byte
        MiMana As Integer
        MaMana As Integer
        
        SubeSta As Byte
        MinSta As Integer
        MaxSta As Integer
        
        SubeHam As Byte
        MinHam As Integer
        MaxHam As Integer
        
        SubeSed As Byte
        MinSed As Integer
        MaxSed As Integer
        
        SubeAgilidad As Byte
        MinAgilidad As Integer
        MaxAgilidad As Integer
        
        SubeFuerza As Byte
        MinFuerza As Integer
        MaxFuerza As Integer
        
        SubeCarisma As Byte
        MinCarisma As Integer
        MaxCarisma As Integer
        
        Invisibilidad As Byte
        Paraliza As Byte
        Inmoviliza As Byte
        RemoverParalisis As Byte
        RemoverEstupidez As Byte
        CuraVeneno As Byte
        Envenena As Byte
        Maldicion As Byte
        RemoverMaldicion As Byte
        Bendicion As Byte
        Estupidez As Byte
        Ceguera As Byte
        Revivir As Byte
        Morph As Byte
        Mimetiza As Byte
        RemueveInvisibilidadParcial As Byte
        
        Warp As Byte
        Invoca As Byte
        NumNpc As Integer
        Cant As Integer
    
    'Materializa As Byte
    'ItemIndex As Byte
        
        MinSkill As Integer
        ManaRequerido As Integer
    
        StaRequerido As Integer
    
        Target As TargetType
        
        NeedStaff As Integer
        StaffAffected As Boolean
    End Type

Public Type LevelSkill
    LevelValue As Integer
End Type

Public Type UserObj
    index As Integer
    Amount As Integer
End Type

Public Type BeltObj
    index As Integer
    Amount As Integer
End Type

Public Type NpcObj
    index As Integer
    Amount As Integer
End Type

Public Type UserInventario
    Obj(1 To MaxInvSlots) As UserObj
    NroItems As Integer
    Head As Integer
    Body As Integer
    LeftHand As Integer
    RightHand As Integer
    AmmoAmount As Integer
    Belt As Integer
    Ring As Integer
    Ship As Integer
End Type

Public Type UserCinturon
    Obj(1 To MaxBeltSlots) As BeltObj
    NroItems As Integer
End Type

Public Type UserBanco
    Obj(1 To MaxBankSlots) As NpcObj
    NroItems As Integer
End Type

Public Type UserSkill
    Elv As Byte
    Exp As Long
    Elu As Long
End Type

Public Type UserHabilidades
    Skill(1 To NumSkills) As UserSkill
    NroFree As Integer
End Type

Public Type UserHechizos
    Spell(1 To MaxSpellSlots) As Byte
    Nro As Byte
End Type

Public Type UserPet
    Nombre As String
    index As Integer
    Tipo As Integer
    
    Lvl As Byte
    Elu As Long
    Exp As Long

    MinHP As Integer
    MaxHP As Integer
    
    MinHit As Integer
    MaxHit As Integer
    
    Def As Byte
    DefM As Byte
End Type

Public Type UserMascotas
    Pet(1 To MaxPets) As UserPet
    Nro As Byte
    NroALaVez As Byte
End Type

Public Type UserCompanieros
    Compa(1 To MaxCompaSlots) As String
    Nro As Byte
End Type

Public Type UserPlataformas
    Plataforma(1 To MaxPlataformSlots) As WorldPos
    Nro As Byte
End Type

Public Type NpcInventario
    Obj(1 To MaxNpcInvSlots) As NpcObj
    NroItems As Integer
End Type

Public Type NpcHechizos
    Spell(1 To MaxSpellSlots) As Byte
    Nro As Byte
End Type

Public Type tPartyData
    PIndex As Integer
    RemXP As Double 'La exp. en el server se cuenta con Doubles
    TargetUser As Integer 'Para las invitaciones
End Type

Public Type FXdata
    Nombre As String
    GrhIndex As Integer
    Delay As Integer
End Type

'Datos de user o npc
Public Type Char
    CharIndex As Integer
    Heading As eHeading

    Head As Integer
    HeadAnim As Integer
    Body As Integer
    WeaponAnim As Integer
    ShieldAnim As Integer
    
    FX As Integer
    Loops As Integer
    
End Type

'Tipos de objetos
Public Type ObjData
    Name As String 'Nombre del obj
    
    Type As eObjType 'Tipo enum que determina cuales son las caract del obj
    
    GrhIndex As Integer 'Indice del grafico que representa el obj
    GrhSecundario As Integer
    
    'Solo contenedores
    MaxItems As Integer
    Conte As UserInventario
    Apu�ala As Byte
    Acuchilla As Byte
    
    SpellIndex As Integer
    
    ForoID As String
    
    MinHP As Integer 'Minimo puntos de vida
    MaxHP As Integer 'Maximo puntos de vida
    
    MineralIndex As Integer
    LingoteInex As Integer

    Proyectil As Boolean
    Municion As Boolean
    
    Crucial As Byte
    Principiante As Byte
    
    'Puntos de Stamina que da
    MinSta As Integer 'Minimo puntos de stamina
    
    'Pociones
    TipoPocion As Byte
    MaxModificador As Integer
    MinModificador As Integer
    DuracionEfecto As Long
    MinSkill As Integer
    LingoteIndex As Integer
    
    MinHit As Integer 'Minimo golpe
    MaxHit As Integer 'Maximo golpe
    
    MinHam As Integer
    MinSed As Integer
    
    MinDef As Byte 'Armaduras
    MaxDef As Byte 'Armaduras
    
    BodyAnim As Integer 'Indice del grafico del BodyAnim

    HeadAnim As Integer

    WeaponAnim As Integer
    WeaponRazaEnanaAnim As Integer
    ShieldAnim As Integer
    
    Valor As Long     'Precio
    
    Cerrada As Boolean
    Llave As Byte
    clave As Long 'si clave=llave la puerta se abre o cierra
    
    Radio As Integer 'Para teleps: El radio para calcular el random de la pos destino
    
    Guante As Byte 'Indica si es un guante o no.
    
    IndexAbierta As Integer
    IndexCerrada As Integer
    IndexCerradaLlave As Integer
    
    RazaEnana As Byte
    RazaDrow As Byte
    RazaElfa As Byte
    RazaGnoma As Byte
    RazaHumana As Byte
    
    Mujer As Byte
    Hombre As Byte
    
    Envenena As Byte
    Paraliza As Byte
    
    Agarrable As Boolean
    
    LingH As Integer
    LingO As Integer
    LingP As Integer
    Madera As Integer
    MaderaElfica As Integer
    
    SkHerreria As Integer
    SkCarpinteria As Integer
    
    texto As String
    
    'Clases que no tienen permitido usar este obj
    ClaseProhibida(1 To NUMCLASES) As eClass
    
    Snd1 As Integer
    Snd2 As Integer
    Snd3 As Integer
    
    Guild As Integer
    
    NoSeCae As Integer
    
    StaffPower As Integer
    StaffDamageBonus As Integer
    MaxDefM As Integer
    MinDefM As Integer
    Refuerzo As Byte
    
    Log As Byte
    NoLog As Byte
    
    Upgrade As Integer
    
    DesdeMap As Integer
    HastaMap As Integer
    HastaY As Byte
    HastaX As Byte
    NecesitasSkill As Byte
    CantidadSkill As Byte
    
    NumFilas As Byte
    NumColumnas As Byte
End Type

Public Type Obj
    index As Integer
    Amount As Long
End Type

Public Type ModClase
    Evasion As Double
    AtaqueArmas As Double
    AtaqueProyectiles As Double
    AtaqueWrestling As Double
    DanioArmas As Double
    DanioProyectiles As Double
    DanioWrestling As Double
    Escudo As Double
End Type

Public Type ModRaza
    Fuerza As Single
    Agilidad As Single
    Inteligencia As Single
    Carisma As Single
    Constitucion As Single
End Type

'******* T I P O S   D E    U S U A R I O S **************

'Estadisticas de los usuarios
Public Type UserStats
    Muerto As Boolean
    Gld As Long 'Dinero
    BankGld As Long
    
    MaxHP As Integer
    MinHP As Integer
    
    MaxSta As Integer
    MinSta As Integer
    MaxMan As Integer
    MinMan As Integer
    MaxHit As Byte
    MinHit As Byte
    
    MinHam As Byte
    MinSed As Byte
        
    Def As Integer
    Exp As Double
    Elv As Byte
    Elu As Long
    Atributos(1 To NUMATRIBUTOS) As Byte
    AtributosBackUP(1 To NUMATRIBUTOS) As Byte
    Matados As Long
    MatadosSinMorir As Long
    Muertes As Long
    NpcMatados As Long
End Type

'Flags
Public Type UserFlags
    Password As String
    Comerciando As Boolean
    Logged As Boolean
    Meditando As Boolean
    TimerLanzarSpell As Long
    PuedeTrabajar As Byte
    Envenenado As Byte
    Paralizado As Byte
    Inmovilizado As Byte
    Estupidez As Byte
    Ceguera As Byte
    Invisible As Byte
    Maldicion As Byte
    Bendicion As Byte
    Oculto As Byte
    Desnudo As Boolean
    Descansando As Boolean
    Hechizo As Integer
    TomoPocion As Boolean
    TipoPocion As Byte
    
    NoPuedeSerAtacado As Boolean
    AtacablePor As Integer
    
    Navegando As Boolean
    Seguro As Boolean
    SeguroResu As Boolean
    
    DuracionEfecto As Long
    TargetNpc As Integer 'Npc se�alado por el usuario
    TargetNpcTipo As eNpcType 'Tipo del npc se�alado
    OwnedNpc As Integer 'Npc que le pertenece (no puede ser atacado)
    NpcInv As Integer
    
    Ban As Byte
    AdministrativeBan As Byte
    
    SelectedChar As Integer 'Mascota seleccionada
    
    TargetUser As Integer 'Usuario se�alado
    
    TargetObjIndex As Integer 'Obj se�alado
    TargetObjMap As Integer
    TargetObjX As Integer
    TargetObjY As Integer
    
    TargetMap As Integer
    TargetX As Integer
    TargetY As Integer
    
    TargetObjInvIndex As Integer
    TargetObjInvSlot As Byte
    
    AtacadoPorNpc As Integer
    AtacadoPorUser As Integer
    NpcAtacado As Integer
    
    Ignorado As Boolean
    
    EnConsulta As Boolean
    
    StatsChanged As Byte
    Privilegios As PlayerType
        
    UltimoMatado As String
    
    OldBody As Integer
    OldHead As Integer
    AdminInvisible As Byte
    AdminPerseguible As Boolean
    
    ChatColor As Long
    
    TimesWalk As Long
    StartWalk As Long
    CountSH As Long
    
    UltimoMensaje As Byte
    
    Mimetizado As Boolean
    
    CentinelaIndex As Byte ' Indice del centinela que lo revisa
    CentinelaOK As Boolean
End Type

Public Type UserCounters
    IdleCount As Long
    AttackCounter As Integer
    HPCounter As Integer
    STACounter As Integer
    Frio As Integer
    Lava As Integer
    COMCounter As Integer
    AGUACounter As Integer
    Veneno As Integer
    Paralisis As Integer
    Ceguera As Integer
    Estupidez As Integer
    
    Invisibilidad As Integer
    TiempoOculto As Integer
    
    Mimetismo As Integer
    PiqueteC As Long
    Pena As Long
    Silencio As Long
    SendMapCounter As WorldPos
    Saliendo As Boolean
    Salir As Byte
    Respawn As Byte
    EnPlataforma As Byte
    
    tInicioMeditar As Long
    bPuedeMeditar As Boolean

    TimerLanzarSpell As Long
    TimerPuedeAtacar As Long
    TimerPuedeUsarArco As Long
    TimerPuedeTrabajar As Long
    TimerUsar As Long
    TimerMagiaGolpe As Long
    TimerGolpeMagia As Long
    TimerGolpeUsar As Long
    TimerPuedeSerAtacado As Long
    TimerPerteneceNpc As Long
    
    
    Trabajando As Long  'Para el centinela
    Ocultando As Long   'Unico trabajo no revisado por el centinela
    
    failedUsageAttempts As Long
End Type

Public Type tCrafting
    Cantidad As Long
    PorCiclo As Integer
End Type

'Tipo de los Usuarios
Public Type User
    Name As String
    Id As Long
        
    ShowName As Boolean 'Permite que los GMs oculten su nick con el comando /sHOWNAME
    
    Char As Char 'Define la apariencia
    CharMimetizado As Char
    OrigChar As Char
    
    Desc As String 'Descripcion
    DescRM As String
    
    Clase As eClass
    Raza As eRaza
    Genero As eGenero
    Hogar As Integer
    Email As String
        
    Inv As UserInventario
    Belt As UserCinturon
    Bank As UserBanco
    Skills As UserHabilidades
    Spells As UserHechizos
    Pets As UserMascotas
    Compas As UserCompanieros
    Plataformas As UserPlataformas
    
    Stats As UserStats
    flags As UserFlags
    
    Pos As WorldPos
    
    ConnIDValida As Boolean
    ConnID As Integer 'ID
    
    Counters As UserCounters
    
    Construir As tCrafting

    LogOnTime As Date
    UpTime As Long

    Ip As String
    Last_Ip As String
    Last_Ip2 As String
    Last_Ip3 As String
    
    ComUsu As tCOmercioUsuario
    
    Guild_Id As Integer   'puntero al array global de guilds
    EscucheGuilda As Integer
    
    PartyIndex As Integer   'Index a la party q es miembro
    PartySolicitud As Integer   'Index a la party q solicito
    
    Area As Areas
    
    'Outgoing and incoming Messages
    outgoingData As clsByteQueue
    incomingData As clsByteQueue
End Type

'**  T I P O S   D E    N P C S **************************

Public Type NpcStats
    Alineacion As Integer
    MaxHP As Long
    MinHP As Long
    MaxHit As Integer
    MinHit As Integer
    Def As Integer
    DefM As Integer
End Type

Public Type NpcCounters
    Paralisis As Integer
    TiempoExistencia As Integer
End Type

Public Type NpcFlags
    AfectaParalisis As Byte
    Domable As Integer
    Respawn As Byte
    NpcActive As Boolean '�Esta vivo?
    Follow As Boolean
    Faccion As Byte
    AtacaDoble As Byte
    LanzaSpells As Byte
    
    ExpCount As Long
    
    AguaValida As Byte
    TierraInvalida As Byte
    
    Sound As Integer
    BackUp As Byte
    RespawnOrigPos As Byte
    
    Envenenado As Byte
    Paralizado As Byte
    Inmovilizado As Byte
    Invisible As Byte
    Maldicion As Byte
    Bendicion As Byte
    
    Snd1 As Integer
    Snd2 As Integer
    Snd3 As Integer
End Type

Public Type tCriaturasEntrenador
    NpcIndex As Integer
    NpcName As String
    tmpIndex As Integer
End Type

'New type for holding the pathfinding info
Public Type NpcPathFindingInfo
    Path() As tVertice      'This array holds the path
    Target As Position      'The location where the Npc has to go
    PathLenght As Integer   'Number of steps *
    CurPos As Integer       'Current location of the npc
    
    '* By setting PathLenght to 0 we force the recalculation
    'of the path, this is very useful. For example,
    'if a Npc or a User moves over the npc's path, blocking
    'its way, the PUBLIC FUNCTION NpcLegalPos set PathLenght to 0
    'forcing the seek of a new path.
    
End Type
'New type for holding the pathfinding info

Public Const MaxNpcDrops As Byte = 5

Public Type tDrop
    index As Integer
    Amount As Long
End Type

Public Type Npc
    Name As String
    Char As Char 'Define como se vera
    Desc As String

    Type As eObjType
    Numero As Integer

    InvReSpawn As Byte

    Comercia As Byte
    TipoItems As Byte

    TargetUser As Integer
    TargetNpc As Integer
    Veneno As Byte

    Pos As WorldPos 'Posici�n
    Orig As WorldPos

    Movement As TipoAI
    Attackable As Byte
    Hostile As Byte
    PoderAtaque As Long
    PoderEvasion As Long
    
    Lvl As Byte

    GiveEXP As Long
    Drop(1 To MaxNpcDrops) As tDrop

    Stats As NpcStats
    flags As NpcFlags
    Contadores As NpcCounters
    
    Inv As NpcInventario
    CanAttack As Byte
    
    NroExpresiones As Byte
    Expresiones() As String 'le da vida ;)

    Spells As NpcHechizos
    
    '<<<<Entrenadores>>>>>
    NroCriaturas As Integer
    Criaturas() As tCriaturasEntrenador
    MaestroUser As Integer
    MaestroNpc As Integer
    Nro As Integer
    
    'New!! Needed for pathfindig
    PFINFO As NpcPathFindingInfo
    Area As Areas
    
    'Ciudad As Byte
    
    Horario As Byte
End Type

'******************** Tipos del mapa **********************

Public ListaRazas(1 To NUMRAZAS) As String
Public SkillName(1 To NumSkills) As String
Public ListaClases(1 To NUMCLASES) As String
Public ListaAtributos(1 To NUMATRIBUTOS) As String

Public RecordPoblacion As Integer

'Bordes del mapa
Public MinXBorder As Byte
Public MaxXBorder As Byte
Public MinYBorder As Byte
Public MaxYBorder As Byte

'Numero de usuarios actual
Public Poblacion As Integer
Public LastUser As Integer
Public LastChar As Integer
Public NumChars As Integer
Public LastNpc As Integer
Public numNpcs As Integer
Public NumFX As Integer
Public NumMaps As Integer
Public NumObjDatas As Integer
Public NumeroHechizos As Integer
Public AllowMultiLogins As Byte
Public IdleLimit As Integer
Public MaxPoblacion As Integer
Public HideMe As Byte
Public LastBackup As String
Public Minutos As String
Public haciendoBK As Boolean
Public PuedeCrearPersonajes As Integer
Public ServerSoloGMs As Integer

Public EnPausa As Boolean

'*****************ARRAYS PUBLICOS*************************
Public UserList() As User 'USUARIOS
Public NpcList(1 To MaxNpcs) As Npc 'Npcs
Public MapInfo() As MapInfo
Public Hechizos() As tHechizo
Public CharList(1 To MaxCHARS) As Integer
Public ObjData() As ObjData
Public FX() As FXdata
Public Spawn_List() As tCriaturasEntrenador
Public LevelSkill(1 To 50) As LevelSkill
Public ForbidenNames() As String
Public ArmasHerrero() As Integer
Public ArmadurasHerrero() As Integer
Public ObjCarpintero() As Integer
Public Parties(1 To Max_PARTIES) As clsParty
Public ModClase(1 To NUMCLASES) As ModClase
Public ModRaza(1 To NUMRAZAS) As ModRaza
Public ModVida(1 To NUMCLASES) As Double
Public DistribucionEnteraVida(1 To 5) As Integer
Public DistribucionSemienteraVida(1 To 4) As Integer

Public Newbie As WorldPos
Public Nix As WorldPos
Public Ullathorpe As WorldPos
Public Banderbill As WorldPos
Public Lindos As WorldPos
Public Arghal As WorldPos

Public Prision As WorldPos
Public Libertad As WorldPos

Public Plataforma(1 To MaxPlataformSlots) As WorldPos

Public Ayuda As New cCola
Public ConsultaPopular As New ConsultasPopulares
Public SonidosMapas As New SoundMapInfo

Public Declare Function GetTickCount Lib "kernel32" () As Long

Public Declare Function WritePrivateprofilestring Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpString As String, ByVal lpfilename As String) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nsize As Long, ByVal lpfilename As String) As Long

Public Declare Sub ZeroMemory Lib "kernel32.dll" Alias "RtlZeroMemory" (ByRef destination As Any, ByVal length As Long)

Public Enum e_ObjetosCriticos
    Manzana = 1
    Manzana2 = 2
End Enum

'ESTADO DEL TIEMPO
Public Enum EstadoTiempo
    Amanecer = 1
    Ma�ana = 2
    Mediod�a = 3
    Tarde = 4
    Anochecer = 5
    Noche = 6
End Enum

Public Tiempo As EstadoTiempo


Public Const HUMANO_H_PRIMER_CABEZA As Integer = 1
Public Const HUMANO_H_ULTIMA_CABEZA As Integer = 40 'En verdad es hasta la 51, pero como son muchas estas las dejamos no seleccionables

Public Const ELFO_H_PRIMER_CABEZA As Integer = 101
Public Const ELFO_H_ULTIMA_CABEZA As Integer = 122

Public Const DROW_H_PRIMER_CABEZA As Integer = 201
Public Const DROW_H_ULTIMA_CABEZA As Integer = 221

Public Const ENANO_H_PRIMER_CABEZA As Integer = 301
Public Const ENANO_H_ULTIMA_CABEZA As Integer = 319

Public Const GNOMO_H_PRIMER_CABEZA As Integer = 401
Public Const GNOMO_H_ULTIMA_CABEZA As Integer = 416
'**************************************************
Public Const HUMANO_M_PRIMER_CABEZA As Integer = 70
Public Const HUMANO_M_ULTIMA_CABEZA As Integer = 89

Public Const ELFO_M_PRIMER_CABEZA As Integer = 170
Public Const ELFO_M_ULTIMA_CABEZA As Integer = 188

Public Const DROW_M_PRIMER_CABEZA As Integer = 270
Public Const DROW_M_ULTIMA_CABEZA As Integer = 288

Public Const ENANO_M_PRIMER_CABEZA As Integer = 370
Public Const ENANO_M_ULTIMA_CABEZA As Integer = 384

Public Const GNOMO_M_PRIMER_CABEZA As Integer = 470
Public Const GNOMO_M_ULTIMA_CABEZA As Integer = 484


Public Const TELEP_OBJ_Index As Integer = 1012

Public Const GUANTE_HURTO As Integer = 873

Public DataSent As Long

Public DataReceived As Long

Public Administradores As clsIniManager


'Tile
Public Type MapBlock
    Blocked As Boolean
    Graphic(1 To 4) As Integer
    UserIndex As Integer
    NpcIndex As Integer
    ObjInfo As Obj
    TileExit As WorldPos
    Trigger As eTrigger
End Type

Public Type tMap
    mapData() As MapBlock
    dX As Long
    dY As Long
End Type

Public maps() As tMap

'Info del mapa
Type MapInfo
    Poblacion As Integer
    Music As String
    'Name As String
    StartPos As WorldPos
    MapVersion As Integer
    PK As Boolean
    MagiaSinEfecto As Byte
    NoEncriptarMP As Byte
    InviSinEfecto As Byte
    ResuSinEfecto As Byte
    OcultarSinEfecto As Byte
    InvocarSinEfecto As Byte
    
    RoboNpcsPermitido As Byte
    
    terreno As String
    Zona As String
    restringir As String
    BackUp As Byte
End Type


