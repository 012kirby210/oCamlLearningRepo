# oCamlLearningRepo

*Learning repo.*

**Official website**  
[https://ocaml.org/](https://ocaml.org/)

## Installation procedure
### 1.Ocaml package manager
```console
wget https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh
sh install.sh
```
### 2.Ocaml compiler
```console
opam init
eval (opam env)
opam --version
```
### 3.Install Atom
* Download the package and install it https://atom.io/
* Install the ide-ui service https://atom.io/packages/atom-ide-ui
* Install the reason-ide package which use ocaml https://atom.io/packages/ide-reason
* Install the ocaml-language package https://atom.io/packages/language-ocaml

### 4.Configure IDE
* Installation de merlin  : https://github.com/ocaml/merlin
```console
opam install merlin
opam user-setup install
```
