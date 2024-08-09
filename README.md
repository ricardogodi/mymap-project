# MyMap Project (Access to Full Repository Available Upon Request)

## Overview
The MyMap Project features a custom implementation of a map class in C++, similar to the standard library's `std::map`. The implementation utilizes a self-balancing threaded binary search tree (BST) to maintain ordered data. The project demonstrates an advanced use of threading to improve the efficiency of in-order traversals and employs a Seesaw-Balanced property to ensure the tree remains balanced, enhancing overall data operation performance.

## Features
- **Self-Balancing:** The BST maintains balance using a seesaw mechanism, where the balance condition is defined by the equation `max(nL, nR) <= 2*min(nL, nR) + 1`. Here `nL` and `nR` represent the number of left and right children of a node, respectively.
- **Threaded:** In traditional BSTs, the right pointer of a leaf node is typically null. In this implementation, each leaf's right pointer leads to its in-order successor, optimizing traversal operations.
- **Templated Class:** Allows the map to store any data types as keys and values, enhancing reusability.
- **Iterator Support:** Implements forward iterators to enable range-based for loops and other iterator-based operations.

## Installation

1. **Clone the Repository:** Clone this repository to your local machine using Git:

    ```bash
    git clone https://github.com/ricardogodi/mymap-project.git
    cd mymap-project
    ```

2. **Install Google Test:** Follow the Google Test installation instructions [here](https://github.com/google/googletest) to set up Google Test on your system. This is necessary for running the provided tests.

## Building and Testing

- **Build the Project:** Run `make build` to compile the project.
- **Run Tests:** Execute `make run` to run the tests and validate functionality.
- **Memory Checks:** Use `make valgrind` to perform memory leak checks (non-Mac users).

## Practices Demonstrated

- **Recursive Algorithms:** The project makes extensive use of recursion for tree manipulation operations such as insertion, deletion, and balancing.
- **Efficient Traversal:** The use of threaded nodes significantly reduces the time complexity of in-order traversal from O(n) to O(1) for successive accesses.
- **Strong Type Safety:** By using templating, the map class ensures type safety at compile time, preventing common data type errors.
- **Memory Management:** The implementation carefully manages memory, ensuring all dynamically allocated nodes are properly deleted to prevent memory leaks.

## Advanced Topics Covered

- **Seesaw Balancing:** This unique balancing method ensures optimal performance even under varying operation conditions.
- **Complexity Analysis:** Each function is documented with time and space complexity, reflecting a deep understanding of performance considerations.


## Code Availability

Due to copyright restrictions, the complete source code is not included in this public repository. However, if you are interested in reviewing the full code, I can provide access to the entire private repository. Please contact me directly, and I will be happy to grant you permission to read the repository.
