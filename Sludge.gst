<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="2a98-0be2-053b-f7e1" name="Sludge" revision="1" battleScribeVersion="2.03" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="690f-6ec1-3a45-0ffc" name="Blaster Vol 3"/>
  </publications>
  <costTypes>
    <costType id="8a76-0f71-96e3-b97c" name="Points" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="8705-14e1-be6a-1f7e" name="- Unit -">
      <characteristicTypes>
        <characteristicType id="76fe-9a2a-b52c-7a61" name="Speed"/>
        <characteristicType id="2947-0bce-f1e8-bf71" name="Brutality"/>
        <characteristicType id="b268-ae8a-4002-9bb8" name="Cunning"/>
        <characteristicType id="bcf6-2d70-7020-f5b0" name="Faith"/>
        <characteristicType id="a272-ef29-2448-76e4" name="Arcana"/>
        <characteristicType id="4784-a2b1-4078-5e01" name="Defence"/>
        <characteristicType id="a33c-c953-b917-d630" name="Wounds"/>
      </characteristicTypes>
    </profileType>
    <profileType id="3f3f-4bef-0bab-2cff" name="--- Ability ---">
      <characteristicTypes>
        <characteristicType id="3659-df21-f698-59ad" name="Action"/>
        <characteristicType id="b356-e832-95cc-4467" name="Type"/>
        <characteristicType id="d24a-25b3-c0bd-f75f" name="Range"/>
        <characteristicType id="3b97-3988-8ead-1039" name="TN"/>
        <characteristicType id="ee2e-080f-055b-061a" name="Burst"/>
        <characteristicType id="e0f5-c1c4-0314-c9a6" name="Effect"/>
      </characteristicTypes>
    </profileType>
    <profileType id="1231-8a7d-8660-4b58" name="-- Weapon --">
      <characteristicTypes>
        <characteristicType id="bec2-08c9-9760-38f2" name="Type"/>
        <characteristicType id="ed90-5160-6b9a-06fe" name="Range"/>
        <characteristicType id="872b-0f66-5fc4-14fd" name="TN"/>
        <characteristicType id="7474-4b21-4cd8-d9f9" name="Burst"/>
        <characteristicType id="e7f2-1487-6c95-3a26" name="Dmg"/>
        <characteristicType id="e339-e6bf-a6ef-ad36" name="Effect"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="1e83-9df6-39c1-f39c" name="Hero" hidden="false"/>
    <categoryEntry id="e456-9a72-74a3-c672" name="Regiment" hidden="false">
      <infoLinks>
        <infoLink id="de62-52f4-6169-8c1c" name="Formations" hidden="false" targetId="d5d4-1197-39a1-85f0" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry id="8015-519c-a80c-a4d2" name="Skirmisher" hidden="false">
      <infoLinks>
        <infoLink id="a33c-76d2-0a37-cc8a" name="Skirmishers" hidden="false" targetId="e3b9-02f1-80f1-05a9" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry id="b21a-1990-468a-c730" name="Elite" hidden="false"/>
    <categoryEntry id="41bb-57e3-d78c-6592" name="Cavalry" hidden="false">
      <infoLinks>
        <infoLink id="cb0c-725f-1df1-e816" name="Cavalry" hidden="false" targetId="e927-89c5-54dd-5634" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry id="b579-d163-2dd9-428a" name="Artillery" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="70f1-f3bf-f038-ba7a" name="Battalion" hidden="false">
      <categoryLinks>
        <categoryLink id="b376-24ec-d7e4-bf91" name="Hero" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="false"/>
        <categoryLink id="1d0f-74c6-b78b-0bec" name="Regiment" hidden="false" targetId="e456-9a72-74a3-c672" primary="false"/>
        <categoryLink id="d551-4568-c858-1ca6" name="Artillery" hidden="false" targetId="b579-d163-2dd9-428a" primary="false"/>
        <categoryLink id="e330-3474-a63f-13b3" name="Cavalry" hidden="false" targetId="41bb-57e3-d78c-6592" primary="false"/>
        <categoryLink id="f239-f707-cd64-1a4c" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false">
          <modifiers>
            <modifier type="increment" field="f3d5-8ccc-1ea1-ba7d" value="1.0">
              <repeats>
                <repeat field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="e456-9a72-74a3-c672" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f3d5-8ccc-1ea1-ba7d" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="707f-604d-6903-2a4e" name="Skirmishers" hidden="false" targetId="8015-519c-a80c-a4d2" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntries>
    <selectionEntry id="00a3-350b-5484-8004" name="Commander" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="7ab3-bb16-74bc-a8ca" name="Commander" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="set" field="76fe-9a2a-b52c-7a61" value="6">
              <conditions>
                <condition field="selections" scope="00a3-350b-5484-8004" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="71ba-cc3b-99ef-d43f" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="00a3-350b-5484-8004" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="3a8d-320c-7181-4ceb" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">2</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="7115-3e3b-fdb3-b4e7" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="00a3-350b-5484-8004" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="3a8d-320c-7181-4ceb" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="ec49-9230-97f4-79b3" name="Inspire" hidden="false" targetId="6fbd-6877-b3f4-82a0" type="profile"/>
        <infoLink id="2389-0a3f-c144-91f3" name="Warcry" hidden="false" targetId="00de-6c9d-433d-29b4" type="profile"/>
        <infoLink id="7819-f3b8-b181-9c9b" name="Close Order" hidden="false" targetId="645c-7a41-ffb1-3785" type="profile"/>
        <infoLink id="2e02-f1b5-8fa6-2aa5" name="Go At Them" hidden="false" targetId="0a69-11f6-d0c7-2497" type="profile"/>
        <infoLink id="4e2c-8fd2-466f-cb6d" name="Supervised Drill" hidden="false" targetId="7e74-6cba-1f5e-a5e5" type="profile"/>
        <infoLink id="7fa1-7661-797c-0134" name="Heroic Speech" hidden="false" targetId="3509-4cba-ee7c-069b" type="profile"/>
        <infoLink id="3e64-2b23-988a-f46b" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="6d13-9c3c-bb88-90f2" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="3a8d-320c-7181-4ceb" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="4325-9e5c-f994-2eba" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="71ba-cc3b-99ef-d43f" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4325-9e5c-f994-2eba" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="71ba-cc3b-99ef-d43f" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f8ab-096f-89db-3ba1" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="babe-f800-9393-38ef" name="Battle Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b6a4-0aeb-5319-5992" type="max"/>
          </constraints>
          <rules>
            <rule id="c1c6-a3d2-094c-fb5c" name="Battle Standard" hidden="false">
              <description>Grants +1 on nerve tests to all friendly units within 10”. The
