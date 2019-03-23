package com.items.categories;

public class Category
{
    private int categoryID;
    private String categoryName;
    private String categoryDescription;
    private String categoryText;
    private String imageName;
    private String productGet;
    private String categoryType;

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public String getCategoryText() {
        return categoryText;
    }

    public void setCategoryText(String categoryText) {
        this.categoryText = categoryText;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getProductGet() {
        return productGet;
    }

    public void setProductGet(String productGet) {
        productGet = productGet;
    }

    public String getCategoryType() {
        return categoryType;
    }

    public void setCategoryType(String categoryType) {
        categoryType = categoryType;
    }
    public Category(int categoryID, String categoryName, String categoryDescription, String imageName, String categoryText,
                                                                                    String productGet, String categoryType)
    {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.categoryDescription = categoryDescription;
        this.imageName = imageName;
        this.categoryText = categoryText;
        this.productGet = productGet;
        this.categoryType = categoryType;
    }
    public Category()
    {

    }
}
