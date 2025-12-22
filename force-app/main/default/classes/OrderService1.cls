public class OrderService1 {

    private Integer orderCount;

    public OrderService1() {
        orderCount = 0;
    }

    public Integer getOrderCount() {
        return orderCount;
    }

    public void incrementOrderCount(Integer incrementBy) {
        if (incrementBy > 0) {
            orderCount = orderCount + incrementBy;
        }
    }

    public List<String> getOrderNames() {
        List<String> orderNames = new List<String>();

        for (Integer i = 0; i < orderCount; i++) {
            orderNames.add('Order-' + i);
        }

        return orderNames;
    }

    public Boolean isValidOrderCount() {
        while (orderCount < 0) {
            orderCount = 0;
        }

        return true;
    }
}