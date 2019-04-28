---
layout: "post"
title: "Global Descriptor Table"
date: 2019-04-27
---
x86 architectures use two memory memory management techniques. Segmentation
and paging. Segmentation is considered obselete, however minimal use is still
required for most operating systems.

Segmentation is a technique that splits memory into chunks. Each chunk is
accessible by it's index. Memory can then be located with a segment index and
an offset.

Segmentation implements a __global descriptor table__, which is a data
structure designed to manage blocks of memory. This table is loaded into
memory and is called upon when when the CPU want's to locate a segment.

## Segment Descriptors

The GPT is divided into rows called __segment descriptors__. As the name
suggests, these rows include information that describes a memory segment, such
as memory locations, access rights and usage information.

When a segment is requested, an index (segment selector) is used to locate
the base address of the segment. An offset is then applied to find the subset.

## Scenario: Pressing a Key

When a key on the keyboard is pressed, the device will send a signal to the
CPU, triggering an __interrupt__.

That interrupt is managed by something called an __interrupt descriptor table__.
The IDT provides information about the specific interrupt handler, including 
the segment which it lives in. That segment address can be translated by the
GDT.

The handler is located with the translated segment address and an offset, and
can now be run.

## Implementation



## Reading

- [alex.dzyoba.com - Segmentation](https://alex.dzyoba.com/blog/os-segmentation/)
- [osdev.org - Segmentation](https://wiki.osdev.org/Segmentation)
- [jamesmolloy.co.uk - The GDT and IDT](http://www.jamesmolloy.co.uk/tutorial_html/4.-The%20GDT%20and%20IDT.html)
- [youtube.com - Write your own Operating System 3: Memory Segments, Global Descriptor Table](https://www.youtube.com/watch?v=pfWjteMpcxE)
- [stackoverflow.com - Segment Selector in IA-32](https://stackoverflow.com/questions/9113310/segment-selector-in-ia-32)