commander himself also benefits from the glorious battle standard.</description>
            </rule>
          </rules>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="97c9-96c8-fd65-5935" name="Arcanists" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="dff4-6529-b319-2d9c" name="Arcanists" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">1</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="41fc-a6dc-cac1-1158" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="eaab-2811-bd37-4c21" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
        <infoLink id="93ea-5600-772c-e4e8" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="5ea7-4f36-1b67-74c7" name="Arcane Protection" hidden="false" targetId="9524-6a6e-488b-c577" type="profile"/>
        <infoLink id="567b-c8c8-4472-0256" name="Enchanted Arms" hidden="false" targetId="4c4c-a498-784c-6fac" type="profile"/>
        <infoLink id="e1ef-ff3e-bcc2-36cb" name="Thundering Report" hidden="false" targetId="292e-0681-babc-d29a" type="profile"/>
        <infoLink id="6a77-98a0-133d-f55e" name="Triangulation" hidden="false" targetId="4d9d-b2f2-aa8a-cf85" type="rule">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="97c9-96c8-fd65-5935" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="18fd-7ca1-974f-509d" type="lessThan"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="cd37-4f9d-23d5-c4f3" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="18fd-7ca1-974f-509d" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fe67-f38b-06fc-678d" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="de95-0846-4ab0-9675" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="109d-5ef6-5b77-2bf2" name="Officer" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="6d5a-b31c-4914-515f" name="Officer" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="972d-898c-ff97-62c0" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="set" field="76fe-9a2a-b52c-7a61" value="6">
              <conditions>
                <condition field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="da13-3f9c-10e9-b75f" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="8450-3315-9d37-493c" name="Inspire" hidden="false" targetId="6fbd-6877-b3f4-82a0" type="profile"/>
        <infoLink id="d62a-d011-a63a-ecf3" name="Close Order" hidden="false" targetId="645c-7a41-ffb1-3785" type="profile"/>
        <infoLink id="4564-cd66-4f24-e1d9" name="Heroic Speech" hidden="false" targetId="3509-4cba-ee7c-069b" type="profile"/>
        <infoLink id="801d-6e29-4592-d214" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="4119-3f7b-1d30-d9a6" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="972d-898c-ff97-62c0" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="68b0-5678-5246-9da6" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="972d-898c-ff97-62c0" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="0d4c-514c-899b-63df" value="1.0">
              <conditions>
                <condition field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="da13-3f9c-10e9-b75f" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0d4c-514c-899b-63df" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="da13-3f9c-10e9-b75f" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2b1c-57a5-8b04-a6ac" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6fc9-b308-a4da-9367" name="Chaplain" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="10e5-1553-e15d-eff0" name="Chaplain" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="6fc9-b308-a4da-9367" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9066-c8cd-c47e-570e" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="c2f4-83fd-6405-6286" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="6fc9-b308-a4da-9367" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9066-c8cd-c47e-570e" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="6fc9-b308-a4da-9367" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9066-c8cd-c47e-570e" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="decrement" field="7474-4b21-4cd8-d9f9" value="2"/>
          </modifiers>
        </infoLink>
        <infoLink id="3767-3f88-4755-8eaa" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="05ed-e4ba-86ff-d9da" name="Blessing" hidden="false" targetId="ac6f-fdb3-1f48-7544" type="profile"/>
        <infoLink id="a9e8-4643-20ac-96b8" name="Sacred Incense" hidden="false" targetId="0284-5618-54e6-2287" type="profile"/>
        <infoLink id="1f33-2f75-099d-5c08" name="Faithful Intercessor" hidden="false" targetId="94ad-d6a7-8b3f-406c" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="1fd0-2ce4-4a59-307b" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="9066-c8cd-c47e-570e" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="76f2-fe2b-ff66-e434" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="867f-7741-a286-1d17" name="Sorcerer" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="f434-b8e1-8d03-9866" name="Sorcerer" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="867f-7741-a286-1d17" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="1ce6-3aa6-47be-de32" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">0</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">2</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="1c75-88a2-08c9-1276" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="867f-7741-a286-1d17" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="1ce6-3aa6-47be-de32" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="93bf-ffcd-d54a-d1dc" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="eeb1-9628-3224-a3c7" name="Black Fog" hidden="false" targetId="00be-0721-3b18-2b63" type="profile"/>
        <infoLink id="e5a3-5633-47da-1d36" name="Visions of Death" hidden="false" targetId="8db3-ae29-4ed2-cc7a" type="profile"/>
        <infoLink id="4311-6ecc-0513-24ea" name="Horrors of War" hidden="false" targetId="c348-1de8-f28a-f2b9" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="5a6e-d764-476e-263e" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="1ce6-3aa6-47be-de32" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c93d-189b-298f-6042" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4f8f-386c-0e88-d258" name="Line Infantry" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="7397-da80-8df5-9047" name="Line Infantry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="c964-8410-563a-37ae" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="7921-ecb4-9a61-f020" name="Regimental Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="492f-4a2b-218d-8c33" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="10c8-8391-bb9e-3e72" name="Regimental Standard" hidden="false" targetId="1298-2f75-cc32-72a3" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="bdc9-1948-7b28-35a1" name="Musician" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d7f4-659f-eca2-89d7" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="34b2-9d96-b0f9-0c85" name="Regimental Song" hidden="false" targetId="2897-8c59-3591-8170" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5695-8a22-fa06-bd1c" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="529a-ecd8-3fb1-525a" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d508-89e8-ca10-b3d1" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="4794-fb21-1315-085f" name="Equipment" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="57a9-d68a-766e-5749" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="793a-f734-8d4d-3826" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="3d8e-d528-be9a-4e8c" name="Crossbow volley and bayonets" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="0827-101f-3219-ae07" name="Crossbow Volley" hidden="false" targetId="f497-a533-5599-e4c6" type="profile"/>
                <infoLink id="ab61-4edc-81d3-7a23" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="e414-eaf3-fb84-aa69" name="Musket volley and bayonets" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="58c5-9b9b-f2ca-1358" name="Musket Volley" hidden="false" targetId="4ac7-18da-c30d-c6d1" type="profile"/>
                <infoLink id="763a-e31f-3015-63b5" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="61c6-516e-99fe-f6d9" name="Pole weapons" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="ed3c-445d-ae0f-1344" name="Pole Weapons" hidden="false" targetId="0da8-dbb8-09e3-e303" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="cdba-42a4-03a0-fc90" name="Jagers" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="218b-8fec-0270-ce7d" name="Jagers" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="5a5a-82e4-ad8f-8efc" name="Go To Ground" hidden="false" targetId="3464-76a0-9264-1d41" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="eddb-aa15-3e4d-f715" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="361e-841e-f4cf-986c" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8ab9-ec66-6d86-11f3" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="713d-0c81-fc87-42db" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="1902-b8f6-1aaa-48dd" name="Equipment" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bc12-6ac7-7356-3327" type="min"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b5df-b342-e1a6-8d9c" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="937f-611d-14bb-f737" name="Muskets and Hand Weapons" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="89e4-f958-78bd-1292" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
                <infoLink id="7945-2499-e5d4-1711" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="2d46-4b64-9b70-3531" name="Crossbows and Hand Weapons" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="319b-3dc5-85c2-d972" name="Crossbows" hidden="false" targetId="59e1-9040-bf31-6f1c" type="profile"/>
                <infoLink id="e877-1921-7343-a67c" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="cb93-0a38-93a6-6e8d" name="Foot Knight" hidden="false" collective="false" import="true" type="unit">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditions>
            <condition field="selections" scope="roster" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="e456-9a72-74a3-c672" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="289e-49bd-79f0-63bd" name="Foot Knight" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="7ef3-5ad5-91ae-5f33" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile"/>
        <infoLink id="be4b-0eea-13f8-5bdb" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="be58-2b13-e2d8-237c" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="920f-ad3f-3263-bc4a" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
        <categoryLink id="eb8e-4426-3de6-a820" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="dc20-b923-eca6-be63" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ef07-3327-28fb-61d6" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f1db-a59c-8b6c-a961" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3c3c-8600-3556-03f2" name="Muskets" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="054f-62d7-08f9-2951" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="6ed6-44a6-f743-5357" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="e8e6-bdc7-941e-b99f" name="Shock Troopers" hidden="false" collective="false" import="true" type="unit">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditions>
            <condition field="selections" scope="roster" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="e456-9a72-74a3-c672" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="925f-2c6d-6b8d-0f1c" name="Shock Troopers" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="14a1-077d-d95c-1704" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="90f8-4d7c-2604-dfd2" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
        <infoLink id="fa05-6c44-914c-9f32" name="Battle Hardened" hidden="false" targetId="a303-a349-4723-d3f1" type="rule"/>
        <infoLink id="187a-f873-3156-b187" name="Assault Trooper" hidden="false" targetId="7e31-4ee5-d0f2-82b9" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="db8f-73cd-57ee-c3df" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
        <categoryLink id="da14-7278-8bf6-4a23" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="67bf-1b32-c909-bd82" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3117-876f-c12f-7627" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1d35-9619-4a3b-fb95" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="afb8-8004-5d0d-6399" name="Grenades" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="aab5-eb99-ffd4-6b87" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="aaad-115a-3d65-1528" name="Grenades" hidden="false" targetId="45a1-599a-2f4a-0898" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d1a8-9e66-5739-5838" name="Heavy Cavalry" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="4cd3-a33d-5458-e5da" name="Heavy Cavalry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="0154-57d7-4ecc-df5c" name="Cavalry Sabers" hidden="false" targetId="2f8e-cf01-a6b4-8a99" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="9d56-7ee6-3530-3593" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="5c4e-9a12-4376-f798" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9bcf-1813-0f77-667f" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d4d3-2e96-84f0-f51a" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5e2b-247c-19c5-a822" name="Carabiniers" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1e21-2cd4-2a0c-6995" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="8dc1-c278-a872-e18e" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c373-14ed-87ed-fe2f" name="Heavy Pistols" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="07e6-a7b0-f913-159b" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="7f7f-b0cd-1f60-cc67" name="Heavy Pistols" hidden="false" targetId="7a31-2efe-df3a-9fe4" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0062-85e4-0431-f4d1" name="Light Cavalry" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="b11d-e7a3-62c4-1342" name="Light Cavalry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="33dd-7644-7ae2-b3e9" name="Cavalry Sabers" hidden="false" targetId="2f8e-cf01-a6b4-8a99" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="3764-ebb8-07bd-d711" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="f77e-96b4-fe35-b185" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="644d-4376-c82e-7bb5" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d700-04fd-2e21-68fe" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9859-0836-e4a2-9ea6" name="Dragoons" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="88c6-d0be-5235-3989" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="132d-945c-f619-7094" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2ef0-f176-27c1-a5df" name="Lancers" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="79c6-ebc7-09d9-401f" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="7a94-0bd1-303b-b729" name="Lancers" hidden="false" targetId="9a43-3eb4-da72-1706" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c3be-4c6b-d743-c714" name="Heavy Knights" hidden="false" collective="false" import="true" type="unit">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditions>
            <condition field="selections" scope="roster" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="e456-9a72-74a3-c672" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="40e1-353f-19d0-a316" name="Heavy Knights" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="51b1-d5cc-5e6a-d64b" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile"/>
        <infoLink id="8060-9e2c-0154-9bf0" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="a581-6d2f-273f-e35d" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="f3b7-79ee-2be8-e5df" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
        <categoryLink id="4432-93df-71d2-049a" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="14df-9a09-dcc1-6b62" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="4.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2229-1683-86d4-58ba" type="max"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b16f-5422-287a-1250" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="86f0-e26a-5557-a119" name="Heavy Lance" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7cbb-8b34-58a0-80c5" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="cef8-66ba-5707-b9b5" name="Heavy Lance" hidden="false" targetId="18fb-9343-c84b-3b06" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8fe8-9293-fa30-4685" name="Field Gun" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="acfb-cfc4-7cf5-a4e7" name="Field Gun" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <conditions>
                <condition field="selections" scope="8fe8-9293-fa30-4685" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="0fcc-5138-c6d4-86d0" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">2</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="acda-0ef5-15ec-bf74" name="Field Gun" hidden="false" targetId="c33d-04d1-b77b-77b3" type="profile"/>
        <infoLink id="a371-7a3b-cfa1-a6c7" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="1">
              <conditions>
                <condition field="selections" scope="8fe8-9293-fa30-4685" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="0fcc-5138-c6d4-86d0" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="91e0-9878-cdba-e341" name="Field Gun" hidden="false" targetId="e3b7-b7b2-3cad-e5b3" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="0ae4-2e84-aadd-6c38" name="New CategoryLink" hidden="false" targetId="b579-d163-2dd9-428a" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="0fcc-5138-c6d4-86d0" name="Veteran Crew" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f917-6193-093c-b841" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="67a8-8276-ecf1-2a07" name="Veteran Focus" hidden="false" targetId="1cbc-1d4e-2119-fda5" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedRules>
    <rule id="4cda-dae9-f168-2fb5" name="Tough" hidden="false">
      <description>Gain +1 on endurance saves.</description>
    </rule>
    <rule id="4d9d-b2f2-aa8a-cf85" name="Triangulation" hidden="false">
      <description>Arcanists gain +1 Arcana while there are three living Arcanists in your battalion.</description>
    </rule>
    <rule id="1298-2f75-cc32-72a3" name="Regimental Standard" hidden="false">
      <description>Gain +1 on nerve tests.</description>
    </rule>
    <rule id="737c-46a6-221a-9ada" name="Musician" hidden="false">
      <description>Gain the Regimental Song free order.</description>
    </rule>
    <rule id="d5d4-1197-39a1-85f0" name="Formations" hidden="false">
      <description>Line Infantry units gain bonuses for fighting in formation. Units of line infantry automatically claim the bonus from a formation if the unit has at least three figures in play and the figures are in base contact according to the formation type. After a move order and once per activation, line infantry figures may make a half inch move directly toward another figure in its unit in order to maintain formation.
