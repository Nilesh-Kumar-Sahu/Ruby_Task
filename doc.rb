class Hash
  def [](key)
    value = (fetch key, nil) || (fetch key.to_s, nil) || (fetch key.to_sym, nil)
  end

  def []=(key,val)
    if (key.is_a? String) || (key.is_a? Symbol)
        self.delete key.to_sym
        self.delete key.to_s
    end
    merge!({key => val})
  end
end

class HWIA < Hash

  def initialize
    super
  end
end

new_hash = HWIA.new
new_hash = {a: 1,b: 2}
# new_hash = {'a'=> 1,'b'=> 2}

p new_hash[:a]
p new_hash['a']


=begin
===========================================
2nd Task
===========================================

function shuffle_ele_of(arr) {
  let curr_idx = arr.length,
    rand_idx;

  while (curr_idx != 0) {
    rand_idx = Math.floor(Math.random() * curr_idx);
    curr_idx--;

    [arr[curr_idx], arr[rand_idx]] = [arr[rand_idx], arr[curr_idx]];
  }

  return arr;
}

let arr = [2, 11, 37, 42, 58, 82, 64, 9, 31, 46];
shuffle_ele_of(arr);

let len = arr.length;
let a_len = Math.floor(0.5 * len);
let b_len = Math.floor(0.3 * len);
let c_len = len - (a_len + b_len);
let idx = 0;

let a = [];
let b = [];
let c = [];

for (let i = idx; i < a_len; i++, idx++) {
  a[i] = arr[i];
}

for (let i = 0; i < b_len; i++, idx++) {
  b[i] = arr[idx];
}

for (let i = 0; i < c_len; i++, idx++) {
  c[i] = arr[idx];
}

console.log(a); // [ 11, 9, 46, 31, 58 ]
console.log(b); // [ 37, 82, 42 ]
console.log(c); // [ 2, 64 ]

=end
