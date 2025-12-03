# ----------- README -----------

## Member ID: 01_2345_6789

### Compliance
1. Implemented -- Named CS_330_01_2345_6789
2. Implemented -- Commented Member ID at the top of each file
3. Implemented -- MaximizeBox = False, MinimizeBox = False
4. Implemented -- Text = "Finance Calculator" and FormBorderStyle = FormBorderStyle.FixedDialog
5. Implemented -- TabControl calculatorTabs has two tabs.<br />
	<ol type="a">
	<li>TabControl calculatorTabs Dock = DockStyle.Top</li>
	<li>Implemented -- Refer to CS_330_01_2345_6789.Designer.cs
		<ol type="i">
		<li>Implemented -- btn0</li>
		<li>Implemented -- btn1</li>
		<li>Implemented -- btn2</li>
		<li>Implemented -- btn3</li>
		<li>Implemented -- btn4</li>
		<li>Implemented -- btn5</li>
		<li>Implemented -- btn6</li>
		<li>Implemented -- btn7</li>
		<li>Implemented -- btn8</li>
		<li>Implemented -- btn9</li>
		<li>Implemented -- btnPeriod</li>
		<li>Implemented -- btnEquals</li>
		<li>Implemented -- btnPlus</li>
		<li>Implemented -- btnMinus</li>
		<li>Implemented -- btnMultiply</li>
		<li>Implemented -- btnDivide</li>
		<li>Implemented -- btnClear</li>
		</ol>
	</li>
	<li>Implemented -- Refer to CS_330_01_2345_6789.Designer.cs
		<ol type="i">
		<li>Implemented -- 3 Labels
			<ol type="1">
			<li>Implemented -- lbIAmount</li>
			<li>Implemented -- lbIRate</li>
			<li>Implemented -- lbIYears</li>
			</ol>
		</li>
		<li>Implemented -- 4 TextBoxes
			<ol type="1">
			<li>Implemented -- txtDollars</li>
			<li>Implemented -- txtInterest</li>
			<li>Implemented -- txtYears</li>
			<li>Implemented -- cmpdOutput</li>
			<li>Addition -- txtCustom</li>
			</ol>
		</li>
		<li>Implemented -- 1 GroupBox
			<ol type="1">
			<li>Implemented -- grpFrequency</li>
			<li>Addition -- grpBonus</li>
			</ol>
		</li>
		<li>Implemented -- 4 RadioButtons
			<ol type="1">
			<li>Implemented -- rdoMonthly</li>
			<li>Implemented -- rdoQtr</li>
			<li>Implemented -- rdoSemi</li>
			<li>Implemented -- rdoAnually</li>
			<li>Addition -- rdoContinuous</li>
			<li>Addition -- rdoCustom</li>
			</ol>
		</li>
		<li>Implemented -- btnCalculate</li>
		</ol>
	</li>
	</ol>
6. 
	<ol type="a">
	<li>Implemented -- black background for Calculator tab</li>
	<li>Implemented -- outputBox is center-aligned</li>
	<li>Implemented -- click&#95btn created, refer to Comment 6.c.
		<ol type="i">
		<li>Implemented -- Refer to CS_330_01_2345_6789.Designer.cs</li>
		<li>Implemented -- Refer to CS_330_01_2345_6789.cs, Comment 6.c.ii.</li>
		<li>Implemented -- Refer to CS_330_01_2345_6789.cs, Comment 6.c.iii.</li>
		<li></li>
		</ol>
	</li>
	<li>Implemented -- operator&#95Click created, refer to Comment 6.d., CS_330_01_2345_6789.cs.
		<ol type="i">
		<li>Implemented -- Refer to CS_330_01_2345_6789.Designer.cs</li>
		<li>Implemented -- Refer to CS_330_01_2345_6789.cs, Comment 6.d.ii.</li>
		<li></li>
		</ol>
	</li>
	<li>Implemented
		<ol type="i">
		<li>Implemented</li>
		<li>Implemented</li>
		</ol>
	</li>
	<li>Implemented</li>
	</ol>
7. 
	<ol type="a">
	<li>Implemented
		<ol type="i">
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		</ol>
	</li>
	<li>Implemented</li>
	<li>Implemented</li>
	<li>Implemented</li>
	<li>Implemented</li>
	<li>Implemented</li>
	<li>Implemented</li>
	<li>Implemented</li>
	<li>Implemented
		<ol type="i">
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		<li>Implemented</li>
		</ol>
	</li>
	</ol>

### Design choices
- Instruction number 2 unclear; assumed I should comment top of each file
- Left the default 9pt Segoe font to integrate with Windows default framework.
- Added extra controls: **continuous** and **custom**.  Allows for continuous compounding and a custom setting
- outputBox ReadOnly = false to prevent unpredictable behavior.
- sentinel value of doubles a and b is int.MaxValue.<br />
Temporary. Cannot use null as a sentinel value, even if ideal. double.TryParse only accepts type double, not double?, which is an alias for NullableType&lt;double&gt;.<br />
Future Improvement: find a more robust sentinel value or implementation of double? while maintaining compatibility with double.TryParse.
- Due to the above-mentioned sentinel value design, I needed a way to harmonizing 
shouldReplace and displayText == "0".  There was also the unique behavior where previous values existing due to operating 
would create scenarios where it would append to the previous value instead of replacing it.
By having the displayText == "0" tied to shouldReplace, it ensured that the logic in click_btn(object sender, EventArgs e) worked properly.
- The basic calculator tab only does one operation at a time.  IT DOES NOT TAKE ORDER OF OPERATIONS OR PRECEDENCE INTO ACCOUNT.
### Assumptions
- The user will never need to operate near the double.MaxValue range in the basic calculator tab.