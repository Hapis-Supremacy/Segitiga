# Triangle Classifier (Pascal CLI)

A simple **command-line application written in Pascal** that reads the lengths of three sides and determines the type of triangle they form.

This project was created **for educational purposes**, mainly to practice basic Pascal programming concepts such as:

* procedures (subprograms)
* parameter passing with `var`
* control flow (`if`, `else if`)
* basic input/output
* simple algorithm design

---

## Features

* Reads three triangle side lengths from the user
* Validates whether a triangle can be constructed
* Classifies triangles into:

  * **Equilateral**
  * **Isosceles**
  * **Right Triangle**
  * **Scalene** (referred to in the program as *Free Triangle*)
* Uses a procedure to **sort triangle sides**
* Demonstrates **modular logic using subprograms**

---

## How It Works

1. The program prompts the user to enter the lengths of the three sides.
2. The sides are sorted so that the largest side is evaluated correctly.
3. The program checks whether a triangle can be constructed using the **triangle inequality rule**.
4. If valid, the triangle is classified based on the relationships between its sides.

---

## Example

```text
Enter the lengths of each side of the triangle:
3 4 5

The Triangle is RIGHT TRIANGLE
```

Example of invalid input:

```text
Enter the lengths of each side of the triangle:
1 2 5

The Triangle cant be build from these lengths
```

---

## Requirements

* Pascal compiler

Recommended compiler:

* Free Pascal

---

## Compile and Run

Compile the program:

```bash
fpc main.pas
```

Run the executable:

```bash
./main
```

(On Windows you can run `main.exe`.)

---

## Project Structure

```
triangle-classifier/
│
├─ main.pas
├─ .gitignore
├─ LICENSE
└─ README.md
```

## License

This project is free to use for **learning and educational purposes** and available under **MIT License**.
