public class PricingCalculator {

    private Decimal basePrice;

    public PricingCalculator(Decimal initialPrice) {
        basePrice = initialPrice;
    }

    public Decimal getBasePrice() {
        return basePrice;
    }

    public void updateBasePrice(Decimal newPrice) {
        if (newPrice != null && newPrice > 0) {
            basePrice = newPrice;
        }
    }

    public Decimal calculateFinalPrice(Decimal taxRate, Decimal discountRate) {
        Decimal finalPrice = basePrice;

        if (taxRate != null && taxRate > 0) {
            finalPrice = finalPrice + (basePrice * taxRate);
        }

        if (discountRate != null && discountRate > 0) {
            finalPrice = finalPrice - (basePrice * discountRate);
        }

        return finalPrice;
    }
}