/*:
 ## Exercise: Treehouse Pulley
 
 In this exercise, you're using code to decide whether it's safe to add items to a basket that will be delivered to your treehouse by a pulley.
 
 - callout(Exercise):
 Create three constants for items of different weights that you'd like to bring up to your fort: one less than 100, one between 100 and 1000, and one over 1000.
 */

let pizza = 50
let soda = 150
let tv = 1200
/*:
 - callout(Exercise):
 Use the `TreehousePulley` type's `addLoadToBasket` method to add the items you defined above. Add three of the lightest item, two of the middle-weight item, and one of the heaviest item. Add the items to the lightweight pulley first, using the `canHandleAdditionalLoad` method to check whether the item would overload the pulley, then move on to your stronger pulley when the first is fully loaded.\
 If your pulleys together aren't enough to hold all the items you need, create a third super heavy-duty pulley to finish the job.

[Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Identity](@next)
 */
var ricketyRope = TreehousePulley(weightCapacity: 200)
var strongRope = TreehousePulley(weightCapacity: 2000)

ricketyRope.addLoadToBasket(loadWeight: pizza)
if ricketyRope.canHandleAdditionalLoad(pizza) {
    ricketyRope.addLoadToBasket(loadWeight: pizza)
}
if ricketyRope.canHandleAdditionalLoad(pizza) {
    ricketyRope.addLoadToBasket(loadWeight: pizza)
}
if ricketyRope.canHandleAdditionalLoad(soda) {
    ricketyRope.addLoadToBasket(loadWeight: soda)
} else {
    strongRope.addLoadToBasket(loadWeight: soda)
}
if strongRope.canHandleAdditionalLoad(soda) {
    strongRope.addLoadToBasket(loadWeight: soda)
}
if strongRope.canHandleAdditionalLoad(tv) {
    strongRope.addLoadToBasket(loadWeight: tv)
}else {
    print("too much for strong rope")
}
