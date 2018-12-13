Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Superviseur))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Superviseur))==(Machine(Superviseur));
  Level(Machine(Superviseur))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Superviseur)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Superviseur))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Superviseur))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Superviseur))==(?);
  List_Includes(Machine(Superviseur))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Superviseur))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Superviseur))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Superviseur))==(?);
  Context_List_Variables(Machine(Superviseur))==(?);
  Abstract_List_Variables(Machine(Superviseur))==(?);
  Local_List_Variables(Machine(Superviseur))==(alarme,pos,type,etat,incompatibilites,obj);
  List_Variables(Machine(Superviseur))==(alarme,pos,type,etat,incompatibilites,obj);
  External_List_Variables(Machine(Superviseur))==(alarme,pos,type,etat,incompatibilites,obj)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Superviseur))==(?);
  Abstract_List_VisibleVariables(Machine(Superviseur))==(?);
  External_List_VisibleVariables(Machine(Superviseur))==(?);
  Expanded_List_VisibleVariables(Machine(Superviseur))==(?);
  List_VisibleVariables(Machine(Superviseur))==(?);
  Internal_List_VisibleVariables(Machine(Superviseur))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Superviseur))==(btrue);
  Gluing_List_Invariant(Machine(Superviseur))==(btrue);
  Expanded_List_Invariant(Machine(Superviseur))==(btrue);
  Abstract_List_Invariant(Machine(Superviseur))==(btrue);
  Context_List_Invariant(Machine(Superviseur))==(btrue);
  List_Invariant(Machine(Superviseur))==(obj <: OBJETS & incompatibilites: obj <-> obj & etat: obj --> ETATS & etat~[{actif}]/\incompatibilites[etat~[{actif}]] = {} & !nn.(nn: obj => nn/:incompatibilites[{nn}]) & type: obj --> TYPES & pos: type~[{mobile}] >-> (NAT <-> NAT) & alarme: BOOL & (alarme = TRUE => type~[{mobile}]/\etat~[{actif}] = {}))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Superviseur))==(btrue);
  Abstract_List_Assertions(Machine(Superviseur))==(btrue);
  Context_List_Assertions(Machine(Superviseur))==(btrue);
  List_Assertions(Machine(Superviseur))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Superviseur))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Superviseur))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Superviseur))==(obj,incompatibilites,etat,type,pos,alarme:={},{},{},{},{},FALSE);
  Context_List_Initialisation(Machine(Superviseur))==(skip);
  List_Initialisation(Machine(Superviseur))==(obj:={} || incompatibilites:={} || etat:={} || type:={} || pos:={} || alarme:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Superviseur))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Superviseur))==(btrue);
  List_Constraints(Machine(Superviseur))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Superviseur))==(addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects);
  List_Operations(Machine(Superviseur))==(addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects)
