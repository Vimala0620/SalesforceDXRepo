// Test Class: OpsBridgeTest.cls
@isTest
public class OpsBridgeTest {

    @isTest
    static void testAddNumbers() {

        // Call method
        Integer result = OpsBridge.addNumbers(10, 20);

        // Verify result
        System.assertEquals(30, result);
    }

    @isTest
    static void testGetMessage() {

        // Call method
        String msg = OpsBridge.getMessage();

        // Verify result
        System.assertEquals('Welcome to OpsBridge', msg);
    }
}