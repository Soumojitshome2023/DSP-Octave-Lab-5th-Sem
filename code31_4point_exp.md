
### **Input and Initialization**

```matlab
N = input("Enter len : "); 
```

* The user enters `N = 4`. This defines the length of the signal.

```matlab
z = zeros(1, N);
```

* `z` is initialized as a complex array of zeros with size 1×41 \times 4.

---

### **Loop for Signal Generation**

```matlab
for n = 0:N-1
    k = 0:N-1;
```

* **`n` loop:** Iterates from `0` to `N-1` (0, 1, 2, 3).
* `k` is a vector containing the indices of the signal (0, 1, 2, 3).

```matlab
x = [ones(1,3), zeros(1,N-3)];
```

* **`x` definition:** `x` is a predefined signal with `1` for the first 3 elements and `0` for the remaining. For `N=4`, x=[1,1,1,0]x = [1, 1, 1, 0].

```matlab
y = ((2*pi*k)/N)*n;
```

* yy calculates the phase for each value of `k` and `n`.
* For N=4N = 4, yy becomes y=2π4⋅k⋅n=π2⋅k⋅ny = \frac{2\pi}{4} \cdot k \cdot n = \frac{\pi}{2} \cdot k \cdot n.

```matlab
z(k+1) = z(k+1) + x(n+1) .* exp(-1i*y);
```

* **Signal generation:**
  * The current value of z[k]z[k] is updated by adding x[n]⋅e−j(2πkn/N)x[n] \cdot e^{-j(2\pi k n / N)}.
  * This uses the Discrete Fourier Transform (DFT) formula.

---

### **Signal Analysis and Plotting**

**First plot: Real part of zz**

```matlab
subplot(2, 2, 1);
stem(k, real(z));
xlabel('n --->');
ylabel('Real Part of z --->');
```

* Plots the real part of the computed signal zz against the indices kk (0, 1, 2, 3).

**Second plot: Magnitude of zz**

```matlab
p = abs(z);
subplot(2, 2, 2);
stem(k, p);
xlabel('n --->');
ylabel('Amplitude --->');
```

* **`p` is the magnitude** of zz, calculated using abs(z)\text{abs}(z), which is the square root of the sum of the squares of the real and imaginary parts.
* Plots pp against kk.

**Third plot: Phase of zz**

```matlab
q = angle(z);
subplot(2, 2, 3);
stem(k, q);
xlabel('n --->');
ylabel('Phase --->');
```

* **`q` is the phase** of zz, calculated using angle(z)\text{angle}(z), which is the arctangent of the imaginary part over the real part.
* Plots qq against kk.

---

### **Example: For N=4N = 4**

1. **Input:** `N = 4`.
2. **Signal xx:** [1,1,1,0][1, 1, 1, 0].
3. **zz:** Computed iteratively by summing x[n]⋅e−j(2πkn/N)x[n] \cdot e^{-j(2\pi k n / N)} for all nn and kk.

### **Output:**

1. **Real part:** Shows the real components of zz.
2. **Magnitude:** Displays the amplitude of zz.
3. **Phase:** Visualizes the phase angles of zz.

Would you like me to run through calculations for each iteration of nn?