END
&
THEORY ListInputX IS
  List_Input(Machine(Superviseur),addObjetImmobile)==(oo);
  List_Input(Machine(Superviseur),addObjetMobile)==(oo,xx,yy);
  List_Input(Machine(Superviseur),activate)==(oo);
  List_Input(Machine(Superviseur),deactivate)==(oo);
  List_Input(Machine(Superviseur),activateAlarm)==(?);
  List_Input(Machine(Superviseur),getActifObjects)==(?);
  List_Input(Machine(Superviseur),getInvalideObjects)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Superviseur),addObjetImmobile)==(?);
  List_Output(Machine(Superviseur),addObjetMobile)==(?);
  List_Output(Machine(Superviseur),activate)==(?);
  List_Output(Machine(Superviseur),deactivate)==(?);
  List_Output(Machine(Superviseur),activateAlarm)==(?);
  List_Output(Machine(Superviseur),getActifObjects)==(rr);
  List_Output(Machine(Superviseur),getInvalideObjects)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Superviseur),addObjetImmobile)==(addObjetImmobile(oo));
  List_Header(Machine(Superviseur),addObjetMobile)==(addObjetMobile(oo,xx,yy));
  List_Header(Machine(Superviseur),activate)==(activate(oo));
  List_Header(Machine(Superviseur),deactivate)==(deactivate(oo));
  List_Header(Machine(Superviseur),activateAlarm)==(activateAlarm);
  List_Header(Machine(Superviseur),getActifObjects)==(rr <-- getActifObjects);
  List_Header(Machine(Superviseur),getInvalideObjects)==(rr <-- getInvalideObjects)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Superviseur),addObjetImmobile)==(oo: OBJETS & oo/:obj);
  List_Precondition(Machine(Superviseur),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {});
  List_Precondition(Machine(Superviseur),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE);
  List_Precondition(Machine(Superviseur),deactivate)==(oo: obj & etat(oo) = actif);
  List_Precondition(Machine(Superviseur),activateAlarm)==(alarme = FALSE);
  List_Precondition(Machine(Superviseur),getActifObjects)==(btrue);
  List_Precondition(Machine(Superviseur),getInvalideObjects)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Superviseur),getInvalideObjects)==(btrue | rr:=etat~[{invalide}]);
  Expanded_List_Substitution(Machine(Superviseur),getActifObjects)==(btrue | rr:=etat~[{actif}]);
  Expanded_List_Substitution(Machine(Superviseur),activateAlarm)==(alarme = FALSE | etat,alarme:=etat|>{invalide}\/etat|>{inactif}\/etat~[{actif}]*{inactif},TRUE);
  Expanded_List_Substitution(Machine(Superviseur),deactivate)==(oo: obj & etat(oo) = actif | etat:=etat<+{oo|->inactif});
  Expanded_List_Substitution(Machine(Superviseur),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE | etat:=etat<+{oo|->actif});
  Expanded_List_Substitution(Machine(Superviseur),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} | obj,etat,type,pos:=obj\/{oo},etat\/{oo|->inactif},type\/{oo|->mobile},pos\/{oo|->{xx|->yy}});
  Expanded_List_Substitution(Machine(Superviseur),addObjetImmobile)==(oo: OBJETS & oo/:obj | obj,etat,type:=obj\/{oo},etat\/{oo|->inactif},type\/{oo|->immobile});
  List_Substitution(Machine(Superviseur),addObjetImmobile)==(obj:=obj\/{oo} || etat:=etat\/{oo|->inactif} || type:=type\/{oo|->immobile});
  List_Substitution(Machine(Superviseur),addObjetMobile)==(obj:=obj\/{oo} || etat:=etat\/{oo|->inactif} || type:=type\/{oo|->mobile} || pos:=pos\/{oo|->{xx|->yy}});
  List_Substitution(Machine(Superviseur),activate)==(etat(oo):=actif);
  List_Substitution(Machine(Superviseur),deactivate)==(etat(oo):=inactif);
  List_Substitution(Machine(Superviseur),activateAlarm)==(etat:=etat|>{invalide}\/etat|>{inactif}\/etat~[{actif}]*{inactif} || alarme:=TRUE);
  List_Substitution(Machine(Superviseur),getActifObjects)==(rr:=etat~[{actif}]);
  List_Substitution(Machine(Superviseur),getInvalideObjects)==(rr:=etat~[{invalide}])
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Superviseur))==(?);
  Inherited_List_Constants(Machine(Superviseur))==(?);
  List_Constants(Machine(Superviseur))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Superviseur),OBJETS)==(?);
  Context_List_Enumerated(Machine(Superviseur))==(?);
  Context_List_Defered(Machine(Superviseur))==(?);
  Context_List_Sets(Machine(Superviseur))==(?);
  List_Valuable_Sets(Machine(Superviseur))==(OBJETS);
  Inherited_List_Enumerated(Machine(Superviseur))==(?);
  Inherited_List_Defered(Machine(Superviseur))==(?);
  Inherited_List_Sets(Machine(Superviseur))==(?);
  List_Enumerated(Machine(Superviseur))==(ETATS,TYPES);
  List_Defered(Machine(Superviseur))==(OBJETS);
  List_Sets(Machine(Superviseur))==(OBJETS,ETATS,TYPES);
  Set_Definition(Machine(Superviseur),ETATS)==({actif,inactif,invalide});
  Set_Definition(Machine(Superviseur),TYPES)==({mobile,immobile})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Superviseur))==(?);
  Expanded_List_HiddenConstants(Machine(Superviseur))==(?);
  List_HiddenConstants(Machine(Superviseur))==(?);
  External_List_HiddenConstants(Machine(Superviseur))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Superviseur))==(btrue);
  Context_List_Properties(Machine(Superviseur))==(btrue);
  Inherited_List_Properties(Machine(Superviseur))==(btrue);
  List_Properties(Machine(Superviseur))==(OBJETS: FIN(INTEGER) & not(OBJETS = {}) & ETATS: FIN(INTEGER) & not(ETATS = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Superviseur),addObjetImmobile)==(?);
  List_ANY_Var(Machine(Superviseur),addObjetMobile)==(?);
  List_ANY_Var(Machine(Superviseur),activate)==(?);
  List_ANY_Var(Machine(Superviseur),deactivate)==(?);
  List_ANY_Var(Machine(Superviseur),activateAlarm)==(?);
  List_ANY_Var(Machine(Superviseur),getActifObjects)==(?);
  List_ANY_Var(Machine(Superviseur),getInvalideObjects)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Superviseur)) == (OBJETS,ETATS,TYPES,actif,inactif,invalide,mobile,immobile | ? | alarme,pos,type,etat,incompatibilites,obj | ? | addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects | ? | ? | ? | Superviseur);
  List_Of_HiddenCst_Ids(Machine(Superviseur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Superviseur)) == (?);
  List_Of_VisibleVar_Ids(Machine(Superviseur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Superviseur)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Superviseur)) == (Type(OBJETS) == Cst(SetOf(atype(OBJETS,"[OBJETS","]OBJETS")));Type(ETATS) == Cst(SetOf(etype(ETATS,0,2)));Type(TYPES) == Cst(SetOf(etype(TYPES,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Superviseur)) == (Type(actif) == Cst(etype(ETATS,0,2));Type(inactif) == Cst(etype(ETATS,0,2));Type(invalide) == Cst(etype(ETATS,0,2));Type(mobile) == Cst(etype(TYPES,0,1));Type(immobile) == Cst(etype(TYPES,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Superviseur)) == (Type(alarme) == Mvl(btype(BOOL,?,?));Type(pos) == Mvl(SetOf(atype(OBJETS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(type) == Mvl(SetOf(atype(OBJETS,?,?)*etype(TYPES,0,1)));Type(etat) == Mvl(SetOf(atype(OBJETS,?,?)*etype(ETATS,0,2)));Type(incompatibilites) == Mvl(SetOf(atype(OBJETS,?,?)*atype(OBJETS,?,?)));Type(obj) == Mvl(SetOf(atype(OBJETS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Superviseur)) == (Type(getInvalideObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(getActifObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(activateAlarm) == Cst(No_type,No_type);Type(deactivate) == Cst(No_type,atype(OBJETS,?,?));Type(activate) == Cst(No_type,atype(OBJETS,?,?));Type(addObjetMobile) == Cst(No_type,atype(OBJETS,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(addObjetImmobile) == Cst(No_type,atype(OBJETS,?,?)));
  Observers(Machine(Superviseur)) == (Type(getInvalideObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(getActifObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
