### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

<<<<<<< HEAD
# ╔═╡ cdae9416-7b93-11eb-2ada-e1e63c017a3d
# How to write unit tests
using Test

=======
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╔═╡ 4f694984-7bfe-11eb-11d1-e9f1f0ed181b
html"<button onclick='present()'>present</button>"

# ╔═╡ 07421cd6-7b6a-11eb-1fe0-a77384748767
md"""
# Scientific programming workshop

<<<<<<< HEAD
Good Scientific Practises
- https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/
- https://arxiv.org/pdf/1210.0530v3.pdf

=======
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
The easiest way to learn and experiment with Julia is by starting an interactive session (also known as a read-eval-print loop or "REPL").

So fire up your terminal and type `julia` or open your Julia executable
"""

# ╔═╡ 783184c2-7b7e-11eb-1a2d-19ff7af16a74
md"""
## Variables

<<<<<<< HEAD
A variable, in Julia, is a name associated (or bound) to a value (this one with a specific type)

1. The assignment operator is ``=``

- You can assign *anything* to a variable binding, functions are [first class]( https://rosettacode.org/wiki/First-class_functions#Julia)
- The variable names can include pretty much any Unicode character.
=======
A variable, in Julia, is a name associated (or bound) to a value

##### The assignment operator is `=`

- Lax name binding: assign pretty much _anything_ to a name (functions are [first class]( https://rosettacode.org/wiki/First-class_functions#Julia))
- Variable names can include [Unicode characters](https://docs.julialang.org/en/v1/manual/unicode-input/).
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
- **All Julia operations return a value**. This includes assignment.


```julia
x = 1

# \alpha + TAB
α = 3

# \:smile_cat: + TAB
😸 = 2

😸 + α # You can `TAB` before completing the command: try \alp + TAB
```

<<<<<<< HEAD
One can also silence printing by adding `;`
=======
Silence printing in the REPL or notebooks by adding `;`
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
ħ = 6_626_070_15/1_000_000_000_000_000_000_000_000_000_000_000_000_000_000;
```

And literal numbers can multiply anything without having to put `*` inbetween, as long as the number is on the left side:
```julia
5x - 1.2e-5x
```

<<<<<<< HEAD
Everything that exists in Julia has a certain **Type**. (e.g. numbers can be integers, floats, rationals). This is extremely important and we should always be aware with which types we are working with.

To find the type of a thing in Julia you simply use `typeof(thing)`:

```julia
typeof(😸) # returns Int

typeof("thursday seminar") # returns String
```
"""

# ╔═╡ e47b0d74-7b7e-11eb-1c28-6b8764d83608
md"""
## Basic collections

Indexing a collection (like an array or a dictionary) in Julia is done with brackets: `collection[index]`. The `index` is typically an integer, although some structures can have arbitrary indices (like a dictionary), and you can define any indexing type for any collection you want.

**Julia indexing starts from 1**

### Tuples
Tuples are ordered immutable collections of elements. They are mostly used when the elements are not of the same type with each other and are intended for small collections.

Syntax: `(item1, item2, ...)`


```julia
myfavoritethings = ("mensa", "cats", π)
myfavoritethings[1] # will return "mensa"
```


### NamedTuples

These are exactly like tuples but also assign a name to each variable they contain. They rest between the `Tuple` and `Dict` type in their use.

Syntax: `(key1 = val1, key2 = val2, ...)`


```julia
nt = (x = 5, y = "str", z = 5/3)
```

These objects can be accessed with `[1]` like normal tuples, but also with the syntax `.key`:

```julia
nt[1]
nt.x
nt[:x] # will return 5
```

**Pro-tip**: You can use @unpack from `UnPack.jl` with named tuples
=======
In Julia, apart from very few speficic keywords being locked, you can pretty much redefine* predefined functions and constants, _as long as you didn't use them before_.
```julia
π = 3 # Archimedes of Syracuse is now crying

(+)(a,b) = "I refuse to add numbers"
3 + 2
```
A good way to think of this is that one is __shadowing__ the the `(+)` methods that ship with Julia's `Base` library. You can still access them by doing `Base.(+)(3,2)`.
The best, _really_, is not to redefine such holy operators as `(+)`.


##### Everything that exists in Julia has a certain **Type**.
Always be aware which are the underlying types of the variables.

To find the type of a thing in Julia, use `typeof(thing)`:

```julia
typeof(😸) # returns Int

typeof("thursday seminar") # returns String
```
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ 208cc082-7b7f-11eb-350d-01731695c4e9
md"""
<<<<<<< HEAD
### Arrays

[Read more](https://docs.julialang.org/en/v1/manual/arrays/) on Multi-dimensional arrays

The standard Julia `Array` is a mutable and ordered collection of items of the same type.
The dimensionality of the Julia array is important. A `Matrix` is an array of dimension 2. A `Vector` is an array of dimension 1. The *element type* of what an array contains is irrelevant to its dimension!

**i.e. a Vector of Vectors of Numbers and a Matrix of Numbers are two totally different things!**
=======
## Basic collections

Indexing a collection is done with brackets: `collection[index]`. The `index` is typically an integer, but the indexing type can be (re)defined for any collection.

**JULIA INDEXING STARTS FROM 1**

### Arrays

A Julia `Array` is a **mutable** and **ordered** collection of items of the same type.

The dimensionality of the Julia array is important. 
- A `Vector` is an `Array` of dimension 1
- A `Matrix` is an `Array` of dimension 2. 
The *element type* or *length* of an array is independent of its dimension.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

Syntax: `[item1, item2, ...]`

```julia
<<<<<<< HEAD
myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]
fibonacci = [1, 1, 2, 3, 5, 8, 13]
mixture = [1, 1, 2, 3, "Ted", "Robyn"]
```

As mentioned, the type of the elements of an array must be the same. Yet above we mix numbers with strings! I wasn't lying though; the above array is an **unoptimized** version that can hold **any** thing. You can see this in the "type" of the array, whicn is to the left of its dimenmsionality: `Array{TypeOfTheThings, Dimensionality}`. For `mixture` it is `Any`.

Arrays of other data structures, e.g. vectors or dictionaries, or anything, as well as multi-dimensional arrays are possible:

```julia
vec_vec_num = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]

# If you want to make a matrix, two ways are the most common: (1) specify each entry one by one
=======
myfriends = ["Karl", "Friedrich", "Vladimir", "Theodor", "Slavoj"]
years = [1818, 1820, 1870, 1903, 1949]
mixture = [1818, 1820, 1870, "Theodor", "Slavoj"]
```

The `mixture` array indeed has elements of the same type: the type `Any`: _the union of all types_. This is akin to a Python list and can't be optimised since the array can hold elements of _any_ type (hence it's internally an array of pointers).

**Vector of Vectors of Numbers and a Matrix of Numbers are two totally different things!**

```julia
vec_of_vec = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]

# To create a matrix

# (1) specify each entry one by one
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
matrix = [1 2 3; # elements in same row separated by space
          4 5 6; # semicolon means "go to next row"
          7 8 9]

<<<<<<< HEAD
R[1,2] # two dimensional indexing
```

Since arrays are mutable we can change their entries, or even add new ones
```julia
fibonacci_new = [1, 1, 2, 3, 5, 8, 13]
fibonacci_new[1] = 15

push!(fibonacci_new, 16)
fibonacci_new
```

Lastly, for multidimension arrays, the `:` symbol is useful, which means to "select all elements in this dimension".
```julia
y = rand(3,3)
y[:,1]
```
=======
# (2) create a 1D array and reshape it: Julia arrays are column major!
v = [1, 2, 3, 4, 5, 6, 7, 8, 9]
matrix = reshape(v, 3, 3)
```

The `:` symbol can be used to select all elements in some dimension.
```julia
matrix[:,1]
```

Since **arrays are mutable** their entries and size can be changed
```julia
fibonacci = [1, 1, 2, 3, 6]
fibonacci[5] = 5

