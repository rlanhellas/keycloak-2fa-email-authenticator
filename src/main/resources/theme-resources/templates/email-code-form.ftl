<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        Access Code Form
    <#elseif section = "header">
        Access Code Form
    <#elseif section = "form">
        <h3>${msg("titleCode")}</h3>
        <form action="${url.loginAction}" class="${properties.kcFormClass!}" id="kc-u2f-login-form" method="post">
            <div class="${properties.kcFormGroupClass!}" style="padding-left: 10px;">
                <input id="emailCode" name="emailCode" type="text" inputmode="numeric" pattern="[0-9]*" style="width: 90%" />
            </div>

            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"
                   type="submit" value="${msg("doSubmit")}"/>

            <input name="resend"
                   class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"
                   type="submit" value="${msg("resendCode")}"/>

            <input name="cancel"
                   class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"
                   type="submit" value="${msg("doCancel")}"/>
        </form>
    </#if>
</@layout.registrationLayout>