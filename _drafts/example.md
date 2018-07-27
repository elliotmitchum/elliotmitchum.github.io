---
layout: "post"
title: "Java: An Introduction to Sets & Lists"
lede: "This is an example post."
date: 2018-07-09
---
# 21.2 Sets

- Set extends `Collection`
- You can create a set with `HashSet`, `LinkedHashSet` or `TreeSet`
- A `Set` contains no duplicates
- A `Set` implements `iterable`, so elements can be traversed
- Collections have a no-arg and collection constructor, which forms a new
  collection from a collection

## 21.2.1 HashSet

- Elements must implement a `hashCode`, where two equal elements will produce
  the same hash code.

## 21.2.2 LinkedHashSet

- Extends `HashSet` with a linked list implementation
- Elements can be retrieved by insertion order (FIFO)

## 21.2.3 TreeSet

- Implements `SortedSet` interface
- Provides methods such as `first`, `last`, `headSet`, `tailSet`, `lower`,
  `floor`, `ceiling`, `higher`, `pollFirst` and `pollLast`
- All elements are sorted by `Comarable` or `Comparator` interface
- Unless you need a sorted set, it's more efficient to use a `HashSet`
- You may pass a `Comparator` interface as a `TreeSet` constructor parameter

## Checkpoint

This is just some code.

```java
import java.util.*;
public class Main {
  public static void main(String[] args) {
    ListIterator<Object> li = ll.listIterator();
    while (li.hasNext())
      System.out.println(li.next());
    System.out.println("Print backwards: ");
    li = ll.listIterator(ll.size());
    while (li.hasPrevious())
      System.out.println(li.previous());
  }
}
```
