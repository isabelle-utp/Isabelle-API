theory Context
  imports Proof
begin

typedecl "theory"

code_printing
  type_constructor "theory" \<rightharpoonup> (SML) "theory"

end