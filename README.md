# README

I have been wanted to learn compiler for a long time, especially working as a C programmer in automotive industry.

What I am interested in:

- Static analysis.
- Generate function call graph

2023-09-17:

Purchased a class on Udemy platform,

- <https://www.udemy.com/course/creating-a-c-compiler-from-scratch-module-1/learn/lecture/33832084#overview>

The repo,

<https://github.com/nibblebits/PeachCompiler>

## Session 1 Course Overview

### Introduction

A lexer takes C source files as input, it will create token outputs. Then it being passed into a parser.

In Module 1, will learn lexer and parser.

```bash
sudo apt install gdb gcc make
```

## Lexical Analysis

Lexical analysis is a process of turning strings into tokens.

A token has a type and value.

The part of a software that performs lexical analysis is called a Lexer.

### Lexical Analysis Example

```c
int main()
{
    int x = 50;
}
```
