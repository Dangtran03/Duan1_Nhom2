/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.customer;

import Utilities.annotations.table.Table;
import Utilities.annotations.table.TableHeader;
import java.awt.Color;
import java.awt.Graphics;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableColumnModel;
import net.miginfocom.swing.MigLayout;

/**
 *
 * @author thinhorigami
 */
public class MyTable<TData, TControl extends JPanel> extends JTable {
    
    public MyTable(Class<TData> _data, Class<TControl> _control) throws Exception {
        init(_data, _control);
    }
    
    public void init(Class<TData> _data, Class<TControl> _control) throws Exception {
        
        // TData contraint @Table
        if (!_data.isAnnotationPresent(Table.class)) {
            throw new Exception(
                    _data.getName() + " mot has " + Table.class.getName());
        }
        
        List<String> fields = Arrays.stream(_data.getDeclaredFields())
                .filter((arg) -> (arg.isAnnotationPresent(TableHeader.class)))
                .map((arg) -> (arg.getAnnotation(TableHeader.class).name()))
                .toList();
        
        // @TableHeader.name() is header of column
        DefaultTableModel model = (DefaultTableModel)this.getModel();
        for (String name: fields) model.addColumn(name);
        System.out.println(model.getColumnCount());
    }
}
