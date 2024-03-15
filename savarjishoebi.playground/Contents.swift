import UIKit

//while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.

var ricxvi=1
var namravli=1
while(ricxvi<20){
    if(ricxvi % 2 == 1){
        namravli*=ricxvi
    }
    ricxvi += 1;
}
print(namravli)


//შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”

var striqoni: String = "Test"
var axalistriqoni: String=""
for char in striqoni {
    axalistriqoni = String(char) + axalistriqoni
}
print(axalistriqoni)

//while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
var feri="🔴"
var shemdegi=""
while true{
    switch feri{
    case "🔴":
          shemdegi = "🟡"
      case "🟡":
          shemdegi = "🟢"
      case "🟢":
          shemdegi = "🔴"
      default:
          break
    }
    print(feri, terminator: "->")
    feri = shemdegi
}

//Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”

var biletebi = 100
while biletebi>0{
    biletebi -= 1
   print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(biletebi) რაოდენობა")
}
print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")

print()
//შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
let masivi = [12,32,12,43,54,6]
var pasuxi: Bool = false
var count = 0
for num in masivi{
    for ricx in masivi{
        if(ricx == num){
            count += 1
            if(count>1){
                pasuxi = true
            }
        }
    }
    count = 0
}
if pasuxi == true{
    print("array შეიცავს მსგავს ელემენტებს")
}
else {
    print("array-ში ყველა ელემენტი განსხვავებულია")
}

//დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას
let funqcia={ (num1: Int, num2: Int)->Int in
    return num1-num2
}
print(funqcia(12,2))

//დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.
let chari = ["ა","ე","ი","ო","უ"]
func tanxraoden (str: String) -> Int {
    var jami = 0
    for asoebi in str {
           for ch in chari {
               if String(asoebi) == ch {
                   jami += 1
               }
           }
       }
    return jami;
}

print(tanxraoden(str: "რაისა"))

//შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
let arr1 = [8,4,9,9,0,2]
let arr2 = [1,0,9,2,3,7,0,1]
var gaertianeba = arr1 + arr2
for i in 0..<gaertianeba.count {
    for j in 0..<gaertianeba.count {
        if gaertianeba[i] < gaertianeba[j] {
            let temp = gaertianeba[j]
            gaertianeba[j] = gaertianeba[i]
            gaertianeba[i] = temp
        }
    }
}
print(gaertianeba)

//დაწერეთ ფუნქცია, რომელსაც გადააწვდით int ტიპის პარამეტრს. გამოითვალეთ ამ პარამეტრის ფაქტორიალი და დაბეჭდეთ

func faqtoriali (numberi: Int){
    if numberi == 0{
        print("0 -is faqtoriali aris 1")
    }
    else{
        var namravli = 1
        for i in 1 ... numberi{
            namravli *= i
        }
        print("ricxvi \(numberi) - is faqtoriali aris \(namravli)")
    }
}
faqtoriali(numberi: 0)

//შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
var listi = [0,1,2,3,4,5,6,7,8,9,10]
var luwi = [Int]()
var kenti = [Int]()

for i in listi {
    if i % 2 == 0 {
        luwi.append(i)
    } else {
        kenti.append(i)
    }
}
print("kenti ricxvebis masivi: \(kenti)")
print("luwi ricxvebis masivi: \(luwi)")

