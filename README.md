# Structura proiect

- cmd - de unde va incepe programul, sau unde sta functia main
- internal - aici o sa lucreze fiecare pe modulul sau respectiv, sper ca structura e destul de ok
(astept orice feedback)

## TODO-uri:

1) nume mai bune pt packageuri ...
1) Mai adaugam lintere? daca da care
1) Trebuie cumva sa realizam un script (sh sau/si powershell/bat etc) care sa compileza aplicatia
in asa fel incat sa o construiasca pipeline-ul de la gitlab (intr-un container docker (sper) in asa
fel incat sa nu avem surprize de genul missing dependencies)
1) Daca avem timp sa scriem teste (fuzzy si unit mostly)

## TODO-uri mai neimportante:
1) Cumva cand un pipeline esueaza sa avem un output mai frumos de la gitlab si nu direct din logurile
pe care le scrie
1) sa adaugam pre commit hookuri? [ceva in genul](https://pre-commit.com/)
