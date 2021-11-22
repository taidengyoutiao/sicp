/**
 * “语法”（规定“能够怎么写”）
 * （然而，具体的写法不过是“形式”，这种形式的“背后”表达的机制才是“真正的语法”，或者说是一个“语法特性”）
 */
// 真正的语法（语法特性）：定义一个【变量】
// 形式上的语法：js 中 var、let 都可以声明一个变量
var variable;
let variable1;

/**
 * “硬”编码（只有值，且只会“执行一次”）
 */
1 + 2;

/**
 * “抽象”（关于某些东西的共同“本质”）
 * 定义一个概念 -> 使用这个概念
 */
// 最基本的“抽象” - 【变量 & 值】
var counter = 0;
counter++;
// 过程的“抽象” - 【变量 & 过程】
function doIt() {
  // things happend inner this notion(doIt)
}

// 循环(iteration)
while (counter < 5) {
  // iter
}

// 递归(recursion)
function recur(counter) {
  if (counter > 5) {
    return "end";
  } else {
    recur(counter++);
  }
}
