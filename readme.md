<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Emacs First</a>
<ul>
<li><a href="#sec-1-1">1.1. Recommand Some Packages</a></li>
<li><a href="#sec-1-2">1.2. Better Edit</a></li>
</ul>
</li>
<li><a href="#sec-2">2. Latex in Emacs</a></li>
<li><a href="#sec-3">3. Markdown</a></li>
<li><a href="#sec-4">4. Python</a>
<ul>
<li><a href="#sec-4-1">4.1. Python Virtual Environment: A Primer</a>
<ul>
<li><a href="#sec-4-1-1">4.1.1. Using Virtual Environments</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-5">5. Git</a></li>
<li><a href="#sec-6">6. Org</a>
<ul>
<li><a href="#sec-6-1">6.1. shortkey for headings</a></li>
<li><a href="#sec-6-2">6.2. shortkey for chart</a></li>
</ul>
</li>
<li><a href="#sec-7">7. Hyperlinks</a></li>
<li><a href="#sec-8">8. Try Agenda</a></li>
<li><a href="#sec-9">9. Transfer to Other formats</a></li>
<li><a href="#sec-10">10. Dired mode</a></li>
</ul>
</div>
</div>

What I've done in this cold winter of 2019:

Use emacs to wirte **latex**, **markdown**, **python**, **org**, and **git**.

# Emacs First<a id="sec-1" name="sec-1"></a>