Units in close combat do not benefit from formations. Terrain features that make base contact impossible also make maintaining formations impossible.

Line Formation
Units in line formation gain +1 to ranged attack tests. To claim the line formation all figures must be in base contact and form a line. Draw an imaginary line from any part of the base of the figure on one end of the line to any part of the base of the figure on the opposite end of the line. That line must cross over all bases in the unit.

Column Formation
Units in column formation gain +1 defense but suffer -1 burst. To claim a column formation, all figures in the unit must be in base contact with at least two other figures in the unit. Units that are charged while in column formation gain the +1 defense bonus during that initial round of combat, but no longer benefit from column formation while locked in close combat.</description>
    </rule>
    <rule id="e3b9-02f1-80f1-05a9" name="Skirmishers" hidden="false">
      <description>Skirmishers may draw LOS and move through figures in their own
unit.</description>
    </rule>
    <rule id="98e6-d284-b2b6-a6b1" name="Noble" hidden="false">
      <description>Failed nerve tests that would cause wounds only remove one figure.</description>
    </rule>
    <rule id="45a1-599a-2f4a-0898" name="Grenades" hidden="false">
      <description>Attacks made by units with grenades gain SHOCK 2 and each wound they cause places 2 gore instead of 1.</description>
    </rule>
    <rule id="a303-a349-4723-d3f1" name="Battle Hardened" hidden="false">
      <description>Shock Troopers may use brutality instead of faith on nerve tests.</description>
    </rule>
    <rule id="7e31-4ee5-d0f2-82b9" name="Assault Trooper" hidden="false">
      <description>Close combat orders gain +1 burst and SHOCK 2 when this unit charges.</description>
    </rule>
    <rule id="e927-89c5-54dd-5634" name="Cavalry" hidden="false">
      <description>
