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
	
	<!-- "Sammelwerk" und "Sammelwerk als Teil eines fortlaufenden Sammelwerks" -->
	<xsl:template name="Sammelwerk">
		
		<xsl:variable name="uri" select="concat($baseURI, $collection_uri, '/', current()/recordInfo/recordIdentifier)" />
		<xsl:variable name="recid" select="current()/recordInfo/recordIdentifier" />

		<!-- F17 Aggregation Work -->
		<xsl:value-of select="$newline"/><xsl:comment>F17 Aggregation Work</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F17_Aggregation_Work>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F17/', $recid)" />
			<!-- Relationen -->
			<efrbroo:R19i_was_realised_through>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F28/', $recid)" />
			</efrbroo:R19i_was_realised_through>
			<xsl:if test="exists(identifier[@displayLabel='Sammelwerk'])">
				<ecrm:P70i_is_documented_in>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E31-F14/', $recid)" />
				</ecrm:P70i_is_documented_in>
			</xsl:if>
			<!-- Attribute -->
		</efrbroo:F17_Aggregation_Work>

		<!-- E31 Document fuer F17 -->
		<xsl:if test="exists(identifier[@displayLabel='Sammelwerk'])">
			<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
			<ecrm:E31_Document>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E31-F14/', $recid)" />
				<!-- Relationen -->
				<ecrm:P70_documents>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F17/', $recid)" />
				</ecrm:P70_documents>
				<xsl:for-each select="identifier[@displayLabel='Sammelwerk']">
					<ecrm:P67_refers_to>
						<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
					</ecrm:P67_refers_to>
					<ecrm:P67i_is_referred_to_by>
						<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
					</ecrm:P67i_is_referred_to_by>
				</xsl:for-each>
			</ecrm:E31_Document>
		</xsl:if>				
						
		<!-- F19 Publication Work -->
		<xsl:value-of select="$newline"/><xsl:comment>F19 Publication Work</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F19_Publication_Work>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F19/', $recid)" />
			<!-- Relationen -->
			<efrbroo:R23i_was_realised_through>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F30/', $recid)" />
			</efrbroo:R23i_was_realised_through>
			<xsl:if test="exists(relatedItem[@type='series'])">
				<efrbroo:R10i_is_member_of>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F18/', $recid)" />
				</efrbroo:R10i_is_member_of>
			</xsl:if>
			<xsl:for-each select="classification">
				<xsl:variable name="class" select="position()" />
				<ecrm:P129_is_about>
					<xsl:if test="starts-with(@authorityURI, 'http://dewey.info/scheme/')">
						<xsl:attribute name="rdf:resource" select="concat('http://dewey.info/class/', current(), '/')" />							
					</xsl:if>
					<xsl:if test="starts-with(@authority, 'bkl')">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, 'bkl/', current())" />							
					</xsl:if>
					<xsl:if test="starts-with(@authority, 'rvk')">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, 'rvk/', concat(substring-before(current(),' '),substring-after(current(),' ')))" />							
					</xsl:if>
				</ecrm:P129_is_about>
				<ecrm:P41i_was_classified_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E17/c/', $recid, '-', $class)" />
				</ecrm:P41i_was_classified_by>
			</xsl:for-each>
			<xsl:for-each select="subject">
				<xsl:variable name="subj" select="position()" />
				<xsl:if test="exists(@authorityURI)">
					<ecrm:P129_is_about>
						<xsl:if test="contains(@authorityURI, 'loc.gov/authorities')">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/scheme/lcsh/', encode-for-uri(topic))" />
						</xsl:if>
						<xsl:if test="contains(@authorityURI, 'd-nb.info/gnd')">
							<xsl:attribute name="rdf:resource" select="@valueURI" />							
						</xsl:if>
					</ecrm:P129_is_about>
					<ecrm:P41i_was_classified_by>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E17/s/', $recid, '-', $subj)" />
					</ecrm:P41i_was_classified_by>
				</xsl:if>
				<xsl:if test="not(exists(@authorityURI))">
					<xsl:if test="not(exists(@authorityURI))">
						<ecrm:P129_is_about>
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/scheme/tag/', encode-for-uri(topic))" />
						</ecrm:P129_is_about>
						<ecrm:P41i_was_classified_by>
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E17/s/', $recid, '-', $subj)" />
						</ecrm:P41i_was_classified_by>
					</xsl:if>
					<xsl:if test="contains(@authority, 'rswk')">
						<ecrm:P129_is_about>
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/scheme/rswk/', encode-for-uri(topic))" />
						</ecrm:P129_is_about>
						<ecrm:P41i_was_classified_by>
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E17/c/', $recid, '-', $subj)" />
						</ecrm:P41i_was_classified_by>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
			<!-- Attribute -->
			<rdaGr1:preferredTitleForTheWork>
				<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
				<xsl:value-of select="titleInfo/title" /><xsl:if test="exists(titleInfo/subTitle)"> : <xsl:value-of select="titleInfo/subTitle" /></xsl:if>
			</rdaGr1:preferredTitleForTheWork>
		</efrbroo:F19_Publication_Work>
		
		<!-- F18 Serial Work -->
		<xsl:if test="exists(relatedItem[@type='series'])">
			<xsl:value-of select="$newline"/><xsl:comment>F18 Serial Work</xsl:comment><xsl:value-of select="$newline"/>
			<efrbroo:F18_Serial_Work>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F18/', $recid)" />
				<!-- Relationen -->
				<efrbroo:R10_has_member>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F19/', $recid)" />
				</efrbroo:R10_has_member>
				<xsl:if test="exists(relatedItem[@type='series']/identifier[@displayLabel='Reihe'])">
					<ecrm:P70i_is_documented_in>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E31-F18/', $recid)" />
					</ecrm:P70i_is_documented_in>
				</xsl:if>
				<!-- Attribute -->
				<rdaGr1:preferredTitleForTheWork>
					<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
					<xsl:value-of select="relatedItem[@type='series']/titleInfo/title" /><xsl:if test="exists(relatedItem[@type='series']/titleInfo/subTitle)"> : <xsl:value-of select="relatedItem[@type='series']/titleInfo/subTitle" /></xsl:if>
				</rdaGr1:preferredTitleForTheWork>
			</efrbroo:F18_Serial_Work>	
								
			<!-- E31 Document fuer F18 -->
			<xsl:if test="exists(relatedItem[@type='series']/identifier[@displayLabel='Reihe'])">
				<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
				<ecrm:E31_Document>
					<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E31-F18/', $recid)" />
					<!-- Relationen -->
					<ecrm:P70_documents>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F18/', $recid)" />
					</ecrm:P70_documents>
					<xsl:for-each select="relatedItem[@type='series']/identifier[@displayLabel='Reihe']">
						<ecrm:P67_refers_to>
							<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
						</ecrm:P67_refers_to>
						<ecrm:P67i_is_referred_to_by>
							<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
						</ecrm:P67i_is_referred_to_by>
					</xsl:for-each>
				</ecrm:E31_Document>
			</xsl:if>				
		</xsl:if>
		
		<!-- F28 Expression Creation -->
		<xsl:value-of select="$newline"/><xsl:comment>F28 Expression Creation</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F28_Expression_Creation>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F28/', $recid)" />
			<!-- Relationen -->
			<efrbroo:R19_created_a_realisation_of>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F17/', $recid)" />
			</efrbroo:R19_created_a_realisation_of>
			<efrbroo:R17_created>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F22/', $recid)" />
			</efrbroo:R17_created>
			<xsl:for-each select="name[@type='personal']">
				<xsl:variable name="ebene2" select="position()" />
				<ecrm:P14_carried_out_by>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:resource" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F10/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F10-F28/', $recid, '-',$ebene2)" />
					</xsl:if>
				</ecrm:P14_carried_out_by>
			</xsl:for-each>
			<xsl:for-each select="name[@type='corporate']">
				<xsl:variable name="ebene2" select="position()" />
				<ecrm:P14_carried_out_by>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:resource" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11-F28/', $recid, '-',$ebene2)" />
					</xsl:if>
				</ecrm:P14_carried_out_by>
			</xsl:for-each>
			<xsl:for-each select="name[not(exists(@type))]">
				<xsl:variable name="ebene2" select="position()" />
				<ecrm:P14_carried_out_by>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:resource" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E39/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E39-F28/', $recid, '-',$ebene2)" />
					</xsl:if>
				</ecrm:P14_carried_out_by>
			</xsl:for-each>
			<!-- Attribute -->
		</efrbroo:F28_Expression_Creation>	
		
		<!-- F30 Publication Event -->
		<xsl:value-of select="$newline"/><xsl:comment>F30 Publication Event</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F30_Publication_Event>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F30/', $recid)" />
			<!-- Relationen -->
			<efrbroo:R23_created_a_realisation_of>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F19/', $recid)" />
			</efrbroo:R23_created_a_realisation_of>
			<efrbroo:R24_created>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
			</efrbroo:R24_created>
			<xsl:for-each select="originInfo/publisher">
				<xsl:variable name="ebene2" select="position()" />
				<ecrm:P14F_carried_out_by>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:resource" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11-F30/', $recid, '-',$ebene2)" />
					</xsl:if>
				</ecrm:P14F_carried_out_by>
			</xsl:for-each>
			<!-- Attribute -->
			<dc:date>
				<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
				<xsl:value-of select="originInfo/dateIssued" />
			</dc:date>
			<dc:place>
				<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
				<xsl:value-of select="originInfo/place/placeTerm[@type='text']" />
			</dc:place>
		</efrbroo:F30_Publication_Event>	
		
		<!-- F22 Self-contained Expression -->
		<xsl:value-of select="$newline"/><xsl:comment>F22 Self-contained Expression</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F22_Self-Contained_Expression>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F22/', $recid)" />
			<!-- Relationen -->
			<efrbroo:R17i_was_created_by>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F28/', $recid)" />
			</efrbroo:R17i_was_created_by>
			<efrbroo:R14i_is_incorporated_in>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
			</efrbroo:R14i_is_incorporated_in>
			<xsl:for-each select="relatedItem[@type='constituent']">
				<xsl:variable name="ebene3" select="position()" />
				<efrbroo:R15_has_fragment>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F23/', $recid, '-', $ebene3)" />
				</efrbroo:R15_has_fragment>
			</xsl:for-each>
			<efrbroo:R4_carriers_provided_by>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
			</efrbroo:R4_carriers_provided_by>
			<xsl:for-each select="name[@type='personal']">
				<xsl:variable name="ebene2" select="position()" />
				<xsl:if test="role/roleTerm='ctb'">
					<rdaRole:contributor>
						<xsl:if test="exists(current()[@authority='gnd'])">
							<xsl:attribute name="rdf:resource" select="@valueURI" />
						</xsl:if>
						<xsl:if test="exists(current()[@authority='hbz'])">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F10/', @ID)" />
						</xsl:if>
						<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F10-F28/', $recid, '-',$ebene2)" />
						</xsl:if>
					</rdaRole:contributor>
				</xsl:if>
				<xsl:if test="role/roleTerm='edt'">
					<rdaRole:editor>
						<xsl:if test="exists(current()[@authority='gnd'])">
							<xsl:attribute name="rdf:resource" select="@valueURI" />
						</xsl:if>
						<xsl:if test="exists(current()[@authority='hbz'])">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F10/', @ID)" />
						</xsl:if>
						<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F10-F28/', $recid, '-',$ebene2)" />
						</xsl:if>
					</rdaRole:editor>
				</xsl:if>
			</xsl:for-each>
			<xsl:for-each select="name[@type='corporate']">
				<xsl:variable name="ebene2" select="position()" />
				<xsl:if test="role/roleTerm='ctb'">
					<rdaRole:contributor>
						<xsl:if test="exists(current()[@authority='gnd'])">
							<xsl:attribute name="rdf:resource" select="@valueURI" />
						</xsl:if>
						<xsl:if test="exists(current()[@authority='hbz'])">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
						</xsl:if>
						<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11-F28/', $recid, '-',$ebene2)" />
						</xsl:if>
					</rdaRole:contributor>
				</xsl:if>
				<xsl:if test="role/roleTerm='edt'">
					<rdaRole:editor>
						<xsl:if test="exists(current()[@authority='gnd'])">
							<xsl:attribute name="rdf:resource" select="@valueURI" />
						</xsl:if>
						<xsl:if test="exists(current()[@authority='hbz'])">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
						</xsl:if>
						<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11-F28/', $recid, '-',$ebene2)" />
						</xsl:if>
					</rdaRole:editor>
				</xsl:if>
			</xsl:for-each>
			<xsl:for-each select="name[not(exists(@type))]">
				<xsl:variable name="ebene2" select="position()" />
				<xsl:if test="role/roleTerm='ctb'">
					<rdaRole:contributor>
						<xsl:if test="exists(current()[@authority='gnd'])">
							<xsl:attribute name="rdf:resource" select="@valueURI" />
						</xsl:if>
						<xsl:if test="exists(current()[@authority='hbz'])">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E39/', @ID)" />
						</xsl:if>
						<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E39-F28/', $recid, '-',$ebene2)" />
						</xsl:if>
					</rdaRole:contributor>
				</xsl:if>
				<xsl:if test="role/roleTerm='edt'">
					<rdaRole:editor>
						<xsl:if test="exists(current()[@authority='gnd'])">
							<xsl:attribute name="rdf:resource" select="@valueURI" />
						</xsl:if>
						<xsl:if test="exists(current()[@authority='hbz'])">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E39/', @ID)" />
						</xsl:if>
						<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E39-F28/', $recid, '-',$ebene2)" />
						</xsl:if>
					</rdaRole:editor>
				</xsl:if>
			</xsl:for-each>
			<!-- Attribute -->
			<xsl:if test="exists(originInfo/edition)">
				<rdaGr1:editionStatement><xsl:value-of select="originInfo/edition" /></rdaGr1:editionStatement>
			</xsl:if>
			<xsl:if test="typeOfResource = 'text'">
				<rdaGr1:contentType rdf:resource="http://RDVocab.info/termList/RDAContentType/1020" />
			</xsl:if>	
			<xsl:if test="language/languageTerm = 'ger'">
				<rdaGr1:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/ger" />
			</xsl:if>
			<xsl:if test="language/languageTerm = 'eng'">
				<rdaGr1:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/eng" />
			</xsl:if>
			<xsl:if test="language/languageTerm = 'ita'">
				<rdaGr1:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/ita" />
			</xsl:if>
			<xsl:if test="language/languageTerm = 'fra'">
				<rdaGr1:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/fra" />
			</xsl:if>
		</efrbroo:F22_Self-Contained_Expression>	
		
		<!-- F24 Publication Expression -->
		<xsl:value-of select="$newline"/><xsl:comment>F24 Publication Expression</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F24_Publication_Expression>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
			<!-- Relationen -->
			<efrbroo:R24i_was_created_through>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F30/', $recid)" />
			</efrbroo:R24i_was_created_through>
			<efrbroo:R14_incorporates>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F22/', $recid)" />
			</efrbroo:R14_incorporates>
			<efrbroo:CLR6i_should_be_carried_by>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
			</efrbroo:CLR6i_should_be_carried_by>
			<efrbroo:R27i_was_used_by>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F32/', $recid)" />
			</efrbroo:R27i_was_used_by>
			<xsl:for-each select="location">
				<xsl:variable name="ebene3" select="position()" />
				<efrbroo:R6i_is_carried_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F5/', $recid, '-', $ebene3)" />
				</efrbroo:R6i_is_carried_by>								
			</xsl:for-each>
			<!-- Attribute -->						
		</efrbroo:F24_Publication_Expression>	
		
		<!-- F23 Expression Fragment -->
		<xsl:value-of select="$newline"/><xsl:comment>F23 Expression Fragment</xsl:comment><xsl:value-of select="$newline"/>
		<xsl:for-each select="relatedItem[@type='constituent']">
			<xsl:variable name="ebene3" select="position()" />
			<efrbroo:F23_Expression_Fragment>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F23/', $recid, '-', $ebene3)" />
				<!-- Relationen -->
				<efrbroo:R15i_is_fragment_of>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F22/', $recid)" />
				</efrbroo:R15i_is_fragment_of>
				<xsl:if test="exists(part/identifier[@displayLabel='Stelle'])">
					<ecrm:P70i_is_documented_in>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/E31-F23/', $recid, '-', $ebene3)" />
					</ecrm:P70i_is_documented_in>
				</xsl:if>
				<!-- Attribute -->
			</efrbroo:F23_Expression_Fragment>
			
			<!-- E31 Document fuer F23 -->
			<xsl:if test="exists(part/identifier[@displayLabel='Stelle'])">
				<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
					<ecrm:E31_Document>
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E31-F23/', $recid, '-', $ebene3)" />
						<!-- Relationen -->
						<ecrm:P70_documents>
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F23/', $recid, '-', $ebene3)" />
						</ecrm:P70_documents>
						<ecrm:P67_refers_to>
							<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="part/identifier[@displayLabel='Stelle']" /></xsl:attribute>
						</ecrm:P67_refers_to>
						<ecrm:P67i_is_referred_to_by>
							<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="part/identifier[@displayLabel='Stelle']" /></xsl:attribute>
						</ecrm:P67i_is_referred_to_by>
					</ecrm:E31_Document>
			</xsl:if>					
		</xsl:for-each>
						
		<!-- F3 Manifestation Product Type -->
		<xsl:value-of select="$newline"/><xsl:comment>F3 Manifestation Product Type</xsl:comment><xsl:value-of select="$newline"/>
		<efrbroo:F3_Manifestation_Product_Type>
			<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
			<rdf:type rdf:resource="http://rdvocab.info/uri/schema/FRBRentitiesRDA/Manifestation" />
			<!-- Relationen -->
			<owl:sameAs>
				<xsl:attribute name="rdf:resource" select="concat('http://lobid.org/resource/', $recid)" />
			</owl:sameAs>
			<efrbroo:CLR6_should_carry>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
			</efrbroo:CLR6_should_carry>
			<efrbroo:R4i_comprises_carriers_of>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F22/', $recid)" />
			</efrbroo:R4i_comprises_carriers_of>
			<xsl:for-each select="location">
				<xsl:variable name="ebene3" select="position()" />
				<efrbroo:R7i_has_example>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F5/', $recid, '-', $ebene3)" />
				</efrbroo:R7i_has_example>								
			</xsl:for-each>
			<efrbroo:R26i_was_produced_by>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F32/', $recid)" />
			</efrbroo:R26i_was_produced_by>
			<xsl:for-each select="originInfo/publisher">
				<xsl:variable name="ebene2" select="position()" />
				<rdaRole:publisherManifestation>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:resource" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F11-F30/', $recid, '-', $ebene2)" />
					</xsl:if>
				</rdaRole:publisherManifestation>
			</xsl:for-each>
			<ecrm:P70i_is_documented_in>
				<xsl:attribute name="rdf:resource" select="$uri" />
			</ecrm:P70i_is_documented_in>
			<!-- Attribute -->
			<xsl:if test="exists(originInfo/place/placeTerm[@type='text'])">
				<rdaGr1:placeOfPublicationManifestation>
					<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
					<xsl:value-of select="originInfo/place/placeTerm[@type='text']" />
				</rdaGr1:placeOfPublicationManifestation>
			</xsl:if>
			<xsl:if test="exists(originInfo/place/placeTerm[@type='code'])">
				<rdaGr1:placeOfPublicationManifestation>
					<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
					<xsl:value-of select="originInfo/place/placeTerm[@type='code']" />
				</rdaGr1:placeOfPublicationManifestation>
			</xsl:if>
			<xsl:for-each select="originInfo/publisher">
				<rdaGr1:publishersNameManifestation>
					<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
					<xsl:value-of select="." />
				</rdaGr1:publishersNameManifestation>
			</xsl:for-each>
			<xsl:if test="exists(originInfo/dateIssued)">
				<rdaGr1:dateOfPublicationManifestation>
					<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
					<xsl:value-of select="originInfo/dateIssued" />
				</rdaGr1:dateOfPublicationManifestation>
			</xsl:if>
			<xsl:for-each select="identifier">
				<xsl:if test="@type='isbn'">
					<rdaGr1:identifierForTheManifestation><xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />[ISBN] <xsl:value-of select="." /></rdaGr1:identifierForTheManifestation>							
				</xsl:if>
				<xsl:if test="@type='issn'">
					<rdaGr1:identifierForTheManifestation><xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />[ISSN] <xsl:value-of select="." /></rdaGr1:identifierForTheManifestation>							
				</xsl:if>
				<xsl:if test="@type='ismn'">
					<rdaGr1:identifierForTheManifestation><xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />[ISMN] <xsl:value-of select="." /></rdaGr1:identifierForTheManifestation>							
				</xsl:if>
			</xsl:for-each>
		</efrbroo:F3_Manifestation_Product_Type>						
		
	<!-- E31 Document fuer F3 -->
		<xsl:value-of select="$newline" />
		<xsl:comment>E31 Document</xsl:comment>
		<xsl:value-of select="$newline" />
		<ecrm:E31_Document>
			<xsl:attribute name="rdf:about" select="$uri" />
			<!-- Relationen -->
			<ecrm:P70_documents>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
			</ecrm:P70_documents>
			<ecrm:P148i_is_component_of>
				<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E31')" />
			</ecrm:P148i_is_component_of>
		</ecrm:E31_Document>

	<!-- F32 Carrier Production Event -->
		<xsl:value-of select="$newline"/><xsl:comment>F32 Carrier Production Event</xsl:comment><xsl:value-of select="$newline"/>
		<xsl:if test="not(exists(identifier[@type='isbn']) or exists(identifier[@type='issn']) or exists(identifier[@type='ismn']))">
			<efrbroo:F32_Carrier_Production_Event>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F32/', $recid)" />
				<!-- Relationen -->
				<efrbroo:R26_produced_things_of_type>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
				</efrbroo:R26_produced_things_of_type>
				<efrbroo:R27_used_as_source_material>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
				</efrbroo:R27_used_as_source_material>
				<xsl:for-each select="location">
					<xsl:variable name="ebene3" select="position()" />
					<efrbroo:R28_produced>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F5/', $recid, '-', $ebene3)" />
					</efrbroo:R28_produced>								
				</xsl:for-each>
				<!-- Attribute -->
			</efrbroo:F32_Carrier_Production_Event>						
		</xsl:if>
		<xsl:for-each select="identifier">
			<xsl:variable name="ebene2" select="position()" />
		
			<xsl:if test="@type='isbn' or @type='issn' or @type='ismn'">
				<efrbroo:F32_Carrier_Production_Event>
					<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F32/', $recid, '-', $ebene2)" />
					<!-- Relationen -->
					<efrbroo:R26_produced_things_of_type>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
					</efrbroo:R26_produced_things_of_type>
					<efrbroo:R27_used_as_source_material>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
					</efrbroo:R27_used_as_source_material>
					<xsl:for-each select="../location">
						<xsl:variable name="ebene3" select="position()" />
						<efrbroo:R28_produced>
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F5/', $recid, '-', $ebene2, '-', $ebene3)" />
						</efrbroo:R28_produced>								
					</xsl:for-each>
					<!-- Attribute -->
				</efrbroo:F32_Carrier_Production_Event>
			</xsl:if>
		</xsl:for-each>
		
		<!-- F5 Item -->
		<xsl:value-of select="$newline"/><xsl:comment>F5 Item</xsl:comment><xsl:value-of select="$newline"/>
		<xsl:for-each select="location">
			<xsl:variable name="ebene3" select="position()" />
			<efrbroo:F5_Item>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F5/', $recid,'-',$ebene3)" />
				<!-- Relationen -->
				<efrbroo:R28i_was_produced_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F32/', $recid)" />
				</efrbroo:R28i_was_produced_by>
				<efrbroo:R6_carries>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F24/', $recid)" />
				</efrbroo:R6_carries>
				<efrbroo:R7_is_example_of>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F3/', $recid)" />
				</efrbroo:R7_is_example_of>
				<!-- Attribute -->
				<rdaGr1:identifierForTheItem><xsl:value-of select="physicalLocation" />: <xsl:value-of select="shelfLocator" /></rdaGr1:identifierForTheItem>
				<!-- <rda:identifierForTheItem>Mediennummer</rda:identifierForTheItem>-->
			</efrbroo:F5_Item>						
		</xsl:for-each>
			
	<!-- Personen -->
		<xsl:value-of select="$newline" />
		<xsl:comment>Personen</xsl:comment>
		<xsl:value-of select="$newline" />
		<xsl:for-each select="name[@type='personal']">
			<xsl:variable name="ebene2" select="position()" />

			<xsl:if test="not(exists(current()[@authority='gnd']))">
				<efrbroo:F10_Person>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:about" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F10/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F10-F28/', $recid, '-',$ebene2)" />
					</xsl:if>
					<!-- Relationen -->
					<ecrm:P14i_performed>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F28/', $recid)" />
					</ecrm:P14i_performed>
					<!-- Attribute -->
					<rdaGr2:preferredNameForThePerson>
						<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
						<xsl:value-of select="namePart" />
					</rdaGr2:preferredNameForThePerson>
				</efrbroo:F10_Person>
			</xsl:if>
		</xsl:for-each>

	<!-- Koerperschaften -->
		<xsl:value-of select="$newline" />
		<xsl:comment>Koerperschaften</xsl:comment>
		<xsl:value-of select="$newline" />
		<xsl:for-each select="name[@type='corporate']">
			<xsl:variable name="ebene2" select="position()" />

			<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
				<efrbroo:F11_Corporate_Body>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:about" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F11-F28/', $recid, '-',$ebene2)" />
					</xsl:if>
					<!-- Relationen -->
					<ecrm:P14i_performed>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F28/', $recid)" />
					</ecrm:P14i_performed>
					<!-- Attribute -->
					<rdaGr2:preferredNameForTheCorporateBody>
						<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
						<xsl:value-of select="namePart" />
					</rdaGr2:preferredNameForTheCorporateBody>
				</efrbroo:F11_Corporate_Body>
			</xsl:if>
		</xsl:for-each>
		<xsl:for-each select="originInfo/publisher">
			<xsl:variable name="ebene2" select="position()" />

			<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
				<efrbroo:F11_Corporate_Body>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:about" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F11/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/frbroo/F11-F30/', $recid, '-',$ebene2)" />
					</xsl:if>
					<!-- Relationen -->
					<ecrm:P14i_performed>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F30/', $recid)" />
					</ecrm:P14i_performed>
					<!-- Attribute -->
					<rdaGr2:preferredNameForTheCorporateBody>
						<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
						<xsl:value-of select="." />
					</rdaGr2:preferredNameForTheCorporateBody>
				</efrbroo:F11_Corporate_Body>
			</xsl:if>
		</xsl:for-each>

	<!-- Actors -->
		<xsl:value-of select="$newline" />
		<xsl:comment>Actors</xsl:comment>
		<xsl:value-of select="$newline" />
		<xsl:for-each select="name[not(exists(@type))]">
			<xsl:variable name="ebene2" select="position()" />

			<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
				<ecrm:E39_Actor>
					<xsl:if test="exists(current()[@authority='gnd'])">
						<xsl:attribute name="rdf:about" select="@valueURI" />
					</xsl:if>
					<xsl:if test="exists(current()[@authority='hbz'])">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E39/', @ID)" />
					</xsl:if>
					<xsl:if test="not(exists(current()[@authority='gnd'])) and not(exists(current()[@authority='hbz']))">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E39-F28/', $recid, '-', $ebene2)" />
					</xsl:if>
					<!-- Relationen -->
					<ecrm:P14i_performed>
						<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F30/', $recid)" />
					</ecrm:P14i_performed>
					<!-- Attribute -->
					<rdaGr2:name>
						<xsl:attribute name="rdf:datatype" select="'http://www.w3.org/2001/XMLSchema#string'" />
						<xsl:value-of select="namePart" />
					</rdaGr2:name>
				</ecrm:E39_Actor>
			</xsl:if>
		</xsl:for-each>
		
	<!--  Sacherschliessung -->
		<xsl:value-of select="$newline" />
		<xsl:comment>Concepts</xsl:comment>
		<xsl:value-of select="$newline" />
		<xsl:for-each select="classification">
			<xsl:variable name="class" select="position()" />
			
			<ecrm:E55_Type>
				<xsl:if test="starts-with(@authorityURI, 'http://dewey.info/scheme/')">
					<xsl:attribute name="rdf:about" select="concat('http://dewey.info/class/', current(), '/')" />							
					<!-- Attribute -->
					<skos:notation rdf:datatype="ddc:Notation"><xsl:value-of select="current()" /></skos:notation>
				</xsl:if>
				<xsl:if test="starts-with(@authority, 'bkl')">
					<xsl:attribute name="rdf:about" select="concat($baseURI, 'bkl/', current())" />							
					<!-- Attribute -->
					<skos:notation><xsl:value-of select="current()" /></skos:notation>
				</xsl:if>
				<xsl:if test="starts-with(@authority, 'rvk')">
					<xsl:attribute name="rdf:about" select="concat($baseURI, 'rvk/', current())" />							
					<!-- Attribute -->
					<skos:notation><xsl:value-of select="current()" /></skos:notation>
				</xsl:if>
				<!-- Typ -->
				<rdf:type rdf:resource="http://www.w3.org/2004/02/skos/core#Concept" />
				<!-- Relationen -->
				<xsl:if test="exists(@authorityURI)">
					<skos:inScheme>
						<xsl:attribute name="rdf:resource" select="@authorityURI" />
					</skos:inScheme>
					<ecrm:P71i_is_listed_in>
						<xsl:attribute name="rdf:resource" select="@authorityURI" />
					</ecrm:P71i_is_listed_in>
				</xsl:if>
				<ecrm:P42i_was_assigned_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E17/c/', $recid, '-', $class)" />
				</ecrm:P42i_was_assigned_by>
			</ecrm:E55_Type>

		</xsl:for-each>
		
		<xsl:for-each select="subject">
			<xsl:variable name="subj" select="position()" />
			
			<ecrm:E55_Type>
				<xsl:if test="exists(@authorityURI)">
					<xsl:if test="contains(@authorityURI, 'loc.gov/authorities')">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/scheme/lcsh/', encode-for-uri(topic))" />
					</xsl:if>
					<xsl:if test="contains(@authorityURI, 'd-nb.info/gnd')">
						<xsl:attribute name="rdf:about" select="@valueURI" />							
					</xsl:if>
				</xsl:if>
				<xsl:if test="not(exists(@authorityURI))">
					<xsl:if test="not(exists(@authority))">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/scheme/tag/', encode-for-uri(topic))" />
					</xsl:if>						
					<xsl:if test="contains(@authority, 'rswk')">
						<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/scheme/rswk/', encode-for-uri(topic))" />
					</xsl:if>
				</xsl:if>
				<!-- Typ -->
				<rdf:type rdf:resource="http://www.w3.org/2004/02/skos/core#Concept" />
				<!-- Relationen -->
				<xsl:if test="exists(@authorityURI) and contains(@authorityURI, 'loc.gov/authorities')">
					<skos:inScheme>
						<xsl:attribute name="rdf:resource" select="@authorityURI" />
					</skos:inScheme>
					<ecrm:P71i_is_listed_in>
						<xsl:attribute name="rdf:resource" select="@authorityURI" />
					</ecrm:P71i_is_listed_in>
				</xsl:if>
				<ecrm:P42i_was_assigned_by>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/crm/E17/s/', $recid, '-', $subj)" />
				</ecrm:P42i_was_assigned_by>
				<!-- Attribute -->
				<skos:prefLabel><xsl:value-of select="topic" /></skos:prefLabel>
			</ecrm:E55_Type>

		</xsl:for-each>
		
		<xsl:value-of select="$newline" />
		<xsl:comment>E17 Type Assignment</xsl:comment>
		<xsl:value-of select="$newline" />
		<xsl:for-each select="classification">
			<xsl:variable name="class" select="position()" />
			
			<ecrm:E17_Type_Assignment>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E17/c/', $recid, '-', $class)" />
				<!-- Relationen -->
				<ecrm:P42_assigned>
					<xsl:if test="starts-with(@authorityURI, 'http://dewey.info/scheme/')">
						<xsl:attribute name="rdf:resource" select="concat('http://dewey.info/class/', current(), '/')" />							
					</xsl:if>
					<xsl:if test="starts-with(@authority, 'bkl')">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, 'bkl/', current())" />							
					</xsl:if>
					<xsl:if test="starts-with(@authority, 'rvk')">
						<xsl:attribute name="rdf:resource" select="concat($baseURI, 'rvk/', concat(substring-before(current(),' '),substring-after(current(),' ')))" />							
					</xsl:if>
				</ecrm:P42_assigned>
				<ecrm:P41_classified>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F19/', $recid)" />
				</ecrm:P41_classified>
			</ecrm:E17_Type_Assignment>

		</xsl:for-each>
		<xsl:for-each select="subject">
			<xsl:variable name="subj" select="position()" />
			
			<ecrm:E17_Type_Assignment>
				<xsl:attribute name="rdf:about" select="concat($baseURI, $collection_uri, '/crm/E17/s/', $recid, '-', $subj)" />
				<!-- Relationen -->
				<xsl:if test="exists(@authorityURI)">
					<ecrm:P42_assigned>
						<xsl:if test="contains(@authorityURI, 'loc.gov/authorities')">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/scheme/lcsh/', encode-for-uri(topic))" />
						</xsl:if>
						<xsl:if test="contains(@authorityURI, 'd-nb.info/gnd')">
							<xsl:attribute name="rdf:resource" select="@valueURI" />							
						</xsl:if>
					</ecrm:P42_assigned>
				</xsl:if>
				<xsl:if test="not(exists(@authorityURI))">
					<ecrm:P42_assigned>
						<xsl:if test="not(exists(@authority))">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/scheme/tag/', encode-for-uri(topic))" />
						</xsl:if>						
						<xsl:if test="contains(@authority, 'rswk')">
							<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/scheme/rswk/', encode-for-uri(topic))" />
						</xsl:if>
					</ecrm:P42_assigned>
				</xsl:if>
				<ecrm:P41_classified>
					<xsl:attribute name="rdf:resource" select="concat($baseURI, $collection_uri, '/frbroo/F19/', $recid)" />
				</ecrm:P41_classified>
			</ecrm:E17_Type_Assignment>

		</xsl:for-each>
		
	</xsl:template>
	
</xsl:stylesheet>
