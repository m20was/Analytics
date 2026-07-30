# What is a programming language?

## Overview
A **programming language** is the primary medium through which humans provide instructions to a computer. 

## Key Concepts
- **Machine-Level Instructions:** Computers inherently only understand machine-level instructions (binary/0s and 1s).
- **The Bridge:** Programming languages act as a bridge between human-readable logic/code and machine-executable instructions, allowing developers to write code that the machine can process and execute effectively.

## Visual Diagram

```mermaid
flowchart LR
    A[Human Developer] -->|Writes Source Code| B[Programming Language]
    B -->|Translates to Machine Instructions| C[Computer / Hardware]
```

# Working of a Java Program

## Diagram

```mermaid
flowchart LR
    A[Hello.java Source File] -->|Compiler javac| B[Hello.class Bytecode]
    B -->|JVM| C[Native Machine Code]
    C --> D[Windows OS]
    C --> E[macOS]
```

## Overview & Concept

## Execution Flow & Key Concepts
1. **Source Code:** Written by developers in human-readable `.java` files.
2. **Compilation Process:** The Java source code is compiled by the Java compiler (`javac`) into platform-independent **bytecode** (`Hello.class` files).
3. **Execution/Interpretation:** The Java Runtime Environment (JRE) / Java Virtual Machine (JVM) interprets or executes the bytecode to perform the desired tasks on the underlying system, allowing it to run across target OS environments like Windows and macOS.

---

# JVM, JRE and JDK

## Architecture Diagram

```mermaid
graph TD
    JDK[JDK - Java Development Kit]
    JRE[JRE - Java Runtime Environment]
    JVM[JVM - Java Virtual Machine]
    Libs[Java Class Libraries]
    Tools[Dev Tools: javac, JavaDoc, Debugger]

    JDK -->|Contains| JRE
    JDK -->|Contains| Tools
    JRE -->|Contains| JVM
    JRE -->|Contains| Libs
```


## Core Definitions

### JVM (Java Virtual Machine)
**JVM** is an abstract machine that enables your computer to run a Java program.

### JRE (Java Runtime Environment)
**JRE** is a software package that provides:
- **Java Class Libraries**
- **Java Virtual Machine (JVM)**
- Other components required to **run** Java applications.

### JDK (Java Development Kit)
**JDK** is a software development kit required to **develop** applications in Java.  
In addition to the **JRE**, the JDK contains a number of development tools:
- **Compiler** (`javac`)
- **JavaDoc**
- **Java Debugger** (`jdb`), etc.

---

# Useful Java IDE Typing Shortcuts (Live Templates)

In modern Java IDEs (like IntelliJ IDEA and Eclipse), you can use shorthand triggers followed by `Tab` or `Enter` to auto-generate boilerplate code quickly:

| Shortcut | Triggers | Generated Code |
| :--- | :--- | :--- |
| `psvm` + `Tab` / `main` + `Tab` | `public static void main(String[] args)` | Generates the main entry point method. |
| `sout` + `Tab` | `System.out.println();` | Prints output to the standard console with a newline. |
| `souf` + `Tab` | `System.out.printf("");` | Formatted output print statement. |
| `soutm` + `Tab` | `System.out.println("Class.method");` | Prints current class and method name (great for debugging). |
| `soutv` + `Tab` | `System.out.println("var = " + var);` | Prints a variable's name and its value. |
| `fori` + `Tab` | `for (int i = 0; i < ; i++) {}` | Standard indexed `for` loop. |

### Example Usage:
Instead of manually typing out:
```java
public static void main(String[] args) {
    System.out.println("Hello, World!");
}
```
Simply type:
1. `psvm` ➔ press <kbd>Tab</kbd>
2. `sout` ➔ press <kbd>Tab</kbd>