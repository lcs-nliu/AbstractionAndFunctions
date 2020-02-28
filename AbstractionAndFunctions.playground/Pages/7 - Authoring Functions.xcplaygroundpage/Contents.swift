import Foundation

/*:
# Authoring Functions
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select eight formulas using this criteria:
 
 * two perimeter formulas
 * two area formulas
 * two surface area formulas
 * two volume formulas
 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Then, on this page, author the:

 * function definitions
 * appropriate documentation (as described on [page 6](@previous))
 * make good choices for function names, argument labels, and parameter names
 * test your functions by invoking them a few times to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each function.
 
 */
// Begin your work here...
// pi: 3, fraction: 2, power: 3, area: 1, volume: 2, surface area: 2, perimeter:2

/// Find the volume of a cylinder
/// - Parameters:
///   - radius: radius of the cylinder
///   - height: height of the cylinder
/// - Returns: the volume of the cyclinder

func volumeCylinder(radius: Double, height: Double) -> Double? {
    // Ensure that we have reasonable values
       guard radius > 0, height > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return Double.pi * height * pow(radius, 2.0)
}

volumeCylinder(radius: 5.0, height: 6.0)


/// Find the surface area of a sphere
/// - Parameter radius: radius of the sphere
/// - Returns: the surface area of the sphere
func surfaceAreaSphere(radius: Double) -> Double? {
    // Ensure that we have reasonable values
       guard radius > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return 4 * Double.pi * pow(radius, 2.0)
}

surfaceAreaSphere(radius:5.0)

/// Find the volume of a sphere
/// - Parameter radius: the radius of the sphere
/// - Returns: the volume of the sphere
func volumeSphere(radius: Double) -> Double? {
    // Ensure that we have reasonable values
       guard radius > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return 4/3 * Double.pi * pow(radius, 3.0)
}

volumeSphere(radius:5.0)


/// Find the area of a trapezoid
/// - Parameters:
///   - a: the shorter base length
///   - b: the longer base length
///   - height: the height of the trapezoid
/// - Returns: the area of the trapezoid

func areaTrapezoid(a: Double, b: Double, height: Double) -> Double? {
    // Ensure that we have reasonable values
       guard a > 0, b > 0, height > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return 1/2 * (a+b) * height
}

areaTrapezoid(a: 5.0, b: 10.0, height: 8.0)


/// Find the perimeter of a triangle
/// - Parameters:
///   - a: first side length
///   - b: second side length
///   - c: third side length
/// - Returns: the perimeter of a triangle
func perimeterTriangle(a: Double, b:Double, c: Double) -> Double? { // Ensure that we have reasonable values
       guard a > 0, b > 0, c > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return a+b+c
}

perimeterTriangle(a: 3, b:4, c: 5)


/// Find the perimeter of a rectangle
/// - Parameters:
///   - length: the length of the rectangle
///   - width: the width of the rectangle
/// - Returns: the perimeter of the rectangle
func perimeterRectangle(length l: Double, width w: Double) -> Double? {
    // Ensure that we have reasonable values
       guard l > 0, w > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return 2*(l+w)
}


/// Find the surface area of the pyramid
/// - Parameters:
///   - b: base length of the pyramid
///   - s: side length of the pyramid
/// - Returns: the surface area of the pyramid
func surfaceAreaPyramid(base b: Double, slantHeight s: Double) -> Double? {
    // Ensure that we have reasonable values
       guard b > 0, s > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
return pow (b,2) + 2*b*s
}

surfaceAreaPyramid (base: 5, slantHeight: 10)


/// Find the area of parallelogram
/// - Parameters:
///   - b: base length of the parallelogram
///   - h: height of the parallelogram
func areaParallelogram(baseLength b: Double, height h: Double) -> Double? {
    // Ensure that we have reasonable values
       guard b > 0, h > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return b*h
}




/*:
 [Previous: Writing Documentation](@previous) | Page 7
 */
