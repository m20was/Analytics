# What is a Programming Language?

A **programming language** acts as a bridge allowing developers to write human-readable code that translates into machine-level instructions ([[03_binary_number_system|binary/0s and 1s]]) for execution.

```mermaid
flowchart LR
    A[Human Developer] -->|Source Code| B[Programming Language]
    B -->|Machine Instructions| C[Computer / Hardware]
```

---

# Working of a Java Program

```mermaid
flowchart LR
    subgraph Source["Source Code"]
        A["Hello.java"]
    end
    subgraph BytecodeStage["Bytecode"]
        B["Hello.class"]
    end
    subgraph MachineStage["Machine Code"]
        C["Native Machine Code"]
    end

    A -->|Compiler javac| B
    B -->|JVM| C
    C --> OS["Windows / macOS"]
```

1. **Source Code:** Written in `.java` files containing [[02_variables_and_data_types|Variables and Data Types]].
2. **Compilation:** `javac` converts source code into platform-independent **bytecode** (`.class`).
3. **Execution:** The **JVM** translates bytecode into native CPU instructions.

---

# JVM, JRE and JDK

```mermaid
flowchart TB
    subgraph JDK ["JDK (Java Development Kit)"]
        direction TB
        subgraph JRE ["JRE (Java Runtime Environment)"]
            direction TB
            JVM["JVM (Java Virtual Machine)"]
            Libraries["Java Class Libraries"]
        end
        DevTools["Development Tools (javac, debugger)"]
    end
```

- **JVM (Java Virtual Machine):** Executes Java bytecode on target OS.
- **JRE (Java Runtime Environment):** Includes JVM + Class Libraries to **run** applications.
- **JDK (Java Development Kit):** Includes JRE + Dev Tools (`javac`) to **develop** applications.

---

# Java IDE Typing Shortcuts

| Shortcut | Triggers | Generated Code |
| :--- | :--- | :--- |
| `main` + `Tab` | `void main()` | Entry point [[08_methods_and_math|method]]. |
| `sout` + `Tab` | `IO.println();` | Console output using `java.lang.IO`. |
| `soutv` + `Tab` | `IO.println("var = " + var);` | Prints [[02_variables_and_data_types|variable]] name and value. |
| `fori` + `Tab` | `for (var i = 0; i < n; i++) {}` | [[06_loops_and_patterns|for loop]]. |

```java
// Java 25 Compact Syntax
void main() {
    IO.println("Hello, World!");
}
```