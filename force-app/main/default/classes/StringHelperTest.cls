@IsTest
private class StringHelperTest {
    @IsTest
    static void testReverse() {
        String result = StringHelper.reverse('ABC');
        System.assertEquals('CBA', result);
    }
}