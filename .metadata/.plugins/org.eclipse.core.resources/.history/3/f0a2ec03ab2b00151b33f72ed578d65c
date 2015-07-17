<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>email_alert</fullName>
        <description>email alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>bhakti.gujrathi@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Inactive_employee</template>
    </alerts>
    <fieldUpdates>
        <fullName>UpdateNonTechnical</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>UpdateNonTechnical</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Duplicate_Role</fullName>
        <field>ID_Role__c</field>
        <formula>Designation__r.Role_Name__c</formula>
        <name>Update Duplicate Role</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Notification of inactive employee</fullName>
        <actions>
            <name>email_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Updates the Manager if employee is Inactive.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unique Employee Role</fullName>
        <actions>
            <name>Update_Duplicate_Role</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Restricts from assigning same role to multiple employees.</description>
        <formula>NOT( ISBLANK( First_Name__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Workflow to set the record type to Non-Technical</fullName>
        <actions>
            <name>UpdateNonTechnical</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Current_Employee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>For all records who is current employee make their record type as NON-TECHNICAL.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Assigned</fullName>
        <assignedTo>bxyz@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Employee__c.Last_Working_Day__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Assigned</subject>
    </tasks>
</Workflow>
