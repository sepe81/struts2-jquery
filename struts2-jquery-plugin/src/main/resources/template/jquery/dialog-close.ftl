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
</div>
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
	var options_${escapedOptionId} = {};
  <#if attributes.height! != "">
  	<#if attributes.height! == "auto">
	options_${escapedOptionId}.height = "auto";
  	<#else>
	options_${escapedOptionId}.height = ${attributes.height};
  	</#if>
  </#if>
  <#if attributes.width! != "">
 	<#if attributes.width! == "auto">
	options_${escapedOptionId}.width = "auto";
  	<#else>
	options_${escapedOptionId}.width = ${attributes.width};
  	</#if>
  </#if>
   <#if attributes.maxHeight! != "">
	options_${escapedOptionId}.maxHeight = ${attributes.maxHeight};
  </#if>
  <#if attributes.maxWidth! != "">
	options_${escapedOptionId}.maxWidth = ${attributes.maxWidth};
  </#if>
   <#if attributes.minHeight! != "">
	options_${escapedOptionId}.minHeight = ${attributes.minHeight};
  </#if>
  <#if attributes.minWidth! != "">
	options_${escapedOptionId}.minWidth = ${attributes.minWidth};
  </#if>
  <#if attributes.title! != "">
	options_${escapedOptionId}.title = "<#outputformat 'JavaScript'>${attributes.title}</#outputformat>";
  </#if>
  <#if attributes.dialogClass! != "">
	options_${escapedOptionId}.dialogClass = "${attributes.dialogClass}";
  </#if>
  <#if attributes.showEffect! != "">
	options_${escapedOptionId}.show = "${attributes.showEffect}";
  </#if>
  <#if attributes.hideEffect! != "">
	options_${escapedOptionId}.hide = "${attributes.hideEffect}";
  </#if>
  <#if attributes.position! != "">
  	  <#-- Is position an Array or Object? -->
	  <#if attributes.position?substring(0, 1) == "[" || attributes.position?substring(0, 1) == "{">
	options_${escapedOptionId}.position = <#outputformat 'JavaScript'>${attributes.position}</#outputformat>;
	  <#else>
	options_${escapedOptionId}.position = <#outputformat 'JavaScript'>"${attributes.position}"</#outputformat>;
	  </#if>
  </#if>
  <#if attributes.appendTo! != "">
    options_${escapedOptionId}.appendTo = "${attributes.appendTo}";
  </#if>
  <#if attributes.buttons! != "">
	options_${escapedOptionId}.buttons = ${attributes.buttons?no_esc};
  </#if>
  <#if attributes.draggable??>
	options_${escapedOptionId}.draggable = ${attributes.draggable?string};
  </#if>
  <#if attributes.resizable??>
	options_${escapedOptionId}.resizable = ${attributes.resizable?string};
  </#if>
  <#if attributes.autoOpen??>
	options_${escapedOptionId}.autoOpen = ${attributes.autoOpen?string};
  </#if>
  <#if attributes.closeOnEscape??>
	options_${escapedOptionId}.closeOnEscape = ${attributes.closeOnEscape?string};
  </#if>
  <#if attributes.modal! == "true" >
	options_${escapedOptionId}.modal = true;
  </#if>
  <#if attributes.onOpenTopics! != "">
	options_${escapedOptionId}.onopentopics = "${attributes.onOpenTopics}";
  </#if>
  <#if attributes.onCloseTopics! != "">
	options_${escapedOptionId}.onclosetopics = "${attributes.onCloseTopics}";
  </#if>
  <#if attributes.onFocusTopics! != "">
	options_${escapedOptionId}.onfocustopics = "${attributes.onFocusTopics}";
  </#if>
  <#if attributes.onBeforeCloseTopics! != "">
	options_${escapedOptionId}.onbeforeclosetopics = "${attributes.onBeforeCloseTopics}";
  </#if>
  <#if attributes.openTopics! != "">
	options_${escapedOptionId}.opentopics = "${attributes.openTopics}";
  </#if>
  <#if attributes.closeTopics! != "">
	options_${escapedOptionId}.closetopics = "${attributes.closeTopics}";
  </#if>
  <#if attributes.destroyTopics! != "">
	options_${escapedOptionId}.destroytopics = "${attributes.destroyTopics}";
  </#if>
<#include "/${attributes.templateDir}/jquery/base.ftl" />
<#include "/${attributes.templateDir}/jquery/interactive.ftl" />
<#include "/${attributes.templateDir}/jquery/topics.ftl" />
<#include "/${attributes.templateDir}/jquery/action.ftl" />

<#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
 });
</@s.script>