Breakaway
When cavalry units charge an enemy and successfully deal wounds to them, they may make a free move action after the combat is resolved. Breakaway moves may not be performed against line infantry.

Rundown
If a unit in close combat with a cavalry unit fails the nerve test and suffers wounds due to stress, those wounds are doubled.</description>
    </rule>
    <rule id="9a43-3eb4-da72-1706" name="Lancers" hidden="false">
      <description>+1 damage on charge.</description>
    </rule>
    <rule id="7a31-2efe-df3a-9fe4" name="Heavy Pistols" hidden="false">
      <description>+1 damage on charge.</description>
    </rule>
    <rule id="18fb-9343-c84b-3b06" name="Heavy Lance" hidden="false">
      <description>+1 damage on charge.</description>
    </rule>
    <rule id="1cbc-1d4e-2119-fda5" name="Veteran Focus" hidden="false">
      <description>Veteran Crew may use the focus short order to modify the bounce roll. A focus shot uses two d10 for the bounce roll and discards the lower die.</description>
    </rule>
    <rule id="e3b7-b7b2-3cad-e5b3" name="Field Gun" hidden="false">
      <description>1. When making an attack with an artillery piece, choose a specific figure as the target. Units in close combat may not be selected as a target; however, it is still possible to hit figures locked in close combat.

