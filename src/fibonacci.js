function fibonacci(n_elements) {
  let fibo_seq = [0, 1];
  while (fibo_seq.length < n_elements) {
    fibo_seq.push(fibo_seq[fibo_seq.length-2] + fibo_seq[fibo_seq.length-1])
  }

  return fibo_seq
}

module.exports = fibonacci;