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
  <#if attributes.resizable!false>
	options_${escapedOptionId}.resizable = true;<#rt/>
   </#if>
  <#if attributes.resizableOptions! != "">
 	options_${escapedOptionId}.resizableoptions = "<#outputformat "JavaScript">${attributes.resizableOptions}</#outputformat>";<#rt/>
   </#if>
  <#if attributes.resizableOnResizeTopics! != "">
	options_${escapedOptionId}.resizableonresizetopics = "${attributes.resizableOnResizeTopics}";<#rt/>
   </#if>
  <#if attributes.resizableOnStartTopics! != "">
	options_${escapedOptionId}.resizableonstarttopics = "${attributes.resizableOnStartTopics}";<#rt/>
   </#if>
  <#if attributes.resizableOnStopTopics! != "">
	options_${escapedOptionId}.resizableonstoptopics = "${attributes.resizableOnStopTopics}";<#rt/>
   </#if>
