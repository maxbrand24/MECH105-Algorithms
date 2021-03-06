# False Position
---
**Summary:** This MATLAB function estimates a root of a given function. It also checks to see if the function is positive when evaluated at endpoints, if so, it returns an error.
---
**Inputs:**

- func - the function being evaluated
 - the lower guess
 - the upper guess
- es - the desired relative error (should default to 0.0001%)
- maxit - the maximum number of iterations to use (should default to 200)
- varargin, . . . - any additional parameters used by the function

---
**Outputs:**
- root - the estimated root location
- fx - the function evaluated at the root location
- ea - the approximate relative error (%)
- iter - how many iterations were performed
 ---
 **Limitations:**
 -No limitations
