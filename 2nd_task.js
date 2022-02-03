/*
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
*/


let a = []
let b = []
let c = []


let buckets = [[a,0.5],[b,0.3],[c,0.2]]

function pick_arr(cust_id,buckets) {

    let rand = Math.random();
    let eff = 0;

    for (let i = 0; i < buckets.length; i++) {
        eff += buckets[i][1];

        if (eff > rand) {
            buckets[i][0].push(cust_id);
            break;
        }
    }
}

// let cust_id_arr = [231,689,823,457,925,712,567,568,926,431]
let cust_id_arr = [6,5,8,9]

for(let i=0;i<cust_id_arr.length;i++){
  pick_arr(cust_id_arr[i],buckets)
}

console.log(a)
console.log(b)
console.log(c)

/*
1st iteration
[ 6, 8, 9 ]
[ 5 ]
[]

2nd iteration
[ 5, 9 ]
[ 6 ]
[ 8 ]

3rd iteration
[ 9 ]
[ 6, 5 ]
[ 8 ]
*/
