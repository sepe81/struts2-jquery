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
  <#if attributes.selectable!false>
	options_${escapedOptionId}.selectable = true;<#rt/>
   </#if>
  <#if attributes.selectableOptions! != "">
 	options_${escapedOptionId}.selectableoptions = "<#outputformat "JavaScript">${attributes.selectableOptions}</#outputformat>";<#rt/>
   </#if>
  <#if attributes.selectableOnSelectedTopics! != "">
 	options_${escapedOptionId}.selectableonselectedtopics = "${attributes.selectableOnSelectedTopics}";<#rt/>
   </#if>
  <#if attributes.selectableOnSelectingTopics! != "">
 	options_${escapedOptionId}.selectableonselectingtopics = "${attributes.selectableOnSelectingTopics}";<#rt/>
   </#if>
  <#if attributes.selectableOnStartTopics! != "">
 	options_${escapedOptionId}.selectableonstarttopics = "${attributes.selectableOnStartTopics}";<#rt/>
   </#if>
  <#if attributes.selectableOnStopTopics! != "">
 	options_${escapedOptionId}.selectableonstoptopics = "${attributes.selectableOnStopTopics}";<#rt/>
   </#if>
  <#if attributes.selectableOnUnselectedTopics! != "">
 	options_${escapedOptionId}.selectableonunselectedtopics = "${attributes.selectableOnUnselectedTopics}";<#rt/>
   </#if>
  <#if attributes.selectableOnUnselectingTopics! != "">
 	options_${escapedOptionId}.selectableonunselectingtopics = "${attributes.selectableOnUnselectingTopics}";<#rt/>
   </#if>
