/*
 * HeaderPanel.java
 *
 * Created on 7 septembre 2016, 14:14
 */
 
package com.myapp.wicket;           

import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.markup.html.panel.Panel;

/** 
 *
 * @author ZEUSCODE
 * @version 
 */

public class HeaderPanel extends Panel {

    public HeaderPanel(String componentName, String exampleTitle)
    {
        super(componentName);
        add(new Label("Title", exampleTitle));
    }

}
