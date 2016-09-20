var jset: Set<String> = ["雪女", "幽霊", "河童"]
var w = ["狼男", "吸血鬼", "幽霊"]

// 和集合を作成
let union = jset.union(w)
print(union) // ["河童", "雪女", "幽霊", "吸血鬼", "狼男"]

// 積集合を作成
jset.intersectInPlace(w)
print(jset) // ["幽霊"]
