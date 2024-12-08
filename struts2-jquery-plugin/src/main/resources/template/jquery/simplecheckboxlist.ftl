<#--
/*
 * $Id: checkboxlist.ftl 720258 2008-11-24 19:05:16Z musachy $
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
<#assign itemCount = 0/>
<#if attributes.list??>
    <@s.iterator value="attributes.list">
        <#assign itemCount = itemCount + 1/>
        <#if attributes.listKey??>
            <#assign itemKey = stack.findValue(attributes.listKey)/>
        <#else>
            <#assign itemKey = stack.findValue('top')/>
        </#if>
        <#if attributes.listValue??>
            <#assign itemValue = stack.findString(attributes.listValue)?default("")/>
        <#else>
            <#assign itemValue = stack.findString('top')/>
        </#if>
<#assign itemKeyStr=itemKey.toString() />
<input type="checkbox" name="${attributes.name}" value="${itemKeyStr}" id="${attributes.name}-${itemCount}"<#rt/>
        <#if attributes.disabled?default(false)>
 disabled="disabled"<#rt/>
        </#if>
        <#if attributes.title??>
 title="${attributes.title}"<#rt/>
        </#if>
        <#include "/${attributes.templateDir}/simple/scripting-events.ftl" />
        <#include "/${attributes.templateDir}/simple/common-attributes.ftl" />
/>
<label for="${attributes.name}-${itemCount}" class="checkboxLabel">${itemValue}</label>
    </@s.iterator>
<#else>
  &nbsp;
</#if>