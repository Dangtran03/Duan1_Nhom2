package model;

import java.util.Date;
import Utilities.annotations.table.SwingTable;
import Utilities.annotations.table.SwingTableHeader;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author thinhorigami
 */

@SwingTable
public class Customer {
    
    @SwingTableHeader(name = "ten")
    private String name;
    
    @SwingTableHeader(name =  "ngay sinh")
    private Date birth;
    
    @SwingTableHeader(name = "email")
    private String email;
}
