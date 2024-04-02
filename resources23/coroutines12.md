Lua 
- have cooperative multithreading. 

Threads are not swtiched automatically, but must yield to others. 
When one thread is running, every other thread <MUST WAIT> for it to finish or yield.

======================================================================


A pair yield-resume switches control from one thread to another. 
However, unlike "real" multithreading, coroutines are `non preemptive`
While a coroutine is running, it <cannot be stopped> from the outside. 
It only suspends execution when it explicitly requests so

So, in non-preemptive multithreading
- whenever any thread calls a blocking operation
- whole program blocks until the operation completes
======================================================================