push!(fibonacci, 8)
fibonacci
```

[Read more](https://docs.julialang.org/en/v1/manual/arrays/) on Multi-dimensional arrays
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ c01023c2-7b7f-11eb-2914-8d92e90752f3
md"""
### Ranges
<<<<<<< HEAD
Ranges are useful shorthand notations that define a "vector" (one dimensional array). This is done with the following syntax:
=======
A range is a sequence of of numbers, most commonly used for looping or creating equally spaced grids (the latter aka `linspace`). The syntax is

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```
start:step:end
range(start, end; length = ...)
range(start, end; step = ...)
```

```julia
r = 0:0.01:5
<<<<<<< HEAD

# Ranges are not unique to numeric data, and can be used with anything that extends their interface, e.g.
rs = 'a':'z'

collect(rs)
```

It is important to understand that ranges **do not store all elements in memory** like `Vector`s. Instead they produce the elements on the fly when necessary, and therefore are in general preferred over `Vector`s if the data is equi-spaced. 

Lastly, ranges are typically used to index into arrays. One can type `A[1:3]` to get the first 3 elements of `A`, or `A[end-2:end]` to get the last three elements of `A`. If `A` is multidimensional, the same type of indexing can be done for any dimension:

=======
```

A range is not unique to numeric data
```julia
rs = 'a':'z'
collect(rs)
```

Ranges **do not store all elements in memory** like `Array`s (unless `collect`ed). Their elements are generated on the fly.

Ranges are also used to index into arrays:
```julia
A = rand(10)
A[1:3] # gets the first 3 elements of `A`
A[end-2:end] # gets the last three elements of `A`
```

If `A` is multidimensional:
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
A = rand(4, 4)
A[1:3, 1]
```
"""

# ╔═╡ d7be066a-7c26-11eb-3938-f15fdc5c1dfd
md"""
<<<<<<< HEAD
#### Exercise: basic operations with `Array`s

- Create 2 random vectors of equal size. Add them with the `+` operator. Now multiply them with `*`. Does it work? [Why not?](https://en.wikipedia.org/wiki/Multiplication_of_vectors)

- Create a matrix of zeros (use the `zeros` function) and set its element `(1,1)` to `1.0`. Now set the first two elements of the 3rd column to `2.0`.
=======
#### Exercise: basic operations with `Array`s and `Range`s

- Create 2 random vectors (with the `rand` function) of equal size and
  - Add them with the `+` operator
  - Multiply them with `*` operator. 
  - Everything works ? [Why not?](https://en.wikipedia.org/wiki/Multiplication_of_vectors)

- Create a matrix of zeros (with the `zeros` function)
  - Get its `(1,1)` element
  - Set the first 3 elements of the 2nd column to `1.0`
"""

# ╔═╡ e47b0d74-7b7e-11eb-1c28-6b8764d83608
md"""
### Tuples
Tuples are ordered immutable collections of elements. Use them to group together related data not necessarily of of the same type.

Syntax: `(item1, item2, ...)`


```julia
myfavoritethings = ("mensa", "cats", π)
myfavoritethings[1] # returns "mensa"
```


### NamedTuples

These are exactly like tuples but also assign a name to each field they contain.

Syntax: `(key1 = val1, key2 = val2, ...)`


```julia
myfavoritethings = (place="mensa", pets="cats", number=π)
```

These objects can be accessed with `[1]` like normal tuples, with they key symbol `[:key]` and also with `.key`.

```julia
nt[1]
nt.place
nt[:place] # returns "mensa"
```

**Pro-tip**: You can use @unpack from `UnPack.jl` with named tuples!
"""

# ╔═╡ 10ce2298-8189-11eb-0a07-2bc8fdc42b7e
md"""
#### Exercise: first taste of (im)mutability with `Tuple`s

- Create a 3-tuple with a `String`, a `Number` and an `Array` fields
  - Change `Number` field to twice its value. Does it work? Why (not)?
  - Change the 1st element of the `Array` field to twice its value. Does it work? Why (not)?
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ 50103c82-7b87-11eb-397f-63f6c3e14497
md"""
## Control-flow and iteration
Iteration in Julia is high-level. This means that not only it has an intuitive and simple syntax, but also iteration works with anything that can be iterated. Iteration can also be extended (more on that later).


### `for` loops

A `for` loop iterates over a container and executes a piece of code, until the iteration has gone through all the elements of the container. The syntax for a `for` loop is

```julia
for *var* in *loop iterable*
    *loop body*
end
```

Example:
```julia
<<<<<<< HEAD
for n ∈ 1:5
=======
for n ∈ 1:5 # \in
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
    println(n)
end
```

### `while` loops

A `while` loop executes a code block until a boolean condition check (that happens at the start of the block) becomes `false`. Then the loop terminates (without executing the block again). The syntax for a standard `while` loop is

```julia
while *condition*
    *loop body*
end
```

Example:
```julia
n = 0
while n < 5
    n += 1
    println(n)
end
```
"""

# ╔═╡ 4fba05ba-7b87-11eb-2789-a9bd011721e3
md"""
### List comprehension

Comprehensions provide a general and powerful way to construct arrays. Comprehension syntax is similar to set construction notation in mathematics:

$A = [ F(x,y,...) \text{for}\, x=rx, y=ry, ... ]$

<<<<<<< HEAD
The meaning of this form is that F(x,y,...) is evaluated with the variables x, y, etc. taking on each value in their given list of values. Values can be specified as any iterable object, but will commonly be ranges like 1:n or 2:(n-1), or explicit arrays of values like [1.2, 3.4, 5.7]. The result is an N-d dense array with dimensions that are the concatenation of the dimensions of the variable ranges rx, ry, etc. and each F(x,y,...) evaluation returns a scalar.
=======
F(x,y,...) is evaluated with the variables x, y, etc. taking on each value in their given list of values. The result is an `N`-d dense array with dimensions that are the concatenation of the dimensions of the variable ranges `rx`, `ry`, etc.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
a = [sin(x) for x in range(0.0, π, length=1000)]
a = [sin(x) for x in range(-π, +π, length=1000) if x > 0]
```

### Generator Expressions

<<<<<<< HEAD
Comprehensions can also be written without the enclosing square brackets, producing an object known as a generator. This object can be iterated to produce values on demand, instead of allocating an array and storing them in advance
=======
Comprehensions can also be written without the enclosing square brackets, producing a generator. **This object can be iterated** to produce values on demand, instead of allocating an array and storing them in advance
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
a = (evaluate_expensive_function(x) for x in range(-π, π, length=1000))
```
"""

# ╔═╡ 4f8bc7f4-7b87-11eb-2df1-23bf6ed3f957
md"""

### Conditionals

Conditionals execute a specific code block depending on what is the outcome of a given boolean check. 
#### with `if`

In Julia, the syntax

```julia
if *condition 1*
    *option 1*
elseif *condition 2*
    *option 2*
else
    *option 3*
end
```

#### with ternary operators

<<<<<<< HEAD
For this last block, we could instead use the ternary operator with the syntax

=======
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
a ? b : c
```

which equates to 

```julia
if a
    b
else
    c
end
```
"""

# ╔═╡ 332d6928-7b7d-11eb-0683-e5d94f0a1df9
md"""
## Functions

A function is an object that maps a tuple of argument values to a return value.
Julia functions are not pure mathematical functions, because they can alter and be affected by the global state of the program.

