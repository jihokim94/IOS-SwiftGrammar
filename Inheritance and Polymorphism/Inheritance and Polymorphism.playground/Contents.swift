import UIKit

//MARK: -μμ inheritance

class Figure {
    var name = "Unknown"
    
    init(name : String) {
        self.name = name
    }
    func draw () {
        print("draw \(name)")
    }
}

class Circle : Figure {
    var radius = 0.0
    
    var diameter : Double {
        return radius * 2
    }
    override func draw () {
        super.draw()
        print("π  \(name)")
    }
}

let c = Circle(name: "Circle")
c.radius
c.draw()

// μλΈ ν΄λμ€λ μνΌ ν΄λμ€λ‘ λΆν° λ©€λ²λ₯Ό μμ λ°λλ€

final class Rectangle : Figure {
    var width = 0.0
    var height = 0.0
}

// νμ΄λ ν΄λμ€λ λ€λ₯Έ ν΄λμ€μμ μμν΄μ€μ μλ€.
//class square : Rectangle {
//} μμ λΆκ° μ€λ₯ λ©μΈμ§ λΈ ! μ΄μ λ μμ κ°μ

//MARK: -Overriding

class Oval : Circle {
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        }
        
    }
}


let o = Oval(name: "Oval")
o.name
o.radius = 2
o.diameter
o.draw()




