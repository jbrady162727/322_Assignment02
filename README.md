# 🧹 Repository Cleanup Assignment

This repository is intentionally **messy**.  
Your task is to clean it up, reorganize the code, and prepare a proper project structure.

---

## 📌 Preparation

1. **Fork this repository** into your own GitHub account.  
   👉 Forking is mandatory — the final step is to return the link to your own repo.  
2. Work only in your fork. Do not push changes to the instructor’s repo.
3. Every file modification — whether it's a deletion, renaming, or adding even a single ASCII character — must be tracked with a Git commit that includes a clear and meaningful message.
👉 Commit messages should clearly explain what was changed and why.
4. **At the end**, don’t forget to run git push to upload all your changes to your forked repository.
👉 Otherwise, your work won't be visible on GitHub and cannot be reviewed.
---

## ✅ Tasks

### 1. Code organization
- Create a single source file **`math_ops.c`** that contains all mathematical functions currently scattered across the repository.  
- Place all **header files** related to the project in the **`include/`** directory.  
- Place all **source files (.c)** related to the project in the **`src/`** directory.  
- Place all **compiled object files (.o)** in the **`obj/`** directory.  
- Place all **executables (.exe)** in the **`bin/`** directory.  
- In the **`tests/`** directory, keep only the testing framework files:  
  - `tests.c`  
  - `unity.c`  
  - `unity.h`  
  - `unity_internals.h`  
  Do **not** modify these files – they are external code.

---

### 2. Cleanup
- Remove unnecessary files after moving functionality into `math_ops.c`.  
- Delete all unnecessary branches from the repository.  

---

### 3. Makefile
- Fix the **Makefile** so that it compiles all project files from the correct directories (use `*` patterns if possible).  
- Ensure test sources are compiled into a **separate executable**.  
- Add include guards (`#ifndef … #define … #endif`) in headers to prevent multiple inclusion.  
- The main build should **not** expose or run tests — tests are for development only.  

---

### 4. Main program
- Fix `main.c` so that all operations work correctly (hint: check how `--options` are handled).  
- Implement any **missing mathematical functions**.  

---

### 5. Git hygiene
- Update **`.gitignore`** to exclude at least:  
  ```gitignore
  /obj/
  /bin/

### Deliverable
After completing the cleanup and reorganization (only CMD!):

- tree /f > result.txt
- git log --graph >> result.txt
- git remote get-url origin >> result.txt



