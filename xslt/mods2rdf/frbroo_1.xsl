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
<xsl:stylesheet version="3.0"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    
	xmlns:saxon="http://saxon.sf.net/"
    
    xmlns:protege="http://protege.stanford.edu/plugins/owl/protege#"
    xmlns:xsp="http://www.owl-ontologies.com/2005/08/07/xsp.owl#"
    xmlns:swrl="http://www.w3.org/2003/11/swrl#"
    xmlns:swrlb="http://www.w3.org/2003/11/swrlb#"
    
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
	xmlns:dc="http://purl.org/dc/elements/1.1/"	
    xmlns:ecrm="http://erlangen-crm.org/120111/"
    xmlns:efrbroo="http://erlangen-crm.org/frbroo/120219/"
    xmlns:frbr="http://rdvocab.info/uri/schema/FRBRentitiesRDA#"
    xmlns:p1="http://rdvocab.info/Elements#"
    xmlns:rdaGr1="http://rdvocab.info/Elements/"
    xmlns:rdaGr2="http://rdvocab.info/ElementsGr2#"
    xmlns:rdaGr3="http://rdvocab.info/ElementsGr3#"
    xmlns:rdaRole="http://rdvocab.info/roles#"
    xmlns:erda="http://data.ub.tu-dortmund.de/efrbroo/rda_080512.owl#"
	>
	
	<xsl:output method="xml" indent="yes" />
	
	<xsl:mode streamable="yes"/>
	
	<!-- globale Variablen -->
	<xsl:param name="baseURI" select="'http://data.ub.tu-dortmund.de/'" />
	<xsl:param name="collection" select="'bl_bnb'" />
	<xsl:param name="collection_uri" select="'bl_bnb'" />
	<xsl:param name="data" select="'file:///D:/7_Watchfolder/BL-BNB-mods/BNBrdfdc01.1.mods.xml'" />
	<xsl:param name="crm_entity" select="'project'" />
	<xsl:param name="curator" select="'Universitätsbibliothek Dortmund'" />
	<xsl:param name="doctitle" select="'Katalog der UB Dortmund'" />
	

	<xsl:param name="baseUri" select="'0'" />
	<xsl:param name="project" select="'0'" />
	<xsl:param name="id" select="'0'" />
	<xsl:param name="file" select="'0'" />
	<xsl:param name="lfdNr" select="'0'" />

	<xsl:variable name="newline">
		<xsl:text>&#010;</xsl:text>
	</xsl:variable>
	
	<!-- Templates -->
	<xsl:include href="frbroo_1_FortlaufendesSammelwerk.xsl"/>	
	<xsl:include href="frbroo_1_Einzelwerk.xsl"/>	
	<xsl:include href="frbroo_1_mbW_M_creation.xsl"/>
	<xsl:include href="frbroo_1_mbW_M_publication.xsl"/>
	<xsl:include href="frbroo_1_Sammelwerk_1.xsl"/>
	<xsl:include href="frbroo_1_mbW_CE_creation.xsl"/>
	<xsl:include href="frbroo_1_mbW_CE_publication.xsl"/>
	
	<xsl:include href="frbroo_1_ArcheoInf_mbW_M_publication.xsl"/>
	<xsl:include href="frbroo_1_ArcheoInf_mbW_CE_publication.xsl"/>
	<xsl:include href="frbroo_1_ArcheoInf_Beitrag.xsl"/>
	<xsl:include href="frbroo_1_ArcheoInf_Beitrag_UeO.xsl"/>
	<xsl:include href="frbroo_1_ArcheoInf_Beitrag_UeO_mbW.xsl"/>
		
	<xsl:template match="/">
	
		<rdf:RDF>
		
		<xsl:if test="$crm_entity='project'">
		<!-- E7_Activity -->
			<xsl:value-of select="$newline" /><xsl:comment>E7_Activity</xsl:comment><xsl:value-of select="$newline" />
			<ecrm:E7_Activity>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E7')" />
				<!-- Relationen -->
				<ecrm:P9_consists_of>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E65-E31')" />
				</ecrm:P9_consists_of>
				<ecrm:P70i_is_documented_in>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E31')" />
				</ecrm:P70i_is_documented_in>
				<ecrm:P14_carried_out_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E74')" />
				</ecrm:P14_carried_out_by>
				<!-- Attribute -->
				<dc:title rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$collection" /></dc:title>
			</ecrm:E7_Activity>
		</xsl:if>
			
		<xsl:if test="$crm_entity='collection'">
		<!-- E78 Collection -->
			<xsl:value-of select="$newline" /><xsl:comment>E78_Collection</xsl:comment><xsl:value-of select="$newline" />
			<ecrm:E78_Collection>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E78')" />
				<!-- Relationen -->
				<ecrm:P70i_is_documented_in>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E31')" />
				</ecrm:P70i_is_documented_in>
				<ecrm:P109_has_current_or_former_curator>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E74')" />
				</ecrm:P109_has_current_or_former_curator>
				<!-- Attribute -->
				<dc:title rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$collection" /></dc:title>
			</ecrm:E78_Collection>
		</xsl:if>
			
		<!-- E31_Document -->
			<xsl:value-of select="$newline" /><xsl:comment>E31_Document</xsl:comment><xsl:value-of select="$newline" />
			<ecrm:E31_Document>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E31')" />
				<!-- Relationen -->
				<ecrm:P94i_was_created_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E65-E31')" />
				</ecrm:P94i_was_created_by>
				<ecrm:P70_documents>
					<xsl:if test="$crm_entity='project'">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E7')" />
					</xsl:if>
					<xsl:if test="$crm_entity='collection'">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E78')" />
					</xsl:if>
				</ecrm:P70_documents>
				<!-- Katalogisate -->
				<xsl:for-each select="saxon:stream(doc($data)/modsCollection/mods)">
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
					<!-- START "Fortlaufendes Sammelwerk" -->
						<xsl:if test="not(exists(genre)) and exists(relatedItem[@type='series'])">
							<ecrm:P148_has_component>
								<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/', relatedItem[@type='series']/recordInfo/recordIdentifier)" />
							</ecrm:P148_has_component>
						</xsl:if>
						<xsl:if test="contains(genre[@authority='local'],'Journal') and not(contains(genre[@authority='local'],'Article'))">
							<ecrm:P148_has_component>
								<xsl:call-template name="FortlaufendesSammelwerk2" />
							</ecrm:P148_has_component>
						</xsl:if>
					<!-- ENDE "Fortlaufendes Sammelwerk" -->
					<!-- die anderen -->
						<xsl:if test="contains(genre[@authority='local'],'Monograph') or contains(genre[@authority='marcgt'],'Monograph') 
							or contains(genre[@authority='local'],'CollectedEdition') or contains(genre[@authority='marcgt'],'CollectedEdition') 
							or genre[@authority='local']='Contribution' or genre[@authority='local']='JournalArticle'">
							<xsl:for-each select="current()/recordInfo/recordIdentifier">
								<xsl:if test="position()=1">
									<ecrm:P148_has_component>
										<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/', current())" />
									</ecrm:P148_has_component>
								</xsl:if>
							</xsl:for-each>
						</xsl:if>
					</xsl:if>
				</xsl:for-each>
				<!-- Attribute -->
				<dc:title rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$doctitle" /></dc:title>
			</ecrm:E31_Document>
			
		<!-- E65_Creation -->
			<xsl:value-of select="$newline" /><xsl:comment>E65_Creation</xsl:comment><xsl:value-of select="$newline" />
			<ecrm:E65_Creation>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E65-E31')" />
				<!-- Relationen -->
				<xsl:if test="$crm_entity='project'">
					<ecrm:P9i_forms_part_of>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E7')" />
					</ecrm:P9i_forms_part_of>
				</xsl:if>
				<ecrm:P94_has_created>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E31')" />
				</ecrm:P94_has_created>
				<ecrm:P14_carried_out_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E74')" />
				</ecrm:P14_carried_out_by>
			</ecrm:E65_Creation>
			
		<!-- E74_Group -->
			<xsl:value-of select="$newline" /><xsl:comment>E74_Group</xsl:comment><xsl:value-of select="$newline" />
			<ecrm:E74_Group>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E74')" />
				<!-- Relationen -->
				<xsl:if test="$crm_entity='project'">
					<ecrm:P14i_performed>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E7')" />
					</ecrm:P14i_performed>
				</xsl:if>
				<xsl:if test="$crm_entity='collection'">
					<ecrm:P109i_is_current_or_former_curator_of>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E78')" />
					</ecrm:P109i_is_current_or_former_curator_of>
				</xsl:if>
				<!-- Attribute -->
				<rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$curator" /></rdfs:label>
			</ecrm:E74_Group>		
			
		<!-- Katalogisate -->	
			<xsl:for-each select="saxon:stream(doc($data)/modsCollection/mods)">
				
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
				
				
				<!-- START "Fortlaufendes Sammelwerk" -->
					<xsl:if test="not(exists(genre)) and exists(relatedItem[@type='series'])">
						<xsl:call-template name="FortlaufendesSammelwerk1" />
					</xsl:if>
					<xsl:if test="contains(genre[@authority='local'],'Journal') and not(contains(genre[@authority='local'],'Article'))">
						<xsl:call-template name="FortlaufendesSammelwerk2" />
					</xsl:if>
				<!-- ENDE "Fortlaufendes Sammelwerk" -->
	
				<!-- START "Einzelwerk" / "Mehrbaendiges Werk" -->
					<xsl:if test="contains(genre[@authority='local'],'Monograph') or contains(genre[@authority='marcgt'],'Monograph')">
					
						<!-- einbaendig -->
						<xsl:if test="not(exists(physicalDescription/note[@displayLabel='Anzahl Bände'])) and not(exists(relatedItem[@type='constituent']))">
							<xsl:call-template name="Einzelwerk" />
						</xsl:if>
					
						<!-- mbW -->
						<xsl:if test="exists(relatedItem[@type='constituent']) and not(exists(relatedItem[@type='constituent']/part/identifier[@displayLabel='Stelle']))">
							<xsl:if test="exists(relatedItem[@type='constituent']/titleInfo)">
								<xsl:call-template name="mbW_M_creation" /><!-- Variante mbW im Schoepfungsprozess -->
							</xsl:if>
							<xsl:if test="not(exists(relatedItem[@type='constituent']/titleInfo))">
								<xsl:call-template name="mbW_M_publication" /><!-- Variante mbW im Publikationsprozess -->
							</xsl:if>
						</xsl:if>
					
						<!-- ArcheoInf -->
						<xsl:if test="exists(physicalDescription/note[@displayLabel='Anzahl Bände'])">
							<xsl:call-template name="AI_mbW_M_publication" /><!-- Variante mbW im Publikationsprozess -->
						</xsl:if>
					
					</xsl:if>
				<!-- ENDE "Einzelwerk" / "Mehrbaendiges Werk" -->
					
				<!-- START Collected Edition / "Mehrbaendiges Werk" -->
					<xsl:if test="contains(genre[@authority='local'],'CollectedEdition') or contains(genre[@authority='marcgt'],'CollectedEdition')">
				
						<!-- Sammelwerke und "Sammelwerk als Teil eines fortlaufenden Sammelwerks" -->
						<xsl:if test="not(exists(physicalDescription/note[@displayLabel='Anzahl Bände']))">
							
							<!-- einbaendig -->
							<xsl:if test="not(exists(relatedItem[@type='constituent'])) and not(exists(relatedItem[@type='constituent']/part/identifier[@displayLabel='Stelle']))">
								<xsl:call-template name="Sammelwerk" />
							</xsl:if>
							
							<!-- mbW -->
							<xsl:if test="exists(relatedItem[@type='constituent']) and not(exists(relatedItem[@type='constituent']/part/identifier[@displayLabel='Stelle']))">
								<xsl:if test="exists(relatedItem[@type='constituent']/titleInfo)">
									<xsl:call-template name="mbW_CE_creation" /><!-- Variante mbW im Schoepfungsprozess -->
								</xsl:if>
								<xsl:if test="not(exists(relatedItem[@type='constituent']/titleInfo))">
									<xsl:call-template name="mbW_CE_publication" /><!-- Variante mbW im Publikationsprozess -->
								</xsl:if>
							</xsl:if>
						</xsl:if>
						
					
						<!-- ArcheoInf -->
						<xsl:if test="exists(physicalDescription/note[@displayLabel='Anzahl Bände'])">
							<xsl:call-template name="AI_mbW_CE_publication" />				
						</xsl:if>
						
					</xsl:if>
				<!-- ENDE Collected Edition / "Mehrbaendiges Werk" -->
					
				<!-- START Beitrag in ... -->
					<xsl:if test="genre[@authority='local']='Contribution' or genre[@authority='local']='JournalArticle'">	
					
						<!-- <xsl:if test="exists(recordInfo/recordIdentifier[contains(@source,'ArcheoInf')])"> -->
							<xsl:call-template name="AI_Beitrag" />

							<!-- mit Volume-Zaehlung -->
							<xsl:if test="exists(relatedItem[@type='host']/part/detail[@type='volume'])">
								<xsl:call-template name="AI_Beitrag_UeO_mbW" />
							</xsl:if>
							
							<!-- ohne Volume-Zaehlung -->
							<xsl:if test="not(exists(relatedItem[@type='host']/part/detail[@type='volume']))">
								<xsl:call-template name="AI_Beitrag_UeO" />
							</xsl:if>
						<!-- </xsl:if> -->
						
						<!-- "Beitrag in einem einbaendigen Werk"
						<xsl:call-template name="Beitrag" /> -->
					
						<!-- zugegoerige Sammelwerke und fortlaufende Sammelwerke
						<xsl:call-template name="Beitrag2" /> -->
					
					</xsl:if>
				<!-- ENDE Beitrag in ... -->
					
				</xsl:if>

			</xsl:for-each>
                  													
		</rdf:RDF>
	</xsl:template>
	
</xsl:stylesheet>
