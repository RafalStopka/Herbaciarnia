package com.items.products;

public class Product
{
    private int productID;
    private int categoryID;
    private String productName;
    private String productDescription;
    private String imageName;


    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public Product(int productID, int categoryID, String productName, String productDescription, String imageName)
    {
        this.categoryID = categoryID;
        this.productID = productID;
        this.imageName = imageName;
        this.productName = productName;
        this.productDescription = productDescription;
    }

}
