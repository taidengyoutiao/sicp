/**
 * “语法”（规定“能够怎么写”）
 * 语法主要分两部分，【语言特性】以及【写法】。其中，语言特性是本质。
 */
// 【表达式】expression（合法的表达式，源码组成的基本单位）

// 真正的语法（语法特性）：定义一个【变量】
// 形式上的语法：js 中 var、let 都可以声明一个变量
var variable;

/**
 * “抽象”（关于某些东西的共同“本质”）
 * 使用方法：定义一个概念 -> 使用这个概念
 */
//【变量】的抽象，重点在于给某“东西”“起名”。而这“代表关系”记录在“此变量的 environment”中
//【变量 & 值】的抽象，是“变量类型”，重点在于，只要符合这个类型，一个变量的值可以随意变化
var counter = 0;
counter++;
//【变量 & 过程】的抽象在于，过程可以有参数，也就是多个类似过程中，抽象出来公共的部分，传入相应的参数，即可成为这多个”类似但不同“的过程。
function doIt(param) {
  // things happend inner this notion(doIt)
}
//【选择】
if (counter > 5) {
} else {
}
//【重复】
//【循环】(iteration)（一轮一轮的结局，每一轮都是一样的）
while (counter < 5) {
  counter++;
}
//【递归】(recursion)（子问题、父问题都可以用同一过程解决）
function recur(counter) {
  if (counter > 5) {
    return "end";
  } else {
    recur(counter++);
  }
}
