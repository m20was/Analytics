# Methods in Java Overview

A **Method** is a block of code designed to perform a specific task, executed only when called. Methods promote code reusability and modularity.

---

# How Do Methods Work?

When a method is invoked, program execution jumps to the method body, processes statements, and returns execution back to the caller (with an optional return value).

```mermaid
flowchart TD
    Caller["main() Method"] -->|1. Call add(5, 3)| Exec["add() Method Body"]
    Exec -->|2. Compute 5 + 3 = 8| Return["Return 8"]
    Return -->|3. Pass result back| Caller
```

---

# Components of a Method

1. **Modifier:** `public`, `private`, `static`, or implicit instance scope.
2. **Return Type:** Data type of the value returned (`int`, `String`, `void` if nothing returned).
3. **Method Name:** Descriptive identifier using CamelCase.
4. **Parameter List:** Inputs passed into the method enclosed in `()`.
5. **Method Body:** Block of statements enclosed in `{}`.

---

# Calling Methods & Method Parameters

### Modern Java 25 Code Example:
```java
// Method declaration inside implicit class
int add(int a, int b) {
    return a + b;
}

void greet(String name) {
    println("Hello, " + name + "!");
}

void main() {
    // Calling methods
    var sum = add(15, 25);
    println("Sum: " + sum); // 40

    greet("Alex");
}
```

---

# `Math` Class Methods in Java

The `Math` class (`java.lang.Math`) provides mathematical utility operations:

| Method | Description | Example Output |
| :--- | :--- | :--- |
| `Math.max(a, b)` | Returns the larger value | `Math.max(10, 20)` ➔ `20` |
| `Math.min(a, b)` | Returns the smaller value | `Math.min(10, 20)` ➔ `10` |
| `Math.sqrt(n)` | Square root of number | `Math.sqrt(16)` ➔ `4.0` |
| `Math.pow(a, b)` | $a^b$ power calculation | `Math.pow(2, 3)` ➔ `8.0` |
| `Math.abs(n)` | Absolute value | `Math.abs(-5)` ➔ `5` |
| `Math.random()` | Random double between `0.0` and `1.0` | `0.74921...` |

### Modern Java 25 Code Example:
```java
void main() {
    var radius = 5.0;
    var area = Math.PI * Math.pow(radius, 2);
    println("Circle Area: " + area);

    var randomNum = (int)(Math.random() * 100) + 1; // Random 1-100
    println("Random Number: " + randomNum);
}
```
