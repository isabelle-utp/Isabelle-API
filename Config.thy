theory Config
  imports Proof
begin

typedecl 'a T

consts get :: "Proof.context \<Rightarrow> 'a T \<Rightarrow> 'a"

consts put :: "'a T \<Rightarrow> 'a \<Rightarrow> Proof.context \<Rightarrow> Proof.context"

hide_type (open) T

hide_const (open) put get

code_printing
  type_constructor "Config.T" \<rightharpoonup> (SML) "_ Config.T"
  | constant "Config.get" \<rightharpoonup> (SML) "Config.get"
  | constant "Config.put" \<rightharpoonup> (SML) "Config.put"

end