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
<#assign escapedOptionId="${attributes.chart?string?replace('.', '_')}">

options_${escapedOptionId}_data = {};
options_${escapedOptionId}_data.id = "${attributes.id}";
<#if attributes.hrefUrl?if_exists != "">
options_${escapedOptionId}_data.href = "${attributes.hrefUrl}";
</#if>
<#if attributes.hrefParameter?if_exists != "">
options_${escapedOptionId}_data.hrefparameter = "${attributes.hrefParameter?string}";
</#if>
<#if attributes.formIds?exists>
options_${escapedOptionId}_data.formids = "${attributes.formIds}";
</#if>
<#if attributes.indicator?exists>
options_${escapedOptionId}_data.indicatorid = "${attributes.indicator}";
</#if>
<#if attributes.loadingText?exists>
options_${escapedOptionId}_data.loadingtext = "${attributes.loadingText}";
</#if>
<#if attributes.remoteList??>
options_${escapedOptionId}_data.list = "${attributes.remoteList}";
</#if>
<#if attributes.remoteListKey??>
options_${escapedOptionId}_data.listkey = "${attributes.remoteListKey}";
</#if>
<#if attributes.remoteListValue??>
options_${escapedOptionId}_data.listvalue = "${attributes.remoteListValue}";
</#if>
<#if attributes.label?if_exists != "">
options_${escapedOptionId}_data.label = "${attributes.label}";
</#if>
<#if attributes.data?if_exists != "">
options_${escapedOptionId}_data.data = <#outputformat "JavaScript">${attributes.data}</#outputformat>;;
</#if>
<#if attributes.color?if_exists != "">
options_${escapedOptionId}_data.color = "${attributes.color}";
</#if>
<#if attributes.lines?if_exists != "">
options_${escapedOptionId}_data.lines = <#outputformat "JavaScript">${attributes.lines}</#outputformat>;;
</#if>
<#if attributes.bars?if_exists != "">
options_${escapedOptionId}_data.bars = <#outputformat "JavaScript">${attributes.bars}</#outputformat>;;
</#if>
<#if attributes.points?if_exists != "">
options_${escapedOptionId}_data.points = <#outputformat "JavaScript">${attributes.points}</#outputformat>;;
</#if>
<#if attributes.xaxis??>
options_${escapedOptionId}_data.xaxis = <#outputformat "JavaScript">${attributes.xaxis}</#outputformat>;;
</#if>
<#if attributes.yaxis??>
options_${escapedOptionId}_data.yaxis = <#outputformat "JavaScript">${attributes.yaxis}</#outputformat>;;
</#if>
<#if attributes.clickable?default(false)>
options_${escapedOptionId}_data.clickable = true;
</#if>
<#if attributes.hoverable?default(false)>
options_${escapedOptionId}_data.hoverable = true;
</#if>
<#if attributes.shadowSize?if_exists != "">
options_${escapedOptionId}_data.shadowSize = <#outputformat "JavaScript">${attributes.shadowSize}</#outputformat>;;
</#if>
<#if attributes.fillBetween?if_exists != "">
options_${escapedOptionId}_data.fillBetween = "${attributes.fillBetween}";
options_${escapedOptionId}.fill = true;
</#if>
<#if attributes.stack?if_exists != "">
options_${escapedOptionId}_data.stack = "${attributes.stack}";
options_${escapedOptionId}.stack = true;
</#if>
<#if attributes.curvedLines?default(false)>
options_${escapedOptionId}_data.curvedLines = { show : true };
if(options_${escapedOptionId}.series){
options_${escapedOptionId}.series = $.extend(options_${escapedOptionId}.series , { curvedLines: { active : true }});
} else {
options_${escapedOptionId}.series = { curvedLines: { active: true }};
}
    options_${escapedOptionId}_data.curvedLines.apply = true;
	<#if attributes.curvedLinesFit?default(false)>
	options_${escapedOptionId}_data.curvedLines.fit = true;
	</#if>
	<#if attributes.curvedLinesFill?default(false)>
	options_${escapedOptionId}_data.curvedLines.fill = true;
	</#if>
	<#if attributes.curvedLinesFillColor?if_exists != "">
	options_${escapedOptionId}_data.curvedLines.fillColor = "${attributes.curvedLinesFillColor}";
	</#if>
	<#if attributes.curvedLinesLineWidth??>
	options_${escapedOptionId}_data.curvedLines.lineWidth = ${attributes.curvedLinesLineWidth};
	</#if>
</#if>
<#if attributes.reloadTopics?exists>
options_${escapedOptionId}_data.reloadtopics = "${attributes.reloadTopics}";
</#if>
<#if attributes.listenTopics?exists>
options_${escapedOptionId}_data.listentopics = "${attributes.listenTopics}";
</#if>
<#if attributes.deferredLoading?default(false)>
options_${escapedOptionId}_data.deferredloading = true;
</#if>
<#if attributes.onCompleteTopics?exists>
options_${escapedOptionId}_data.oncom = "${attributes.onCompleteTopics}";
</#if>
<#if attributes.onSuccessTopics?exists>
options_${escapedOptionId}_data.onsuc = "${attributes.onSuccessTopics}";
</#if>
<#if attributes.onErrorTopics?exists>
options_${escapedOptionId}_data.onerr = "${attributes.onErrorTopics}";
</#if>
<#if attributes.onBeforeTopics?exists>
options_${escapedOptionId}_data.onbef = "${attributes.onBeforeTopics}";
</#if>
<#if attributes.onAlwaysTopics?exists>
options_${escapedOptionId}_data.onalw = "${attributes.onAlwaysTopics}";
</#if>

options_${escapedOptionId}.data.push(options_${escapedOptionId}_data);
