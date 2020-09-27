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
### 3.Ocaml packages :
* Merlin - language server -
```console
opam install merlin
```
* OCP Indent
```console
opam install ocp-indent
```
* Auto-configure edit mode for 'out-of-the-box' supported one's
```console
opam user-setup install
```

### 4.Install Atom
* Download the package and install it https://atom.io/
* Install the ocaml-merlin package https://atom.io/packages/ocaml-merlin
 * Install linter https://atom.io/packages/linter
 * Install language-ocaml syntax highlights https://atom.io/packages/language-ocaml
 * Install indent package https://atom.io/packages/ocaml-indent