I make a summary about what I've learned about emacs up to 2020.3.30.And I push the configuration file to github \`init.el\`
![image](https://github.com/leishaohu/coldwinter/blob/master/pic/pic1.png)


## Recommand Some Packages<a id="sec-1-1" name="sec-1-1"></a>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="left" />

<col  class="left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="left">package</th>
<th scope="col" class="left">function</th>
</tr>
</thead>

<tbody>
<tr>
<td class="left">company</td>
<td class="left">automatically complete your syntax</td>
</tr>


<tr>
<td class="left">hungry delete</td>
<td class="left">press (del)key once can delete all the blank</td>
</tr>


<tr>
<td class="left">smartparens</td>
<td class="left">match your parenthesis</td>
</tr>


<tr>
<td class="left">swiper</td>
<td class="left">search word/file quickly</td>
</tr>


<tr>
<td class="left">which key</td>
<td class="left">help you remember shortkey</td>
</tr>


<tr>
<td class="left">window numbering</td>
<td class="left">number your window and help you switch</td>
</tr>


<tr>
<td class="left">magit</td>
<td class="left">you can use git quickly in emacs</td>
</tr>

* C-c C-c to execute the program.

<tr>
<td class="left">zenburn-theme</td>
<td class="left">the most popular theme now</td>
</tr>


<tr>
<td class="left">evil</td>
<td class="left">edit like vim in emacs</td>
</tr>


<tr>
<td class="left">evil-leader</td>
<td class="left">increase the shortkey with a prefix</td>
</tr>


<tr>
<td class="left">evil-surround</td>
<td class="left">change parenthesis or something arround like that quickly</td>
</tr>


<tr>
<td class="left">evil-nerd-commenter</td>
<td class="left">comment or uncomment quickly</td>
</tr>


<tr>
<td class="left">evil-escape</td>
<td class="left">change from any mode to normal mode quickly</td>
</tr>


<tr>
<td class="left">auctex</td>
<td class="left">write latex in emacs</td>
</tr>


<tr>
<td class="left">cdlatex</td>
<td class="left">very useful with so many shortkeys and help increase your proficiency greatly</td>
</tr>


<tr>
<td class="left">elpy</td>
<td class="left">python package</td>
</tr>


<tr>
<td class="left">flycheck</td>
<td class="left">help you to check and correct  your code</td>
</tr>


<tr>
<td class="left">py-autopep8</td>
<td class="left">format your python codes</td>
</tr>
</tbody>
</table>

## Better Edit<a id="sec-1-2" name="sec-1-2"></a>

With the help of evil and many packages I can edit in emacs proficiently;

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="left" />

<col  class="left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="left">key</th>
<th scope="col" class="left">function</th>
</tr>
</thead>

<tbody>
<tr>
<td class="left">hjkl</td>
<td class="left">left/down/up/right</td>
</tr>


<tr>
<td class="left">C-a;C-e</td>
<td class="left">the beginning(ending) of current part</td>
</tr>


<tr>
<td class="left">dd</td>
<td class="left">delete the current row</td>
</tr>


<tr>
<td class="left">jk(quickly)</td>
<td class="left">back to normal mode</td>
</tr>


<tr>
<td class="left">p</td>
<td class="left">in normal mode paste</td>
</tr>


<tr>
<td class="left">y</td>
<td class="left">copy what you've chosen</td>
</tr>


<tr>
<td class="left">y,s,w+(</td>
<td class="left">add () surround a word</td>
</tr>


<tr>
<td class="left">c,s,+( {</td>
<td class="left">change the () surround to {}</td>
</tr>


<tr>
<td class="left">d,s,+{</td>
<td class="left">delete the surround {}</td>
</tr>


<tr>
<td class="left">C+s</td>
<td class="left">search the item you want and jump there</td>
</tr>


<tr>
<td class="left">S(uper)+1,2,3</td>
<td class="left">switch to window 1,2,3</td>
</tr>


<tr>
<td class="left">i,a,o,O</td>
<td class="left">insert,append,open in the next line;up line</td>
</tr>
</tbody>
</table>

# Latex in Emacs<a id="sec-2" name="sec-2"></a>

First time I used latex was recommanded by my best friend of USTC. At that time the VScode was the editor I used. It was good, but since I used the emacs and the package of cdlatex, my proficiency is improved greatly.You just need to type few words and type <tab>, it will complete a environment for you.And in math, type \` and there is a list of all kinds special words you need and you can even add some new keybands into it.Type ' and there will be a list of different kinds of fonts.

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

and so on.You just need to type 'C-c ?' to see all the shortkey bindings. 

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="left" />

<col  class="left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="left">shortkey</th>
<th scope="col" class="left">function</th>
</tr>
</thead>

<tbody>
<tr>
<td class="left">C-c C-c</td>
<td class="left">choose which way to edit the code such as xelatex</td>
</tr>


<tr>
<td class="left">C-c C-a</td>
<td class="left">edit and show the pdf file</td>
</tr>


<tr>
<td class="left">cdlatex-math-list</td>
<td class="left">add new shortkey for some special synbol</td>
</tr>


<tr>
<td class="left">M-x shell</td>
<td class="left">use terminal in emacs</td>
</tr>
</tbody>
</table>

keybands|function
--|--
C-c *|choose the section
C-c .|choose the environment
C-c C-r|compile current region
C-c ;|comment or uncomment

# Markdown<a id="sec-3" name="sec-3"></a>

This readme is wirtten in markdown which is a easy and useful compile language. I want to summarize the usual commands for markdown in emacs.

-   C-c C-s for all kinds of fonts or title hierarchy.
-   C-c C-c for preview or export for many kinds of file.
-   C-M-a move to the former title
-   C-M-e move to the next title

As for pictures and url I use little and don't talk too much.

# Python<a id="sec-4" name="sec-4"></a>

## Python Virtual Environment: A Primer<a id="sec-4-1" name="sec-4-1"></a>

### Using Virtual Environments<a id="sec-4-1-1" name="sec-4-1-1"></a>

Start by making a new directory to work with:

    shell
    $mkdir python-virtual-environments && cd python-virtual-environments

Create a new virtual environment inside the directory:

    shell
    #python 2:
    $ virtualenv env
    
    #Python 3
    $python3 -m venv env

In the above example, this command creates a directory called env, which contains a directory structure similar to this:

# Git<a id="sec-5" name="sec-5"></a>

Using the package magit, all of the commands can be complished easily and efficiently.

-   C-x g will execute the git status (different people have different keybindings)
-   s stage the file (like add in git)
-   c commit and choose the items you want and press c again to commit
-   add the comment you want to commit C-c C-c finish the commit
-   P to push what you've done to github
-   g refresh the magit
-   b for all branch operation

![image](https://github.com/leishaohu/coldwinter/blob/master/pic/pic2.png)

# Org<a id="sec-6" name="sec-6"></a>

Org is just like markdown but better than markdown I think:

## shortkey for headings<a id="sec-6-1" name="sec-6-1"></a>

-   C-c C-j jump to the title you want
-   S-TAB unfold all title (S- is the shift key)
-   M-left/right increase/decrease the title grade
-   M-S-left/rigt increase/decrease the title and all subtitles grade

## shortkey for chart<a id="sec-6-2" name="sec-6-2"></a>

C-c | create a chart quickly

# Hyperlinks<a id="sec-7" name="sec-7"></a>

[baidu](<http:www.baidu.com>)
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

# Try Agenda<a id="sec-8" name="sec-8"></a>

-   C-c C-t change to todo
-   C-c a for agenda

# Transfer to Other formats<a id="sec-9" name="sec-9"></a>

C-c C-e transfer

# Dired mode<a id="sec-10" name="sec-10"></a>

keybindings|function
--|--
C-x d|for dired mode
n,p,^|next,previous,upper content
g|refresh the content
d|mark as delete
u|unmark
+|creat a son content
D|delete 
R|rename
O|change owner
T|change time
G|change group
	
