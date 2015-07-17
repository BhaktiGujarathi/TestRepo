<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Deadline_Alert</fullName>
        <description>Deadline Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/EndDateNotification</template>
    </alerts>
    <alerts>
        <fullName>Send_an_Email_alert</fullName>
        <description>Send an Email alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/AssignedTo</template>
    </alerts>
    <fieldUpdates>
        <fullName>field_update</fullName>
        <description>updates the status of project</description>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign</fullName>
        <actions>
            <name>Send_an_Email_alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Project_assigned</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Assigns a new project to a manager.</description>
        <formula>NOT(ISBLANK( Start_Date__c ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>End date notification</fullName>
        <active>true</active>
        <description>Sends an email to project manager 5 days prior to the end date of project.</description>
        <formula>NOT(ISBLANK(End_Date__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Deadline_Alert</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update status</fullName>
        <actions>
            <name>field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Workflow to set the Project status as Closed if the End Date is today.</description>
        <formula>End_Date__c == TODAY()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Project_assigned</fullName>
        <assignedTo>bxyz@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Project assigned</subject>
    </tasks>
</Workflow>
