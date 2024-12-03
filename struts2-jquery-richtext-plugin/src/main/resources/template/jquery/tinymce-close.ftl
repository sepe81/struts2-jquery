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
	jQuery.struts2_jquery.require("js/struts2/jquery.richtext.struts2"+jQuery.struts2_jquery.minSuffix+".js");

	var options_${escapedOptionId} = {};
	options_${escapedOptionId}.type = 'text';

	options_${escapedOptionId}.path = "${base}/static/js/tinymce/";

	<#if attributes.editorSkin! != "">
	options_${escapedOptionId}.skin = "${attributes.editorSkin}";
	</#if>
	<#if attributes.editorSkinVariant! != "">
	options_${escapedOptionId}.skin_variant = "${attributes.editorSkinVariant}";
	</#if>
	options_${escapedOptionId}.theme = "${attributes.editorTheme!"modern"}";
	<#if attributes.width??>
	options_${escapedOptionId}.width = ${attributes.width};
	</#if>
	<#if attributes.height??>
	options_${escapedOptionId}.height = ${attributes.height};
	</#if>
	<#if attributes.editorLocal! != "">
	options_${escapedOptionId}.editorLocal = "${attributes.editorLocal}";
	</#if>
	<#if attributes.toolbarLocation! != "">
	options_${escapedOptionId}.theme_advanced_toolbar_location = "${attributes.toolbarLocation}";
	</#if>
	<#if attributes.toolbarAlign! != "">
	options_${escapedOptionId}.theme_advanced_toolbar_align = "${attributes.toolbarAlign}";
	</#if>
	<#if attributes.statusbarLocation! != "">
	options_${escapedOptionId}.theme_advanced_statusbar_location = "${attributes.statusbarLocation}";
	</#if>
  	<#if attributes.pasteplain!false>
	options_${escapedOptionId}.pasteplain = true;
  	</#if>
  	<#if attributes.editorResizable!false>
	options_${escapedOptionId}.editorResizable = true;
  	</#if>
	<#if attributes.plugins! != "">
	options_${escapedOptionId}.plugins = "${attributes.plugins}";
	</#if>
	<#if attributes.toolbarButtonsRow1! != "">
	options_${escapedOptionId}.theme_advanced_buttons1 = "${attributes.toolbarButtonsRow1?replace(" ", "")}";
	</#if>
	<#if attributes.toolbarButtonsRow2! != "">
	options_${escapedOptionId}.theme_advanced_buttons2 = "${attributes.toolbarButtonsRow2?replace(" ", "")}";
	</#if>
	<#if attributes.toolbarButtonsRow3! != "">
	options_${escapedOptionId}.theme_advanced_buttons3 = "${attributes.toolbarButtonsRow3?replace(" ", "")}";
	</#if>
	<#if attributes.toolbarButtonsRow4! != "">
	options_${escapedOptionId}.theme_advanced_buttons4 = "${attributes.toolbarButtonsRow4?replace(" ", "")}";
	</#if>
	<#if attributes.entityEncoding! != "">
	options_${escapedOptionId}.entity_encoding = "${attributes.entityEncoding}";
	</#if>
	<#if attributes.contentCss! != "">
	options_${escapedOptionId}.content_css = "${attributes.contentCss?string}";
	</#if>
	<#if attributes.removeLinebreaks??>
	options_${escapedOptionId}.remove_linebreaks = ${attributes.removeLinebreaks?string};
	</#if>
	<#if attributes.removeRedundantBrs??>
	options_${escapedOptionId}.remove_redundant_brs = ${attributes.removeRedundantBrs?string};
	</#if>
	<#if attributes.onSaveTopics! != "">
	options_${escapedOptionId}.onsavetopics = "${attributes.onSaveTopics}";
	</#if>
	<#if attributes.onEventTopics! != "">
	options_${escapedOptionId}.oneventtopics = "${attributes.onEventTopics}";
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

	<#assign escapedId="${attributes.id?string?replace('.', '\\\\\\\\.')}">
	jQuery.struts2_jquery_richtext.bind(jQuery('#${escapedId}'),options_${escapedOptionId});
 });
</@s.script>
