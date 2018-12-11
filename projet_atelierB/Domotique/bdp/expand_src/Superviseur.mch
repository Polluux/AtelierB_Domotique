/* Superviseur
 * Author: 
 * Creation date: 05/12/18
 */
MACHINE
    Superviseur

SETS
    OBJETS //Grand ensemble de tout les objets valides
    ; ETATS = { actif , inactif , invalide } //Les états possibles d'un objet
    ; TYPES = { mobile , immobile } //Le type d'un objet

ABSTRACT_VARIABLES
    obj //L'ensemble des objets gérés par notre superviseur
    , incompatibilites //La relation qui associe un objet avec lesquels il n'est pas compatible
    , etat //La fonction qui à un objet associe son état
    , type //La fonction qui à un objet associe son type
    /*,objx //La fonction qui à un objet associe une valeur de position x
    ,objy //La fonction qui à un objet associe une valeur de position y*/
    , pos //La fonction qui à un objet associe un couple de valeurs de position x et y
    , alarme //La variable boolean qui définie si l'alarme est enclenchée ou non

INVARIANT
    obj <: OBJETS
    & incompatibilites : obj <-> obj
    & etat : obj --> ETATS
    //Intersection entre les objets actifs et leurs incompatibilités est vide
    //Il ne peux pas y avoir à la fois un objet actif et un autre objet actif qui soit incompatible avec le 1er
    & ( etat ~ [ { actif } ] /\ incompatibilites [ etat ~ [ { actif } ] ] = {} )
    & type : obj --> TYPES
    //Les objets de type mobile uniquement ont une valeur en x et en y
    /*& objx : type~[{mobile}] --> NAT
    & objy : type~[{mobile}] --> NAT*/
    //Intersection de tout les couples de x,y des objets mobiles = vide
    //Il n'y a pas deux objets mobiles aux mêmes coordonnées
    //& (INTER(xx).(xx : {NAT |-> NAT} | !(yy).(yy : type~[{mobile}] ^ xx := {objx(yy) |-> objy(yy)} )) = {})
    //& (INTER(xx).(xx:type~[{mobile}] | {objx(xx) |-> objy(xx)}) = {})
    & pos : type ~ [ { mobile } ] >-> ( NAT <-> NAT )
    & alarme : BOOL
    //Si l'alarme est vrai, alors, l'intersection des objets mobiles et actifs est vide
    //Il ne peut y avoir de robots (objets mobiles) actifs pendant l'alarme
    & ( alarme = TRUE => type ~ [ { mobile } ] /\ etat ~ [ { actif } ] = {} )

INITIALISATION
    obj := {}
    || incompatibilites := {}
    || etat := {}
    || type := {}
    /*|| objx:={}
    || objy:={}*/
    || pos := {}
    || alarme := FALSE

OPERATIONS
    addObjetImmobile ( oo ) =
    PRE
        oo : OBJETS
        & oo /: obj
    THEN
        obj := obj \/ { oo }
        || etat := etat \/ { oo |-> inactif }
        || type := type \/ { oo |-> immobile }
    END ;

    addObjetMobile ( oo , xx , yy ) =
    PRE
        oo : OBJETS
        & oo /: obj
        & xx : NAT
        & yy : NAT
    THEN
        obj := obj \/ { oo }
        || etat := etat \/ { oo |-> inactif }
        || type := type \/ { oo |-> mobile }
        || pos := pos \/ { oo |-> { xx |-> yy } }
    END ;

    activate ( oo ) =
    PRE
        oo : obj
        & etat ( oo ) /= actif
        & ( incompatibilites [ { oo } ] /\ etat ~ [ { actif } ] = {} )
        & alarme = FALSE
    THEN
        etat ( oo ) := actif
    END
END
