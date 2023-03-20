package model;

import Utilities.annotations.table.Table;
import Utilities.annotations.table.TableHeader;
import java.util.Date;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author thinhorigami
 */

@Table
public class Customer {
    
    @TableHeader(name = "ten")
    private String name;
    
    @TableHeader(name =  "ngay sinh")
    private Date birth;
    
    @TableHeader(name = "email")
    private String email;
}
