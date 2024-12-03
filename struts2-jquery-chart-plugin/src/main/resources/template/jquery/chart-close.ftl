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

  <#include "/${attributes.templateDir}/jquery/base.ftl" />
  <#include "/${attributes.templateDir}/jquery/interactive.ftl" />
  <#include "/${attributes.templateDir}/jquery/topics.ftl" />
  <#include "/${attributes.templateDir}/jquery/action.ftl" />
  <#include "/${attributes.templateDir}/jquery/container.ftl" />

options_${escapedOptionId}.xaxis = {};
<#if attributes.xaxisPosition! != "">
options_${escapedOptionId}.xaxis.position = "${attributes.xaxisPosition}";
</#if>
<#if attributes.xaxisMode! == "time">
options_${escapedOptionId}.xaxis.mode = "time";
options_${escapedOptionId}.xaxis.timeBase = "milliseconds";
	<#if attributes.xaxisTimeformat! != "">
options_${escapedOptionId}.xaxis.timeformat = "${attributes.xaxisTimeformat}";
	</#if>
</#if>
<#if attributes.xaxisColor! != "">
options_${escapedOptionId}.xaxis.color = "${attributes.xaxisColor}";
</#if>
<#if attributes.xaxisTick! != "">
options_${escapedOptionId}.xaxis.ticks = ${attributes.xaxisTick};
</#if>
<#if attributes.xaxisTickSize! != "">
options_${escapedOptionId}.xaxis.tickSize = <#outputformat "JavaScript">${attributes.xaxisTickSize}</#outputformat>;
</#if>
<#if attributes.xaxisTickDecimals! != "">
options_${escapedOptionId}.xaxis.tickDecimals = ${attributes.xaxisTickDecimals};
</#if>
<#if attributes.xaxisTickColor! != "">
options_${escapedOptionId}.xaxis.tickColor = "${attributes.xaxisTickColor}";
</#if>
<#if attributes.xaxisMin! != "">
options_${escapedOptionId}.xaxis.min = ${attributes.xaxisMin};
</#if>
<#if attributes.xaxisMax! != "">
options_${escapedOptionId}.xaxis.max = ${attributes.xaxisMax};
</#if>
<#if attributes.xaxisLabel! != "">
options_${escapedOptionId}.xaxis.axisLabel = "${attributes.xaxisLabel}";
options_${escapedOptionId}.xaxis.axisLabelUseCanvas = true;
	<#if attributes.xaxisLabelFontSizePixels??>
options_${escapedOptionId}.xaxis.axisLabelFontSizePixels = ${attributes.xaxisLabelFontSizePixels?c};
	</#if>
	<#if attributes.xaxisLabelFontFamily! != "">
options_${escapedOptionId}.xaxis.axisLabelFontFamily = "${attributes.xaxisLabelFontFamily}";
	</#if>
</#if>
options_${escapedOptionId}.yaxis = {};
<#if attributes.yaxisPosition! != "">
options_${escapedOptionId}.yaxis.position = "${attributes.yaxisPosition}";
</#if>
<#if attributes.yaxisMode! == "time">
options_${escapedOptionId}.yaxis.mode = "time";
	<#if attributes.yaxisTimeformat! != "">
options_${escapedOptionId}.yaxis.timeformat = "${attributes.yaxisTimeformat}";
	</#if>
</#if>
<#if attributes.yaxisColor! != "">
options_${escapedOptionId}.yaxis.color = "${attributes.yaxisColor}";
</#if>
<#if attributes.yaxisTick??>
options_${escapedOptionId}.yaxis.ticks = ${attributes.yaxisTick?string};
</#if>
<#if attributes.yaxisTickSize??>
options_${escapedOptionId}.yaxis.tickSize = <#outputformat "JavaScript">${attributes.yaxisTickSize?string}</#outputformat>;
</#if>
<#if attributes.yaxisTickDecimals??>
options_${escapedOptionId}.yaxis.tickDecimals = ${attributes.yaxisTickDecimals?string};
</#if>
<#if attributes.yaxisTickColor! != "">
options_${escapedOptionId}.yaxis.tickColor = "${attributes.yaxisTickColor}";
</#if>
<#if attributes.yaxisMin??>
options_${escapedOptionId}.yaxis.min = ${attributes.yaxisMin?string};
</#if>
<#if attributes.yaxisMax??>
options_${escapedOptionId}.yaxis.max = ${attributes.yaxisMax?string};
</#if>
<#if attributes.yaxisLabel! != "">
options_${escapedOptionId}.yaxis.axisLabel = "${attributes.yaxisLabel}";
options_${escapedOptionId}.yaxis.axisLabelUseCanvas = true;
	<#if attributes.yaxisLabelFontSizePixels??>
