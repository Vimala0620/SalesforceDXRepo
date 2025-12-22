public class CustomerAccountService1 {

    private String customerName;
    private Boolean activeStatus;

    public CustomerAccountService1(String inputName) {
        customerName = inputName;
        activeStatus = true;
    }

    public String getCustomerName() {
        return customerName;
    }

    public Boolean isActive() {
        return activeStatus;
    }

    public void deactivateAccount() {
        if (activeStatus) {
            activeStatus = false;
        }
    }

    public List<String> buildCustomerTags(Integer tagCount) {
        List<String> tags = new List<String>();

        if (tagCount > 0) {
            for (Integer index = 0; index < tagCount; index++) {
                tags.add(customerName + '-TAG-' + index);
            }
        }

        return tags;
    }
}