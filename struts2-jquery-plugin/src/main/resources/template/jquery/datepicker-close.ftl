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
  <#if attributes.timepicker!false>
	jQuery.struts2_jquery_ui.initDatepicker(true);
  <#else>
	jQuery.struts2_jquery_ui.initDatepicker(false);
  </#if>

});
jQuery(document).ready(function () {
	var options_${escapedOptionId} = {};
  <#if attributes.dayValue! != "">
	options_${escapedOptionId}.day = ${attributes.dayValue};
  </#if>
  <#if attributes.monthValue! != "">
	options_${escapedOptionId}.month = ${attributes.monthValue};
  </#if>
  <#if attributes.yearValue! != "">
	options_${escapedOptionId}.year = ${attributes.yearValue};
  </#if>
  <#if attributes.hourValue! != "">
	options_${escapedOptionId}.hour = ${attributes.hourValue};
  </#if>
  <#if attributes.minuteValue! != "">
	options_${escapedOptionId}.minute = ${attributes.minuteValue};
  </#if>
  <#if attributes.secondValue! != "">
	options_${escapedOptionId}.second = ${attributes.secondValue};
  </#if>
  <#if attributes.showButtonPanel!false>
	options_${escapedOptionId}.showButtonPanel = true;
  </#if>
  <#if attributes.buttonImageOnly!false>
	options_${escapedOptionId}.buttonImageOnly = true;
  </#if>
  <#if attributes.changeMonth!false>
	options_${escapedOptionId}.changeMonth = true;
  </#if>
  <#if attributes.changeYear!false>
	options_${escapedOptionId}.changeYear = true;
  </#if>
  <#if attributes.showOn! != "">
	options_${escapedOptionId}.showOn = "${attributes.showOn}";
  <#else>
	options_${escapedOptionId}.showOn = "both";
  </#if>
  <#if attributes.buttonImage! != "">
	options_${escapedOptionId}.buttonImage = "${attributes.buttonImage}";
  <#else>
    <#if attributes.buttonText! == "">
	options_${escapedOptionId}.buttonImage = "${base}/static/js/calendar.gif";
    </#if>
  </#if>
  <#if attributes.buttonText! != "">
	options_${escapedOptionId}.buttonText = "${attributes.buttonText}";
  </#if>
  <#if attributes.duration! != "">
	options_${escapedOptionId}.duration = "${attributes.duration}";
  </#if>
  <#if attributes.showAnim! != "">
	options_${escapedOptionId}.showAnim = "${attributes.showAnim}";
  </#if>
  <#if attributes.firstDay! != "">
	options_${escapedOptionId}.firstDay = "${attributes.firstDay}";
  </#if>
  <#if attributes.numberOfMonths! != "">
	options_${escapedOptionId}.numberofmonths = "${attributes.numberOfMonths}";
  </#if>
  <#if attributes.showOptions! != "">
	options_${escapedOptionId}.showoptions = "${attributes.showOptions?no_esc}";
  </#if>
  <#if attributes.yearRange! != "">
	options_${escapedOptionId}.yearRange = "${attributes.yearRange}";
  </#if>
  <#if attributes.displayFormat! != "">
	options_${escapedOptionId}.displayformat = "${attributes.displayFormat}";
  </#if>
  <#if attributes.onBeforeShowDayTopics! != "">
 	options_${escapedOptionId}.onbeforeshowdaytopics = "${attributes.onBeforeShowDayTopics}";
  </#if>
  <#if attributes.onChangeMonthYearTopics! != "">
 	options_${escapedOptionId}.onchangemonthyeartopics = "${attributes.onChangeMonthYearTopics}";
  </#if>
  <#if attributes.zindex! != "">
 	options_${escapedOptionId}.zindex = ${attributes.zindex};
  </#if>
  <#if attributes.appendText! != "">
	options_${escapedOptionId}.appendText = "${attributes.appendText}";
  </#if>
  <#if attributes.maxDate! != "">
	options_${escapedOptionId}.maxDate = "${attributes.maxDate}";
  </#if>
  <#if attributes.maxDayValue??>
  	<#if attributes.timepicker!false>
	options_${escapedOptionId}.maxDate = new Date(${attributes.maxYearValue}, ${attributes.maxMonthValue}, ${attributes.maxDayValue});
	<#else>
	options_${escapedOptionId}.maxDate = new Date(${attributes.maxYearValue}, ${attributes.maxMonthValue}, ${attributes.maxDayValue});
  	</#if>
  </#if>
  <#if attributes.minDate! != "">
	options_${escapedOptionId}.minDate = "${attributes.minDate}";
  </#if>
  <#if attributes.minDayValue??>
  	<#if attributes.timepicker!false>
	options_${escapedOptionId}.minDate = new Date(${attributes.minYearValue}, ${attributes.minMonthValue}, ${attributes.minDayValue});
	<#else>
	options_${escapedOptionId}.minDate = new Date(${attributes.minYearValue}, ${attributes.minMonthValue}, ${attributes.minDayValue});
  	</#if>
  </#if>
  <#if attributes.inline!false>
	options_${escapedOptionId}.inline = true;
  </#if>
  <#if attributes.timepicker!false>
	options_${escapedOptionId}.timepicker = true;
  	<#if attributes.timepickerOnly!false>
	options_${escapedOptionId}.tponly = true;
  	</#if>
   	<#if attributes.timepickerAmPm!false>
	options_${escapedOptionId}.ampm = true;
  	</#if>
    <#if attributes.timepickerShowHour??>
	options_${escapedOptionId}.showHour = ${attributes.timepickerShowHour?string};
	</#if>
    <#if attributes.timepickerShowMinute??>
	options_${escapedOptionId}.showMinute = ${attributes.timepickerShowMinute?string};
	</#if>
    <#if attributes.timepickerShowSecond??>
	options_${escapedOptionId}.showSecond = ${attributes.timepickerShowSecond?string};
	</#if>
    <#if attributes.timepickerStepHour??>
	options_${escapedOptionId}.stepHour = ${attributes.timepickerStepHour?c};
	</#if>
    <#if attributes.timepickerStepMinute??>
	options_${escapedOptionId}.stepMinute = ${attributes.timepickerStepMinute?c};
	</#if>
    <#if attributes.timepickerStepSecond??>
	options_${escapedOptionId}.stepSecond = ${attributes.timepickerStepSecond?c};
	</#if>
  	<#if attributes.timepickerFormat! != "">
	options_${escapedOptionId}.timeFormat = "${attributes.timepickerFormat}";
  	</#if>
  	<#if attributes.timepickerCurrentText! != "">
	options_${escapedOptionId}.currentText = "${attributes.timepickerCurrentText}";
  	</#if>
  	<#if attributes.timepickerSeparator! != "">
	options_${escapedOptionId}.separator = "${attributes.timepickerSeparator}";
  	</#if>
     <#if attributes.timepickerGridHour??>
	options_${escapedOptionId}.hourGrid = ${attributes.timepickerGridHour?c};
	</#if>
    <#if attributes.timepickerGridMinute??>
	options_${escapedOptionId}.minuteGrid = ${attributes.timepickerGridMinute?c};
	</#if>
    <#if attributes.timepickerGridSecond??>
	options_${escapedOptionId}.secondGrid = ${attributes.timepickerGridSecond?c};
	</#if>
  	<#if attributes.timepickerTimeOnlyTitle! != "">
	options_${escapedOptionId}.timeOnlyTitle = "${attributes.timepickerTimeOnlyTitle}";
  	</#if>
  	<#if attributes.timepickerTimeText! != "">
	options_${escapedOptionId}.timeText = "${attributes.timepickerTimeText}";
  	</#if>
  	<#if attributes.timepickerHourText! != "">
	options_${escapedOptionId}.hourText = "${attributes.timepickerHourText}";
  	</#if>
  	<#if attributes.timepickerMinuteText! != "">
	options_${escapedOptionId}.minuteText = "${attributes.timepickerMinuteText}";
  	</#if>
  	<#if attributes.timepickerSecondText! != "">
	options_${escapedOptionId}.secondText = "${attributes.timepickerSecondText}";
  	</#if>
  	<#if attributes.timepickerCurrentText! != "">
	options_${escapedOptionId}.currentText = "${attributes.timepickerCurrentText}";
  	</#if>
  	<#if attributes.timepickerCloseText! != "">
	options_${escapedOptionId}.closeText = "${attributes.timepickerCloseText}";
  	</#if>
  </#if>
<#include "/${attributes.templateDir}/jquery/base.ftl" />
<#include "/${attributes.templateDir}/jquery/interactive.ftl" />
<#include "/${attributes.templateDir}/jquery/topics.ftl" />

<#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
 });
</@s.script>
