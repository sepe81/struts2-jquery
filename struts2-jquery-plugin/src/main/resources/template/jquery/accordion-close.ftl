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
              <#assign itemKeyStr = itemKey.toString()/>
            <#else>
              <#assign itemKey = ''/>
              <#assign itemKeyStr = ''/>
            </#if>
        <#else>
            <#assign itemKey = stack.findValue('top')/>
            <#assign itemKeyStr = itemKey.toString()/>
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
 		<#if attributes.paramValues! != "">
		<#assign hrefValues>
        	<#list attributes.paramValues?split(",") as tmp>${stack.findString(tmp)!''}<#if tmp_has_next>,</#if></#list>
		</#assign>
        </#if>
	<${attributes.header!'h3'} id="${escapedOptionId}_header_<@s.property value="%{#rowstatus.count}" />"><a id="${escapedOptionId}_a_<@s.property value="%{#rowstatus.count}" />" href="#"
<#if attributes.paramKeys! != "">
	 data-keys="${attributes.paramKeys?trim}"
</#if>
<#if attributes.paramValues! != "">
	 data-values="<#outputformat "HTML">${hrefValues}</#outputformat>"
</#if>
	 >${itemKeyStr}</a></${attributes.header!'h3'}>
		<div id="${escapedOptionId}_div_<@s.property value="%{#rowstatus.count}" />">
<#if attributes.href! == "">
			${itemValue}
</#if>
		</div>
	<#lt/>
</@s.iterator>
</#if>
</div>
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
	var options_${escapedOptionId} = {};
  <#if attributes.collapsible!false>
	options_${escapedOptionId}.collapsible = true;
  </#if>
  <#if attributes.openOnMouseover!false>
	options_${escapedOptionId}.event = "mouseover";
  </#if>
  <#if attributes.heightStyle! != "">
	options_${escapedOptionId}.heightStyle = "${attributes.heightStyle}";
  </#if>
  <#if attributes.active! != "">
	options_${escapedOptionId}.active = "${attributes.active}";
  </#if>
  <#if attributes.href! != "">
	options_${escapedOptionId}.href = "<#outputformat "JavaScript">${attributes.href}</#outputformat>";
  </#if>
  <#if attributes.header! != "">
	options_${escapedOptionId}.header = "${attributes.header}";
  </#if>
<#if attributes.animate! != "">
	options_${escapedOptionId}.animate = ${attributes.animate};
</#if>
<#if attributes.onCreateTopics??>
    options_${escapedOptionId}.oncreate = "${attributes.onCreateTopics}";
</#if>
  <#include "/${attributes.templateDir}/jquery/base.ftl" />
  <#include "/${attributes.templateDir}/jquery/interactive.ftl" />
  <#include "/${attributes.templateDir}/jquery/topics.ftl" />

  <#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
 });
</@s.script>
