Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Superviseur_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Superviseur_r))==(Machine(Superviseur));
  Level(Refinement(Superviseur_r))==(1);
  Upper_Level(Refinement(Superviseur_r))==(Machine(Superviseur))
END
&
THEORY LoadedStructureX IS
  Refinement(Superviseur_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Superviseur_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Superviseur_r))==(?);
  List_Includes(Refinement(Superviseur_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Superviseur_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Superviseur_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Superviseur_r))==(?);
  Context_List_Variables(Refinement(Superviseur_r))==(?);
  Abstract_List_Variables(Refinement(Superviseur_r))==(alarme,pos,type,etat,incompatibilites,obj);
  Local_List_Variables(Refinement(Superviseur_r))==(alarme,pos,type,etat,incompatibilites,obj);
  List_Variables(Refinement(Superviseur_r))==(alarme,pos,type,etat,incompatibilites,obj);
  External_List_Variables(Refinement(Superviseur_r))==(alarme,pos,type,etat,incompatibilites,obj)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Superviseur_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Superviseur_r))==(?);
  External_List_VisibleVariables(Refinement(Superviseur_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Superviseur_r))==(?);
  List_VisibleVariables(Refinement(Superviseur_r))==(?);
  Internal_List_VisibleVariables(Refinement(Superviseur_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Superviseur_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Superviseur_r))==(btrue);
  Expanded_List_Invariant(Refinement(Superviseur_r))==(btrue);
  Abstract_List_Invariant(Refinement(Superviseur_r))==(obj <: OBJETS & incompatibilites: obj <-> obj & etat: obj --> ETATS & etat~[{actif}]/\incompatibilites[etat~[{actif}]] = {} & !nn.(nn: obj => nn/:incompatibilites[{nn}]) & type: obj --> TYPES & pos: type~[{mobile}] >-> (NAT <-> NAT) & alarme: BOOL & (alarme = TRUE => type~[{mobile}]/\etat~[{actif}] = {}));
  Context_List_Invariant(Refinement(Superviseur_r))==(btrue);
  List_Invariant(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Superviseur_r))==(btrue);
  Abstract_List_Assertions(Refinement(Superviseur_r))==(btrue);
  Context_List_Assertions(Refinement(Superviseur_r))==(btrue);
  List_Assertions(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Superviseur_r))==(obj,incompatibilites,etat,type,pos,alarme:={},{},{},{},{},FALSE);
  Context_List_Initialisation(Refinement(Superviseur_r))==(skip);
  List_Initialisation(Refinement(Superviseur_r))==(obj:={} || incompatibilites:={} || etat:={} || type:={} || pos:={} || alarme:=FALSE)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Superviseur_r))==(addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects);
  List_Operations(Refinement(Superviseur_r))==(addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Superviseur_r),addObjetImmobile)==(oo);
  List_Input(Refinement(Superviseur_r),addObjetMobile)==(oo,xx,yy);
  List_Input(Refinement(Superviseur_r),activate)==(oo);
  List_Input(Refinement(Superviseur_r),deactivate)==(oo);
  List_Input(Refinement(Superviseur_r),activateAlarm)==(?);
  List_Input(Refinement(Superviseur_r),getActifObjects)==(?);
  List_Input(Refinement(Superviseur_r),getInvalideObjects)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Superviseur_r),addObjetImmobile)==(?);
  List_Output(Refinement(Superviseur_r),addObjetMobile)==(?);
  List_Output(Refinement(Superviseur_r),activate)==(?);
  List_Output(Refinement(Superviseur_r),deactivate)==(?);
  List_Output(Refinement(Superviseur_r),activateAlarm)==(?);
  List_Output(Refinement(Superviseur_r),getActifObjects)==(rr);
  List_Output(Refinement(Superviseur_r),getInvalideObjects)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Superviseur_r),addObjetImmobile)==(addObjetImmobile(oo));
  List_Header(Refinement(Superviseur_r),addObjetMobile)==(addObjetMobile(oo,xx,yy));
  List_Header(Refinement(Superviseur_r),activate)==(activate(oo));
  List_Header(Refinement(Superviseur_r),deactivate)==(deactivate(oo));
  List_Header(Refinement(Superviseur_r),activateAlarm)==(activateAlarm);
  List_Header(Refinement(Superviseur_r),getActifObjects)==(rr <-- getActifObjects);
  List_Header(Refinement(Superviseur_r),getInvalideObjects)==(rr <-- getInvalideObjects)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Superviseur_r),addObjetImmobile)==(oo: OBJETS & oo/:obj);
  List_Precondition(Refinement(Superviseur_r),addObjetImmobile)==(oo: OBJETS & oo/:obj & oo: OBJETS & oo/:obj);
  Own_Precondition(Refinement(Superviseur_r),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {});
  List_Precondition(Refinement(Superviseur_r),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} & oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {});
  Own_Precondition(Refinement(Superviseur_r),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE);
  List_Precondition(Refinement(Superviseur_r),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE & oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE);
  Own_Precondition(Refinement(Superviseur_r),deactivate)==(oo: obj & etat(oo) = actif);
  List_Precondition(Refinement(Superviseur_r),deactivate)==(oo: obj & etat(oo) = actif & oo: obj & etat(oo) = actif);
  Own_Precondition(Refinement(Superviseur_r),activateAlarm)==(alarme = FALSE);
  List_Precondition(Refinement(Superviseur_r),activateAlarm)==(alarme = FALSE & alarme = FALSE);
  Own_Precondition(Refinement(Superviseur_r),getActifObjects)==(btrue);
  List_Precondition(Refinement(Superviseur_r),getActifObjects)==(btrue);
  Own_Precondition(Refinement(Superviseur_r),getInvalideObjects)==(btrue);
  List_Precondition(Refinement(Superviseur_r),getInvalideObjects)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Superviseur_r),getInvalideObjects)==(btrue | rr:=etat~[{invalide}]);
  Expanded_List_Substitution(Refinement(Superviseur_r),getActifObjects)==(btrue | rr:=etat~[{actif}]);
  Expanded_List_Substitution(Refinement(Superviseur_r),activateAlarm)==(alarme = FALSE & alarme = FALSE | etat,alarme:=etat|>{invalide}\/etat|>{inactif}\/etat~[{actif}]*{inactif},TRUE);
  Expanded_List_Substitution(Refinement(Superviseur_r),deactivate)==(oo: obj & etat(oo) = actif & oo: obj & etat(oo) = actif | etat:=etat<+{oo|->inactif});
  Expanded_List_Substitution(Refinement(Superviseur_r),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE & oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE | etat:=etat<+{oo|->actif});
  Expanded_List_Substitution(Refinement(Superviseur_r),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} & oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} | obj,etat,type,pos:=obj\/{oo},etat\/{oo|->inactif},type\/{oo|->mobile},pos\/{oo|->{xx|->yy}});
  Expanded_List_Substitution(Refinement(Superviseur_r),addObjetImmobile)==(oo: OBJETS & oo/:obj & oo: OBJETS & oo/:obj | obj,etat,type:=obj\/{oo},etat\/{oo|->inactif},type\/{oo|->immobile});
  List_Substitution(Refinement(Superviseur_r),addObjetImmobile)==(obj:=obj\/{oo} || etat:=etat\/{oo|->inactif} || type:=type\/{oo|->immobile});
  List_Substitution(Refinement(Superviseur_r),addObjetMobile)==(obj:=obj\/{oo} || etat:=etat\/{oo|->inactif} || type:=type\/{oo|->mobile} || pos:=pos\/{oo|->{xx|->yy}});
  List_Substitution(Refinement(Superviseur_r),activate)==(etat(oo):=actif);
  List_Substitution(Refinement(Superviseur_r),deactivate)==(etat(oo):=inactif);
  List_Substitution(Refinement(Superviseur_r),activateAlarm)==(etat:=etat|>{invalide}\/etat|>{inactif}\/etat~[{actif}]*{inactif} || alarme:=TRUE);
  List_Substitution(Refinement(Superviseur_r),getActifObjects)==(rr:=etat~[{actif}]);
  List_Substitution(Refinement(Superviseur_r),getInvalideObjects)==(rr:=etat~[{invalide}])
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Superviseur_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Superviseur_r))==(btrue);
  List_Context_Constraints(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Superviseur_r))==(?);
  Inherited_List_Constants(Refinement(Superviseur_r))==(?);
  List_Constants(Refinement(Superviseur_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Superviseur_r),TYPES)==({mobile,immobile});
  Context_List_Enumerated(Refinement(Superviseur_r))==(?);
  Context_List_Defered(Refinement(Superviseur_r))==(?);
  Context_List_Sets(Refinement(Superviseur_r))==(?);
  List_Valuable_Sets(Refinement(Superviseur_r))==(OBJETS);
  Inherited_List_Enumerated(Refinement(Superviseur_r))==(ETATS,TYPES);
  Inherited_List_Defered(Refinement(Superviseur_r))==(OBJETS);
  Inherited_List_Sets(Refinement(Superviseur_r))==(OBJETS,ETATS,TYPES);
  List_Enumerated(Refinement(Superviseur_r))==(?);
  List_Defered(Refinement(Superviseur_r))==(?);
  List_Sets(Refinement(Superviseur_r))==(?);
  Set_Definition(Refinement(Superviseur_r),ETATS)==({actif,inactif,invalide});
  Set_Definition(Refinement(Superviseur_r),OBJETS)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Superviseur_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Superviseur_r))==(?);
  List_HiddenConstants(Refinement(Superviseur_r))==(?);
  External_List_HiddenConstants(Refinement(Superviseur_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Superviseur_r))==(OBJETS: FIN(INTEGER) & not(OBJETS = {}) & ETATS: FIN(INTEGER) & not(ETATS = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}));
  Context_List_Properties(Refinement(Superviseur_r))==(btrue);
  Inherited_List_Properties(Refinement(Superviseur_r))==(btrue);
  List_Properties(Refinement(Superviseur_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Superviseur_r),addObjetImmobile)==(?);
  List_ANY_Var(Refinement(Superviseur_r),addObjetMobile)==(?);
  List_ANY_Var(Refinement(Superviseur_r),activate)==(?);
  List_ANY_Var(Refinement(Superviseur_r),deactivate)==(?);
  List_ANY_Var(Refinement(Superviseur_r),activateAlarm)==(?);
  List_ANY_Var(Refinement(Superviseur_r),getActifObjects)==(?);
  List_ANY_Var(Refinement(Superviseur_r),getInvalideObjects)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Superviseur_r)) == (? | ? | alarme,pos,type,etat,incompatibilites,obj | ? | addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects | ? | ? | ? | Superviseur_r);
  List_Of_HiddenCst_Ids(Refinement(Superviseur_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Superviseur_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Superviseur_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Superviseur_r)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Superviseur_r)) == (Type(TYPES) == Cst(SetOf(etype(TYPES,0,1)));Type(ETATS) == Cst(SetOf(etype(ETATS,0,2)));Type(OBJETS) == Cst(SetOf(atype(OBJETS,"[OBJETS","]OBJETS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Superviseur_r)) == (Type(immobile) == Cst(etype(TYPES,0,1));Type(mobile) == Cst(etype(TYPES,0,1));Type(invalide) == Cst(etype(ETATS,0,2));Type(inactif) == Cst(etype(ETATS,0,2));Type(actif) == Cst(etype(ETATS,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Superviseur_r)) == (Type(alarme) == Mvl(btype(BOOL,?,?));Type(pos) == Mvl(SetOf(atype(OBJETS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(type) == Mvl(SetOf(atype(OBJETS,?,?)*etype(TYPES,0,1)));Type(etat) == Mvl(SetOf(atype(OBJETS,?,?)*etype(ETATS,0,2)));Type(incompatibilites) == Mvl(SetOf(atype(OBJETS,?,?)*atype(OBJETS,?,?)));Type(obj) == Mvl(SetOf(atype(OBJETS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Superviseur_r)) == (Type(getInvalideObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(getActifObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(activateAlarm) == Cst(No_type,No_type);Type(deactivate) == Cst(No_type,atype(OBJETS,?,?));Type(activate) == Cst(No_type,atype(OBJETS,?,?));Type(addObjetMobile) == Cst(No_type,atype(OBJETS,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(addObjetImmobile) == Cst(No_type,atype(OBJETS,?,?)))
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
