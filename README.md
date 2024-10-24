<h1>Go-Swift Integration: Fibonacci Sequence Example</h1>

<p>This repository demonstrates how to integrate Go code into an iOS project using Swift. The primary focus is showcasing the use of Go to compute the Fibonacci sequence and expose it to Swift through a shared library.</p>

<p>For a more in-depth look at the implementation details, including code examples and explanations, click on this link: <a href="https://secretive-fascinator-c6c.notion.site/GO-Wrapper-in-Swift-126d7fcea35280e3aa7eff0076d13135?pvs=4">Detailed Implementation</a>.</p>

<h2>Concept Overview</h2>
<p>This project serves as an example of cross-language interaction between Go and Swift using cgo. The Go code calculates the Fibonacci sequence and is compiled into a shared C-compatible library (.so) that can be imported and utilized within a Swift iOS application.</p>

<h2>Contents</h2>
<ul>
  <li><strong>Go Code:</strong> Contains Go code to compute the Fibonacci sequence. It uses cgo to export functions in a way that can be used in Swift.</li>
  <li><strong>Swift iOS Project:</strong> A basic iOS project that integrates the Go library. The Swift app calls the Go-compiled shared library to compute and display Fibonacci numbers.</li>
</ul>

<h2>Workflow</h2>
<ul>
  <li><strong>Go Code (fibonacci.go):</strong> The Go code uses cgo to expose a Fibonacci function, which allocates and returns the sequence as a C array.</li>
  <li><strong>Build Shared Library:</strong> The Go code is compiled into a shared object (<code>libfibonacci.so</code>) that can be linked with C-compatible languages like Swift.</li>
  <li><strong>Swift iOS Project:</strong> The iOS app dynamically links the shared Go library and uses it to compute Fibonacci numbers directly within the app.</li>
</ul>

<h2>How It Works</h2>
<p>The Go code is made compatible with C via cgo, allowing it to be compiled as a shared library (.so). The Swift project then loads this shared library at runtime and calls the Go function as if it were a native Swift function. This allows us to leverage Go’s performance and logic in a Swift-based iOS application.</p>

<h2>Getting Started</h2>
<h3>Compile the Go Code:</h3>
<p>Use the Go build command to compile the shared library:</p>
<pre><code>go build -o libfibonacci.so -buildmode=c-shared .</code></pre>

<h3>Integrate in Swift:</h3>
<p>The Swift iOS app dynamically loads the compiled Go library using <code>dlopen</code> and calls the exposed Fibonacci function.</p>

<h2>More Detailed Implementation</h2>
<p>For a more in-depth look at the implementation details, including code examples and explanations, click on this link: <a href="https://secretive-fascinator-c6c.notion.site/GO-Wrapper-in-Swift-126d7fcea35280e3aa7eff0076d13135?pvs=4">Detailed Implementation</a>.</p>
