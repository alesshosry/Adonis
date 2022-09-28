as yet unclassified
xmlTemplate 

^ '<ui:UiBinder xmlns:ui=''urn:ui:com.google.gwt.uibinder''
             xmlns:g="urn:import:com.google.gwt.user.client.ui"
             ui:generateFormat="com.google.gwt.i18n.rebind.format.PropertiesFormat"
             ui:generateKeys="com.google.gwt.i18n.server.keygen.MD5KeyGenerator"
             ui:generateLocales="fr,en">
    <ui:with field="msgs" type="com.hellogwt.client.i18n.ClientMessages"/>
    <ui:style>
        .southPanel {
            background-color: #777;
        }
    </ui:style>
    <g:SplitLayoutPanel>
        <g:north size="60" unit="EM">
            <g:HorizontalPanel>
                <g:TextBox ui:field="nameTextBox" width="100"/>
                <g:Label ui:field="greetingLabel" width="50" text="{msgs.helloGwt}"/>
            </g:HorizontalPanel>
        </g:north>

        <g:center>
            <g:VerticalPanel>
                <g:HorizontalPanel>
                    <g:Label width="50">
                        <ui:msg key="authorLabel">Author:</ui:msg>
                    </g:Label>
                    <g:TextBox ui:field="authorTextBox" width="100"/>
                </g:HorizontalPanel>

                <g:HorizontalPanel>
                    <g:Label width="50">
                        <ui:msg key="textLabel">Text:</ui:msg>
                    </g:Label>
                    <g:TextBox ui:field="textTextBox" width="100"/>
                </g:HorizontalPanel>

                <g:HorizontalPanel>
                    <g:Button ui:field="addButton" width="50">
                        <ui:msg key="add" description="Text on button">Add</ui:msg>
                    </g:Button>
                    <g:Button ui:field="updateButton" width="50">
                        <ui:msg key="update" description="Text on button">Update</ui:msg>
                    </g:Button>
                    <g:Button ui:field="deleteButton" width="50">
                        <ui:msg key="delete" description="Text on button">Delete</ui:msg>
                    </g:Button>
                </g:HorizontalPanel>

                <g:FlexTable ui:field="greetingsFlexTable"/>
            </g:VerticalPanel>
        </g:center>

        <g:south size="60" unit="EM">
            <g:FlowPanel styleName="{style.southPanel}">
                <g:HTML>
                    <span ui:field="statusMessage">
                        <ui:msg key="defaultStatusMessage" meaning="Default status message.">Application is loaded.</ui:msg>
                    </span>
                    <span ui:field="persistenceClassName"></span>
                    <p>
                        <a href="?locale=fr">français</a>,
                        <a href="?locale=en">English</a>
                    </p>
                </g:HTML>
                <g:Anchor href=''javascript:;'' ui:field=''aboutLink''>
                    <ui:msg key="about">About</ui:msg>
                </g:Anchor>
            </g:FlowPanel>
        </g:south>
    </g:SplitLayoutPanel>

</ui:UiBinder>'