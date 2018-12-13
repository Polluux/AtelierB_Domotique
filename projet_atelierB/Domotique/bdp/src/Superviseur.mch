/* Superviseur
 * Author: 
 * Creation date: 05/12/18
 */
MACHINE
    Superviseur

SETS
    OBJETS                                      //Grand ensemble de tout les objets valides
    ; ETATS   =    { actif , inactif , invalide } //Les états possibles d'un objet
    ; TYPES   =    { mobile , immobile }        //Le type d'un objet

ABSTRACT_VARIABLES
    obj                  //L'ensemble des objets gérés par notre superviseur
    , incompatibilites   //La relation qui associe un objet avec lesquels il n'est pas compatible
    , etat               //La fonction qui à un objet associe son état
    , type               //La fonction qui à un objet associe son type
    , pos                //La fonction qui à un objet associe un couple de valeurs de position x et y
    , alarme             //La variable boolean qui définie si l'alarme est enclenchée ou non

INVARIANT
    obj <: OBJETS
    & incompatibilites : obj <-> obj
    & etat : obj --> ETATS                                         //Chaque objet possède un état
    & ( etat ~ [ { actif } ] /\ incompatibilites [ etat ~ [ { actif } ] ] = {} ) //Il ne peux pas y avoir à la fois un objet actif et un autre objet actif qui soit incompatible avec le 1er
    & ! nn . ( nn : obj => nn /: incompatibilites [ { nn } ] )     //Un objet de peut pas être incompatible avec lui même
    & type : obj --> TYPES
    & pos : type ~ [ { mobile } ] >-> ( NAT <-> NAT )              //Injection totale, tout les objets mobiles ont un couple de valeurs (x,y) et chaque couple ne peut avoir qu'un antécédent
    & alarme : BOOL
    & ( alarme = TRUE => type ~ [ { mobile } ] /\ etat ~ [ { actif } ] = {} ) //Il ne peut y avoir de robots (objets mobiles) actifs pendant l'alarme

INITIALISATION
    obj                    :=    {}
    || incompatibilites    :=    {}
    || etat                :=    {}
    || type                :=    {}
    || pos                 :=    {}
    || alarme              :=    FALSE

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
        & pos ~ [ { { xx |-> yy } } ] = {}
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
        & ( incompatibilites ~ [ { oo } ] /\ etat ~ [ { actif } ] = {} )
        & alarme = FALSE
    THEN
        etat ( oo ) := actif
    END ;

    deactivate ( oo ) =
    PRE
        oo : obj
        & etat ( oo ) = actif
    THEN
        etat ( oo ) := inactif
    END ;

    activateAlarm =
    PRE
        alarme = FALSE
    THEN
        etat := ( etat |> { invalide } \/ etat |> { inactif } \/ etat ~ [ { actif } ] * { inactif } )
        || alarme := TRUE
    END ;

    rr <-- getActifObjects =
    BEGIN
        rr := etat ~ [ { actif } ]
    END ;

    rr <-- getInvalideObjects =
    BEGIN
        rr := etat ~ [ { invalide } ]
    END
END
