<#--
/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
<#assign escapedOptionId="${attributes.escapedId}">
<#if attributes.list?? >
    <@s.iterator value="attributes.list" status="rowstatus">
        <#if attributes.listKey??>
            <#if stack.findValue(attributes.listKey)??>
                <#assign itemKey = stack.findValue(attributes.listKey)/>
                <#assign itemKeyStr = stack.findString(attributes.listKey)/>
            <#else>
                <#assign itemKey = ''/>
                <#assign itemKeyStr = ''/>
            </#if>
        <#else>
            <#assign itemKey = stack.findValue('top')/>
            <#assign itemKeyStr = stack.findString('top')>
        </#if>
        <#if attributes.listValue??>
            <#if stack.findString(attributes.listValue)??>
                <#assign itemValue = stack.findString(attributes.listValue)/>
            <#else>
                <#assign itemValue = ''/>
            </#if>
        <#else>
            <#assign itemValue = stack.findString('top')/>
        </#if>
        <#if itemValue! == "">
            <#assign itemValue = itemKeyStr/>
        </#if>
        <#if attributes.paramValues! != "">
            <#assign hrefValues>
                <#list attributes.paramValues?split(",") as tmp>${stack.findString(tmp)!''}<#if tmp_has_next>,</#if></#list>
            </#assign>
        </#if>
        <li id="${escapedOptionId}_li_<@s.property value="%{#rowstatus.count}" />">
            <div>
                <#if attributes.href??>
                    <#if attributes.targets! != "">
                        <a id="${escapedOptionId}_li_<@s.property value="%{#rowstatus.count}" />_anchor" href="javascript:void(0)">
                            ${itemValue}
                        </a>
                        <#assign escapedOptionLinkId="${escapedOptionId}_li">
                        <#assign optionsLiVariableName>options_${escapedOptionLinkId}_<@s.property value="%{#rowstatus.count}" /></#assign>
                        <@s.script type='text/javascript'>
                            jQuery(document).ready(function () {
                                var ${optionsLiVariableName} = {};
                                ${optionsLiVariableName}.jqueryaction = "menuItem";
                                ${optionsLiVariableName}.id = "${escapedOptionId}_li_<@s.property value="%{#rowstatus.count}" />";
                            <#if attributes.targets! != "">
                                ${optionsLiVariableName}.targets = "${attributes.targets}";
                            </#if>
                            <#if attributes.href! != "">
                                ${optionsLiVariableName}.href = "${attributes.href}";
                            </#if>
                                ${optionsLiVariableName}.hrefparameter = "${attributes.paramName!'id'}=${itemKeyStr}";
                                jQuery.struts2_jquery_ui.bind(jQuery('#${escapedOptionId}_li_<@s.property value="%{#rowstatus.count}" />'), ${optionsLiVariableName});
                            });
                        </@s.script>
                    <#else>
                        <a href="${attributes.href}?${attributes.paramName!'id'}=${itemKeyStr}">
                            ${itemValue}
                        </a>
                    </#if>
                <#else>
                    <a href="javascript:void(0)">
                        ${itemValue}
                    </a>
                </#if>
            </div>
        </li>
    </@s.iterator>
</#if>
</ul>
<#if !attributes.subMenu!false>
    <@s.script type='text/javascript'>
        jQuery(document).ready(function () {
            var options_${escapedOptionId} = {};
        <#if attributes.disabled!false>
            options_${escapedOptionId}.disabled = true;
        </#if>
        <#if attributes.targets! != "">
            options_${escapedOptionId}.targets = "${attributes.targets}";
        </#if>
        <#if attributes.href! != "">
            options_${escapedOptionId}.href = "${attributes.href}";
        </#if>
            <#include "/${attributes.templateDir}/jquery/base.ftl" />
            <#include "/${attributes.templateDir}/jquery/interactive.ftl" />
            <#include "/${attributes.templateDir}/jquery/topics.ftl" />

            <#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
        });
    </@s.script>
</#if>
