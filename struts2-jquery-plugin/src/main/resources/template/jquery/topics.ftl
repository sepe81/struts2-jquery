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
  <#if attributes.onCompleteTopics??>
	options_${escapedOptionId}.oncom = "${attributes.onCompleteTopics}";
  </#if>
  <#if attributes.onSuccessTopics??>
	options_${escapedOptionId}.onsuc = "${attributes.onSuccessTopics}";
  </#if>
  <#if attributes.onErrorTopics??>
	options_${escapedOptionId}.onerr = "${attributes.onErrorTopics}";
  </#if>
  <#if attributes.onBeforeTopics??>
	options_${escapedOptionId}.onbef = "${attributes.onBeforeTopics}";
  </#if>
  <#if attributes.onAfterValidationTopics??>
    options_${escapedOptionId}.onaftervalidation = "${attributes.onAfterValidationTopics}";
  </#if>
  <#if attributes.onAlwaysTopics??>
	options_${escapedOptionId}.onalw = "${attributes.onAlwaysTopics}";
  </#if>
  <#if attributes.onChangeTopics??>
	options_${escapedOptionId}.oncha = "${attributes.onChangeTopics}";
  </#if>
  <#if attributes.onHideTopics??>
	options_${escapedOptionId}.onhidetopics = "${attributes.onHideTopics?string}";
  </#if>
  <#if attributes.onShowTopics??>
	options_${escapedOptionId}.onshowtopics = "${attributes.onShowTopics?string}";
  </#if>
  <#if attributes.onRemoveTopics??>
	options_${escapedOptionId}.onremovetopics = "${attributes.onRemoveTopics?string}";
  </#if>
  <#if attributes.onFocusTopics??>
	options_${escapedOptionId}.onfocustopics = "${attributes.onFocusTopics?string}";
  </#if>
  <#if attributes.onBlurTopics??>
	options_${escapedOptionId}.onblurtopics = "${attributes.onBlurTopics?string}";
  </#if>
