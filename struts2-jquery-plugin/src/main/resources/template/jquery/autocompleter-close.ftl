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
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
  <#if attributes.valueWidget! != "">
	jQuery("#${attributes.id}").val("${attributes.valueWidget}");
  </#if>
	var options_${escapedOptionId} = {};
  <#if attributes.widgetid! != "">
	options_${escapedOptionId}.hiddenid = "${attributes.widgetid}";
  </#if>
  <#if attributes.delay??>
	options_${escapedOptionId}.delay = ${attributes.delay};
  </#if>
  <#if attributes.loadMinimumCount??>
	options_${escapedOptionId}.minimum = ${attributes.loadMinimumCount};
  </#if>
  <#if attributes.autoFocus!false >
	options_${escapedOptionId}.autoFocus = true;
  </#if>
  <#if attributes.selectBox!false || (attributes.list?? && attributes.listKey?? && !attributes.hrefUrl??) >
	options_${escapedOptionId}.selectBox = true;
  <#else>
	options_${escapedOptionId}.selectBox = false;
  </#if>
  <#if attributes.selectBoxIcon!false >
	options_${escapedOptionId}.selectBoxIcon = true;
  </#if>
  <#if attributes.onSearchTopics??>
	options_${escapedOptionId}.onsearchtopics = "${attributes.onSearchTopics}";
  </#if>
  <#if attributes.forceValidOption!true >
	options_${escapedOptionId}.forceValidOption = true;
  <#else>
	options_${escapedOptionId}.forceValidOption = false;
  </#if>
  <#if attributes.onSelectTopics??>
	options_${escapedOptionId}.onselecttopics = "${attributes.onSelectTopics}";
  </#if>
  <#if attributes.requestType??>
	options_${escapedOptionId}.requesttype = "${attributes.requestType}";
  </#if>

  <#if attributes.list?? && !attributes.listKey?? && !attributes.selectBox?? &&  !attributes.hrefUrl??>
	options_${escapedOptionId}.list = new Array();
<@s.iterator value="attributes.list">
        <#if attributes.listValue??>
            <#if stack.findString(attributes.listValue)??>
              <#assign itemValue = stack.findString(attributes.listValue)/>
            <#else>
              <#assign itemValue = ''/>
            </#if>
        <#else>
            <#assign itemValue = stack.findString('top')/>
        </#if>
	options_${escapedOptionId}.list.push("${itemValue}");
</@s.iterator>
  </#if>
  <#if attributes.remoteList?? && attributes.hrefUrl?? && !attributes.selectBox??>
	options_${escapedOptionId}.list = "${attributes.remoteList}";
	<#if attributes.remoteListKey??>
	options_${escapedOptionId}.listkey = "${attributes.remoteListKey}";
	</#if>
	<#if attributes.remoteListValue??>
	options_${escapedOptionId}.listvalue = "${attributes.remoteListValue}";
	</#if>
	<#if attributes.listLabel??>
	options_${escapedOptionId}.listlabel = "${attributes.listLabel}";
	</#if>
  </#if>

  <#include "/${attributes.templateDir}/jquery/base.ftl" />
  <#include "/${attributes.templateDir}/jquery/interactive.ftl" />
  <#include "/${attributes.templateDir}/jquery/topics.ftl" />
  <#include "/${attributes.templateDir}/jquery/action.ftl" />
  <#include "/${attributes.templateDir}/jquery/container.ftl" />
  <#include "/${attributes.templateDir}/jquery/draggable.ftl" />
  <#include "/${attributes.templateDir}/jquery/droppable.ftl" />
  <#include "/${attributes.templateDir}/jquery/resizable.ftl" />
  <#include "/${attributes.templateDir}/jquery/selectable.ftl" />
  <#include "/${attributes.templateDir}/jquery/sortable.ftl" />

  <#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
 });
</@s.script>
