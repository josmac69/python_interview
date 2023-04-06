A set is an unordered collection of unique elements in Python. It is similar to a list or a tuple, but unlike those data structures, a set cannot contain duplicate values. Sets are defined using curly braces `{}` or the `set()` function.

Here are some of the most commonly used methods for sets in Python:

- `add()`: add an element to the set
- `remove()`: remove an element from the set
- `discard()`: remove an element from the set if it is present
- `union()`: return the union of two sets (all the elements that are in either set)
- `intersection()`: return the intersection of two sets (the elements that are in both sets)
- `difference()`: return the difference between two sets (the elements that are in one set but not the other)

Here is an example of creating and working with sets:

```
my_set = {1, 2, 3}
print(2 in my_set) # Output: True
my_set.add(4)
print(my_set) # Output: {1, 2, 3, 4}
my_set.discard(2)
print(my_set) # Output: {1, 3, 4}
other_set = {3, 4, 5}
print(my_set.union(other_set)) # Output: {1, 3, 4, 5}
print(my_set.intersection(other_set)) # Output: {3, 4}
print(my_set.difference(other_set)) # Output: {1}
```

Sets can be useful when you want to quickly check if an element is part of a collection, or when you need to perform set operations like union, intersection, or difference.

Written by Chatsonic

---



Sets are unordered collections of unique elements, which can be of any type. Sets are mutable, which means that they can be modified by adding or removing elements. Sets are commonly used to perform set operations, such as union, intersection, and difference.

To create a set in Python, you can use curly braces or the `set()` function:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>python</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-python">my_set = {1, 2, 3, 4, 5}
my_set = set([1, 2, 3, 4, 5])
</code></div></div></pre>

To add elements to a set, you can use the `add()` method:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>python</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-python">my_set.add(6)
</code></div></div></pre>

To remove elements from a set, you can use the `remove()` method:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>python</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-python">my_set.remove(5)</code></div></div></pre>
