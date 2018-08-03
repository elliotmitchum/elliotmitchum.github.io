---
layout: "post"
title: "Java: Lists, Sets & Maps"
lede: "A gentle introduction into data structures that will keep you warm at
night."
date: 2018-07-09
---
Yes hello sports fans and welcome to another smooth edition of Java API
unplugged. Meet your new family that won't disappoint you on your birthday:
Lists, Sets and Maps. These bad boys <mark>structure and process collections of
data</mark>. You will definitely want to remember what the do and when to
use them, or at least try to.

- **Lists**: A collection of ordered values
- **Sets**: A collection of non-duplicate values
- **Maps**: A key/value collection

I like you. I made you a little summin' summin' to help you remember:

| Who    | What                                 | When                                                                                    |
|------- |--------------------------------------|-----------------------------------------------------------------------------------------|
| `List` | A collection of values               | You need duplicate values or are managing a small set of data                           |
| `Set`  | A collection of non-duplicate values | You need duplicate free values  or are managing a large set of data                     |
| `Map`  | A key/value collection               | You need a key/value store with frequent look-ups or need to make many query operations |

## The `Collection` & `Map` Interfaces

Lists, Sets and Maps are interfaces, which act as a "base point" that are
extended. The `List` and `Set` interface implements the `Collection` interface.
Maps use their own `Map` interface. Each of these interfaces define a whole
bunch of handy methods that allow you to query and operate on the data structure.

### The `Collection` Interface

`List` and `Set` implements the `Collection` interface. The `Collection`
interface gives you some super handy methods:

- `add` - Add an element to the collection
- `addAll` - Add a group of elements to the collection
- `clear` - Remove all elements from a collection
- `contains` - Check for specific element
- `containsAll` - Check collection contains every element in a group
- `isEmpty` - Check if collection is empty
- `remove` - Remove an element from a collection
- `removeAll` - Remove all elements from a collection
- `size` - Get number of elements in collection

These are only a handful of methods, but for brevity I have only included
a handful. Take a [look at the docs](https://docs.oracle.com/javase/8/docs/api/java/util/Collection.html)
for comprehensive detail.

### The `Map` Interface

Maps have their own `Map` interface. The `Map` interface defines methods such
as:

- `clear` - Remove all elements from map
- `containsKey` - Check if map contains a key
- `containsValue` - Check if map contains a value
- `entrySet` - Get a `Set` of key/value elements in map
- `get` - Get value by key from map
- `isEmpty` - Check if map has no elements
- `keySet` - Get a `Set` of element keys in a map
- `put` - Add a key/value element into a map
- `putAll` - Add a group of key/value elements into a map
- `remove` - Remove a key/value element from a map by key
- `replace` - Replace a key/value element from a map by key
- `size` - Get number of key/value elements in a map
- `values` - Return a `Collection` of element values in a map
