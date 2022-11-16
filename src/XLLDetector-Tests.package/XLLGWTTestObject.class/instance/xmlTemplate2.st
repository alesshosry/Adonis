as yet unclassified
xmlTemplate2

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
    <g:HTMLPanel width="24em" styleName="{style.panel}">
        <div class="{style.logo}"/> 
        <div class="{style.aboutText}">
            <ui:msg key="aboutText">This sample application demonstrates step by step the construction of a Maven-Spring-GWT-Hibernate application.</ui:msg>
        </div> 
        <div class="{style.buttons}">
            <g:Button ui:field="closeButton"> 
            </g:Button>
        </div>
    </g:HTMLPanel>
</ui:UiBinder>'