options_${escapedOptionId}.yaxis.axisLabelFontSizePixels = ${attributes.yaxisLabelFontSizePixels?c};
	</#if>
	<#if attributes.yaxisLabelFontFamily! != "">
options_${escapedOptionId}.yaxis.axisLabelFontFamily = "${attributes.yaxisLabelFontFamily}";
	</#if>
</#if>
options_${escapedOptionId}.legend = {};
<#if attributes.legendShow??>
options_${escapedOptionId}.legend.show = ${attributes.legendShow?string};
</#if>
<#if attributes.legendPosition! != "">
options_${escapedOptionId}.legend.position = "${attributes.legendPosition}";
</#if>
<#if attributes.legendLabelBoxBorderColor! != "">
options_${escapedOptionId}.legend.labelBoxBorderColor = "${attributes.legendLabelBoxBorderColor}";
</#if>
<#if attributes.legendBackgroundColor! != "">
options_${escapedOptionId}.legend.backgroundColor = "${attributes.legendBackgroundColor}";
</#if>
<#if attributes.onHoverTopics! != "">
options_${escapedOptionId}.onhover = "${attributes.onHoverTopics}";
</#if>
<#if attributes.crosshair!false>
	options_${escapedOptionId}.crosshair = {};
	<#if attributes.crosshairMode! != "">
	options_${escapedOptionId}.crosshair.mode = "${attributes.crosshairMode}";
	</#if>
	<#if attributes.crosshairColor! != "">
	options_${escapedOptionId}.crosshair.color = "${attributes.crosshairColor}";
	</#if>
  	<#if attributes.crosshairLineWidth??>
	options_${escapedOptionId}.crosshair.lineWidth = ${attributes.crosshairLineWidth?string};
  	</#if>
</#if>
<#if attributes.pie!false>
	if(options_${escapedOptionId}.series){
	options_${escapedOptionId}.series = $.extend(options_${escapedOptionId}.series , { pie: { show: true }});
	} else {
	options_${escapedOptionId}.series = { pie: { show: true }};
	}
	<#if attributes.pieRadius??>
		options_${escapedOptionId}.series.pie.radius = ${attributes.pieRadius?string};
	</#if>
	<#if attributes.pieInnerRadius??>
		options_${escapedOptionId}.series.pie.innerRadius = ${attributes.pieInnerRadius?string};
	</#if>
	<#if attributes.pieLabel!false>
		options_${escapedOptionId}.series.pie.label = { show: true };
		<#if attributes.pieLabelRadius??>
			options_${escapedOptionId}.series.pie.label.radius = ${attributes.pieLabelRadius?string};
		</#if>
		<#if attributes.pieLabelFormatter! != "">
			options_${escapedOptionId}.series.pie.label.formatter = ${attributes.pieLabelFormatter};
		</#if>
	  	<#if attributes.pieLabelBackgroundColor?? || attributes.pieLabelBackgroundOpacity??>
			options_${escapedOptionId}.series.pie.label.background = {};
		<#if attributes.pieLabelBackgroundColor! != "">
			options_${escapedOptionId}.series.pie.label.background.color = "${attributes.pieLabelBackgroundColor}";
		</#if>
		<#if attributes.pieLabelBackgroundOpacity??>
			options_${escapedOptionId}.series.pie.label.background.opacity = ${attributes.pieLabelBackgroundOpacity?string};
		</#if>
	  	</#if>
	</#if>
</#if>
<#if attributes.autoResize!false>
	options_${escapedOptionId}.autoresize = true;
</#if>
	<#assign escapedId="${attributes.id?string?replace('.', '\\\\\\\\.')}">
	jQuery.struts2_jquery_chart.bind(jQuery('#${escapedId}'),options_${escapedOptionId});
 });
</script>

