# Cold Winter

What i've done in this cold winter of 2019:
Use emacs to wirte **latex**, **markdown**, **python**, **org**, and **git**.


## Emacs first

I make a summary about what I've learned about emacs up to 2020.3.30.And I push the configuration file to github `init.el`
![image](https://github.com/leishaohu/coldwinter/blob/master/pic/pic1.png)

### Recommand some packages

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


## Latex in emacs


## Python Virtual Environments: A Primer

### Using VIrtual Environments 

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
