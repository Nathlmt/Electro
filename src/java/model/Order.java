package model;

public class Order {
    private Product target;
    private int quantity;
    
    public Order() {}
    
    public Order(Product target, int quantity) {
        this.target = target;
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public Product getTarget() {
        return target;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setTarget(Product target) {
        this.target = target;
    }
    
    
}