2. Guess a range and roll a d10. Add the d10 result in inches to the guess. This is where the shot lands.

3. This roll replaces a normal ranged combat TN test. If the result is a 1 the Artillery piece takes 4 wounds and the shot fails! If the result is a 10, the artillery piece suffers 2 wounds and the attack gains +1 burst.

4. Roll another d10, the shot bounces in a straight line that many inches from where it landed. Measure from the front center of the artillery pieces base (or barrel of the gun if the figure is not on a base) in the exact direction of the center of the target figure’s base. Any figures whose bases are crossed by the line from where the shot landed to where it bounced are hit by the attack.

5. Roll damage for each hit figure individually. Damage is done to individual figures, not the unit. For example, if a skirmisher takes three wounds it would generate three gore, but only that single figure would be removed as a casualty. If multiple bases of line infantry suffer wounds, the controlling player must consolidate the wounds to remove full bases of figures where possible but never removing more bases of figures than were directly hit by the artillery shot.</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="6638-665c-032b-cdfb" name="Knightly Arms" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2 on Charge</characteristic>
      </characteristics>
    </profile>
    <profile id="2f8e-cf01-a6b4-8a99" name="Cavalry Sabers" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2 on Charge</characteristic>
      </characteristics>
    </profile>
    <profile id="0da8-dbb8-09e3-e303" name="Pole Weapons" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="3d5c-a8f3-a472-40f5" name="Bayonets" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="1f37-d09c-dc0f-92d5" name="Hand Weapons" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">1</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="4ac7-18da-c30d-c6d1" name="Musket Volley" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">12</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2</characteristic>
      </characteristics>
    </profile>
    <profile id="9123-e357-3df2-313f" name="Muskets" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">12</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">1</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="f497-a533-5599-e4c6" name="Crossbow Volley" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">14</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="59e1-9040-bf31-6f1c" name="Crossbows" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">14</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="c33d-04d1-b77b-77b3" name="Field Gun" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">Guess +d10</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">-</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+5</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">Bounce d10, SHOCK 4</characteristic>
      </characteristics>
    </profile>
    <profile id="6fbd-6877-b3f4-82a0" name="Inspire" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove 4 gore from within range or Remove 1 stress from the target.</characteristic>
      </characteristics>
    </profile>
    <profile id="00de-6c9d-433d-29b4" name="Warcry" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains +1 Burst on next combat order.</characteristic>
      </characteristics>
    </profile>
    <profile id="645c-7a41-ffb1-3785" name="Close Order" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains +1 on their next combat order test.</characteristic>
      </characteristics>
    </profile>
    <profile id="0a69-11f6-d0c7-2497" name="Go At Them" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains +2 Speed on their next charge order.</characteristic>
      </characteristics>
    </profile>
    <profile id="7e74-6cba-1f5e-a5e5" name="Supervised Drill" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains a &quot;Hold Position&quot; token.</characteristic>
      </characteristics>
    </profile>
    <profile id="3509-4cba-ee7c-069b" name="Heroic Speech" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove 3 stress tokens from within range.</characteristic>
      </characteristics>
    </profile>
    <profile id="9524-6a6e-488b-c577" name="Arcane Protection" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self / Ally within 5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains +1 on endurance tests until the user&apos;s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="4c4c-a498-784c-6fac" name="Enchanted Arms" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self / Ally within 5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains +1 damage until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="292e-0681-babc-d29a" name="Thundering Report" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self / Ally within 5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains +4 SHOCK on combat actions until the
user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="ac6f-fdb3-1f48-7544" name="Blessing" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target may reroll one failed test until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="0284-5618-54e6-2287" name="Sacred Incense" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Combat action tests against the target unit suffer -1 until the user&apos;s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="94ad-d6a7-8b3f-406c" name="Faithful Intercessor" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">12&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Friendly units within range may reroll failed nerve tests until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="00be-0721-3b18-2b63" name="Black Fog" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit suffers -1 on ranged combat tests until the user&apos;s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="8db3-ae29-4ed2-cc7a" name="Visions of Death" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit must take a Nerve Test.</characteristic>
      </characteristics>
    </profile>
    <profile id="c348-1de8-f28a-f2b9" name="Horrors of War" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">6</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Place a single 8 gore token on the battlefield.</characteristic>
      </characteristics>
    </profile>
    <profile id="2897-8c59-3591-8170" name="Regimental Song" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Free</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Faith</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">-</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove 4 gore from within 5&quot;</characteristic>
      </characteristics>
    </profile>
    <profile id="3464-76a0-9264-1d41" name="Go To Ground" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">-</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">-</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Gain +1 Defense against ranged attacks, do not block LOS, until their next activation.</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
</gameSystem>