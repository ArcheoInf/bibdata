<?xml version="1.0" encoding="UTF-8"?>
<!--
CC0 1.0 Universal

Statement of Purpose

The laws of most jurisdictions throughout the world automatically confer
exclusive Copyright and Related Rights (defined below) upon the creator and
subsequent owner(s) (each and all, an "owner") of an original work of
authorship and/or a database (each, a "Work").

Certain owners wish to permanently relinquish those rights to a Work for the
purpose of contributing to a commons of creative, cultural and scientific
works ("Commons") that the public can reliably and without fear of later
claims of infringement build upon, modify, incorporate in other works, reuse
and redistribute as freely as possible in any form whatsoever and for any
purposes, including without limitation commercial purposes. These owners may
contribute to the Commons to promote the ideal of a free culture and the
further production of creative, cultural and scientific works, or to gain
reputation or greater distribution for their Work in part through the use and
efforts of others.

For these and/or other purposes and motivations, and without any expectation
of additional consideration or compensation, the person associating CC0 with a
Work (the "Affirmer"), to the extent that he or she is an owner of Copyright
and Related Rights in the Work, voluntarily elects to apply CC0 to the Work
and publicly distribute the Work under its terms, with knowledge of his or her
Copyright and Related Rights in the Work and the meaning and intended legal
effect of CC0 on those rights.

