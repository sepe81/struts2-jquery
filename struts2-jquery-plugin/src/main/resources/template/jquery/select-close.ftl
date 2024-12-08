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
	var options_${escapedOptionId} = {};
	options_${escapedOptionId}.datatype = "json";
	options_${escapedOptionId}.type = 'select';
<#if attributes.emptyOption!false>
	options_${escapedOptionId}.emptyoption = true;
</#if>
<#if attributes.headerKey?? && attributes.headerValue??>
	options_${escapedOptionId}.headerkey = "${attributes.headerKey}";
	options_${escapedOptionId}.headervalue = "${attributes.headerValue}";
</#if>
<#if attributes.list??>
	options_${escapedOptionId}.list = "${attributes.list}";
</#if>
<#if attributes.listKey??>
	options_${escapedOptionId}.listkey = "${attributes.listKey}";
</#if>
<#if attributes.listTitle??>
	options_${escapedOptionId}.listtitle = "${attributes.listTitle}";
</#if>
<#if attributes.listValue??>
	options_${escapedOptionId}.listvalue = "${attributes.listValue}";
</#if>
<#if attributes.nameValue??>
	options_${escapedOptionId}.value = "<@s.property value="attributes.nameValue"/>";
</#if>
<#if attributes.bindOn! != "">
	options_${escapedOptionId}.bindon = "${attributes.bindOn}";
</#if>
<#if attributes.events! != "">
	options_${escapedOptionId}.events = "${attributes.events}";
</#if>
<#if attributes.autocomplete!false>
	options_${escapedOptionId}.autocomplete = true;
</#if>
<#if attributes.selectBoxIcon!false >
	options_${escapedOptionId}.icon = true;
</#if>
<#if attributes.loadMinimumCount??>
	options_${escapedOptionId}.minimum = ${attributes.loadMinimumCount};
</#if>
<#if attributes.onSelectTopics! != "">
	options_${escapedOptionId}.onselecttopics = "${attributes.onSelectTopics}";
</#if>
<#if attributes.onFocusTopics??>
	options_${escapedOptionId}.onfocustopics = "${attributes.onFocusTopics}";
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

  <#include "/${attributes.templateDir}/jquery/jquery-bind.ftl" />
 });
</@s.script>
