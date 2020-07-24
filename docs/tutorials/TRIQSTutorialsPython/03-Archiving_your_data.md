```python
from pytriqs.plot.mpl_interface import *
%matplotlib inline
# change scale of all figures to make them bigger
import matplotlib as mpl
mpl.rcParams['savefig.dpi']=100 
```

HDF5 Archives
=============

An important issue when it comes to numerical calculations is to save data in a compact, portable and light way, which allows for easy recovery. To this end, the objects in TRIQS
are save into hdf5 archives. The interface in TRIQS allows
to recover objects directly, as they were saved. Let us first import the relevant module:


```python
from pytriqs.archive import HDFArchive
```

Writing in an archive
---------------------

We initialize a Green function and write it to file together with a number


```python
from pytriqs.gf import *
g = GfReFreq(indices=[0], window=[-2,2], name='GF')
g << SemiCircular(1.0)

with HDFArchive("my_archive.h5",'w') as A:
    A['number'] = 12
    A['GF'] = g
```

Here, `'w'` means we overwrite the archive if there was an existing one. If you want to append information to an
existing archive without destroying it, use `'a'`. An archive essentially behaves like a python dictionary, i.e. we can put any object in there

From the shell we can now see the new file and check what is in it


```python
!ls *.h5
```


```python
!h5ls my_archive.h5
```

Note: The `!` allows to run shell commands from the notebook. `h5ls` is a command that lists the entries in an archive.

Reading from an archive
-----------------------

Of course, later on we want to read from our saved archive.
We just open it again (the `'r'` flags means that we just read from the archive and
cannot modify it)


```python
with HDFArchive("my_archive.h5",'r') as B:
    # show the contents of the archive
    print B
    # reconstruct the object number from B
    print "Number = ", B['number']
    # reconstruct and plot the Green's function
    oplot(B['GF'], name = 'GF')
```
