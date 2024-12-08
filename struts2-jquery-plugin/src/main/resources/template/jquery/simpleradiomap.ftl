<#--
/*
 * $Id: radiomap.ftl 720258 2008-11-24 19:05:16Z musachy $
 *
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
<#if attributes.list??>
<@s.iterator value="attributes.list">
    <#if attributes.listKey??>
        <#assign itemKey = stack.findValue(attributes.listKey)/>
    <#else>
        <#assign itemKey = stack.findValue('top')/>
    </#if>
    <#assign itemKeyStr = itemKey.toString() />
    <#if attributes.listValue??>
        <#assign itemValue = stack.findString(attributes.listValue)/>
    <#else>
        <#assign itemValue = stack.findString('top')/>
    </#if>
<input type="radio"<#rt/>
<#if attributes.name??>
 name="${attributes.name}"<#rt/>
</#if>
 id="${attributes.id}${itemKeyStr}"<#rt/>
<#if itemKey??>
 value="${itemKeyStr}"<#rt/>
</#if>
<#if attributes.disabled?default(false)>
 disabled="disabled"<#rt/>
</#if>
<#if attributes.tabindex??>
 tabindex="${attributes.tabindex}"<#rt/>
</#if>
<#if attributes.cssClass??>
 class="${attributes.cssClass}"<#rt/>
</#if>
<#if attributes.cssStyle??>
 style="${attributes.cssStyle}"<#rt/>
</#if>
<#if attributes.title??>
 title="${attributes.title}"<#rt/>
</#if>
<#include "/${attributes.templateDir}/simple/scripting-events.ftl" />
<#include "/${attributes.templateDir}/simple/common-attributes.ftl" />
/><#rt/>
<label for="${attributes.id}${itemKeyStr}"><#rt/>
    ${itemValue}<#t/>
</label>
</@s.iterator>
</#if>