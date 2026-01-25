// Test class for ClassMathOperations
@isTest
public with sharing class ClassMathOperationsTest {
    //Test class for ClassMathOperations
    @isTest
    static void testAddIntegers() {
        //Arrange
        ClassMathOperations mathOps = new ClassMathOperations();
        Integer a = 5;
        Integer b = 10;
        Integer expected = 15;
        //Act
        Integer result = mathOps.addIntegers(a, b);
        //Assert
        System.assertEquals(expected, result, 'The addition result is incorrect.');
    }
    @isTest
    static void testSubtractIntegers() {
        //Arrange
        ClassMathOperations mathOps = new ClassMathOperations();
        Integer a = 10;
        Integer b = 5;
        Integer expected = 5;
        //Act
        Integer result = mathOps.subtractIntegers(a, b);
        //Assert

        System.assertEquals(expected, result, 'The subtraction result is incorrect.');
    }
    @isTest
    static void testMultiplyIntegers() {
        //Arrange
        ClassMathOperations mathOps = new ClassMathOperations();
        Integer a = 5;
        Integer b = 10;
        Integer expected = 50;
        //Act
        Integer result = mathOps.multiplyIntegers(a, b);
        //Assert
        System.assertEquals(expected, result, 'The multiplication result is incorrect.');
    }
    
    //Constructor
    
    public ClassMathOperationsTest() {

    }
}