1. Copyright and Related Rights. A Work made available under CC0 may be
protected by copyright and related or neighboring rights ("Copyright and
Related Rights"). Copyright and Related Rights include, but are not limited
to, the following:

  i. the right to reproduce, adapt, distribute, perform, display, communicate,
  and translate a Work;

  ii. moral rights retained by the original author(s) and/or performer(s);

  iii. publicity and privacy rights pertaining to a person's image or likeness
  depicted in a Work;

  iv. rights protecting against unfair competition in regards to a Work,
  subject to the limitations in paragraph 4(a), below;

  v. rights protecting the extraction, dissemination, use and reuse of data in
  a Work;

  vi. database rights (such as those arising under Directive 96/9/EC of the
  European Parliament and of the Council of 11 March 1996 on the legal
  protection of databases, and under any national implementation thereof,
  including any amended or successor version of such directive); and

  vii. other similar, equivalent or corresponding rights throughout the world
  based on applicable law or treaty, and any national implementations thereof.

2. Waiver. To the greatest extent permitted by, but not in contravention of,
applicable law, Affirmer hereby overtly, fully, permanently, irrevocably and
unconditionally waives, abandons, and surrenders all of Affirmer's Copyright
and Related Rights and associated claims and causes of action, whether now
known or unknown (including existing as well as future claims and causes of
action), in the Work (i) in all territories worldwide, (ii) for the maximum
duration provided by applicable law or treaty (including future time
extensions), (iii) in any current or future medium and for any number of
copies, and (iv) for any purpose whatsoever, including without limitation
commercial, advertising or promotional purposes (the "Waiver"). Affirmer makes
the Waiver for the benefit of each member of the public at large and to the
detriment of Affirmer's heirs and successors, fully intending that such Waiver
shall not be subject to revocation, rescission, cancellation, termination, or
any other legal or equitable action to disrupt the quiet enjoyment of the Work
by the public as contemplated by Affirmer's express Statement of Purpose.

3. Public License Fallback. Should any part of the Waiver for any reason be
judged legally invalid or ineffective under applicable law, then the Waiver
shall be preserved to the maximum extent permitted taking into account
Affirmer's express Statement of Purpose. In addition, to the extent the Waiver
is so judged Affirmer hereby grants to each affected person a royalty-free,
non transferable, non sublicensable, non exclusive, irrevocable and
unconditional license to exercise Affirmer's Copyright and Related Rights in
the Work (i) in all territories worldwide, (ii) for the maximum duration
provided by applicable law or treaty (including future time extensions), (iii)
in any current or future medium and for any number of copies, and (iv) for any
purpose whatsoever, including without limitation commercial, advertising or
promotional purposes (the "License"). The License shall be deemed effective as
of the date CC0 was applied by Affirmer to the Work. Should any part of the
License for any reason be judged legally invalid or ineffective under
applicable law, such partial invalidity or ineffectiveness shall not
invalidate the remainder of the License, and in such case Affirmer hereby
affirms that he or she will not (i) exercise any of his or her remaining
Copyright and Related Rights in the Work or (ii) assert any associated claims
and causes of action with respect to the Work, in either case contrary to
Affirmer's express Statement of Purpose.

4. Limitations and Disclaimers.

  a. No trademark or patent rights held by Affirmer are waived, abandoned,
  surrendered, licensed or otherwise affected by this document.

  b. Affirmer offers the Work as-is and makes no representations or warranties
  of any kind concerning the Work, express, implied, statutory or otherwise,
  including without limitation warranties of title, merchantability, fitness
  for a particular purpose, non infringement, or the absence of latent or
  other defects, accuracy, or the present or absence of errors, whether or not
  discoverable, all to the greatest extent permissible under applicable law.

  c. Affirmer disclaims responsibility for clearing rights of other persons
  that may apply to the Work or any use thereof, including without limitation
  any person's Copyright and Related Rights in the Work. Further, Affirmer
  disclaims responsibility for obtaining any necessary consents, permissions
  or other rights required for any use of the Work.

  d. Affirmer understands and acknowledges that Creative Commons is not a
  party to this document and has no duty or obligation with respect to this
  CC0 or use of the Work.

For more information, please see
<http://creativecommons.org/publicdomain/zero/1.0/>
-->
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/">
	
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	
	<xsl:mode streamable="yes"/>
	
	<!-- <xsl:include href="add_mods.xsl" />-->
	
	<xsl:param name="baseURI" select="'http://data.archeoinf.tu-dortmund.de/'" />
	<xsl:param name="collection" select="'bl_bnb'" />
	<xsl:param name="collection_uri" select="'bl_bnb'" />
	<xsl:param name="data" select="'file:///D:/7_Watchfolder/BL-BNB-dataset/BNBrdfdc17.1.xml'" />
	
	<xsl:template match="/">
		<add>
			<xsl:for-each select="saxon:stream(doc($data)/modsCollection/mods)">

				<xsl:variable name="c" select="current()" />
				
				<xsl:variable name="relevant">
					<!-- archeoinf -->
					<xsl:for-each select="recordInfo/recordIdentifier/@source">
						<xsl:if test="contains(current(), 'ArcheoInf')">1</xsl:if>
					</xsl:for-each>
					<!-- bkl -->
					<xsl:for-each select="classification[@authority='bkl']">
						<xsl:if test="current()='15.15' or current()='15.16' or current()='15.17' or current()='15.18' or current()='15.19'">1</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/classification[@authority='bkl']">
						<xsl:if test="current()='15.15' or current()='15.16' or current()='15.17' or current()='15.18' or current()='15.19'">1</xsl:if>
					</xsl:for-each>
					<!-- ddc -->
					<xsl:for-each select="classification[@authority='ddc']">
						<xsl:if test="starts-with(current(),'93')">1</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/classification[@authority='ddc']">
						<xsl:if test="starts-with(current(),'93')">1</xsl:if>
					</xsl:for-each>
					<!-- rvk -->
					<xsl:for-each select="classification[@authority='rvk']">
						<xsl:if test="starts-with(current(),'LD') or starts-with(current(),'LE') or starts-with(current(),'LF') or starts-with(current(),'LG') or starts-with(current(),'NF') or starts-with(current(),'NG') or starts-with(current(),'NH')">1</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/classification[@authority='rvk']">
						<xsl:if test="starts-with(current(),'LD') or starts-with(current(),'LE') or starts-with(current(),'LF') or starts-with(current(),'LG') or starts-with(current(),'NF') or starts-with(current(),'NG') or starts-with(current(),'NH')">1</xsl:if>
					</xsl:for-each>
					<!-- swets -->
					<xsl:for-each select="relatedItem/identifier">
						<xsl:if test="contains(current(), '1465-5187') or contains(current(), '0905-7196') or contains(current(), '1563-0110') or contains(current(), '0098-9444') or contains(current(), '1357-4442') 
						or contains(current(), '0011-3212') or contains(current(), '0011-3212') or contains(current(), '1745-5820') or contains(current(), '1461-9571') or contains(current(), '0440-9213') or contains(current(), '0278-4165')
						or contains(current(), '0093-4690') or contains(current(), '0952-7648') or contains(current(), '1047-7594') or contains(current(), '0076-6097') or contains(current(), '1050-4877') or contains(current(), '0003-8113')
						or contains(current(), '1072-5369') or contains(current(), '1059-0161') or contains(current(), '0305-4403') or contains(current(), '0068-1288') or contains(current(), '0066-5983') or contains(current(), '1075-2196')
						or contains(current(), '0261-4332') or contains(current(), '1555-8622') or contains(current(), '0003-8113') or contains(current(), '0959-7743') or contains(current(), '0065-101X') or contains(current(), '1782-4907')
						or contains(current(), '0394-0802') or contains(current(), '1753-5530') or contains(current(), '1600-0471') or contains(current(), '1563-0110') or contains(current(), '1461-9571') or contains(current(), '1090-2686')
						or contains(current(), '2042-4582') or contains(current(), '1743-1700') or contains(current(), '1745-817X') or contains(current(), '1573-7764') or contains(current(), '1573-7756') or contains(current(), '1747-6704')
						or contains(current(), '1099-0763') or contains(current(), '1935-3987') or contains(current(), '1474-0540') or contains(current(), '1600-0390') or contains(current(), '1783-1393') or
						contains(current(), '14655187') or contains(current(), '09057196') or contains(current(), '15630110') or contains(current(), '00989444') or contains(current(), '13574442') 
						or contains(current(), '00113212') or contains(current(), '00113212') or contains(current(), '17455820') or contains(current(), '14619571') or contains(current(), '04409213') or contains(current(), '02784165')
						or contains(current(), '00934690') or contains(current(), '09527648') or contains(current(), '10477594') or contains(current(), '00766097') or contains(current(), '10504877') or contains(current(), '00038113')
						or contains(current(), '10725369') or contains(current(), '10590161') or contains(current(), '03054403') or contains(current(), '00681288') or contains(current(), '00665983') or contains(current(), '10752196')
						or contains(current(), '02614332') or contains(current(), '15558622') or contains(current(), '00038113') or contains(current(), '09597743') or contains(current(), '0065101X') or contains(current(), '17824907')
						or contains(current(), '03940802') or contains(current(), '17535530') or contains(current(), '16000471') or contains(current(), '15630110') or contains(current(), '14619571') or contains(current(), '10902686')
						or contains(current(), '20424582') or contains(current(), '17431700') or contains(current(), '1745817X') or contains(current(), '15737764') or contains(current(), '15737756') or contains(current(), '17476704')
						or contains(current(), '10990763') or contains(current(), '19353987') or contains(current(), '14740540') or contains(current(), '16000390') or contains(current(), '17831393')">1</xsl:if>
					</xsl:for-each>
				</xsl:variable>	

				<xsl:if test="$relevant='1'">
				<doc>
				
				<!-- titleInfo - Fall: ??? -->
					<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series'])">
						<field name="fjtitle"><xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/title" /></field>
						<field name="journal_title"><xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/title" /></field>
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/subTitle)">
							<field name="titelzusaetze"><xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/subTitle" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/part/detail[@type='volume']/number)">
							<field name="volume"><xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/part/detail[@type='volume']/number" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/part/detail[@type='issue']/number)">
							<field name="issue"><xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/part/detail[@type='issue']/number" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/identifier[@type='ZDB'])">
							<field name="zdb"><xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/identifier[@type='ZDB']" /></field>
						</xsl:if>
					</xsl:if>
					
				<!-- titleInfo - Fall: Zeitschrift -->
					<xsl:if test="exists(relatedItem[@type='host']) and not(exists(relatedItem[@type='host']/relatedItem[@type='series']))">
						<field name="fjtitle"><xsl:value-of select="relatedItem[@type='host']/titleInfo[not(exists(@type))]/title" /></field>
						<field name="journal_title"><xsl:value-of select="relatedItem[@type='host']/titleInfo[not(exists(@type))]/title" /></field>
						<xsl:if test="exists(relatedItem[@type='host']/titleInfo/subTitle)">
							<field name="titelzusaetze"><xsl:value-of select="relatedItem[@type='host']/titleInfo[not(exists(@type))]/subTitle" /></field>
						</xsl:if>
						<xsl:for-each select="relatedItem[@type='host']/titleInfo[@type='alternative']">
							<field name="parallel_title"><xsl:value-of select="title" /></field>
						</xsl:for-each>
						<xsl:if test="exists(relatedItem[@type='host']/recordInfo/recordIdentifer)"> 
							<field name="series_id"><xsl:value-of select="relatedItem[@type='host']/recordInfo/recordIdentifer" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/part/detail[@type='volume']/number)"> 
							<field name="volume"><xsl:value-of select="relatedItem[@type='host']/part/detail[@type='volume']/number" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/part/detail[@type='issue']/number)"> 
							<field name="issue"><xsl:value-of select="relatedItem[@type='host']/part/detail[@type='issue']/number" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/identifier[@type='ZDB'])">
							<field name="zdb"><xsl:value-of select="relatedItem[@type='host']/identifier[@type='ZDB']" /></field>
						</xsl:if>
					</xsl:if>
					
				<!-- titleInfo - Fall: Reihe/Serie -->
					<xsl:if test="exists(relatedItem[@type='series'])">
						<field name="series_title"><xsl:value-of select="relatedItem[@type='series']/titleInfo[not(exists(@type))]/title" /></field>
						<field name="fseries"><xsl:value-of select="relatedItem[@type='series']/titleInfo[not(exists(@type))]/title" /></field>
						<xsl:for-each select="relatedItem[@type='series']/titleInfo[not(exists(@type))]/subTitle">
							<xsl:if test="position() &lt; 2">
								<field name="titelzusaetze"><xsl:value-of select="." /></field>
							</xsl:if>
						</xsl:for-each>
						<xsl:if test="exists(relatedItem[@type='host']/recordInfo/recordIdentifer)"> 
							<field name="series_id"><xsl:value-of select="relatedItem[@type='host']/recordInfo/recordIdentifer" /></field>
						</xsl:if>
						<xsl:for-each select="relatedItem[@type='series']/titleInfo[@type='alternative']">
							<field name="parallel_title"><xsl:value-of select="title" /></field>
						</xsl:for-each>
						<xsl:if test="exists(relatedItem[@type='series']/part/detail[@type='volume']/number)"> 
							<field name="volume"><xsl:value-of select="relatedItem[@type='series']/part/detail[@type='volume']/number" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='series']/part/detail[@type='issue']/number)"> 
							<field name="issue"><xsl:value-of select="relatedItem[@type='series']/part/detail[@type='issue']/number" /></field>
						</xsl:if>
					</xsl:if>
		
				<!-- titleInfo - Fall: Monograph/Contribution -->
					<xsl:for-each select="titleInfo[not(exists(@type))]">
						<field name="sorttitle"><xsl:value-of select="title" /></field>
						<field name="title"><xsl:value-of select="title" /></field>
						<xsl:if test="exists(subTitle)">
							<field name="titelzusaetze"><xsl:value-of select="subTitle" /></field>
						</xsl:if>
					</xsl:for-each>					
					<xsl:for-each select="titleInfo[@type='alternative']">
						<field name="parallel_title"><xsl:value-of select="title" /></field>
					</xsl:for-each>
					
				<!-- subjects -->
					<xsl:for-each select="subject[@authority='gnd']/topic">
							<field name="subject"><xsl:value-of select="." /></field>
							<field name="fsubject"><xsl:value-of select="." /></field>
							<field name="tagcloud"><xsl:value-of select="." /></field>
					</xsl:for-each>
					<xsl:for-each select="subject[@authority='rswk']/topic">
						<xsl:if test="current() != ''">
							<field name="frswk"><xsl:value-of select="." /></field>
							<field name="rswk"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'RSWK'" /></field>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="subject[not(exists(@authority))]/topic">
							<field name="subject"><xsl:value-of select="." /></field>
							<field name="fsubject"><xsl:value-of select="." /></field>
							<field name="tagcloud"><xsl:value-of select="." /></field>
					</xsl:for-each>		
					<xsl:for-each select="relatedItem/subject[@authority='gnd']/topic">
							<field name="subject"><xsl:value-of select="." /></field>
							<field name="fsubject"><xsl:value-of select="." /></field>
							<field name="tagcloud"><xsl:value-of select="." /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/subject[@authority='rswk']/topic">
						<xsl:if test="current() != ''">
							<field name="frswk"><xsl:value-of select="." /></field>
							<field name="rswk"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'RSWK'" /></field>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/subject[not(exists(@authority))]/topic">
							<field name="subject"><xsl:value-of select="." /></field>
							<field name="fsubject"><xsl:value-of select="." /></field>
							<field name="tagcloud"><xsl:value-of select="." /></field>
					</xsl:for-each>
					
				<!-- classification -->
					<xsl:for-each select="classification[@authority='ddc']">
							<field name="ddc"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'DDC'" /></field>
					</xsl:for-each>
					<xsl:for-each select="classification[@authority='rvk']">
							<field name="rvk"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'RVK'" /></field>
					</xsl:for-each>
					<xsl:for-each select="classification[@authority='ghbs']">
							<field name="ghbs"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'GHBS'" /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/classification[@authority='ddc']">
							<field name="ddc"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'DDC'" /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/classification[@authority='rvk']">
							<field name="rvk"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'RVK'" /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/classification[@authority='ghbs']">
							<field name="ghbs"><xsl:value-of select="." /></field>
							<field name="authority"><xsl:value-of select="'GHBS'" /></field>
					</xsl:for-each>
					
				<!-- id -->
					<xsl:if test="exists(recordInfo/recordIdentifier[@source])">
						<xsl:variable name="sigel">
							<xsl:if test="contains($collection, 'Dortmund')"><xsl:value-of select="'290-'" /></xsl:if>
							<xsl:if test="contains($collection, 'Bochum')"><xsl:value-of select="'294-'" /></xsl:if>
							<xsl:if test="not(contains($collection, 'Dortmund')) and not(contains($collection, 'Bochum'))"><xsl:value-of select="''" /></xsl:if>
						</xsl:variable>
						<xsl:if test="not(exists(identifier[@type='local']))">
							<field name="id"><xsl:value-of select="recordInfo/recordIdentifier[@source]" /></field>
						</xsl:if>
						<xsl:if test="exists(identifier[@type='local'])">
							<field name="id"><xsl:value-of select="$sigel" /><xsl:value-of select="identifier[@type='local']" /></field>
						</xsl:if>
						<field name="fremd_id"><xsl:value-of select="recordInfo/recordIdentifier[@source]" /></field>
					</xsl:if>
					<xsl:if test="not(exists(recordInfo/recordIdentifier[@source])) and exists(relatedItem[@type='host']/recordInfo/recordIdentifier[@source])">
						<xsl:variable name="sigel">
							<xsl:if test="contains($collection, 'Dortmund')"><xsl:value-of select="'290-'" /></xsl:if>
							<xsl:if test="contains($collection, 'Bochum')"><xsl:value-of select="'294-'" /></xsl:if>
							<xsl:if test="not(contains($collection, 'Dortmund')) and not(contains($collection, 'Bochum'))"><xsl:value-of select="''" /></xsl:if>
						</xsl:variable>
						<xsl:if test="not(exists(relatedItem[@type='host']/identifier[@type='local']))">
							<field name="id"><xsl:value-of select="relatedItem[@type='host']/recordInfo/recordIdentifier[@source]" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='host']/identifier[@type='local'])">
							<field name="id"><xsl:value-of select="$sigel" /><xsl:value-of select="relatedItem[@type='host']/identifier[@type='local']" /></field>
						</xsl:if>
						<field name="fremd_id"><xsl:value-of select="relatedItem[@type='host']/recordInfo/recordIdentifier[@source]" /></field>
					</xsl:if>
					<xsl:if test="not(exists(recordInfo/recordIdentifier[@source])) and exists(relatedItem[@type='series']/recordInfo/recordIdentifier[@source])">
						<xsl:variable name="sigel">
							<xsl:if test="contains($collection, 'Dortmund')"><xsl:value-of select="'290-'" /></xsl:if>
							<xsl:if test="contains($collection, 'Bochum')"><xsl:value-of select="'294-'" /></xsl:if>
							<xsl:if test="not(contains($collection, 'Dortmund')) and not(contains($collection, 'Bochum'))"><xsl:value-of select="''" /></xsl:if>
						</xsl:variable>
						<xsl:if test="not(exists(relatedItem[@type='series']/identifier[@type='local']))">
							<field name="id"><xsl:value-of select="relatedItem[@type='series']/recordInfo/recordIdentifier[@source]" /></field>
						</xsl:if>
						<xsl:if test="exists(relatedItem[@type='series']/identifier[@type='local'])">
							<field name="id"><xsl:value-of select="$sigel" /><xsl:value-of select="relatedItem[@type='series']/identifier[@type='local']" /></field>
						</xsl:if>
						<field name="fremd_id"><xsl:value-of select="$sigel" /><xsl:value-of select="relatedItem[@type='series']/recordInfo/recordIdentifier[@source]" /></field>
					</xsl:if>
					<xsl:if test="not(exists(recordInfo/recordIdentifier[@source])) and not(exists(relatedItem[@type='host']/recordInfo/recordIdentifier[@source])) and not(exists(relatedItem[@type='series']/recordInfo/recordIdentifier[@source]))">
						<field name="id"><xsl:value-of select="concat(UBDo,position())" /></field>
					</xsl:if>
					
				<!-- uri -->
					<field name="uri">
						<xsl:if test="exists(recordInfo/recordIdentifier[@source])">
							<xsl:value-of select="$baseURI" /><xsl:value-of select="$collection_uri" />/<xsl:value-of select="recordInfo/recordIdentifier[@source]" />
						</xsl:if>
						<xsl:if test="not(exists(recordInfo/recordIdentifier[@source])) and exists(relatedItem[@type='host']/recordInfo/recordIdentifier[@source])">
							<xsl:value-of select="$baseURI" /><xsl:value-of select="$collection_uri" />/<xsl:value-of select="relatedItem[@type='host']/recordInfo/recordIdentifier[@source]" />
						</xsl:if>
						<xsl:if test="not(exists(recordInfo/recordIdentifier[@source])) and exists(relatedItem[@type='series']/recordInfo/recordIdentifier[@source])">
							<xsl:value-of select="$baseURI" /><xsl:value-of select="$collection_uri" />/<xsl:value-of select="relatedItem[@type='series']/recordInfo/recordIdentifier[@source]" />
						</xsl:if>
					</field>
					
				<!-- collection -->
					<field name="collection"><xsl:value-of select="$collection" /></field>
		
				<!-- person -->
					<xsl:for-each select="name[@type='personal']">
						<xsl:if test="not(contains(namePart,'IDN'))">
							<xsl:variable name="substr" select="substring(namePart,string-length(namePart)-3,3)" />
							<xsl:variable name="namePart">
								<xsl:if test="starts-with(namePart, '( )')"><xsl:value-of select="substring-after(namePart, '( )')" /></xsl:if>
								<xsl:if test="not(starts-with(namePart, '( )'))"><xsl:value-of select="namePart" /></xsl:if>
							</xsl:variable>
							<xsl:variable name="name">
								<xsl:if test="(starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.')"><xsl:value-of select="substring($namePart,1,string-length($namePart)-1)" /></xsl:if>
								<xsl:if test="not((starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.'))"><xsl:value-of select="$namePart" /></xsl:if>
							</xsl:variable>
							<xsl:if test="role/roleTerm[@type='code'] = 'aut'">
								<field name="creator"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'ctb'">
								<field name="contributor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'edt'">
								<field name="editor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<field name="fperson"><xsl:value-of select="$name" /></field>
							<field name="person"><xsl:value-of select="$name" /></field>
							<field name="actor"><xsl:value-of select="$name" /></field>
						</xsl:if>
					</xsl:for-each>
					
					<xsl:for-each select="relatedItem[@type='host']/name[@type='personal']">
						<xsl:if test="not(contains(namePart,'IDN'))">
							<xsl:variable name="substr" select="substring(namePart,string-length(namePart)-3,3)" />
							<xsl:variable name="namePart">
								<xsl:if test="starts-with(namePart, '( )')"><xsl:value-of select="substring-after(namePart, '( )')" /></xsl:if>
								<xsl:if test="not(starts-with(namePart, '( )'))"><xsl:value-of select="namePart" /></xsl:if>
							</xsl:variable>
							<xsl:variable name="name">
								<xsl:if test="(starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.')"><xsl:value-of select="substring($namePart,1,string-length($namePart)-1)" /></xsl:if>
								<xsl:if test="not((starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.'))"><xsl:value-of select="$namePart" /></xsl:if>
							</xsl:variable>
							<xsl:if test="role/roleTerm[@type='code'] = 'aut'">
								<field name="creator"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'ctb'">
								<field name="contributor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'edt'">
								<field name="editor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<field name="fperson"><xsl:value-of select="$name" /></field>
							<field name="person"><xsl:value-of select="$name" /></field>
							<field name="actor"><xsl:value-of select="$name" /></field>
						</xsl:if>
					</xsl:for-each>
					
				<!-- corporate -->
					<xsl:for-each select="name[@type='corporate']">
						<xsl:if test="not(contains(namePart,'IDN'))">
							<xsl:variable name="substr" select="substring(namePart,string-length(namePart)-3,3)" />
							<xsl:variable name="namePart">
								<xsl:if test="starts-with(namePart, '( )')"><xsl:value-of select="substring-after(namePart, '( )')" /></xsl:if>
								<xsl:if test="not(starts-with(namePart, '( )'))"><xsl:value-of select="namePart" /></xsl:if>
							</xsl:variable>
							<xsl:variable name="name">
								<xsl:if test="(starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.')"><xsl:value-of select="substring($namePart,1,string-length($namePart)-1)" /></xsl:if>
								<xsl:if test="not((starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.'))"><xsl:value-of select="$namePart" /></xsl:if>
							</xsl:variable>
							<xsl:if test="role/roleTerm[@type='code'] = 'aut'">
								<field name="creator"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'ctb'">
								<field name="contributor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'edt'">
								<field name="editor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<field name="finstitution"><xsl:value-of select="$name" /></field>
							<field name="institution"><xsl:value-of select="$name" /></field>
							<field name="actor"><xsl:value-of select="$name" /></field>
						</xsl:if>
					</xsl:for-each>
					
					<xsl:for-each select="relatedItem[@type='host']/name[@type='corporate']">
						<xsl:if test="not(contains(namePart,'IDN'))">
							<xsl:variable name="substr" select="substring(namePart,string-length(namePart)-3,3)" />
							<xsl:variable name="namePart">
								<xsl:if test="starts-with(namePart, '( )')"><xsl:value-of select="substring-after(namePart, '( )')" /></xsl:if>
								<xsl:if test="not(starts-with(namePart, '( )'))"><xsl:value-of select="namePart" /></xsl:if>
							</xsl:variable>
							<xsl:variable name="name">
								<xsl:if test="(starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.')"><xsl:value-of select="substring($namePart,1,string-length($namePart)-1)" /></xsl:if>
								<xsl:if test="not((starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.'))"><xsl:value-of select="$namePart" /></xsl:if>
							</xsl:variable>
							<xsl:if test="role/roleTerm[@type='code'] = 'aut'">
								<field name="creator"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'ctb'">
								<field name="contributor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<xsl:if test="role/roleTerm[@type='code'] = 'edt'">
								<field name="editor"><xsl:value-of select="$name" /></field>
							</xsl:if>
							<field name="finstitution"><xsl:value-of select="$name" /></field>
							<field name="institution"><xsl:value-of select="$name" /></field>
							<field name="actor"><xsl:value-of select="$name" /></field>
						</xsl:if>
					</xsl:for-each>
					
				<!-- date -->
					<xsl:for-each select="originInfo/dateIssued">
						<xsl:if test="string-length(.) = 4">
							<field name="date"><xsl:value-of select="." /></field>
							<field name="fdate"><xsl:value-of select="." /></field>
						</xsl:if>
						<xsl:if test="starts-with(., 'c')">
							<field name="date"><xsl:value-of select="substring-after(., 'c')" /></field>
							<field name="fdate"><xsl:value-of select="substring-after(., 'c')" /></field>
						</xsl:if>
						<xsl:if test="contains(., '[')">
							<field name="date"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
							<field name="fdate"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
						</xsl:if>
						<xsl:if test="contains(., '?')">
							<field name="date"><xsl:value-of select="translate(., '?', '')" /></field>
							<field name="fdate"><xsl:value-of select="translate(., '?', '')" /></field>
						</xsl:if>
						<xsl:if test="contains(., ', ')">
							<xsl:variable name="jahre" select="tokenize(., ', ')" />
							<xsl:for-each select="$jahre">
								<field name="date"><xsl:value-of select="." /></field>
								<field name="fdate"><xsl:value-of select="." /></field>
							</xsl:for-each>
						</xsl:if>
					</xsl:for-each>
					
					<xsl:for-each select="relatedItem[@type='host']/originInfo/dateIssued">
						<xsl:if test="string-length(.) = 4">
							<field name="date"><xsl:value-of select="." /></field>
							<field name="fdate"><xsl:value-of select="." /></field>
						</xsl:if>
						<xsl:if test="starts-with(., 'c')">
							<field name="date"><xsl:value-of select="substring-after(., 'c')" /></field>
							<field name="fdate"><xsl:value-of select="substring-after(., 'c')" /></field>
						</xsl:if>
						<xsl:if test="contains(., '[')">
							<field name="date"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
							<field name="fdate"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
						</xsl:if>
						<xsl:if test="contains(., '?')">
							<field name="date"><xsl:value-of select="translate(., '?', '')" /></field>
							<field name="fdate"><xsl:value-of select="translate(., '?', '')" /></field>
						</xsl:if>
						<xsl:if test="contains(., ', ')">
							<xsl:variable name="jahre" select="tokenize(., ', ')" />
							<xsl:for-each select="$jahre">
								<field name="date"><xsl:value-of select="." /></field>
								<field name="fdate"><xsl:value-of select="." /></field>
							</xsl:for-each>
						</xsl:if>
					</xsl:for-each>
					
					<xsl:if test="genre[@authority='local'] = 'JournalArticle'">
						<xsl:for-each select="relatedItem[@type='host']/originInfo/dateIssued">
							<xsl:if test="string-length(.) = 4">
								<field name="date"><xsl:value-of select="." /></field>
								<field name="fdate"><xsl:value-of select="." /></field>
							</xsl:if>
							<xsl:if test="starts-with(., 'c')">
								<field name="date"><xsl:value-of select="substring-after(., 'c')" /></field>
								<field name="fdate"><xsl:value-of select="substring-after(., 'c')" /></field>
							</xsl:if>
							<xsl:if test="contains(., '[')">
								<field name="date"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
								<field name="fdate"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
							</xsl:if>
							<xsl:if test="contains(., '?')">
								<field name="date"><xsl:value-of select="translate(., '?', '')" /></field>
								<field name="fdate"><xsl:value-of select="translate(., '?', '')" /></field>
							</xsl:if>
							<xsl:if test="contains(., ', ')">
								<xsl:variable name="jahre" select="tokenize(., ', ')" />
								<xsl:for-each select="$jahre">
									<field name="date"><xsl:value-of select="." /></field>
									<field name="fdate"><xsl:value-of select="." /></field>
								</xsl:for-each>
							</xsl:if>
						</xsl:for-each>
					</xsl:if>
					
				<!-- edition -->
					<xsl:if test="exists(originInfo/edition)">
						<field name="edition"><xsl:value-of select="originInfo/edition" /></field>
					</xsl:if>
					<xsl:if test="exists(relatedItem[@type='host']/originInfo/edition)">
						<field name="edition"><xsl:value-of select="originInfo/edition" /></field>
					</xsl:if>
					
				<!-- genre -->
					<xsl:if test="exists(genre[@authority='local'])">
						<field name="genre">
							<xsl:if test="starts-with(genre[@authority='local'], 'Monograph')">Monographie</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'JournalArticle'">Zeitschriftenaufsatz</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'CollectedEdition'">Sammelwerk</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'Journal'">Zeitschrift</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'Series'">Serie / Reihe</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'MultivolumeMonograph'">Monographie</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'MultivolumeCollectedEdition'">Sammelwerk</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'Serial'">Fortsetzung</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'Contribution'">Beitrag in</xsl:if>
							<xsl:if test="genre[@authority='local'] = 'Other'">Sonstiges</xsl:if>
						</field>
					</xsl:if>
					<xsl:if test="not(exists(genre[@authority='local']))">
						<field name="genre">Monographie</field>
					</xsl:if>
					
				<!-- recordCreationDate -->
					<xsl:if test="exists(recordInfo/recordCreationDate)">
						<xsl:if test="not(genre[@authority='local'] = 'JournalArticle')">
							<xsl:if test="not(contains(recordInfo/recordCreationDate,'-'))">
								<xsl:variable name="dd" select="substring(recordInfo/recordCreationDate,1,2)" />
								<xsl:variable name="mm" select="substring(recordInfo/recordCreationDate,4,2)" />
								<xsl:variable name="yyyy" select="substring(recordInfo/recordCreationDate,7,4)" />
								<field name="recordCreationDate"><xsl:value-of select="concat($yyyy,'-',$mm,'-',$dd,'T00:00:00Z')" /></field>
							</xsl:if>
							<xsl:if test="contains(recordInfo/recordCreationDate,'-')">
								<field name="recordCreationDate"><xsl:value-of select="concat(recordInfo/recordCreationDate,'T00:00:00Z')" /></field>
							</xsl:if>
						</xsl:if>
						<xsl:if test="genre[@authority='local'] = 'JournalArticle'">
							<xsl:if test="not(contains(recordInfo/recordCreationDate,'-'))">
								<xsl:variable name="dd" select="substring(recordInfo/recordCreationDate,1,2)" />
								<xsl:variable name="mm" select="substring(recordInfo/recordCreationDate,4,2)" />
								<xsl:variable name="yyyy" select="substring(recordInfo/recordCreationDate,7,4)" />
								<field name="recordCreationDate"><xsl:value-of select="concat($yyyy,'-',$mm,'-',$dd,'T00:00:00Z')" /></field>
							</xsl:if>
							<xsl:if test="contains(recordInfo/recordCreationDate,'-')">
								<field name="recordCreationDate"><xsl:value-of select="concat(recordInfo/recordCreationDate,'T00:00:00Z')" /></field>
							</xsl:if>
						</xsl:if>
					</xsl:if>
					
				<!-- recordChangeDate -->
					<xsl:if test="exists(recordInfo/recordChangeDate) and not(recordInfo/recordChangeDate = '')">
						<xsl:if test="not(genre[@authority='local'] = 'JournalArticle')">
							<xsl:if test="not(contains(recordInfo/recordChangeDate,'-'))">
								<xsl:variable name="dd" select="substring(recordInfo/recordChangeDate,1,2)" />
								<xsl:variable name="mm" select="substring(recordInfo/recordChangeDate,4,2)" />
								<xsl:variable name="yyyy" select="substring(recordInfo/recordChangeDate,7,4)" />
								<field name="recordChangeDate"><xsl:value-of select="concat($yyyy,'-',$mm,'-',$dd,'T00:00:00Z')" /></field>
							</xsl:if>
							<xsl:if test="contains(recordInfo/recordChangeDate,'-')">
								<field name="recordChangeDate"><xsl:value-of select="concat(recordInfo/recordChangeDate,'T00:00:00Z')" /></field>
							</xsl:if>
						</xsl:if>
						<xsl:if test="genre[@authority='local'] = 'JournalArticle'">
							<xsl:if test="not(contains(recordInfo/recordChangeDate,'-'))">
								<xsl:variable name="dd" select="substring(recordInfo/recordChangeDate,1,2)" />
								<xsl:variable name="mm" select="substring(recordInfo/recordChangeDate,4,2)" />
								<xsl:variable name="yyyy" select="substring(recordInfo/recordChangeDate,7,4)" />
								<field name="recordChangeDate"><xsl:value-of select="concat($yyyy,'-',$mm,'-',$dd,'T00:00:00Z')" /></field>
							</xsl:if>
							<xsl:if test="contains(recordInfo/recordChangeDate,'-')">
								<field name="recordChangeDate"><xsl:value-of select="concat(recordInfo/recordChangeDate,'T00:00:00Z')" /></field>
							</xsl:if>
						</xsl:if>
					</xsl:if>
					
				<!-- ISxN -->
					<xsl:for-each select="identifier[@type='uri']">
						<xsl:if test="contains(current(), 'ISBN')">
							<field name="isbn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
							<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
						</xsl:if>
						<xsl:if test="contains(current(), 'ISSN')">
							<field name="issn"><xsl:value-of select="substring-after(current(), 'ISSN:')" /></field>
							<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="identifier[@type='isbn']">
						<field name="isbn"><xsl:value-of select="current()" /></field>
						<field name="isxn"><xsl:value-of select="current()" /></field>
					</xsl:for-each>
					<xsl:for-each select="identifier[@type='issn']">
						<field name="issn"><xsl:value-of select="current()" /></field>
						<field name="isxn"><xsl:value-of select="current()" /></field>
					</xsl:for-each>
					
					<xsl:for-each select="relatedItem[@type='host']/identifier[@type='uri']">
						<xsl:if test="contains(current(), 'ISBN')">
							<field name="isbn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
							<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
						</xsl:if>
						<xsl:if test="contains(current(), 'ISSN')">
							<field name="issn"><xsl:value-of select="substring-after(current(), 'ISSN:')" /></field>
							<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='host']/identifier[@type='isbn']">
						<field name="isbn"><xsl:value-of select="current()" /></field>
						<field name="isxn"><xsl:value-of select="current()" /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='host']/identifier[@type='issn']">
						<field name="issn"><xsl:value-of select="current()" /></field>
						<field name="isxn"><xsl:value-of select="current()" /></field>
					</xsl:for-each>
					
					<xsl:for-each select="relatedItem[@type='series']/identifier[@type='uri']">
						<xsl:if test="contains(current(), 'ISBN')">
							<field name="isbn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
							<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
						</xsl:if>
						<xsl:if test="contains(current(), 'ISSN')">
							<field name="issn"><xsl:value-of select="substring-after(current(), 'ISSN:')" /></field>
							<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='series']/identifier[@type='isbn']">
						<field name="isbn"><xsl:value-of select="current()" /></field>
						<field name="isxn"><xsl:value-of select="current()" /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='series']/identifier[@type='issn']">
						<field name="issn"><xsl:value-of select="current()" /></field>
						<field name="isxn"><xsl:value-of select="current()" /></field>
					</xsl:for-each>

				<!-- volumes -->
					<xsl:if test="exists(relatedItem[@type='constituent'])">
						<field name="volumes"><xsl:value-of select="count(relatedItem[@type='constituent'])" /></field>
					</xsl:if>
					
				<!-- tableOfContents -->
					<xsl:if test="exists(tableOfContents)">
						<field name="toc_link"><xsl:value-of xmlns:xlink="http://www.w3.org/1999/xlink" select="tableOfContents/@xlink:link" /></field>
					</xsl:if>
					
				<!-- url -->
					<xsl:for-each select="location/url">
						<xsl:if test="contains(current(),'&amp;amp;')"><field name="url"><xsl:value-of select="concat(substring-before(current(),'&amp;amp;'),'&amp;',substring-after(current(),'&amp;amp;'))" /></field></xsl:if>
						<xsl:if test="not(contains(current(),'&amp;amp;'))"><field name="url"><xsl:value-of select="current()" /></field></xsl:if>
					</xsl:for-each>
					
				<!-- type -->
					<xsl:if test="exists(location/url)">
						<xsl:if test="not(exists(location/url[@displayLabel='Link zur Zeitschrift']))">
							<field name="type"><xsl:value-of select="'elektronisch'" /></field>
						</xsl:if>
					</xsl:if>					
					<xsl:if test="not(exists(location/url)) and not(genre[@authority='local'] = 'JournalArticle')">
						<field name="type"><xsl:value-of select="'gedruckt'" /></field>
					</xsl:if>					
					<xsl:if test="genre[@authority='local'] = 'JournalArticle'">
						<field name="type"><xsl:value-of select="''" /></field>
					</xsl:if>
					
				<!-- language --> 
					<xsl:for-each select="language/languageTerm">
						<xsl:if test="not(current() = '')">
							<field name="language"><xsl:value-of select="." /></field>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='host']/language/languageTerm">
						<xsl:if test="not(current() = '')">
							<field name="language"><xsl:value-of select="." /></field>
						</xsl:if>
					</xsl:for-each>	
					<!-- 	
					<xsl:if test="not(exists(language/languageTerm)) and not(exists(relatedItem[@type='host']/language/languageTerm))">
						<field name="language"><xsl:value-of select="''" /></field>
					</xsl:if> -->
		
				<!-- physicalDescription -->
					<xsl:if test="exists(physicalDescription/extent)">
						<field name="pages"><xsl:value-of select="physicalDescription/extent" /></field>
					</xsl:if>					
					<xsl:if test="exists(relatedItem[@type='host']/physicalDescription/extent)">
						<field name="pages"><xsl:value-of select="physicalDescription/extent" /></field>
					</xsl:if>
					
				<!-- place -->
					<xsl:for-each select="originInfo/place/placeTerm[@type='text']">
						<field name="place"><xsl:value-of select="." /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/originInfo/place/placeTerm[@type='text']">
						<field name="place"><xsl:value-of select="." /></field>
					</xsl:for-each>
					
				<!-- publisher -->
					<xsl:for-each select="originInfo/publisher">
						<field name="publisher"><xsl:value-of select="." /></field>
					</xsl:for-each>
					<xsl:for-each select="relatedItem/originInfo/publisher">
						<field name="publisher"><xsl:value-of select="." /></field>
					</xsl:for-each>
					
				<!-- Exportformate -->
					<xsl:for-each select="genre[@authority='local']">
						<xsl:if test="contains(., 'Monograph') or contains(., 'CollectedEdition')">
							<xsl:variable name="openurl">ctx.ver=Z39.88-2004&amp;rft_val_fmt=info:ofi/fmt:kev:mtx:book&amp;rft.genre=book<xsl:for-each select="../name"><xsl:if test="role/roleTerm[@type='code'] = 'ctb' or role/roleTerm[@type='code'] = 'aut'">&amp;rft.au=<xsl:value-of select="encode-for-uri(namePart)" /></xsl:if></xsl:for-each>&amp;rft.btitle=<xsl:value-of select="encode-for-uri(../titleInfo[not(exists(@type))]/title)" /><xsl:if test="exists(../titleInfo[not(exists(@type))]/subTitle)"> : <xsl:value-of select="encode-for-uri(../titleInfo[not(exists(@type))]/subTitle)" /></xsl:if><xsl:if test="exists(../originInfo/dateIssued)">&amp;rft.date=<xsl:value-of select="../originInfo/dateIssued" /></xsl:if><xsl:if test="exists(../physicalDescription/extent)">&amp;rft.tpages=<xsl:value-of select="../physicalDescription/extent" /></xsl:if><xsl:if test="exists(../originInfo/edition)">&amp;rft.edition=<xsl:value-of select="encode-for-uri(../originInfo/edition)" /></xsl:if><xsl:if test="exists(../originInfo/place)">&amp;rft.place=<xsl:for-each select="../originInfo/place/placeTerm[@type='text']"><xsl:value-of select="encode-for-uri(.)" /></xsl:for-each></xsl:if><xsl:if test="exists(../originInfo/publisher)">&amp;rft.pub=<xsl:for-each select="../originInfo/publisher"><xsl:value-of select="encode-for-uri(.)" /></xsl:for-each></xsl:if></xsl:variable>
							<field name="bibliographicCitation"><xsl:value-of select="$openurl" /></field>
						</xsl:if>
						<xsl:if test=". = 'JournalArticle'">
							<field name="bibliographicCitation">ctx.ver=Z39.88-2004&amp;rft_val_fmt=info:ofi/fmt:kev:mtx:journal&amp;rft.genre=article&amp;rft.atitle=<xsl:value-of select="encode-for-uri(../titleInfo/title)" /><xsl:if test="exists(../titleInfo/subTitle)"> : <xsl:value-of select="encode-for-uri(../titleInfo/subTitle)" /></xsl:if>&amp;rft.jtitle=<xsl:value-of select="encode-for-uri(../relatedItem[@type='host']/titleInfo[not(exists(@type))]/title)" /><xsl:if test="exists(../relatedItem[@type='host']/titleInfo/subTitle)"> : <xsl:value-of select="encode-for-uri(../relatedItem[@type='host']/titleInfo[not(exists(@type))]/subTitle)" /></xsl:if>&amp;rft.au=<xsl:for-each select="../name"><xsl:if test="role/roleTerm[@type='code'] = 'ctb' or role/roleTerm[@type='code'] = 'aut'">&amp;rft.au=<xsl:value-of select="encode-for-uri(namePart)" /></xsl:if></xsl:for-each>&amp;rft.date=<xsl:value-of select="../relatedItem[@type='host']/originInfo/dateIssued" />&amp;rft.issn=<xsl:for-each select="../relatedItem[@type='host']/identifier[@type='issn']"><xsl:if test="position() &lt; 2"><xsl:value-of select="substring-after(., 'ISSN:')" /></xsl:if></xsl:for-each>&amp;rft.volume=<xsl:value-of select="../relatedItem[@type='host']/part/detail[@type='volume']/number" />&amp;rft.issue=<xsl:value-of select="../relatedItem[@type='host']/part/detail[@type='issue']/number" />&amp;rft.spage=<xsl:value-of select="../physicalDescription/extent[@unit='pages']/start" /></field>
						</xsl:if>
						<xsl:if test=". = 'Journal'">
							<field name="bibliographicCitation">ctx.ver=Z39.88-2004&amp;rft_val_fmt=info:ofi/fmt:kev:mtx:journal&amp;rft.genre=article&amp;rft.jtitle=<xsl:value-of select="encode-for-uri(../relatedItem[@type='host']/titleInfo[not(exists(@type))]/title)" /><xsl:if test="exists(../relatedItem[@type='host']/titleInfo[not(exists(@type))]/subTitle)"> : <xsl:value-of select="encode-for-uri(../relatedItem[@type='host']/titleInfo[not(exists(@type))]/subTitle)" /></xsl:if>&amp;rft.issn=<xsl:for-each select="../relatedItem[@type='host']/identifier[@type='issn']"><xsl:if test="position() &lt; 2"><xsl:value-of select="." /></xsl:if></xsl:for-each><xsl:if test="exists(../relatedItem[@type='host']/originInfo/place)">&amp;rft.place=<xsl:value-of select="encode-for-uri(../relatedItem[@type='host']/originInfo/place/placeTerm[@type='text'])" /></xsl:if><xsl:if test="exists(../relatedItem[@type='host']/originInfo/publisher)">&amp;rft.pub=<xsl:value-of select="encode-for-uri(../relatedItem[@type='host']/originInfo/publisher)" /></xsl:if></field>
						</xsl:if>
					</xsl:for-each>
				</doc>
				
				<!-- Baende -->
				<xsl:if test="exists(relatedItem[@type='constituent']) and not(exists(relatedItem[@type='constituent']/identifier[@displayLabel='Stelle']))">
					<xsl:for-each select="relatedItem[@type='constituent']">
						<doc>
							<xsl:for-each select="titleInfo[not(exists(@type))]">
								<field name="sorttitle"><xsl:value-of select="title" /></field>
								<field name="title"><xsl:value-of select="title" /></field>
								<xsl:if test="exists(subTitle)">
									<field name="titelzusaetze"><xsl:value-of select="subTitle" /></field>
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="../titleInfo[not(exists(@type))]">
								<field name="entry_title"><xsl:value-of select="title" /></field>
							</xsl:for-each>
							
							<xsl:for-each select="titleInfo[@type='alternative']">
								<field name="parallel_title"><xsl:value-of select="title" /></field>
							</xsl:for-each>
							
							<field name="volume"><xsl:value-of select="part/detail[@type='volume']/number" /></field>
					
							<xsl:if test="exists(recordInfo/recordIdentifier[@source])">
								<field name="uri"><xsl:value-of select="$baseURI" /><xsl:value-of select="$collection_uri" />/<xsl:value-of select="recordInfo/recordIdentifier[@source]" /></field>
							</xsl:if>
							
							<!-- collection -->
								<field name="collection"><xsl:value-of select="$collection" /></field>
				
							<xsl:for-each select="name[@type='personal']">
								<xsl:if test="not(contains(namePart,'IDN'))">
									<xsl:variable name="substr" select="substring(namePart,string-length(namePart)-3,3)" />
									<xsl:variable name="name">
										<xsl:if test="(starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.')"><xsl:value-of select="substring(namePart,1,string-length(namePart)-1)" /></xsl:if>
										<xsl:if test="not((starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.'))"><xsl:value-of select="namePart" /></xsl:if>
									</xsl:variable>
									<xsl:if test="role/roleTerm[@type='code'] = 'aut'">
										<field name="creator"><xsl:value-of select="$name" /></field>
									</xsl:if>
									<xsl:if test="role/roleTerm[@type='code'] = 'ctb'">
										<field name="contributor"><xsl:value-of select="$name" /></field>
									</xsl:if>
									<xsl:if test="role/roleTerm[@type='code'] = 'edt'">
										<field name="editor"><xsl:value-of select="$name" /></field>
									</xsl:if>
									<field name="fperson"><xsl:value-of select="$name" /></field>
									<field name="person"><xsl:value-of select="$name" /></field>
									<field name="actor"><xsl:value-of select="$name" /></field>
								</xsl:if>
							</xsl:for-each>
							
							<xsl:for-each select="name[@type='corporate']">
								<xsl:if test="not(contains(namePart,'IDN'))">
									<xsl:variable name="substr" select="substring(namePart,string-length(namePart)-3,3)" />
									<xsl:variable name="name">
										<xsl:if test="(starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.')"><xsl:value-of select="substring(namePart,1,string-length(namePart)-1)" /></xsl:if>
										<xsl:if test="not((starts-with($substr,' ') or starts-with($substr,'-')) and ends-with($substr,'.'))"><xsl:value-of select="namePart" /></xsl:if>
									</xsl:variable>
									<xsl:if test="role/roleTerm[@type='code'] = 'aut'">
										<field name="creator"><xsl:value-of select="$name" /></field>
									</xsl:if>
									<xsl:if test="role/roleTerm[@type='code'] = 'ctb'">
										<field name="contributor"><xsl:value-of select="$name" /></field>
									</xsl:if>
									<xsl:if test="role/roleTerm[@type='code'] = 'edt'">
										<field name="editor"><xsl:value-of select="$name" /></field>
									</xsl:if>
									<field name="finstitution"><xsl:value-of select="$name" /></field>
									<field name="institution"><xsl:value-of select="$name" /></field>
									<field name="actor"><xsl:value-of select="$name" /></field>
								</xsl:if>
							</xsl:for-each>
							
							<xsl:for-each select="originInfo/dateIssued">
								<xsl:if test="string-length(.) = 4">
									<field name="date"><xsl:value-of select="." /></field>
									<field name="fdate"><xsl:value-of select="." /></field>
								</xsl:if>
								<xsl:if test="starts-with(., 'c')">
									<field name="date"><xsl:value-of select="substring-after(., 'c')" /></field>
									<field name="fdate"><xsl:value-of select="substring-after(., 'c')" /></field>
								</xsl:if>
								<xsl:if test="contains(., '[')">
									<field name="date"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
									<field name="fdate"><xsl:value-of select="substring-before(substring-after(., '['), ']')" /></field>
								</xsl:if>
								<xsl:if test="contains(., '?')">
									<field name="date"><xsl:value-of select="translate(., '?', '')" /></field>
									<field name="fdate"><xsl:value-of select="translate(., '?', '')" /></field>
								</xsl:if>
								<xsl:if test="contains(., ', ')">
									<xsl:variable name="jahre" select="tokenize(., ', ')" />
									<xsl:for-each select="$jahre">
										<field name="date"><xsl:value-of select="." /></field>
										<field name="fdate"><xsl:value-of select="." /></field>
									</xsl:for-each>
								</xsl:if>
							</xsl:for-each>
					
						<!-- genre -->
							<xsl:if test="exists(../genre[@authority='local'])">
								<field name="genre">
									<xsl:if test="starts-with(genre[@authority='local'], 'Monograph')">Monographie</xsl:if>
									<xsl:if test="../genre[@authority='local'] = 'CollectedEdition'">Sammelwerk</xsl:if>
									<xsl:if test="../genre[@authority='local'] = 'MultivolumeMonograph'">Monographie</xsl:if>
									<xsl:if test="../genre[@authority='local'] = 'MultivolumeCollectedEdition'">Sammelwerk</xsl:if>
								</field>
							</xsl:if>
					
							<xsl:if test="exists(originInfo/edition)">
								<field name="edition"><xsl:value-of select="originInfo/edition" /></field>
							</xsl:if>
							
							<xsl:if test="exists(recordInfo/recordIdentifier)">
								<xsl:variable name="sigel">
									<xsl:if test="contains($collection, 'Dortmund')"><xsl:value-of select="'290-'" /></xsl:if>
									<xsl:if test="contains($collection, 'Bochum')"><xsl:value-of select="'294-'" /></xsl:if>
									<xsl:if test="not(contains($collection, 'Dortmund')) and not(contains($collection, 'Bochum'))"><xsl:value-of select="''" /></xsl:if>
								</xsl:variable>
								<xsl:if test="not(exists(identifier[@type='local']))">
									<field name="id"><xsl:value-of select="recordInfo/recordIdentifier[@source]" /></field>
								</xsl:if>
								<xsl:if test="exists(identifier[@type='local'])">
									<field name="id"><xsl:value-of select="$sigel" /><xsl:value-of select="identifier[@type='local']" /></field>
								</xsl:if>
								<field name="fremd_id"><xsl:value-of select="recordInfo/recordIdentifier[@source]" /></field>
							</xsl:if>

							<xsl:if test="exists(../recordInfo/recordIdentifier[@source])">
								<field name="entryID"><xsl:value-of select="../identifier[@type='local']" /></field>
							</xsl:if>

							<xsl:if test="exists(../recordInfo/recordCreationDate)">
								<xsl:if test="not(../genre[@authority='local'] = 'JournalArticle')">
									<xsl:if test="not(contains(../recordInfo/recordCreationDate,'-'))">
										<xsl:variable name="dd" select="substring(../recordInfo/recordCreationDate,1,2)" />
										<xsl:variable name="mm" select="substring(../recordInfo/recordCreationDate,4,2)" />
										<xsl:variable name="yyyy" select="substring(../recordInfo/recordCreationDate,7,4)" />
										<field name="recordCreationDate"><xsl:value-of select="concat($yyyy,'-',$mm,'-',$dd,'T00:00:00Z')" /></field>
									</xsl:if>
									<xsl:if test="contains(../recordInfo/recordCreationDate,'-')">
										<field name="recordCreationDate"><xsl:value-of select="concat(../recordInfo/recordCreationDate,'T00:00:00Z')" /></field>
									</xsl:if>
								</xsl:if>
							</xsl:if>
					
							<xsl:if test="exists(../recordInfo/recordChangeDate) and not(../recordInfo/recordChangeDate = '')">
								<xsl:if test="not(../genre[@authority='local'] = 'JournalArticle')">
									<xsl:if test="not(contains(../recordInfo/recordChangeDate,'-'))">
										<xsl:variable name="dd" select="substring(../recordInfo/recordChangeDate,1,2)" />
										<xsl:variable name="mm" select="substring(../recordInfo/recordChangeDate,4,2)" />
										<xsl:variable name="yyyy" select="substring(../recordInfo/recordChangeDate,7,4)" />
										<field name="recordChangeDate"><xsl:value-of select="concat($yyyy,'-',$mm,'-',$dd,'T00:00:00Z')" /></field>
									</xsl:if>
									<xsl:if test="contains(../recordInfo/recordChangeDate,'-')">
										<field name="recordChangeDate"><xsl:value-of select="concat(../recordInfo/recordChangeDate,'T00:00:00Z')" /></field>
									</xsl:if>
								</xsl:if>
							</xsl:if>
							
							<xsl:for-each select="identifier[@type='uri']">
								<xsl:if test="contains(current(), 'ISBN')">
									<field name="isbn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
									<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
								</xsl:if>
								<xsl:if test="contains(current(), 'ISSN')">
									<field name="issn"><xsl:value-of select="substring-after(current(), 'ISSN:')" /></field>
									<field name="isxn"><xsl:value-of select="substring-after(current(), 'ISBN:')" /></field>
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="identifier[@type='isbn']">
								<field name="isbn"><xsl:value-of select="current()" /></field>
								<field name="isxn"><xsl:value-of select="current()" /></field>
							</xsl:for-each>
							<xsl:for-each select="identifier[@type='issn']">
								<field name="issn"><xsl:value-of select="current()" /></field>
								<field name="isxn"><xsl:value-of select="current()" /></field>
							</xsl:for-each>
					
							<xsl:if test="exists(tableOfContents)">
								<field name="toc_link"><xsl:value-of xmlns:xlink="http://www.w3.org/1999/xlink" select="tableOfContents/@xlink:link" /></field>
							</xsl:if>
							
							<xsl:for-each select="location/url">
								<xsl:if test="contains(current(),'&amp;amp;')"><field name="url"><xsl:value-of select="concat(substring-before(current(),'&amp;amp;'),'&amp;',substring-after(current(),'&amp;amp;'))" /></field></xsl:if>
								<xsl:if test="not(contains(current(),'&amp;amp;'))"><field name="url"><xsl:value-of select="current()" /></field></xsl:if>
							</xsl:for-each>
							
							<xsl:if test="exists(location/url)">
								<field name="type"><xsl:value-of select="'elektronisch'" /></field>
							</xsl:if>
							
							<xsl:if test="not(exists(location/url)) and not(../genre[@authority='local'] = 'JournalArticle')">
								<field name="type"><xsl:value-of select="'gedruckt'" /></field>
							</xsl:if>
							
							<xsl:for-each select="language/languageTerm">
								<field name="language"><xsl:value-of select="." /></field>
							</xsl:for-each>
							<!-- 
							<xsl:if test="not(exists(language/languageTerm))">
								<field name="language"><xsl:value-of select="''" /></field>
							</xsl:if> -->
				
							<xsl:if test="exists(physicalDescription/extent)">
								<field name="pages"><xsl:value-of select="physicalDescription/extent" /></field>
							</xsl:if>
							
							<xsl:for-each select="originInfo/place/placeTerm[@type='text']">
								<field name="place"><xsl:value-of select="." /></field>
							</xsl:for-each>
							<xsl:for-each select="relatedItem/originInfo/place/placeTerm[@type='text']">
								<field name="place"><xsl:value-of select="." /></field>
							</xsl:for-each>
							
							<xsl:for-each select="relatedItem/originInfo/publisher">
								<field name="publisher"><xsl:value-of select="." /></field>
							</xsl:for-each>
							<xsl:for-each select="originInfo/publisher">
								<field name="publisher"><xsl:value-of select="." /></field>
							</xsl:for-each>
					
							<xsl:for-each select="subject[@authority='gnd']/topic">
									<field name="subject"><xsl:value-of select="." /></field>
									<field name="fsubject"><xsl:value-of select="." /></field>
									<field name="tagcloud"><xsl:value-of select="." /></field>
							</xsl:for-each>
							<xsl:for-each select="subject[@authority='rswk']/topic">
								<xsl:if test="current() != ''">
									<field name="frswk"><xsl:value-of select="." /></field>
									<field name="urn"><xsl:value-of select="'RSWK'" /></field>
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="subject[not(exists(@authority))]/topic">
									<field name="subject"><xsl:value-of select="." /></field>
									<field name="fsubject"><xsl:value-of select="." /></field>
									<field name="tagcloud"><xsl:value-of select="." /></field>
							</xsl:for-each>
							
							<xsl:for-each select="classification[@authority='ddc']">
									<field name="doi"><xsl:value-of select="." /></field>
									<field name="urn"><xsl:value-of select="'DDC'" /></field>
							</xsl:for-each>
							<xsl:for-each select="classification[@authority='rvk']">
									<field name="doi"><xsl:value-of select="." /></field>
									<field name="urn"><xsl:value-of select="'RVK'" /></field>
							</xsl:for-each>
							<xsl:for-each select="classification[@authority='ghbs']">
									<field name="doi"><xsl:value-of select="." /></field>
									<field name="urn"><xsl:value-of select="'GHBS'" /></field>
							</xsl:for-each>
						</doc>
					</xsl:for-each>
				</xsl:if>
						
				</xsl:if>
			</xsl:for-each>
		</add>
	</xsl:template>
	
</xsl:stylesheet>


