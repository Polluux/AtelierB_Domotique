Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Superviseur_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Superviseur_i))==(Machine(Superviseur));
  Level(Implementation(Superviseur_i))==(2);
  Upper_Level(Implementation(Superviseur_i))==(Refinement(Superviseur_r))
END
&
THEORY LoadedStructureX IS
  Implementation(Superviseur_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Superviseur_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Superviseur_i))==(?);
  Inherited_List_Includes(Implementation(Superviseur_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Superviseur_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Superviseur_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Superviseur_i))==(?);
  Context_List_Variables(Implementation(Superviseur_i))==(?);
  Abstract_List_Variables(Implementation(Superviseur_i))==(alarme,pos,type,etat,incompatibilites,obj,alarme,pos,type,etat,incompatibilites,obj);
  Local_List_Variables(Implementation(Superviseur_i))==(?);
  List_Variables(Implementation(Superviseur_i))==(?);
  External_List_Variables(Implementation(Superviseur_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Superviseur_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Superviseur_i))==(?);
  External_List_VisibleVariables(Implementation(Superviseur_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Superviseur_i))==(?);
  List_VisibleVariables(Implementation(Superviseur_i))==(c_alarme,c_pos,c_type,c_etat,c_incompatibilites,c_obj);
  Internal_List_VisibleVariables(Implementation(Superviseur_i))==(c_alarme,c_pos,c_type,c_etat,c_incompatibilites,c_obj)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Superviseur_i))==(btrue);
  Expanded_List_Invariant(Implementation(Superviseur_i))==(btrue);
  Abstract_List_Invariant(Implementation(Superviseur_i))==(obj <: OBJETS & incompatibilites: obj <-> obj & etat: obj --> ETATS & etat~[{actif}]/\incompatibilites[etat~[{actif}]] = {} & !nn.(nn: obj => nn/:incompatibilites[{nn}]) & type: obj --> TYPES & pos: type~[{mobile}] >-> (NAT <-> NAT) & alarme: BOOL & (alarme = TRUE => type~[{mobile}]/\etat~[{actif}] = {}));
  Context_List_Invariant(Implementation(Superviseur_i))==(btrue);
  List_Invariant(Implementation(Superviseur_i))==(c_obj: 0..256 --> OKKO & obj = c_obj~[{ok}] & c_incompatibilites: 0..256 <-> 0..256 & incompatibilites = obj<|c_incompatibilites & c_etat: 0..256 --> ETATS & etat = obj<|c_etat & c_type: 0..256 --> TYPES & type = obj<|c_type & c_pos: 0..256 >-> (NAT <-> NAT) & pos = obj<|c_pos & c_alarme: BOOL & alarme = c_alarme)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Superviseur_i))==(btrue);
  Abstract_List_Assertions(Implementation(Superviseur_i))==(btrue);
  Context_List_Assertions(Implementation(Superviseur_i))==(btrue);
  List_Assertions(Implementation(Superviseur_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Superviseur_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Superviseur_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Superviseur_i))==(c_obj:=OBJETS*{ko};c_incompatibilites:={};c_etat:={};c_type:={};c_pos:={};c_alarme:=FALSE);
  Context_List_Initialisation(Implementation(Superviseur_i))==(skip);
  List_Initialisation(Implementation(Superviseur_i))==(c_obj:=OBJETS*{ko};c_incompatibilites:={};c_etat:={};c_type:={};c_pos:={};c_alarme:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Superviseur_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Superviseur_i))==(btrue);
  List_Context_Constraints(Implementation(Superviseur_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Superviseur_i))==(addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects);
  List_Operations(Implementation(Superviseur_i))==(addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Superviseur_i),addObjetImmobile)==(oo);
  List_Input(Implementation(Superviseur_i),addObjetMobile)==(oo,xx,yy);
  List_Input(Implementation(Superviseur_i),activate)==(oo);
  List_Input(Implementation(Superviseur_i),deactivate)==(oo);
  List_Input(Implementation(Superviseur_i),activateAlarm)==(?);
  List_Input(Implementation(Superviseur_i),getActifObjects)==(?);
  List_Input(Implementation(Superviseur_i),getInvalideObjects)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Superviseur_i),addObjetImmobile)==(?);
  List_Output(Implementation(Superviseur_i),addObjetMobile)==(?);
  List_Output(Implementation(Superviseur_i),activate)==(?);
  List_Output(Implementation(Superviseur_i),deactivate)==(?);
  List_Output(Implementation(Superviseur_i),activateAlarm)==(?);
  List_Output(Implementation(Superviseur_i),getActifObjects)==(rr);
  List_Output(Implementation(Superviseur_i),getInvalideObjects)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Superviseur_i),addObjetImmobile)==(addObjetImmobile(oo));
  List_Header(Implementation(Superviseur_i),addObjetMobile)==(addObjetMobile(oo,xx,yy));
  List_Header(Implementation(Superviseur_i),activate)==(activate(oo));
  List_Header(Implementation(Superviseur_i),deactivate)==(deactivate(oo));
  List_Header(Implementation(Superviseur_i),activateAlarm)==(activateAlarm);
  List_Header(Implementation(Superviseur_i),getActifObjects)==(rr <-- getActifObjects);
  List_Header(Implementation(Superviseur_i),getInvalideObjects)==(rr <-- getInvalideObjects)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Superviseur_i),addObjetImmobile)==(btrue);
  List_Precondition(Implementation(Superviseur_i),addObjetImmobile)==(oo: OBJETS & oo/:obj & oo: OBJETS & oo/:obj);
  Own_Precondition(Implementation(Superviseur_i),addObjetMobile)==(btrue);
  List_Precondition(Implementation(Superviseur_i),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} & oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {});
  Own_Precondition(Implementation(Superviseur_i),activate)==(btrue);
  List_Precondition(Implementation(Superviseur_i),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE & oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE);
  Own_Precondition(Implementation(Superviseur_i),deactivate)==(btrue);
  List_Precondition(Implementation(Superviseur_i),deactivate)==(oo: obj & etat(oo) = actif & oo: obj & etat(oo) = actif);
  Own_Precondition(Implementation(Superviseur_i),activateAlarm)==(btrue);
  List_Precondition(Implementation(Superviseur_i),activateAlarm)==(alarme = FALSE & alarme = FALSE);
  Own_Precondition(Implementation(Superviseur_i),getActifObjects)==(btrue);
  List_Precondition(Implementation(Superviseur_i),getActifObjects)==(btrue);
  Own_Precondition(Implementation(Superviseur_i),getInvalideObjects)==(btrue);
  List_Precondition(Implementation(Superviseur_i),getInvalideObjects)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Superviseur_i),getInvalideObjects)==(btrue | rr:=(c_obj~[{ok}]<|c_etat)~[{invalide}]);
  Expanded_List_Substitution(Implementation(Superviseur_i),getActifObjects)==(btrue | rr:=(c_obj~[{ok}]<|c_etat)~[{actif}]);
  Expanded_List_Substitution(Implementation(Superviseur_i),activateAlarm)==(alarme = FALSE & alarme = FALSE | c_etat:=c_etat|>{invalide}\/c_etat|>{inactif}\/c_etat~[{actif}]*{inactif};c_alarme:=TRUE);
  Expanded_List_Substitution(Implementation(Superviseur_i),deactivate)==(oo: obj & etat(oo) = actif & oo: obj & etat(oo) = actif & oo: dom(c_etat) | c_etat:=c_etat<+{oo|->inactif});
  Expanded_List_Substitution(Implementation(Superviseur_i),activate)==(oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE & oo: obj & etat(oo)/=actif & incompatibilites[{oo}]/\etat~[{actif}] = {} & incompatibilites~[{oo}]/\etat~[{actif}] = {} & alarme = FALSE & oo: dom(c_etat) | c_etat:=c_etat<+{oo|->actif});
  Expanded_List_Substitution(Implementation(Superviseur_i),addObjetMobile)==(oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} & oo: OBJETS & oo/:obj & xx: NAT & yy: NAT & pos~[{{xx|->yy}}] = {} | (oo: dom(c_obj) | c_obj:=c_obj<+{oo|->ok});(oo: dom(c_etat) | c_etat:=c_etat<+{oo|->inactif});(oo: dom(c_type) | c_type:=c_type<+{oo|->mobile});(oo: dom(c_pos) | c_pos:=c_pos<+{oo|->{xx|->yy}}));
  Expanded_List_Substitution(Implementation(Superviseur_i),addObjetImmobile)==(oo: OBJETS & oo/:obj & oo: OBJETS & oo/:obj | (oo: dom(c_obj) | c_obj:=c_obj<+{oo|->ok});(oo: dom(c_etat) | c_etat:=c_etat<+{oo|->inactif});(oo: dom(c_type) | c_type:=c_type<+{oo|->immobile}));
  List_Substitution(Implementation(Superviseur_i),addObjetImmobile)==(c_obj(oo):=ok;c_etat(oo):=inactif;c_type(oo):=immobile);
  List_Substitution(Implementation(Superviseur_i),addObjetMobile)==(c_obj(oo):=ok;c_etat(oo):=inactif;c_type(oo):=mobile;c_pos(oo):={xx|->yy});
  List_Substitution(Implementation(Superviseur_i),activate)==(c_etat(oo):=actif);
  List_Substitution(Implementation(Superviseur_i),deactivate)==(c_etat(oo):=inactif);
  List_Substitution(Implementation(Superviseur_i),activateAlarm)==(c_etat:=c_etat|>{invalide}\/c_etat|>{inactif}\/c_etat~[{actif}]*{inactif};c_alarme:=TRUE);
  List_Substitution(Implementation(Superviseur_i),getActifObjects)==(rr:=(c_obj~[{ok}]<|c_etat)~[{actif}]);
  List_Substitution(Implementation(Superviseur_i),getInvalideObjects)==(rr:=(c_obj~[{ok}]<|c_etat)~[{invalide}])
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Superviseur_i))==(?);
  Inherited_List_Constants(Implementation(Superviseur_i))==(?);
  List_Constants(Implementation(Superviseur_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Superviseur_i),TYPES)==({mobile,immobile});
  Context_List_Enumerated(Implementation(Superviseur_i))==(?);
  Context_List_Defered(Implementation(Superviseur_i))==(?);
  Context_List_Sets(Implementation(Superviseur_i))==(?);
  List_Own_Enumerated(Implementation(Superviseur_i))==(ETATS,TYPES,OKKO);
  List_Valuable_Sets(Implementation(Superviseur_i))==(OBJETS);
  Inherited_List_Enumerated(Implementation(Superviseur_i))==(ETATS,TYPES);
  Inherited_List_Defered(Implementation(Superviseur_i))==(OBJETS);
  Inherited_List_Sets(Implementation(Superviseur_i))==(OBJETS,ETATS,TYPES);
  List_Enumerated(Implementation(Superviseur_i))==(OKKO);
  List_Defered(Implementation(Superviseur_i))==(?);
  List_Sets(Implementation(Superviseur_i))==(OKKO);
  Set_Definition(Implementation(Superviseur_i),ETATS)==({actif,inactif,invalide});
  Set_Definition(Implementation(Superviseur_i),OBJETS)==(?);
  Set_Definition(Implementation(Superviseur_i),OKKO)==({ok,ko})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Superviseur_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Superviseur_i))==(?);
  List_HiddenConstants(Implementation(Superviseur_i))==(?);
  External_List_HiddenConstants(Implementation(Superviseur_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Superviseur_i))==(OBJETS: FIN(INTEGER) & not(OBJETS = {}) & ETATS: FIN(INTEGER) & not(ETATS = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}));
  Context_List_Properties(Implementation(Superviseur_i))==(btrue);
  Inherited_List_Properties(Implementation(Superviseur_i))==(btrue);
  List_Properties(Implementation(Superviseur_i))==(OKKO: FIN(INTEGER) & not(OKKO = {}))
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Superviseur_i))==(btrue);
  Values_Subs(Implementation(Superviseur_i))==(OBJETS: 0..256);
  List_Values(Implementation(Superviseur_i))==(OBJETS = 0..256)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Superviseur_i))==(Type(c_obj) == Mvv(SetOf(btype(INTEGER,0,256)*etype(OKKO,0,1)));Type(c_incompatibilites) == Mvv(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(c_etat) == Mvv(SetOf(btype(INTEGER,0,256)*etype(ETATS,0,2)));Type(c_type) == Mvv(SetOf(btype(INTEGER,0,256)*etype(TYPES,0,1)));Type(c_pos) == Mvv(SetOf(btype(INTEGER,0,256)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(c_alarme) == Mvv(btype(BOOL,?,?)));
  Operations(Implementation(Superviseur_i))==(Type(getInvalideObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(getActifObjects) == Cst(SetOf(atype(OBJETS,?,?)),No_type);Type(activateAlarm) == Cst(No_type,No_type);Type(deactivate) == Cst(No_type,atype(OBJETS,?,?));Type(activate) == Cst(No_type,atype(OBJETS,?,?));Type(addObjetMobile) == Cst(No_type,atype(OBJETS,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(addObjetImmobile) == Cst(No_type,atype(OBJETS,?,?)));
  Constants(Implementation(Superviseur_i))==(Type(immobile) == Cst(etype(TYPES,0,1));Type(mobile) == Cst(etype(TYPES,0,1));Type(invalide) == Cst(etype(ETATS,0,2));Type(inactif) == Cst(etype(ETATS,0,2));Type(actif) == Cst(etype(ETATS,0,2)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Superviseur_i)) == (OKKO,ok,ko | ? | ? | ? | addObjetImmobile,addObjetMobile,activate,deactivate,activateAlarm,getActifObjects,getInvalideObjects | ? | ? | ? | Superviseur_i);
  List_Of_HiddenCst_Ids(Implementation(Superviseur_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Superviseur_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Superviseur_i)) == (c_alarme,c_pos,c_type,c_etat,c_incompatibilites,c_obj | ?);
  List_Of_Ids_SeenBNU(Implementation(Superviseur_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Superviseur_i)) == (Type(OKKO) == Cst(SetOf(etype(OKKO,0,1)));Type(OBJETS) == Cst(SetOf(btype(INTEGER,"[OBJETS","]OBJETS")));Type(ETATS) == Cst(SetOf(etype(ETATS,0,2)));Type(TYPES) == Cst(SetOf(etype(TYPES,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Superviseur_i)) == (Type(ok) == Cst(etype(OKKO,0,1));Type(ko) == Cst(etype(OKKO,0,1));Type(actif) == Cst(etype(ETATS,0,2));Type(inactif) == Cst(etype(ETATS,0,2));Type(invalide) == Cst(etype(ETATS,0,2));Type(mobile) == Cst(etype(TYPES,0,1));Type(immobile) == Cst(etype(TYPES,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Superviseur_i)) == (Type(c_alarme) == Mvv(btype(BOOL,?,?));Type(c_pos) == Mvv(SetOf(btype(INTEGER,0,256)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(c_type) == Mvv(SetOf(btype(INTEGER,0,256)*etype(TYPES,0,1)));Type(c_etat) == Mvv(SetOf(btype(INTEGER,0,256)*etype(ETATS,0,2)));Type(c_incompatibilites) == Mvv(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(c_obj) == Mvv(SetOf(btype(INTEGER,0,256)*etype(OKKO,0,1))))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Superviseur_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Superviseur_i))==(c_obj: POW(INTEGER*OKKO) & c_incompatibilites: POW(INTEGER*INTEGER) & c_etat: POW(INTEGER*ETATS) & c_type: POW(INTEGER*TYPES) & c_pos: POW(INTEGER*POW(INTEGER*INTEGER)) & c_alarme: BOOL)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