The [basic syntax](https://docs.julialang.org/en/v1/manual/functions/) is

```julia
function f(x, y)
    return x + y
end
```

or, as a 1-liner
```julia
f(x,y) = x + y

f(3,4) # returns 7
```

Since a function name is just a `keyword`
```julia
g(x,y) = f(x,y)

# or, alternatively
h = f

# evals to `true`
f(3,4) == g(3,4) == h(3,4) 
```

The `+` symbol is actually a function name as well so even though it's terribly useful to use it between operands, it is actually just another function, expecting arguments delimited by parenthesis

Operators such as `+` are called _infix_ operators.

- Question: Can you name other _infix_ operators?

```julia
+(2,3) # returns 5
```

Functions in Julia support
- optional positional arguments: **always given by their order**
- keyword arguments: **always given by their keyword** (arguments defined iafter the symbol `;`)

```julia
g(x, y = 5; z = 2) = x * z * y

g(5) # give x. default y, z
g(5, 3) # give x, y. default z
g(5; z = 3) # give x, z. default y
g(2, 4; z = 1.5) # give everything
g(2, 4, 2) # keyword arguments can't be specified by position
```
"""

# ╔═╡ 4a59fe72-7b82-11eb-0b57-9b4aaa5fd028
md"""
#### Exercise: Collatz conjecture

<<<<<<< HEAD
Given a positive integer, create a function that counts the steps it takes to reach `1` following the [Collatz conjecture algorithm](https://en.wikipedia.org/wiki/Collatz_conjecture) (if $n$ is odd do $n=3n+1$ otherwise do $n=n/2$). Test it with the number 100 to get 25.

Challenge: can you do it without loops?

**Protip**: make a type-stable function by using `÷`, (`\div<TAB>`): In Julia `/` is the floating point devision operator and thus `n/m` is always a float number even if `n, m` are integers.*
=======
Given a positive integer, create a function `collatz` that counts the steps it takes to reach `1` following the [Collatz conjecture algorithm](https://en.wikipedia.org/wiki/Collatz_conjecture) (if $n$ is odd do $n=3n+1$ otherwise do $n=n/2$).

```julia
collatz(100) == 25
```

Challenge: can you do it without loops?

**Protip**: make a type-stable function by using `÷`, (`\div<TAB>`): In Julia `/` is the floating point devision operator and thus `n/m` is always a float number even if `n, m` are integers.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ 59881288-7b82-11eb-05cf-1fe54d94d2dd
#= md"""
```julia
<<<<<<< HEAD
=======
collatz(n) = isone(n) ? 0 : 1 + collatz(iseven(n) ? n ÷ 2 : 3n + 1)

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
collatz(n, count = 0) = isone(n) ? count : collatz(iseven(n) ? n ÷ 2 : 3n + 1, count+1)
```
""" =#

# ╔═╡ 9ea8eb3a-7c2e-11eb-044a-a9a5a03820c0
md"""

#### Slurping and splatting

- Slurping: `...` combines many arguments into one argument in **function definitions**

```julia
count_args(x...) = length(x) # on the rhs `x` is actually a tuple of values

count_args(3.0, 2.0, 5.0, "a") # returns 4 (... packs in defintions)
```

- Splatting: `...` splits one argument into many different arguments in **function calls**
```julia
add3(a,b,c) = a + b + c

x = (1.0, 2.0, 3.0)
add3(x...) # returns 3 (... unpacks on calls)
```
"""

# ╔═╡ 469c1da0-7c2d-11eb-24a9-adcbead74948
md"""
#### Exercise: Write a function `swap_args` that swaps the arguments

Example:
```julia
<<<<<<< HEAD
=======
swap_args() == ()
swap_args(a) == (a,)
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
swap_args(a,b) == (b,a)
swap_args(a,b,c,d) == (d,c,b,a)
```

**Pro-tip**: Cover the simple cases first
"""

# ╔═╡ 736e91fa-7c2d-11eb-2980-c7ce180d8bbd
#= md"""
```julia
swap_args() = () # base case
swap_args(a,as...) = (swap_args(as...)..., a)
```

Note that defining `swap_args(a) = a` is OK but a `swap_args()` covers all cases
""" =#

# ╔═╡ 3d084548-7b83-11eb-256b-19eb53b8ed58
md"""
### Anonymous functions

Functions can also be created anonymously, without being given a name, using either of these syntaxes

```julia
x -> x^2 + 2x - 1
```

and

```julia
function (x)
	x^2 + 2x - 1
end
```

##### So what's the difference?

<<<<<<< HEAD
As we have seen, this creates a function `f1` with 1-argument which we can address by `x`
=======
As previously seen, this creates a function named `f1` with 1-argument locally named `x`
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
f1(x) = ...
```


<<<<<<< HEAD
This assigns to the name `f2` a 1-argument function, with an argument which can address by `x`
=======
This assigns to the name `f2` a 1-argument function, with an argument locally named `x`
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
f2 = x -> undefined
```

<<<<<<< HEAD
Examples:

- We can directly call an anynoymous functions
=======
###### Examples:

- Directly call an anynoymous functions
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
(x -> x + 1)(3) # returns 4
```

<<<<<<< HEAD
- It's very useful for quick and disposable functions. Consider `sum`, which can
=======
- Incredibly useful for disposable functions. Consider `sum`, which can
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
    - sum a container `sum([1,2,3]) = 6`
    - sum a function applied to all elements of a container
```julia
add_1(x) = x + 1
sum(add_1, [1,2,3]) == sum([1+1, 2+1, 3+1]) == 9
<<<<<<< HEAD

# can be done much cleanear with an anonymous function
sum(x -> x + 1, [1,2,3]) # returns 9
=======
```

The `add_1` is simply a **partial function application**: take the `+` operator, which adds 2 values, to `+1`, acting just on 1 value
```julia
sum(x -> x + 1, [1,2,3]) == 9
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```
"""

# ╔═╡ 8af802a2-7b81-11eb-3aee-a72be06a7db5
md"""
#### Exercise: Swap arguments when calling a function

Create a function `swap` using the previously defined `swap_args` that calls any function `f` but with its arguments swapped.

Example:
```julia
swapped_f = swap(f)
swapped_f(a,b) == f(b,a) # returns `true`
```
equivalently
```julia
swap(f)(a,b) == f(b,a)		# returns `true`
swap(f)(a,b,c) == f(c,b,a)	# returns `true`
```
<<<<<<< HEAD
=======

Tip: You can also use `reverse`, which shares the same implementation as `swap_args` (you can see directly from the source code: `methods(reverse)` and look for the tuple implementation)
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ fc97a2e8-7b81-11eb-04e8-41c700b9d2ec
#= md"""
```julia
swap(g) = (x...) -> g(swap_args(x)...)
```

without anynymous functions this would be

```julia
function swap(g)
	
	function helper(args...)		
		return g(swap_args(args)...)
	end
	
	return helper
end
```
""" =#

# ╔═╡ 520e5cb2-7b87-11eb-0748-b39dbd03ca14
md"""
### Anonating types

- You can almost always ignore types
<<<<<<< HEAD
But why would you? With minimal effort they bring a lot of information, possibly speed and make your programs safer

We can annotate the types of our arguments
=======
**But why would you?** With minimal effort they bring a lot of information, possibly speed and make your programs safer

- Can annotate the types of our arguments:
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
ff(x::Int, y) = x * y

ff(3, 4) # returns 12

<<<<<<< HEAD
ff(3.0, 4) # fails
```

And we can write a convertion for the return type
=======
ff(3.0, 4) # fails (method not defined!)
```

- Can write a _convertion for the return type_
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
function gg(x::Int, y)::Int
    return x * y
end

gg(3, 4) # returns 12

gg(3, 4.1) # errors
```

<<<<<<< HEAD
This is conceptually very different from annotating the return type. Because Julia is dynamic it's not possible to guarantee the return type... The maximum we can do is to force a type convertion.
=======
**This is very different from annotating the return type**. Because Julia is dynamic it's not possible to guarantee the return type... The maximum one can do is to force a type convertion.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
However, there [may be some hope](https://github.com/yuyichao/FunctionWrappers.jl)
"""

# ╔═╡ a05faaea-7b87-11eb-0c4c-77533db92365
# Joke: It's like a condom: Better without but safer with

# ╔═╡ 2d756e8a-7b88-11eb-0641-79cb95e33aa1
md"""
### Multiple dispatch

<<<<<<< HEAD
The term multiple dispatch refers to calling the right implementation of a function based on the arguments. Note that only the positional arguments are used to look up the correct method.

This is really what is happening all the time under the hood: adding Ints is very different from adding Complex numbers, for example!

In Julia, a function may contain multiple concrete implementations (called Methods), selected via multiple dispatch, whereas functions in Python have a single implementation (no polymorphism).

=======
(this will keep popping up)

**Calling the right implementation of a function based on the arguments**. Only the positional arguments (and type) are used to look up the correct method.

Happening all the time under the hood or on paper: multiplying scalars is completely different from multiplying matrices.

In Julia a function (i.e., the same `name`) may contain multiple concrete implementations (called Methods), selected via multiple dispatch.

- Question: what about functions in OOP languages?

###### Examples of multiple dispatch:
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
my_sum(a::Int, b::Int) = a + b
my_sum(a::String, b::String) = a * " " * b # string concatenation is achieved by (*)
```

<<<<<<< HEAD
The dispatch mechanism is choosing the most specific method for the input types
=======
The dispatch mechanism chooses the most specific method for the input types
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
my_sum(2, 3) # returns 5
my_sum("Fuck", "COVID19") # returns a concatenated string
<<<<<<< HEAD

# We can check what exactly is being called with a @which macro
@which my_sum(2,3)
```
"""

# ╔═╡ 23a1f126-7cc8-11eb-0d95-7f42c64921b0
md"""
#### Exercise: Add (+) for `String`s to Julia
No functions in Julia are more special than others.

That applies to common operators as well. To add a `method` to the `(+)` operator, we have to import it from the Julia `Base` library (since it's Julia who owns `+`)
```julia
import Base: +
```
Extend `(+)` to also work with strings (e.g., `my_syum`) and `sum` an array of `String`s.

**Pro-tip**: Since we don't own neither `(+)` or `String` this is called _type piracy_ and should be avoided as it can lead to unexpected behaviour
"""

# ╔═╡ 29b15dd0-7cc9-11eb-08ad-f301320aca17
#= md"""
```julia
Base.:+(a::String, b::String) = a * " " * b

"Hello" + "my" + "friends"

sum(["Really,", "I", "meant", "it,", "fuck", "COVID19"])
```
""" =#

=======
my_sum("Yo", 10) # errors

# Check what exactly is being called with a @which macro
@which my_sum(2,3)
```

Julia has got your back in case of ambiguities
```julia
f(x, y::Int) = 1
f(x::Int, y) = 2
f(2,3) # errors
```
"""

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╔═╡ 6efa5e40-7b85-11eb-2459-9f052c340c4f
md"""
#### Exercise: Recursive `length`
Write a function that calculates the total number of elements inside nested arrays, ultimately containing numbers

Examples:
- `n_elements([1,1,1]) == 3`
- `n_elements([[1,], [1,], [1,1], [1,1]]) == 6`
- `n_elements([[], [], [1,2]]) == 2`
- `n_elements([[[2,1], [3,4]], [[1,2],]]) == 6`
- `n_elements([[1,2,[1,2]]]) == 4`

<<<<<<< HEAD
Note: Consider all arrays to have an `AbstractArray` type
=======
Consider all arrays to have an `AbstractArray` type.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

Protip: Don't oversmart yourself: start **SIMPLE** and only then move on to the edge cases
"""

# ╔═╡ 4d6378d0-7c2e-11eb-0c59-e10c86826945
#= md"""
```julia
n_elements(::Number) = 1
n_elements(a::AbstractArray) = isempty(a) ? 0 : sum(n_elements, a)
```
""" =#

<<<<<<< HEAD
=======
# ╔═╡ 23a1f126-7cc8-11eb-0d95-7f42c64921b0
md"""
#### Exercise: Add (+) for `String`s to Julia

No functions in Julia are more special than others, including operators. To add a `method` to the `(+)` operator `function`, import it from the Julia `Base` library (since it's Julia who owns `+`)
```julia
import Base: +
```
- Extend `(+)` to also work with `String`s (e.g., string concatenation with a space)
- Use `sum` to sum an array of `String`s

Note: Since we don't own neither `(+)` or `String` this is called _type piracy_ and should be avoided as it can lead to unexpected behaviour

String concatenation (without a space in between) is already implemented, with the `(*)` operator.
- What is the identity `String` under multiplication?
"""

# ╔═╡ 29b15dd0-7cc9-11eb-08ad-f301320aca17
#= md"""
```julia
Base.:+(a::String, b::String) = a * " " * b

"Hello" + "my" + "friends"

sum(["I", "have", "no", "idea", "what", "I", "am", "doing"])
```
""" =#

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╔═╡ 4acaca00-7b8a-11eb-0a46-894196ba8141
md"""
## Scoping

<<<<<<< HEAD
The [scope of a variable]((https://docs.julialang.org/en/v1/manual/variables-and-scoping/)) is the region of code within which a variable is visible. Variable scoping helps avoid variable naming conflicts. The concept is intuitive: two functions can both have arguments called x without the two x's referring to the same thing.

=======
The [scope of a variable]((https://docs.julialang.org/en/v1/manual/variables-and-scoping/)) is the region of code within which a variable is visible.

Variable scoping helps avoid variable naming conflicts. The concept is intuitive: two functions can both have arguments called `x` without the two `x`'s referring to the same thing.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

- Global scope
If a variable is in the global scope (of a module) it is visible even locally

```julia
x = 1
f() = x
f() # will return 1
```

<<<<<<< HEAD
=======
Note: [A module](https://docs.julialang.org/en/v1/manual/modules/#modules) are workspaces with their own global scope. This is useful because it allows creation of global variables without conflicts! (When you use `REPL` you are in the `Main` module (`@__MODULE__`) so you can define anything you want without having to worry about conflicts with

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
- Local scope
When you create a function / structure / are inside a loop a local scope is created

```julia
x = 1
function f()
	x = 2
	return x
end
f() # will return 2
```

<<<<<<< HEAD
**Pro-tip**: to avoid polluting the global scope consider the `let` blocks, which work like `begin` blocks but introducing local scopes

=======
### Blocks

`begin` blocks are great as well but do not introduce a local scope
```julia
y = begin
	c = 3
	3c + 2
end
c # returns 3
```

so `begin` blocks find their use in multi-line definitions, e.g.,
```julia
f = x -> begin
	c = 2
	2c + x
end
```

To avoid polluting the global scope (in your notebooks) use `let` blocks
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
x = let
	b = 1 # temporary variable
	2b + 2
end
b # will throw an error because b is not defined!
```
"""

# ╔═╡ ba8360be-7b85-11eb-19dd-a382320176dc
md"""
<<<<<<< HEAD
## Sit down kiddo, let's talk mutability

###  Passing by reference: mutating vs. non-mutating functions

Mutable entities in Julia are passed by reference

**Mutable** means that the values of your data can be changed in-place, i.e. literally in the place in memory the variable is stored in the computer.
=======
## Passing by reference: mutating vs. non-mutating functions
Sit down kiddo, let's talk mutability

**Mutable** data can be changed in-place, i.e. literally in the place in memory where the data is stored.

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
**Immutable** data cannot be changed after creation, and thus the only way to change part of immutable data is to actually make a brand new immutable object from scratch.

For example, `Vector`s are mutable
```julia
v = [5, 5, 5]
v[1] = 6 # change first entry of x
v
```

But e.g. `Tuple`s are immutable
```julia
t = (5, 5, 5)
t[1] = 6
t
```
Note that while a `Tuple` is immutable, its elements may not be!

<<<<<<< HEAD
=======
### Mutable entities in Julia are passed by reference
When passing a mutable container, e.g., an `Array`, this is always passed by reference (i.e., a reference and not a copy of the variable is passed)
```julia
f(v) = (v[1] = 99)

x = [1,2,3]
f(x)
x[1] == 9
```
**Pro-tip**: in Julia there's a _convention_ to add a `!` to the name of functions that _mutate_ their arguments: `f!(v) = (v[1] = 99)`
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

### Do Julia algebraic operators such as `+=` operate in-place?
Consider the very simple example

```julia
a = 1
b = a
a += 2
b # returns 1
```

<<<<<<< HEAD
Were you expecting this behaviour?
The problem is that sometimes we want mutability and other times we definitely do not want it.
So we have to be very precise with what operators such as `+=` mean. And in Julia **ALL** updating operators are not in-place

Of course there are ways around this, but more on that later.

So we when have an array
=======
The operation does not change the values in `a` but **REBINDS** the name `a` to the result of `a + 2a`, which of course is a new array.

Any operation such as `a+=2a` is just _syntatic sugar_ for
```julia
temp = a + 2a
a = temp
```

###### In Julia **ALL** updating operators are not in-place
(there are ways around this, but more on that later)

Note: if you are coming from Python you may have an unhealthy relationship with `+=`-like operators: they behave like the above example, but with `Numpy` they act in-place (i.e., mutate the arrays).

In Julia, with an array, the behaviour is just like as the example with a scalar,
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
a = [1,2]
b = a

a += 2a
b
```
<<<<<<< HEAD

The operation does not change the values in `a` but **REBINDS** the name `a` to the result of `a + 2a`, which of course is a new array.

So any operation such as `+=` is just _syntatic sugar_ for
```julia
temp = a + 2a
a = temp
```
=======
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ b5c6f97c-7b90-11eb-0143-191c0a29ae5f
md"""
### Meta-discussion: mutable vs immutable algorithms

<<<<<<< HEAD
Immutability doesn't really exist: we know very well from physics that something immutable is something time-independent... And there's nothing really stopping time. The very process of storing information (that is ordering bits) requires mutation.
But we can achieve immutability at least locally.

One of the main culprits of the insane amount of time needed to develop scientific code is unwanted or forgotten mutatation of variables.

So when we write scientific code it's best to start with such a pure way of coding (mutation free). As it will lead to way less unexpected behaviour. The trade-off will be speed of course, but that's something we can deal with later

Here are some tips to minimise this time

- Use pure functions (Thus a pure function is a computational analogue of a mathematical function):
    - Its return value is the same for the same arguments (no variation with local static variables, non-local variables, mutable reference arguments or input streams from I/O devices).
    - Its evaluation has no side effects (no mutation of local static variables, non-local variables, mutable reference arguments or I/O streams).
- Use `let` blocks to reduce global scope pollution
    - Variables in the local scope are **very** prone to be mutated since they don't have to be passed as an argument explicitely
- Do NOT oversmart yourself, write clear and concise code and think about optimisations later only after your prototype is finished
- Use Pluto notebooks to prototype (they promote a hygenic use of global scoped variables)

[Read more](https://blog.higher-order.com/blog/2009/04/27/a-critique-of-impure-reason/)
=======
Immutability doesn't really exist: immutability implies time-independence... and there's nothing really stopping time (at least until the heat-death of the universe).

The very process of storing information (that is ordering bits) requires mutation.
But we can achieve immutability at least syntatically.


##### Tips to minimise the amount of time developing scientific code
by denying mutation and and promoting good hygiene

_aka how to correct bad programming habits which hurt more than help_

- Use `let` blocks to reduce global scope pollution
    - Global variables are **very** prone to be mutated since they don't have to be passed as an argument explicitely


- Pure thoughts: decompose programs into (pure) functions:
    - Same return value for the same arguments: no variation on non-local variables, (mutable) referenced arguments, etc.
    - Side-effects-free evaluation: no variation on non-local variables, (mutable) referenced arguments, etc.
    - Break software into chunks to fit into the most limited memory: human memory.


- Give functions and variables meaningful names
    - Ditch `Jupyter` for 95% of the cases: use `Pluto` notebooks to prototype


- Use tuples / structs to avoid repetition
    - `a1 = 1, a2 = 2` becomes `as = (1, 2)`


- Be defensive
    - Add `@assert`s to ensure validity of your inputs / results
    - Generate unit tests for your functions: these are as important as the problem you are ultimately solving


- Do NOT oversmart yourself:
    - avoid _premature optimisation_: write clear and concise code and only think about optimisations after unit testing
    - avoid _premature pessimisation_: take a few good minutes and sketch on paper the data structures / algorithm design before writing any code


- Abuse of your colleagues to review your code and warn you about common pitfalls


- Require of your code the same standards you require others' calculations / experiments / general care in life


Read more on good Scientific Practises
- [1](https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/)
- [2](https://arxiv.org/pdf/1210.0530v3.pdf)
- [3](https://blog.higher-order.com/blog/2009/04/27/a-critique-of-impure-reason/)
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ 8f7c3662-7b93-11eb-037a-dd5eab159125
md"""
#### Exercise: Write an Euler integrator

$y_{n+1} = y_n + \Delta t_n \; f(y_n, t_n)$

to solve the differential equation

$y'(t) = f(y(t), t), \qquad f(y(t), t) = \sin(t) * y(t)$

subject to the initial condition

$y(t=0.0) = 1.0$

<<<<<<< HEAD

**Protip**: **NEVER** use the Euler method to solve any differential equation outside tutorials
"""

# ╔═╡ ab4dc0ae-7b93-11eb-087a-e75f6187a61c
f(yₜ, t) = sin(t) * yₜ; # right-hand-side of the ODE

# ╔═╡ b357eb08-7b93-11eb-1ece-db6905922587
"""
	euler_integrator(rhs, y_init, ts)

This function uses explicit mutation to determine
	
	y_{n+1} = y_n + h_n f(t_n, y_n)


"""
function euler_integrator(rhs, y_init::T, ts) where T
    # solution
    ys = zeros(T, length(ts))
    
    # initial condition
    ys[1] = y_init
=======
- Write the Euler integrator. Note: you can pass a type to `zeros` to create an `Array` of `0`s of some specific type: `zeros(Float64, 10)`
- Write a `unit` test for the integrator

**Pro-tip**: **NEVER** use the Euler method to solve any differential equation outside tutorials
"""

# ╔═╡ d4a4eb0e-83ec-11eb-2e2b-254e505e6996
#= md"""

```julia
"
	euler_integrator(rhs, y_init, ts)

This function uses explicit mutation to determine
	y_{n+1} = y_n + h_n f(t_n, y_n)
"
function euler_integrator(rhs, y1, ts)
	@assert issorted(ts) "`ts` needs to be sorted"

    # solution
    ys = zeros(typeof(y_init), length(ts))
    
    # initial condition
    ys[1] = y1
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
    
    for n in 1:(length(ts)-1)
        ys[n+1] = ys[n] + (ts[n+1] - ts[n]) * rhs(ys[n], ts[n])
    end
    
    return ys
end;

<<<<<<< HEAD
# ╔═╡ b898f724-7b93-11eb-3032-d30519dabdb2
"""
=======
f(yₜ, t) = sin(t) * yₜ # right-hand-side of the ODE
ts = range(0.0, 100.0, step=0.03) # constant Δt	
ys = euler_integrator(f, 1.0, ts)
```

To write a unit test use a function you know the solution of
```julia
# Julia standard library for unit tests!
using Test
	
exp_exact(t) = exp(t)
exp_numer(t) = let
	f(yₜ, t) = yₜ
	euler_integrator(f, 1.0, range(0.0, t, length=10_000))[end]
end
	
@test exp_exact(0.0) ≈ exp_numer(0.0) # \approx
@test exp_exact(1.0) ≈ exp_numer(1.0) atol=1e-3
```
""" =#

# ╔═╡ b898f724-7b93-11eb-3032-d30519dabdb2
#= md"""
```julia
"
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
	euler_integrator_functional(rhs, y_init, ts)

This function uses functional principles. It's based on the fact that

	y = [y0, f(y0), (f∘f)(y0), (f∘f∘f)(y0), ...]

This is very common structure and we have a function for this called `accumulate`
<<<<<<< HEAD
"""
=======
"
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
function euler_integrator_functional(rhs, y_init, ts)
    Δt = ts[2] - ts[1]
    euler_step(y, t) = y + Δt * rhs(y, t)
    return accumulate(euler_step, ts; init=y_init)
end;
<<<<<<< HEAD

# ╔═╡ bedc5fa4-7b93-11eb-30ea-697638725147
begin
	ts = range(0.0, 100.0, step=0.03) # constant Δt	
	ys = euler_integrator(f, 1.0, ts)
end;

# ╔═╡ c45336b0-7b93-11eb-1571-d7df2fbfde74
begin
	exp_f(yₜ, t) = yₜ
	
	y_exact(t) = exp(t)
	y_numer(t) = euler_integrator((yₜ, t) -> yₜ, 1.0, range(0.0, t, length=10_000))[end]
	
	@test y_exact(0.0) ≈ y_numer(0.0)
	@test y_exact(1.0) ≈ y_numer(1.0) atol=1e-3
end;
=======
```
""" =#
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

# ╔═╡ 7c9dd076-7bfe-11eb-14df-c92ae128b297
md"""
## Types

Types are formats for storing information.

How do we tell if `00011100011000110111011011111010101101` represents a number, or several numbers, or a colour, or a word, or what?

Each computer language has its own way of specifying the formats of information that it can use. Those are its types.

<<<<<<< HEAD
**Note**: It's good practice to _CamelCase_ composite types and keep normal function names lower-cased. 
"""

# ╔═╡ 7d403686-7bfe-11eb-0ce3-9b993722748b
md"""
### Abstract Types

Abstract types cannot be instantiated, and serve only as nodes in the type graph, thereby describing sets of related concrete types: those concrete types which are their descendants. We begin with abstract types even though they have no instantiation because they are the backbone of the type system: they form the conceptual hierarchy which makes Julia's type system more than just a collection of object implementations.
=======


### Supertype `Any` type
Its predefined abstract type that all types are subtypes of:
`Any` is the union of all types, the entire universe of possible types.

```julia
# `isa` determines the type of some value
3 isa Any
[1,2,3] isa Any
(x -> 2x) isa Any
f(x) = 3x; f isa Any
```

**When type annotation is ommited, the method accepts values of any type.**

Everything that will follow below will be about looking at subsets of `Any`.


### Abstract Types

**Abstract types cannot be instantiated**, and serve only to establish some conceptual hierarchy between types: these are the backbone of the type system.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

How the numerical hierarchy in Julia works
```julia
abstract type Number end
abstract type Real <: Number end
abstract type AbstractFloat <: Real end
abstract type Integer <: Real end
```

<<<<<<< HEAD
The Number type is a direct child type of Any, and Real is its child. In turn, Real has two children (it has more, but only two are shown here; we'll get to the others later): Integer and AbstractFloat, separating the world into representations of integers and representations of real numbers.

The default supertype is Any – a predefined abstract type that all objects are instances of and all types are subtypes of. In type theory, Any is commonly called "top" because it is at the apex of the type graph.


#### Abstract vs concrete types

Concrete types are anything that can be actually instantiated. Any value that exists in Julia code that is running always has a concrete type. On the other hand, abstract types exist only to establish hierarchical relations between the concrete types.
=======
You can use the function `supertypes` or `subtypes` to find these types and check hirarchies with the operator `<:`
```julia
Float64 <: AbstractFloat # returns True
```

#### Abstract vs concrete types

Concrete types are anything that can be actually instantiated. Any value that exists in Julia code that is running always has a concrete type.

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
"""

# ╔═╡ 7e5de6f8-7bfe-11eb-1d07-dbd9ea09b3c1
md"""
### Composite types

AKA _structs_ or _objects_ in other languages, these are **collection of named fields**.

<<<<<<< HEAD
In OOP languages, composite types also have named functions associated with them, and the combination is called an "object" (but many times you can find inconsistencies where not everything behaves like objects).

In Julia, all values are objects, but functions are not bundled with the objects they operate on.
=======
In OOP languages, composite types also have named functions methods associated with them, and the combination is called an "object".

**In Julia, all values are objects, but functions are not bundled with the objects they operate on.**
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

Composite types are introduced with the `struct` keyword followed by a block of field names
```julia
struct MyCar
	brand::String
	color
end
```
<<<<<<< HEAD
Fields with no type annotation default to `Any`, and can accordingly hold any type of value.

We can create an object of type `MyCar` by calling a function `MyCar` (which is aumomatically created)
=======

Create an object of type `MyCar` by calling a function `MyCar` (which is aumomatically created)
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
my_yellow_renault = MyCar("Renault", "yellow")
```

<<<<<<< HEAD
and access the `fields` of the car with the traditional `.`
=======
and access its `fields` with the traditional `.`
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
my_yellow_renaul.brand # returns "Renault"
```

<<<<<<< HEAD
These functions that create new instances of our composite types are called **constructors**.

Question: Did we use constructors in this class before?

Since **constructors** are just functions, it's straightforward to extend ways of creating `MyCar` objects by adding other methods named `MyCar`
=======
The functions that create new instances of our composite types are called **constructors**.

Question: Did we use constructors in this class before?

Since **constructors** are just functions, it's straightforward to extend ways of creating `MyCar` objects by adding other methods to the function `MyCar`

- These are called **outer** constructors.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
# All cars are, by-default, black
MyCar(b) = MyCar(b, "black")

my_car1 = MyCar("Mercedes")
my_car2 = MyCar("Mercedes", "white")
```

<<<<<<< HEAD

These are called **outer** constructors. One can also add **inner** constructors, which are quite useful for enforcing constraints
=======
- One can also add **inner** constructors, which are quite useful for enforcing constraints
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

```julia
struct MyNewCar
	brand::String
	color
	wheels::Int

	MyNewCar(b, c) = new(b, c, 4)
end
```

Checking the methods available to create an instance of `MyNewCar`
```julia
# We see that we can't really specify the number of wheels
methods(MyNewCar)
```

<<<<<<< HEAD
=======
**Note**: It's good practice to _CamelCase_ composite types and keep normal function names lower-cased. 

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
The composite types we create until now are **immutable** so we can't really change the fields

```julia
my_car3 = MyNewCar("Mercedes", "blue")
my_car3.color = "yellow" # fails
```

<<<<<<< HEAD
But note that if one your fields has is **mutable**, like an array, then we can still mutate _its contents_
```julia
my_car4 = MyNewCar("Mercedes", ["blue"])
my_car4.color = ["blue"] # fails
my_car4.color[1] = "yellow" # mutates the field contents
```
"""

=======
To add **mutability** to the field **values** (not types!), insert the `mutable` keyword
```julia
mutable struct MyMutableCar
	# ...
end
```
"""

# ╔═╡ 343b1ea2-8422-11eb-215f-a3dd15480088
md"""
#### Exercise: In the beginning You created the heaven and the Earth (Genesis* 1:1)
Jump directly to the 6th day of creation and create some `Animal`s that live and interact in the Garden of Eden.

Remember to embed the hierarchical relations between abtract and concrete and types using `<:`

- Create an abstract type for the `Animal` kingdom
- Create abstract types for `Reptile`s and `Mammal`s
- Make use of _multiple dispatch_ and write (some) interactions between the animals
```julia
interaction(::Animal, ::Animal) = undefined
interaction(r::Reptile, m::Mammal) = "The reptile attacks the mammal"
```
- Create **concrete animals**, namely a 🐍, a 👨 and a 👩 (no gender is assumed) and their interactions (extra points if you stick to the historical guidelines)
```julia
interaction(::👩, ::👨) = "Mmmmmm, you tried these fruits before?"
```
- Create 🐸 before going for a rest, on the 7th day.
"""

# ╔═╡ 8188d3c8-8424-11eb-34d0-f33af1f04aa2
#= md"""
```julia
abstract type Animal end

interaction(::Animal, ::Animal) = undefined

abstract type Mammal <: Animal end
abstract type Reptile <: Animal end

interaction(::Reptile, ::Mammal) = "The reptile attacks the mammal"
interaction(::Mammal, ::Reptile) = "The mammal loves the reptile"

struct 🐍 <: Reptile end
struct 👨 <: Mammal end
struct 👩 <: Mammal end
struct 🐸 <: Reptile end

interaction(::🐍, ::👩) = "These fruits are to die for"
interaction(::👩, ::👨) = "Mmmmmm, you tried these fruits before?"
interaction(::👨, ::👩) = "Still got some more?"

adam = 👨()
eve = 👩()
serpent = 🐍()

@show interaction(serpent, eve)
@show interaction(eve, adam)

kermit = 🐸()

@show interaction(eve, kermit)
```

- Note that the relations between 🐍, 👨, 👩 only make sense, strictly speaking, in the Garden of Eden (as there was just 1👨, 1🐍 and 1 👩). These are also known as [singletons](https://en.wikipedia.org/wiki/Singleton_pattern).
""" =#

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╔═╡ 7f10414a-7bfe-11eb-1130-51ca36dbc2a1
md"""
### Parametric types

Julia's type system is parametric: types can take parameters.

#### Parametric composite types
Type parameters are introduced immediately after the type name, surrounded by curly braces
```julia
struct Point{T}
	x::T
	y::T
end
```
This declaration defines a new parametric composite type, `Point{T}`, holding two "coordinates" of type `T`. What, one may ask, is `T`? Well, that's precisely the point of parametric types: it can be _any_ type at all.

By specifying the parametric type, we obtain an unlimited number of distinct, **usable**, concrete types
```julia
Point{Float64} # point whose coordinates are 64-bit floating-point values
Point{String}  # "point" whose "coordinates" are string objects
```

<<<<<<< HEAD
If this sounds way too theoretical, here's an example where _parametric_ types mean life or death: with `Array`s. 

An `Array{Float64}` can be stored as a contiguous memory block of 64-bit floating-point values. While an `Array{Real}` can't possibly know how large each element is going to be so it can only be stored as array of pointers to individually allocated Real numbers (which could be `Float64` but also could be `Float64^1000`)

#### Parametric abstract types
The abstract types can also have parameters.

Consider the abstract (parametric) type `AbstractArray`
```julia
typeof([1.0, 2.0]) <: AbstractArray{Float64} # returns true
```

[Read more](https://docs.julialang.org/en/v1/manual/types/#Parametric-Types)
"""

# ╔═╡ 6ea4e476-7b85-11eb-3010-c540ce2ba623
md"""
#### Multiple dispatch on parametric types

Fectch the `n_elements` function from the previous exercise

Note that something like `[1,2, [1,2]]` cannot have a well-defined type since the elements are both `Int` or `Vector{Int}` . So `typeof([1,2,[1,2]])` is actually `Vector{Any}`.

Supposing we don't want to operate on such impure arrays, we could do something like

=======
Note:
- The usual Julia `Array`s are parametric (on their type and dimension)
- Abstract types can also be parametric.

[Read more](https://docs.julialang.org/en/v1/manual/types/#Parametric-Types)

#### Type parameters in function signatures
Method definitions can optionally have type parameters qualifying the signature. 
```julia
identity(p::Point{U}) where {U} = p
eltype(p::Point{U}) where {U} = U

fPoint = Point{Float64}(1.0, 2.0)
sPoint = Point{String}("x", "y")

eltype(fPoint) # returns Float64
eltype(sPoint) # returns String
```

Question: Why is the use of a keyword `where` necessary?


##### Pitfals when mixing type hierarchies
```julia
distance(p::Point{Real}) = sqrt(p.x^2 + p.y^2)

distance(fPoint) # fails: no method matching distance(::Point{Float64})
```

Question: If `Float64 <: Real` why does `Point{Float64} <: Point{Real}` yields false? Should there be any hierarchy between `Point{String}`, `Point{Float}` or `Point{Number}`?

The hierarchy wanted was established the level element types of `Point` and not at the level of `Point`s.

Hence,
```julia
distance(p::Point{T}) where {T <: Real} = sqrt(p.x^2 + p.y^2)
```

Think of `Point{T} where T <: Real` as the set of all concrete `Point` types for which element types are a subtype of `Real`: `Point{Float64}, Point{Int64}, Point{Int32}, ...}`
"""

# ╔═╡ ead58bf8-8429-11eb-1ba5-61ecb471569a
md"""
#### Exercise: Multiple dispatch on parametric types

On both tasks disallow behaviour having a function return `error("<error message>")`

- Diagonal dispatch: Create a function `party` that throws a 🎉 when both its arguments have the same type
- Give the `n_elements` function from a previous exercise a bit of personality and have it only operate on `Array`s with concrete types, e.g., disallow `AbstractArray{Any}` with `error("<error message>")`
"""

# ╔═╡ a4281938-842a-11eb-028a-7d910ea07260
#= md"""
```julia
party(a, b) = error("No party")
party(a::T, b::T) where T = println("🎉")
```

Note that something like `[1,2, [1,2]]` cannot have a well-defined type since the elements are both `Int` or `Vector{Int}` . So `typeof([1,2,[1,2]]) isa Vector{Any}`.
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
n_elements(a::AbstractArray{Any}) = error("I don't operate on inferior type-unstable structures")

n_elements([[1,2,[1,2]]]) # will throw an error
```
<<<<<<< HEAD
"""
=======
""" =#
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

# ╔═╡ 7ef91614-7bfe-11eb-0a36-1d5546ce9691
md"""
#### Exercise: Write a composite type `Measurement` that can [propagate uncertainties](https://en.wikipedia.org/wiki/Propagation_of_uncertainty)!


Remember that, for some measurement $m_i = \text{val}_i \pm \text{err}_i$, the following rules apply
- $a \,m_i = a \,\text{val}_i \pm a \,\text{err}_i$
- $m_1 + m_2 = (\text{val}_1 + \text{val}_2) \pm \sqrt{\text{err}_1^2 + \text{err}_2^2}$

The latter assumes that variables are **always** uncorrelated, i.e., $\sigma_{12} = 0$, which is not true for, e.g., $m_2 = m_1$. But we are going to assume so because this is just an exercise.

In order to code the algebraic relationships, we need to extend the usual operators.
This is achieved by
```julia
import Base: +
+(a::Number, m::Measurement) = ...
```

Also add a method for `zero`, which is the standard function to zero some type. See how it works on `zero(Float64)` or `zero(Int)`
```julia
import Base: zero
zero(::Type{Measurement}) = ...
```

If you have time, you can also add some syntatic sugar.
There's a [vast set](https://github.com/JuliaLang/julia/blob/master/src/julia-parser.scm#L6) of binary infix operators, that is, operators you can insert between operands, such as `a + b` being actually _sugar_ for `+(a,b)`.
Add a function with `±` as name to be able to create `Measurements` as `a ± b`
"""

# ╔═╡ 9a91ee9e-7c05-11eb-3401-eb252b4bdb45
#= md"""
```julia
# immutable!
struct Measurement{T<:Number}
  val::T
  err::T
end

const ± = Measurement

import Base: *, +, zero # need to import when extending methods

<<<<<<< HEAD
*(a::Number, m::Measurement) = Measurement(a * m.val, a * m.err)
*(m::Measurement, a::Number) = Measurement(a * m.val, a * m.err)
=======
*(a::Number, m::Measurement) = Measurement(a * m.val, abs(a * m.err))
*(m::Measurement, a::Number) = Measurement(a * m.val, abs(a * m.err))
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8

+(m1::Measurement, m2::Measurement) = Measurement(m1.val + m2.val, sqrt(m1.err^2 + m2.err^2))

# Remember to be style stable!
zero(::Type{Measurement{T}}) where T = Measurement(zero(T), zero(T))
```
""" =#

# ╔═╡ 7ed04e96-7bfe-11eb-0732-251e7f273c09
md"""
#### Exercise: Change the Euler integrator such that the initial condition is now 
$y(t=0.0) = 1.0 \pm 0.3$
"""

# ╔═╡ 7eb72d6c-7bfe-11eb-3bbc-6bf209eac85e
#= md"""
<<<<<<< HEAD
=======
Because `euler_integrator` is generic, it simply works

>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
```julia
using Plots

ys_measurement = euler_integrator(f, 1.0 ± 0.3, ts)

vals = [v.val for v in ys_measurement]
errs = [v.err for v in ys_measurement]

plot(ts, vals, label="y(t)", xlabel="t")
plot!(ts, vals-errs; 
	label="err", fillrange=vals+errs, fillalpha=0.2, color=:red, alpha=0.0)
```

Our results are **at all** correct because we assumed our measurements to always be independent of each other. Let's use a proper implementation (In a library we have installed called `Measurements.jl` that fixes that
```julia
import Measurements: ±
```
""" =#

# ╔═╡ Cell order:
# ╟─4f694984-7bfe-11eb-11d1-e9f1f0ed181b
# ╟─07421cd6-7b6a-11eb-1fe0-a77384748767
# ╟─783184c2-7b7e-11eb-1a2d-19ff7af16a74
<<<<<<< HEAD
# ╟─e47b0d74-7b7e-11eb-1c28-6b8764d83608
# ╟─208cc082-7b7f-11eb-350d-01731695c4e9
# ╟─c01023c2-7b7f-11eb-2914-8d92e90752f3
# ╟─d7be066a-7c26-11eb-3938-f15fdc5c1dfd
=======
# ╟─208cc082-7b7f-11eb-350d-01731695c4e9
# ╟─c01023c2-7b7f-11eb-2914-8d92e90752f3
# ╟─d7be066a-7c26-11eb-3938-f15fdc5c1dfd
# ╟─e47b0d74-7b7e-11eb-1c28-6b8764d83608
# ╟─10ce2298-8189-11eb-0a07-2bc8fdc42b7e
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╟─50103c82-7b87-11eb-397f-63f6c3e14497
# ╟─4fba05ba-7b87-11eb-2789-a9bd011721e3
# ╟─4f8bc7f4-7b87-11eb-2df1-23bf6ed3f957
# ╟─332d6928-7b7d-11eb-0683-e5d94f0a1df9
# ╟─4a59fe72-7b82-11eb-0b57-9b4aaa5fd028
# ╟─59881288-7b82-11eb-05cf-1fe54d94d2dd
# ╟─9ea8eb3a-7c2e-11eb-044a-a9a5a03820c0
# ╟─469c1da0-7c2d-11eb-24a9-adcbead74948
# ╟─736e91fa-7c2d-11eb-2980-c7ce180d8bbd
# ╟─3d084548-7b83-11eb-256b-19eb53b8ed58
# ╟─8af802a2-7b81-11eb-3aee-a72be06a7db5
# ╟─fc97a2e8-7b81-11eb-04e8-41c700b9d2ec
# ╟─520e5cb2-7b87-11eb-0748-b39dbd03ca14
# ╟─a05faaea-7b87-11eb-0c4c-77533db92365
# ╟─2d756e8a-7b88-11eb-0641-79cb95e33aa1
<<<<<<< HEAD
# ╟─23a1f126-7cc8-11eb-0d95-7f42c64921b0
# ╟─29b15dd0-7cc9-11eb-08ad-f301320aca17
# ╟─6efa5e40-7b85-11eb-2459-9f052c340c4f
# ╟─4d6378d0-7c2e-11eb-0c59-e10c86826945
=======
# ╟─6efa5e40-7b85-11eb-2459-9f052c340c4f
# ╟─4d6378d0-7c2e-11eb-0c59-e10c86826945
# ╟─23a1f126-7cc8-11eb-0d95-7f42c64921b0
# ╟─29b15dd0-7cc9-11eb-08ad-f301320aca17
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╟─4acaca00-7b8a-11eb-0a46-894196ba8141
# ╟─ba8360be-7b85-11eb-19dd-a382320176dc
# ╟─b5c6f97c-7b90-11eb-0143-191c0a29ae5f
# ╟─8f7c3662-7b93-11eb-037a-dd5eab159125
<<<<<<< HEAD
# ╟─ab4dc0ae-7b93-11eb-087a-e75f6187a61c
# ╟─b357eb08-7b93-11eb-1ece-db6905922587
# ╟─b898f724-7b93-11eb-3032-d30519dabdb2
# ╟─bedc5fa4-7b93-11eb-30ea-697638725147
# ╟─cdae9416-7b93-11eb-2ada-e1e63c017a3d
# ╟─c45336b0-7b93-11eb-1571-d7df2fbfde74
# ╟─7c9dd076-7bfe-11eb-14df-c92ae128b297
# ╟─7d403686-7bfe-11eb-0ce3-9b993722748b
# ╟─7e5de6f8-7bfe-11eb-1d07-dbd9ea09b3c1
# ╟─7f10414a-7bfe-11eb-1130-51ca36dbc2a1
# ╟─6ea4e476-7b85-11eb-3010-c540ce2ba623
=======
# ╟─d4a4eb0e-83ec-11eb-2e2b-254e505e6996
# ╟─b898f724-7b93-11eb-3032-d30519dabdb2
# ╟─7c9dd076-7bfe-11eb-14df-c92ae128b297
# ╟─7e5de6f8-7bfe-11eb-1d07-dbd9ea09b3c1
# ╟─343b1ea2-8422-11eb-215f-a3dd15480088
# ╟─8188d3c8-8424-11eb-34d0-f33af1f04aa2
# ╟─7f10414a-7bfe-11eb-1130-51ca36dbc2a1
# ╟─ead58bf8-8429-11eb-1ba5-61ecb471569a
# ╟─a4281938-842a-11eb-028a-7d910ea07260
>>>>>>> e11a77bf9ef798dc4add2e176406283aa41b8ee8
# ╟─7ef91614-7bfe-11eb-0a36-1d5546ce9691
# ╟─9a91ee9e-7c05-11eb-3401-eb252b4bdb45
# ╟─7ed04e96-7bfe-11eb-0732-251e7f273c09
# ╟─7eb72d6c-7bfe-11eb-3bbc-6bf209eac85e
