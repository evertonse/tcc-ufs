
## Compile 

    make

## Show 
    
    make show


## vim 

    nnoremap    <F5>   :silent make -j 3<CR>

## Tips

- when correcting grammar using google docs, donwload the the document as plain text then copy and paste into and from notepad. Trying to copy directly from the site might cause trouble with especial caracters such as uppercase Â.
- cook torrance implementation https://github.com/wdas/brdf/blob/main/src/brdfs/cooktorrance.brdf


dcomp-abntex2
=========================

## Informações Gerais
Classe que adapta o pacote abntex2 para as normas do Departamento de Computação e o Programa de Pós-Graduação em Ciência da Computação da Universidade Federal de Sergipe. O abntex2 (http://www.abntex.net.br/) é uma classe que implementa as normas da ABNT para os usuários LaTex.

Estão disponiveis os seguintes arquivos para download:
- dcomp-abntex2.cls         `Pacote com as regras gerais do template`
- Graduacao.sty             `Estilo de formatação para os Trabalhos de Conclusão de Curso`
- Mestrado.sty              `Estilo de formatação para as Dissertações de Mestrado`
- Modelo-TCC-DCOMP.tex      `Modelo para os Trabalhos de Conclusão de Curso`
- Modelo-Mestrado-PROCC.tex `Modelo para as Dissertações de Mestrado`

Sugerimos escrever documentos por cima do arquivo de modelo .tex fornecido, com toda sua estrutura de pastas. Pra quem utilizar outro modelo, é preciso colocar a classe adequada:

```latex
\documentclass[
	% -- opções das classes --
    % (...)
	]{dcomp-abntex2}
```


- Fontes -> Times New Roman
- Sumário -> Tradicional, com hierarquia entre capítulos e seções
- Listas -> Ilustrações, Tabelas, Quadros e Códigos
- Capa -> Imagens do DCOMP/PROCC e UFS adicionadas
- Folha de rosto
- Ficha catalográfica
- Folha de Aprovação


## Packages Needed

* texlive
* texlive-base
* texlive-latex-base
* abntex
* texlive-fonts-recommended
* texlive-fonts-extra
* texlive-lang-portuguese
* texlive-latex-recommended
* texlive-science
* texlive-publishers
* texlive-latex-extra
* preview-latex-style
* texlive-pictures
* texlive-font-utils

## Online
  * https://www.overleaf.com/ , https://papeeria.com/ ou https://cocalc.com/doc/latex-editor.html
