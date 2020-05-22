Table of Contents
=================

   * [Emacs First](#emacs-first)
      * [Recommand Some Packages](#recommand-some-packages)
      * [Better Edit](#better-edit)
   * [Latex in Emacs](#latex-in-emacs)
   * [Markdown](#markdown)
   * [Python](#python)
      * [Python Virtual Environments: A Primer](#python-virtual-environments-a-primer)
         * [Using Virtual Environments](#using-virtual-environments)
   * [Git](#git)
   * [Org](#org)
      * [shortkey for headings](#shortkey-for-headings)
      * [shortkey for chart](#shortkey-for-chart)
         * [subtitle](#subtitle)
            * [subsubtitle](#subsubtitle)
      * [Agenda and TODOlist](#agenda-and-todolist)
      * [Hyperlinks](#hyperlinks)
      * [Try Agenda](#try-agenda)
      * [Transfer to Other formats](#transfer-to-other-formats)
		 
		 
What I've done in this cold winter of 2019:

Use emacs to wirte **latex**, **markdown**, **python**, **org**, and **git**.


## Emacs First

I make a summary about what I've learned about emacs up to 2020.3.30.And I push the configuration file to github `init.el`
![image](https://github.com/leishaohu/coldwinter/blob/master/pic/pic1.png)

### Recommand Some Packages

| package             | function                                                                      |
|---------------------|-------------------------------------------------------------------------------|
| company             | automatically complete your syntax                                            |
| hungry delete       | press (del)key once can delete all the blank                                  |
| smartparens         | match your parenthesis                                                        |
| swiper              | search word/file quickly                                                      |
| which key           | help you remember shortkey                                                    |
| window numbering    | number your window and help you switch                                        |
| magit               | you can use git quickly in emacs                                              |
| zenburn-theme       | the most popular theme now                                                    |
| evil                | edit like vim in emacs                                                        |
| evil-leader         | increase the shortkey with a prefix                                           |
| evil-surround       | change parenthesis or something arround like that quickly                     |
| evil-nerd-commenter | comment or uncomment quickly                                                  |
| evil-escape         | change from any mode to normal mode quickly                                   |
| auctex              | write latex in emacs                                                          |
| cdlatex             | very useful with so many shortkeys and help increase your proficiency greatly |
| elpy                | python package                                                                |
| flycheck            | help you to check and correct  your code                                      |
| py-autopep8         | format your python codes                                                      |

### Better Edit

With the help of evil and many packages I can edit in emacs proficiently;

| key           | function                                    |
|---------------|---------------------------------------------|
| hjkl          | left/down/up/right                          |
| C-a;C-e       | the beginning(ending) of current part       |
| dd            | delete the current row                      |
| jk(quickly)   | back to normal mode                         |
| p             | in normal mode paste                        |
| y             | copy what you've chosen                     |
| y,s,w+(       | add () surround a word                      |
| c,s,+( {      | change the () surround to {}                |
| d,s,+{        | delete the surround {}                      |
| C+s           | search the item you want and jump there     |
| S(uper)+1,2,3 | switch to window 1,2,3                      |
| i,a,o,O       | insert,append,open in the next line;up line |


## Latex in Emacs

First time I used latex was recommanded by my best friend of USTC. At that time the VScode was the editor I used. It was good, but since I used the emacs and the package of cdlatex, my proficiency is improved greatly.You just need to type few words and type <tab>, it will complete a environment for you.And in math, type ` and there is a list of all kinds special words you need and you can even add some new keybands into it.Type ' and there will be a list of different kinds of fonts.

``` latex

>>> sn<tab> 
\section{}

>>> ss<tab>
\subsection{}

>>>fg<tab>
\begin{figure}[htbp]
\centerline{\includegraphics[]{}}
\caption[]{AUTOLABEL ?}
\end{figure}

>>>env<tab>
you will need to type a kind of environment


```
and so on.You just need to type 'C-c ?' to see all the shortkey bindings. 

| shortkey          | function                                          |
|-------------------|---------------------------------------------------|
| C-c C-c           | choose which way to edit the code such as xelatex |
| C-c C-a           | edit and show the pdf file                        |
| cdlatex-math-list | add new shortkey for some special synbol          |
| M-x shell         | use terminal in emacs                             |

## Markdown

This readme is wirtten in markdown which is a easy and useful compile language. I want to summarize the usual commands for markdown in emacs.

* C-c C-s for all kinds of fonts or title hierarchy.
* C-c C-c for preview or export for many kinds of file.
* C-M-a move to the former title
* C-M-e move to the next title

As for pictures and url I use little and don't talk too much.

## Python

* C-c C-c to execute the program.

### Python Virtual Environments: A Primer

#### Using Virtual Environments 

Start by making a new directory to work with:

	shell
	$mkdir python-virtual-environments && cd python-virtual-environments
	
	
Create a new virtual environment inside the directory:

	shell
	#python 2:
	$ virtualenv env
	
	#Python 3
	$python3 -m venv env 
	
In the above example, this command creates a directory called env, which contains a directory structure similar to this:

## Git

Using the package magit, all of the commands can be complished easily and efficiently.

* C-x g will execute the git status (different people have different keybindings)
* s stage the file (like add in git)
* c commit and choose the items you want and press c again to commit
* add the comment you want to commit C-c C-c finish the commit
* P to push what you've done to github
* g refresh the magit
* b for all branch operation

![image](https://github.com/leishaohu/coldwinter/blob/master/pic/pic2.png)

## Org ##

Org is just like markdown but better than markdown I think:

### shortkey for headings

-   C-c C-j jump to the title you want
-   S-TAB unfold all title (S- is the shift key)
-   M-left/right increase/decrease the title grade
-   M-S-left/rigt increase/decrease the title and all subtitles grade


<a id="orgc02ab1c"></a>

### shortkey for chart

C-c | create a chart quickly

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">hh</th>
<th scope="col" class="org-left">hh</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">hh</td>
<td class="org-left">hh</td>
</tr>
</tbody>
</table>

Text text text!


<a id="org92b5922"></a>

#### subtitle


<a id="orga578db1"></a>

##### subsubtitle


<a id="org3f04e3c"></a>

### Agenda and TODO List


<a id="org8614fb4"></a>

### Hyperlinks

[baidu](http:www.baidu.com)
[wechat4.md](wechat4.md)

-   C-c C-l insert links
-   C-c C-o open links

very useful!

    s    #+begin_src ... #+end_src 
    e    #+begin_example ... #+end_example  : 单行的例子以冒号开头
    q    #+begin_quote ... #+end_quote      通常用于引用，与默认格式相比左右都会留出缩进
    v    #+begin_verse ... #+end_verse      默认内容不换行，需要留出空行才能换行
    c    #+begin_center ... #+end_center 
    l    #+begin_latex ... #+end_latex 
    L    #+latex: 
    h    #+begin_html ... #+end_html 
    H    #+html: 
    a    #+begin_ascii ... #+end_ascii 
    A    #+ascii: 
    i    #+index: line 
    I    #+include: line
    write <s TAB you get the first one

> I just want try


<a id="orgf0eb956"></a>

### Try Agenda

-   C-c C-t change to todo
-   C-c a for agenda


<a id="org1d08674"></a>

### Transfer to Other formats

C-c C-e transfer

