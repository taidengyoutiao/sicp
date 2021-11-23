/**
 * “语法”（规定“能够怎么写”）
 * （然而，具体的写法不过是“形式”，这种形式的“背后”表达的机制才是“真正的语法”，或者说是一个“语法特性”）
 * （而这个“背后”，就是“数学/计算”领域的理论了）
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
//【变量】的抽象，表达使用一个“名字”取「代表」某个“东西”。而具体的“代表关系”记录在相应的 environment 中（重点在于代表和取值）
//【变量 & 值】的抽象，在于一个变量的值可以随意变化
var counter = 0;
counter++;
//【变量 & 过程】的抽象在于，过程可以有参数，也就是多个类似过程中，抽象出来公共的部分，传入相应的参数，即可成为这多个类似的过程。
function doIt(param) {
  // things happend inner this notion(doIt)
}
//【选择】
if (counter > 5) {
} else {
}
//【重复】
// 循环(iteration)
while (counter < 5) {
  counter++;
}
// 递归(recursion)
function recur(counter) {
  if (counter > 5) {
    return "end";
  } else {
    recur(counter++);
  }
}
