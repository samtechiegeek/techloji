/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;

/**
 *
 * @author Windows
 */
public class Category {
    
    private int cid;
    private String category;
    private String description;
    private String categorypics;

    public Category(int cid, String category, String description) {
        this.cid = cid;
        this.category = category;
        this.description = description;
    }

    public Category() {
    }

    public Category(int cid, String category, String description, String categorypics) {
        this.cid = cid;
        this.category = category;
        this.description = description;
        this.categorypics = categorypics;
    }
 
    
    
    public int getCid() {
        return cid;
    }

    public String getCategorypics() {
        return categorypics;
    }

    public void setCategorypics(String categorypics) {
        this.categorypics = categorypics;
    }

    public Category(String category, String description) {
        this.category = category;
        this.description = description;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
