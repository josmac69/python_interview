
Tuples are another built-in data structure in Python, similar to lists but with some key differences. Here are some characteristics of tuples:

- Tuples are ordered collections of values, just like lists.
- However, tuples are immutable, which means that once a tuple is created, its elements cannot be modified or removed.
- Tuples are defined using parentheses instead of square brackets.
- Tuples can contain elements of different types, just like lists.

Here are some common operations you can perform on tuples:

- Indexing: Access individual elements of a tuple using their index, just like with lists.
- Slicing: Extract a subset of a tuple using a colon (`:`) to separate the start and end indices.
- Concatenation: Combine two tuples into a single tuple using the `+` operator.
- Unpacking: Assign the elements of a tuple to individual variables using unpacking syntax, like `(a, b, c) = my_tuple`.

Here is an example of creating and working with tuples:

```
my_tuple = (1, "two", 3.0)
print(my_tuple[1]) # Output: "two"
print(my_tuple[1:]) # Output: ("two", 3.0)
new_tuple = my_tuple + (4, "five")
print(new_tuple) # Output: (1, "two", 3.0, 4, "five")
(a, b, c) = my_tuple
print(b) # Output: "two"
```

Tuples can be useful when you want to group together a fixed number of elements that should not be modified, such as coordinates or configuration settings.

Written by Chatsonic

---



Tuples: Tuples are ordered collections of elements, which can be of any type. Unlike lists, tuples are immutable, which means that they cannot be modified once they are created. Tuples are commonly used to represent fixed collections of values, such as coordinates or database records.

To create a tuple in Python, you can use parentheses and separate the elements with commas:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>python</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-python">my_tuple = (1, 2, 3, 'four', 5.0)
</code></div></div></pre>
