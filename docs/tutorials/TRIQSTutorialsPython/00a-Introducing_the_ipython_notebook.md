Introducing python and the ipython notebook
===========================================

Even if many tools of TRIQS are coded in C++, they usually have a user interface written in
python. This means that everything is controlled by python scripts, pre- and post-processing of
the data, choice of DMFT scheme, plotting, etc. We chose to use python because it is a very
simple and intuitive language. Being an interpreted language, there is never a need to recompile
code if you decide to change variables, add some extra pieces of data analysis, etc.

Python can be used either in interactive or in script mode.

Script mode
-----------

In script mode, you edit a file (with an extension .py), say my_script.py, and run it
with python. You do this from a shell:

```>>> python my_script.py```

Interactive shell mode
----------------------

From a shell, you can also directly type

```>>> ipython```

This will bring you in interactive mode. You can type commands one after the other
and they are executed on the fly.

The ipython notebook
--------------------

This is what you are looking at right now. It is also an interactive mode, with all your
commands appearing in a "mathematica"-like notebook. The advantage, as we will see,
is that the result of commands, even plots, directly appears and stays in the notebook.

Let us start with a first simple code that we will execute in the notebook. To do
so, click on the input line below and execute it with Shift+Enter


```python
print "Hello world!"
```

As you can see the result of the command appears above.

*Exercise*
----------

As an exercise, run this same command

- using the script mode (edit a my_script.py file, add the print line above and execute the file from a shell)
- in interactive shell mode (you quit the interactive mode with Ctrl+d)

A very short introduction to python
====================================

The quickest way to learn python is certainly to follow the tutorial at the following link:

- http://docs.python.org/2/tutorial/

We will quickly show some examples that should be self-explanatory.


Calculating
-----------


```python
# Comments start with a #

# Setting variables and doing calculations
x = 3
y = 6.7
print 'first result: ', (x+y)/4.2

# Using complex numbers
i = 1j
print 'i^2: ', i*i
print 'complex calculation: ', (2+4j)*(4-2j)
```

Simple loops / indentation
-------------------------


```python
# Look how indentation is used in python to define code blocks
# Also note that range(5) produces numbers from 0 to 4

x = 1
for i in range(5):
    x = x + i
    print "i = ", i
    print "x = ", x

print "That's it!"
```

If statements
-------------


```python
# Comparing symbols are == (equal), != (not equal), >, <, <=, >=, etc.

for i in range(0, 10, 2):
    if i == 4:
        print "i is 4"
    elif i == 6:
        print "i is 6"
    else:
        print "i is different"
```

Defining a function
-------------------


```python
# Define a new function
def fnct(x):
    y = x**2 - 5.0
    return y

print fnct(3.)
```

Importing modules
-----------------


```python
# In order to have access to new functions, you
# import them from a library. Here we import mathematical functions
# from the math library. After the import, python knows about
# cos and pi

# to import everything in module math: 
# from math import *
from math import cos,pi

print "cos(pi/2) = %.3f"%(cos(pi/2.0))
print "cos(pi) = %.3f"%(cos(pi))
```

Lists
-----


```python
# Lists are defined with []
# Note that indices start at 0 (not 1 like in Fortran)

l = [1,2,3,4]
print "The second element of l is ", l[1]

# Lists are not vectors, adding lists appends them

l2 = [5,6]
l3 = l+l2

print "l3 is ", l3
```

The numpy library
-----------------

[numpy](http://docs.scipy.org/doc/numpy/reference/) is a very important library in python. It mainly allows to manipulate
arrays (matrices and vectors) and do linear algebra with them.


```python
from numpy import array,dot

# vectors
v = array([1,1,2,3])
w = array([1,1,1,1])
print "Adding term by term: ", v+w
print "dot product: ", dot(v,w)

# matrices
A = array([[1,0],[0,1]])
B = array([[1,2],[3,4]])

print "A x B = "
print dot(A,B)
```

Defining a new class
--------------------

This is for those that already know about object-oriented languages. In python, just like C++ for example, you can define your own classes. Here's an example:


```python
# A new class
# Note that all member functions must have "self" as a first argument
class MyObject:
    
    # The constructor is called __init__
    def __init__(self, x):
        self.x = x
        
    def what_is_x(self):
        print "x is ", self.x
        
    def change_x(self, x):
        self.x = x
        
A = MyObject(10)
A.what_is_x()
A.change_x(12)
A.what_is_x()
```


Getting help
------------

When you put a question mark after a command and type Ctrl-Enter it gives the help. If you type
the parenthesis and then press Tab it will tell you what arguments are expected.


```python
array?
```
