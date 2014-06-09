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
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:cidoc_crm_v5="http://www.cidoc-crm.org/rdfs/cidoc-crm#"
	xmlns:frbroo="http://www.cidoc-crm.org/rdfs/frbr#"
	xmlns:FRBRentitiesRDA="http://RDVocab.info/uri/schema/FRBRentitiesRDA/"
	xmlns:rda="http://RDVocab.info/Elements/"
	xmlns:rdaGr2="http://RDVocab.info/ElementsGr2/"
	xmlns:rdaGr3="http://RDVocab.info/ElementsGr3/"
	xmlns:rdaRole="http://RDVocab.info/roles/"
	xmlns:saxon="http://saxon.sf.net/">
	
	<xsl:output method="xml" indent="yes" />
	
	<!-- Neuer Ansatz: Juni 2010: Expression als Zentrum + RDF -->
	<!-- "Beitrag in einem einbaendigen Werk" -->
	<xsl:template name="Beitrag">
		
			<xsl:variable name="id" select="position()" />
			
					<!-- F14 Individual Work -->
					<xsl:value-of select="$newline"/><xsl:comment>F14 Individual Work</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F14-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F14" />
						<!-- Relationen -->
						<frbroo:R19B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_1-','1')" />
						</frbroo:R19B>
						<xsl:for-each select="name[@type='personal']">
							<xsl:variable name="ebene2" select="position()" />
							<xsl:if test="role/roleTerm='aut'">
								<rdaRole:authorWork>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F10_1-',$ebene2)" />
								</rdaRole:authorWork>
							</xsl:if>
						</xsl:for-each>
						<xsl:for-each select="name[@type='corporate']">
							<xsl:variable name="ebene2" select="position()" />
							<xsl:if test="role/roleTerm='aut'">
								<rdaRole:authorWork>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_1-',$ebene2)" />
								</rdaRole:authorWork>
							</xsl:if>
						</xsl:for-each>
						<xsl:if test="exists(identifier[@displayLabel='Beitrag']) or exists(identifier[@displayLabel='Lemma']) or exists(identifier[@displayLabel='Aufsatz'])">
							<cidoc_crm_v5:P70B>
								<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F14-','1')" />
							</cidoc_crm_v5:P70B>
						</xsl:if>
						<!-- Attribute -->
						<rda:preferredTitleForTheWork>
							<!--<xsl:attribute name="xml:lang"><xsl:value-of select="language/languageTerm" /></xsl:attribute>-->
							<xsl:value-of select="titleInfo/title" /><xsl:if test="exists(titleInfo/subTitle)"> : <xsl:value-of select="titleInfo/subTitle" /></xsl:if>
						</rda:preferredTitleForTheWork>
					</rdf:Description>

					<!-- E31 Document fuer F14 -->
					<xsl:if test="exists(identifier[@displayLabel='Beitrag']) or exists(identifier[@displayLabel='Lemma']) or exists(identifier[@displayLabel='Aufsatz'])">
						<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F14-','1')" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
							<!-- Relationen -->
							<cidoc_crm_v5:P70F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F14-','1')" />
							</cidoc_crm_v5:P70F>
							<xsl:for-each select="identifier[@displayLabel='Beitrag']">
								<cidoc_crm_v5:P67F>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67F>
								<cidoc_crm_v5:P67B>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67B>
							</xsl:for-each>
							<xsl:for-each select="identifier[@displayLabel='Lemma']">
								<cidoc_crm_v5:P67F>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67F>
								<cidoc_crm_v5:P67B>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67B>
							</xsl:for-each>
							<xsl:for-each select="identifier[@displayLabel='Aufsatz']">
								<cidoc_crm_v5:P67F>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67F>
								<cidoc_crm_v5:P67B>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67B>
							</xsl:for-each>
						</rdf:Description>
					</xsl:if>				
														
					<!-- F28 Expression Creation -->
					<xsl:value-of select="$newline"/><xsl:comment>F28 Expression Creation</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F28_1-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F28" />
						<!-- Relationen -->
						<frbroo:R19F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F14-','1')" />
						</frbroo:R19F>
						<frbroo:R17F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F23-','1')" />
						</frbroo:R17F>
						<xsl:for-each select="name[@type='personal']">
							<xsl:variable name="ebene2" select="position()" />
							<cidoc_crm_v5:P14F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F10_1-',$ebene2)" />
							</cidoc_crm_v5:P14F>
						</xsl:for-each>
						<xsl:for-each select="name[@type='corporate']">
							<xsl:variable name="ebene2" select="position()" />
							<cidoc_crm_v5:P14F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_1-',$ebene2)" />
							</cidoc_crm_v5:P14F>
						</xsl:for-each>
						<!-- Attribute -->
					</rdf:Description>	
					
					<!-- F23 Expression Fragment -->
					<xsl:value-of select="$newline"/><xsl:comment>F23 Expression Fragment</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F23-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F23" />
						<!-- Relationen -->
						<frbroo:R17B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_1-','1')" />
						</frbroo:R17B>
						<frbroo:R15B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F22-','1')" />
						</frbroo:R15B>
						<xsl:for-each select="relatedItem[@type='constituent']">
							<xsl:variable name="ebene3" select="position()" />
							<frbroo:R15F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F23-','1','-',$ebene3)" />
							</frbroo:R15F>
						</xsl:for-each>
						<xsl:for-each select="name[@type='personal']">
							<xsl:variable name="ebene2" select="position()" />
							<xsl:if test="role/roleTerm='ctb'">
								<rdaRole:contributor>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F10_1-',$ebene2)" />
								</rdaRole:contributor>
							</xsl:if>
						</xsl:for-each>
						<xsl:for-each select="name[@type='corporate']">
							<xsl:variable name="ebene2" select="position()" />
							<xsl:if test="role/roleTerm='ctb'">
								<rdaRole:contributor>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_1-',$ebene2)" />
								</rdaRole:contributor>
							</xsl:if>
						</xsl:for-each>
						<!-- Attribute -->
						<xsl:if test="typeOfResource = 'text'">
							<rda:contentType rdf:resource="http://RDVocab.info/termList/RDAContentType/1020" />
						</xsl:if>	
						<xsl:if test="language/languageTerm = 'ger'">
							<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/ger" />
						</xsl:if>
						<xsl:if test="language/languageTerm = 'eng'">
							<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/eng" />
						</xsl:if>
						<xsl:if test="language/languageTerm = 'ita'">
							<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/ita" />
						</xsl:if>
						<xsl:if test="language/languageTerm = 'fra'">
							<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/fra" />
						</xsl:if>
					</rdf:Description>	
										
					<!-- F23 Expression Fragment -->
					<xsl:value-of select="$newline"/><xsl:comment>F23 Expression Fragment</xsl:comment><xsl:value-of select="$newline"/>
					<xsl:for-each select="relatedItem[@type='constituent']">
						<xsl:variable name="ebene3" select="position()" />
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F23-','1','-',$ebene3)" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F23" />
							<!-- Relationen -->
							<frbroo:R15B>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F23-','1')" />
							</frbroo:R15B>
							<xsl:if test="exists(part/identifier[@displayLabel='Stelle'])">
								<cidoc_crm_v5:P70B>
									<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F23-','1','-',$ebene3)" />
								</cidoc_crm_v5:P70B>
							</xsl:if>
							<!-- Attribute -->
						</rdf:Description>
						
						<!-- E31 Document fuer F23 -->
						<xsl:if test="exists(part/identifier[@displayLabel='Stelle'])">
							<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
							<rdf:Description>
								<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F23-','1','-',$ebene3)" />
								<!-- Typ -->
								<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
								<!-- Relationen -->
								<cidoc_crm_v5:P70F>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F23-','1','-',$ebene3)" />
								</cidoc_crm_v5:P70F>
								<cidoc_crm_v5:P67F>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="part/identifier[@displayLabel='Stelle']" /></xsl:attribute>
								</cidoc_crm_v5:P67F>
								<cidoc_crm_v5:P67B>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="part/identifier[@displayLabel='Stelle']" /></xsl:attribute>
								</cidoc_crm_v5:P67B>
							</rdf:Description>	
						</xsl:if>					
					</xsl:for-each>
									
					<!-- Personen -->
					<xsl:value-of select="$newline"/><xsl:comment>Personen</xsl:comment><xsl:value-of select="$newline"/>
					<xsl:for-each select="name[@type='personal']">
						<xsl:variable name="ebene2" select="position()" />
				
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F10_1-',$ebene2)" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F10" />
							<!-- Relationen -->
							<cidoc_crm_v5:P14B>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_1-','1')" />
							</cidoc_crm_v5:P14B>
							<!-- Attribute -->
							<rdaGr2:preferredNameForThePerson><xsl:value-of select="namePart" /></rdaGr2:preferredNameForThePerson>
						</rdf:Description>
					</xsl:for-each>
			
					<!-- Koerperschaften -->
					<xsl:value-of select="$newline"/><xsl:comment>Koerperschaften</xsl:comment><xsl:value-of select="$newline"/>
					<xsl:for-each select="name[@type='corporate']">
						<xsl:variable name="ebene2" select="position()" />
				
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F11_1-',$ebene2)" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F11" />
							<!-- Relationen -->
							<cidoc_crm_v5:P14B>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_1-','1')" />
							</cidoc_crm_v5:P14B>
							<!-- Attribute -->
							<rdaGr2:preferredNameForTheCorporateBody><xsl:value-of select="namePart" /></rdaGr2:preferredNameForTheCorporateBody>
						</rdf:Description>
					</xsl:for-each>
									
	</xsl:template>
	
	<!-- Neuer Ansatz: Juni 2010: Expression als Zentrum + RDF -->
	<!-- zugegoerige Sammelwerke und fortlaufende Sammelwerke -->
	<xsl:template name="Beitrag2">

			<xsl:variable name="id" select="position()" />
							
				<!-- F17 Aggregation Work -->
				<xsl:value-of select="$newline"/><xsl:comment>F17 Aggregation Work</xsl:comment><xsl:value-of select="$newline"/>
				<rdf:Description>
					<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F17-','1')" />
					<!-- Typ -->
					<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F17" />
					<!-- Relationen -->
					<frbroo:R19B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_2-','1')" />
					</frbroo:R19B>
					<xsl:if test="exists(identifier[@displayLabel='Sammelwerk']) or exists(identifier[@displayLabel='Heft']) or exists(identifier[@displayLabel='Band'])">
						<cidoc_crm_v5:P70B>
							<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F17-','1')" />
						</cidoc_crm_v5:P70B>
					</xsl:if>
					<!-- Attribute -->
				</rdf:Description>

				<!-- E31 Document fuer F17 -->
				<xsl:if test="exists(identifier[@displayLabel='Sammelwerk']) or exists(identifier[@displayLabel='Heft']) or exists(identifier[@displayLabel='Band'])">
					<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F17-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
						<!-- Relationen -->
						<cidoc_crm_v5:P70F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F17-','1')" />
						</cidoc_crm_v5:P70F>
						<xsl:for-each select="identifier[@displayLabel='Sammelwerk']">
							<cidoc_crm_v5:P67F>
								<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
							</cidoc_crm_v5:P67F>
							<cidoc_crm_v5:P67B>
								<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
							</cidoc_crm_v5:P67B>
						</xsl:for-each>
						<xsl:for-each select="identifier[@displayLabel='Heft']">
							<cidoc_crm_v5:P67F>
								<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
							</cidoc_crm_v5:P67F>
							<cidoc_crm_v5:P67B>
								<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
							</cidoc_crm_v5:P67B>
						</xsl:for-each>
						<xsl:for-each select="identifier[@displayLabel='Band']">
							<cidoc_crm_v5:P67F>
								<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
							</cidoc_crm_v5:P67F>
							<cidoc_crm_v5:P67B>
								<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
							</cidoc_crm_v5:P67B>
						</xsl:for-each>
					</rdf:Description>
				</xsl:if>			
				
				<!-- mit Volume-Zaehlung -->
				<xsl:if test="exists(relatedItem[@type='host']/part/detail[@type='volume'])">
					
					<!-- F15 Complex Work zu F17 Aggregation Work -->				
					<xsl:value-of select="$newline"/><xsl:comment>F15 Complex Work</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F15-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F15" />
						<!-- Relationen -->
						<xsl:if test="exists(../identifier[@displayLabel='Lexikon'])">
							<cidoc_crm_v5:P70B>
								<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F15-','1')" />
							</cidoc_crm_v5:P70B>
						</xsl:if>
						<frbroo:R10F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F17-','1')" />
						</frbroo:R10F>
						<!-- Attribute -->
						<rda:preferredTitleForTheWork>
							<xsl:value-of select="relatedItem[@type='host']/part/detail[@type='volume']/number" />
						</rda:preferredTitleForTheWork>
					</rdf:Description>
						
					<!-- E31 Document fuer F15 -->
					<xsl:if test="exists(../identifier[@displayLabel='Lexikon'])">
						<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F15-','1')" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
							<!-- Relationen -->
							<cidoc_crm_v5:P70F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F15-','1')" />
							</cidoc_crm_v5:P70F>
							<xsl:for-each select="../identifier[@displayLabel='Lexikon']">
								<cidoc_crm_v5:P67F>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67F>
								<cidoc_crm_v5:P67B>
									<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
								</cidoc_crm_v5:P67B>
							</xsl:for-each>
						</rdf:Description>
					</xsl:if>				
									
					<!-- F19 Publication Work zu F17 Aggregation Work -->
					<xsl:value-of select="$newline"/><xsl:comment>F19 Publication Work</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F19_2-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F19" />
						<!-- Relationen -->
						<frbroo:R23B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F30_2-','1')" />
						</frbroo:R23B>
						<frbroo:R10B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F15-','2')" />
						</frbroo:R10B>
						<!-- Attribute -->
						<xsl:for-each select="relatedItem[@type='host']/titleInfo">
							<xsl:if test="not(exists(@type))">
								<rda:preferredTitleForTheWork>
									<xsl:value-of select="title" /><xsl:if test="exists(subTitle)"><xsl:text> </xsl:text>:<xsl:text> </xsl:text><xsl:value-of select="subTitle" /></xsl:if><xsl:text>. Volume </xsl:text><xsl:value-of select="../part/detail[@type='volume']/number" />. Issue ?
								</rda:preferredTitleForTheWork>								
							</xsl:if>
						</xsl:for-each>
					</rdf:Description>
					
					<!-- F15 Complex Work zu F19 Publication Work zu F17 Aggregation Work -->
					<xsl:value-of select="$newline"/><xsl:comment>F15 Complex Work</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F15-','2')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F15" />
						<!-- Relationen -->
						<frbroo:R10F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F19_2-','1')" />
						</frbroo:R10F>
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']) or genre[@authority='local']='JournalArticle'">
							<frbroo:R10B>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F18-','1')" />
							</frbroo:R10B>
						</xsl:if>
						<!-- Attribute -->
						<xsl:for-each select="relatedItem[@type='host']/titleInfo">
							<xsl:if test="not(exists(@type))">
								<rda:preferredTitleForTheWork>
									<xsl:value-of select="title" /><xsl:if test="exists(subTitle)"> : <xsl:value-of select="subTitle" /></xsl:if>. Volume <xsl:value-of select="../part/detail[@type='volume']/number" />
								</rda:preferredTitleForTheWork>								
							</xsl:if>
						</xsl:for-each>
					</rdf:Description>																							

					<!-- F18 Serial Work: Lexikonreihe -->
					<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series'])">
						<xsl:value-of select="$newline"/><xsl:comment>F18 Serial Work</xsl:comment><xsl:value-of select="$newline"/>
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F18-','1')" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F18" />
							<!-- Relationen -->
							<frbroo:R10F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F15-','2')" />
							</frbroo:R10F>
							<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/identifier[@displayLabel='Reihe'])">
								<cidoc_crm_v5:P70B>
									<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70B>
							</xsl:if>
							<!-- Attribute -->
							<rda:preferredTitleForTheWork>
								<xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/title" /><xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/subTitle)"> : <xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/subTitle" /></xsl:if>
							</rda:preferredTitleForTheWork>
						</rdf:Description>	
											
						<!-- E31 Document fuer F18 -->
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/identifier[@displayLabel='Reihe'])">
							<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
							<rdf:Description>
								<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								<!-- Typ -->
								<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
								<!-- Relationen -->
								<cidoc_crm_v5:P70F>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70F>
								<xsl:for-each select="relatedItem[@type='host']/relatedItem[@type='series']/identifier[@displayLabel='Reihe']">
									<cidoc_crm_v5:P67F>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67F>
									<cidoc_crm_v5:P67B>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67B>
								</xsl:for-each>
							</rdf:Description>
						</xsl:if>				
					</xsl:if>
				
					<!-- F18 Serial Work: Zeitschrift -->
					<xsl:if test="genre[@authority='local']='JournalArticle' and not(exists(relatedItem[@type='host']/relatedItem[@type='series']))">
						<xsl:value-of select="$newline"/><xsl:comment>F18 Serial Work</xsl:comment><xsl:value-of select="$newline"/>
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F18-','1')" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F18" />
							<!-- Relationen -->
							<frbroo:R10F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F15-','2')" />
							</frbroo:R10F>
							<xsl:if test="exists(identifier[@displayLabel='Zeitschrift'])">
								<cidoc_crm_v5:P70B>
									<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70B>
							</xsl:if>
							<!-- Attribute -->
							<xsl:for-each select="relatedItem[@type='host']/titleInfo">
								<xsl:if test="not(exists(@type))">
									<rda:preferredTitleForTheWork>
										<xsl:value-of select="title" /><xsl:if test="exists(subTitle)"> : <xsl:value-of select="subTitle" /></xsl:if>
									</rda:preferredTitleForTheWork>								
								</xsl:if>
								<xsl:if test="@type='abbreviated'">
									<rda:abbreviatedTitle>
										<xsl:value-of select="title" />
									</rda:abbreviatedTitle>
								</xsl:if>
							</xsl:for-each>
						</rdf:Description>	
											
						<!-- E31 Document fuer F18 -->
						<xsl:if test="exists(identifier[@displayLabel='Zeitschrift'])">
							<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
							<rdf:Description>
								<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								<!-- Typ -->
								<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
								<!-- Relationen -->
								<cidoc_crm_v5:P70F>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70F>
								<xsl:for-each select="identifier[@displayLabel='Zeitschrift']">
									<cidoc_crm_v5:P67F>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67F>
									<cidoc_crm_v5:P67B>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67B>
								</xsl:for-each>
							</rdf:Description>
						</xsl:if>				
					</xsl:if>				

				</xsl:if>	
				
				<!-- ohne Volume-Zaehlung -->
				<xsl:if test="not(exists(relatedItem[@type='host']/part/detail[@type='volume']))">
					
					<!-- F19 Publication Work zu F17 Aggregation Work -->
					<xsl:value-of select="$newline"/><xsl:comment>F19 Publication Work</xsl:comment><xsl:value-of select="$newline"/>
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F19_2-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F19" />
						<!-- Relationen -->
						<frbroo:R23B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F30_2-','1')" />
						</frbroo:R23B>
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']) or genre[@authority='local']='JournalArticle'">
							<frbroo:R10B>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F18-','1')" />
							</frbroo:R10B>
						</xsl:if>
						<!-- Attribute -->
						<rda:preferredTitleForTheWork>
							<xsl:value-of select="relatedItem[@type='host']/titleInfo/title" /><xsl:if test="exists(relatedItem[@type='host']/titleInfo/subTitle)"> : <xsl:value-of select="relatedItem[@type='host']/titleInfo/subTitle" /></xsl:if>
						</rda:preferredTitleForTheWork>
					</rdf:Description>
									
					<!-- F18 Serial Work: Lexikonreihe -->
					<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series'])">
						<xsl:value-of select="$newline"/><xsl:comment>F18 Serial Work</xsl:comment><xsl:value-of select="$newline"/>
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F18-','1')" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F18" />
							<!-- Relationen -->
							<frbroo:R10F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F19_2-','1')" />
							</frbroo:R10F>
							<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/identifier[@displayLabel='Reihe'])">
								<cidoc_crm_v5:P70B>
									<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70B>
							</xsl:if>
							<!-- Attribute -->
							<rda:preferredTitleForTheWork>
								<xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/title" /><xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/subTitle)"> : <xsl:value-of select="relatedItem[@type='host']/relatedItem[@type='series']/titleInfo/subTitle" /></xsl:if>
							</rda:preferredTitleForTheWork>
						</rdf:Description>	
											
						<!-- E31 Document fuer F18 -->
						<xsl:if test="exists(relatedItem[@type='host']/relatedItem[@type='series']/identifier[@displayLabel='Reihe'])">
							<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
							<rdf:Description>
								<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								<!-- Typ -->
								<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
								<!-- Relationen -->
								<cidoc_crm_v5:P70F>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70F>
								<xsl:for-each select="relatedItem[@type='host']/relatedItem[@type='series']/identifier[@displayLabel='Reihe']">
									<cidoc_crm_v5:P67F>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67F>
									<cidoc_crm_v5:P67B>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67B>
								</xsl:for-each>
							</rdf:Description>
						</xsl:if>				
					</xsl:if>
				
					<!-- F18 Serial Work: Zeitschrift -->
					<xsl:if test="genre[@authority='local']='JournalArticle' and not(exists(relatedItem[@type='host']/relatedItem[@type='series']))">
						<xsl:value-of select="$newline"/><xsl:comment>F18 Serial Work</xsl:comment><xsl:value-of select="$newline"/>
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F18-','1')" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F18" />
							<!-- Relationen -->
							<frbroo:R10F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F19_2-','1')" />
							</frbroo:R10F>
							<xsl:if test="exists(identifier[@displayLabel='Zeitschrift'])">
								<cidoc_crm_v5:P70B>
									<xsl:attribute name="rdf:resource" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70B>
							</xsl:if>
							<!-- Attribute -->
							<xsl:for-each select="relatedItem[@type='host']/titleInfo">
								<xsl:if test="not(exists(@type))">
									<rda:preferredTitleForTheWork>
										<xsl:value-of select="title" /><xsl:if test="exists(subTitle)"> : <xsl:value-of select="subTitle" /></xsl:if>
									</rda:preferredTitleForTheWork>								
								</xsl:if>
								<xsl:if test="@type='abbreviated'">
									<rda:abbreviatedTitle>
										<xsl:value-of select="title" />
									</rda:abbreviatedTitle>
								</xsl:if>
							</xsl:for-each>
						</rdf:Description>	
											
						<!-- E31 Document fuer F18 -->
						<xsl:if test="exists(identifier[@displayLabel='Zeitschrift'])">
							<xsl:value-of select="$newline"/><xsl:comment>E31 Document</xsl:comment><xsl:value-of select="$newline"/>
							<rdf:Description>
								<xsl:attribute name="rdf:about" select="concat('http://lod.ub.tu-dortmund.de/data/record',$id,'-F18-','1')" />
								<!-- Typ -->
								<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/cidoc-crm#E31" />
								<!-- Relationen -->
								<cidoc_crm_v5:P70F>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F18-','1')" />
								</cidoc_crm_v5:P70F>
								<xsl:for-each select="identifier[@displayLabel='Zeitschrift']">
									<cidoc_crm_v5:P67F>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67F>
									<cidoc_crm_v5:P67B>
										<xsl:attribute name="rdf:resource">http://www.archeoinf.de/<xsl:value-of select="$project" />/<xsl:value-of select="." /></xsl:attribute>
									</cidoc_crm_v5:P67B>
								</xsl:for-each>
							</rdf:Description>
						</xsl:if>				
					</xsl:if>
				</xsl:if>
				
				<!-- F28 Expression Creation -->
				<xsl:value-of select="$newline"/><xsl:comment>F28 Expression Creation</xsl:comment><xsl:value-of select="$newline"/>
				<rdf:Description>
					<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F28_2-','1')" />
					<!-- Typ -->
					<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F28" />
					<!-- Relationen -->
					<frbroo:R19F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F17-','1')" />
					</frbroo:R19F>
					<frbroo:R17F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F22-','1')" />
					</frbroo:R17F>
					<xsl:for-each select="relatedItem[@type='host']/name[@type='personal']">
						<xsl:variable name="ebene2" select="position()" />
						<cidoc_crm_v5:P14F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F10_2-',$ebene2)" />
						</cidoc_crm_v5:P14F>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='host']/name[@type='corporate']">
						<xsl:variable name="ebene2" select="position()" />
						<cidoc_crm_v5:P14F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_2_1-',$ebene2)" />
						</cidoc_crm_v5:P14F>
					</xsl:for-each>
					<!-- Attribute -->
				</rdf:Description>	
					
				<!-- F30 Publication Event -->
				<xsl:value-of select="$newline"/><xsl:comment>F30 Publication Event</xsl:comment><xsl:value-of select="$newline"/>
				<rdf:Description>
					<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F30_2-','1')" />
					<!-- Typ -->
					<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F30" />
					<!-- Relationen -->
					<frbroo:R23F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F19_2-','1')" />
					</frbroo:R23F>
					<frbroo:R24F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
					</frbroo:R24F>
					<xsl:for-each select="relatedItem[@type='host']/originInfo/publisher">
						<xsl:variable name="ebene2" select="position()" />
						<cidoc_crm_v5:P14F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_2_2-',$ebene2)" />
						</cidoc_crm_v5:P14F>
					</xsl:for-each>
							<!-- PLACE fehlt noch! -->
					<!-- Attribute -->
				</rdf:Description>						
													
				<!-- F22 Self-contained Expression -->
				<xsl:value-of select="$newline"/><xsl:comment>F22 Self-contained Expression</xsl:comment><xsl:value-of select="$newline"/>
				<rdf:Description>
					<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F22-','1')" />
					<!-- Typ -->
					<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F22" />
					<!-- Relationen -->
					<frbroo:R17B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_2-','1')" />
					</frbroo:R17B>
					<frbroo:R15F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F23-','1')" />
					</frbroo:R15F>
					<frbroo:R14B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
					</frbroo:R14B>
					<frbroo:R4F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F3-','1')" />
					</frbroo:R4F>
					<xsl:for-each select="relatedItem[@type='host']/name[@type='personal']">
						<xsl:variable name="ebene2" select="position()" />
						<xsl:if test="role/roleTerm='edt'">
							<rdaRole:editorExpression>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F10_2-',$ebene2)" />
							</rdaRole:editorExpression>
						</xsl:if>
						<xsl:if test="role/roleTerm='ctb'">
							<rdaRole:contributor>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F10_2-',$ebene2)" />
							</rdaRole:contributor>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="relatedItem[@type='host']/name[@type='corporate']">
						<xsl:variable name="ebene2" select="position()" />
						<xsl:if test="role/roleTerm='edt'">
							<rdaRole:editorExpression>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_2_1-',$ebene2)" />
							</rdaRole:editorExpression>
						</xsl:if>
						<xsl:if test="role/roleTerm='ctb'">
							<rdaRole:contributor>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_2_1-',$ebene2)" />
							</rdaRole:contributor>
						</xsl:if>
					</xsl:for-each>
					<!-- Attribute -->
					<xsl:if test="exists(relatedItem[@type='host']/originInfo/edition)">
						<rda:editionStatement><xsl:value-of select="relatedItem[@type='host']/originInfo/edition" /></rda:editionStatement>
					</xsl:if>
					<xsl:if test="typeOfResource = 'text'">
						<rda:contentType rdf:resource="http://RDVocab.info/termList/RDAContentType/1020" />
					</xsl:if>	
					<xsl:if test="language/languageTerm = 'ger'">
						<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/ger" />
					</xsl:if>
					<xsl:if test="language/languageTerm = 'eng'">
						<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/eng" />
					</xsl:if>
					<xsl:if test="language/languageTerm = 'ita'">
						<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/ita" />
					</xsl:if>
					<xsl:if test="language/languageTerm = 'fra'">
						<rda:languageOfTheContentExpression rdf:resource="http://marccodes.heroku.com/languages/fra" />
					</xsl:if>
				</rdf:Description>	
				
				<!-- F24 Publication Expression -->
				<xsl:value-of select="$newline"/><xsl:comment>F24 Publication Expression</xsl:comment><xsl:value-of select="$newline"/>
				<rdf:Description>
					<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
					<!-- Typ -->
					<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F24" />
					<!-- Relationen -->
					<frbroo:R24B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F30_2-','1')" />
					</frbroo:R24B>
					<frbroo:R14F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F22-','1')" />
					</frbroo:R14F>
					<frbroo:CLR6B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F3-','1')" />
					</frbroo:CLR6B>
					<frbroo:R27B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F32_2-','1')" />
					</frbroo:R27B>
					<xsl:for-each select="location">
						<xsl:variable name="ebene3" select="position()" />
						<frbroo:R6B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F5_2-','1','-',$ebene3)" />
						</frbroo:R6B>								
					</xsl:for-each>
					<!-- Attribute -->						
				</rdf:Description>	
					
				<!-- F3 Manifestation Product Type -->
				<xsl:value-of select="$newline"/><xsl:comment>F3 Manifestation Product Type</xsl:comment><xsl:value-of select="$newline"/>
				<rdf:Description>
					<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F3-','1')" />
					<!-- Typ -->
					<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F3" />
					<!-- Relationen -->
					<frbroo:CLR6F>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
					</frbroo:CLR6F>
					<frbroo:R4B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F22-','1')" />
					</frbroo:R4B>
					<xsl:for-each select="location">
						<xsl:variable name="ebene3" select="position()" />
						<frbroo:R7B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F5_2-','1','-',$ebene3)" />
						</frbroo:R7B>								
					</xsl:for-each>
					<frbroo:R26B>
						<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F32_2-','1')" />
					</frbroo:R26B>
					<xsl:for-each select="relatedItem[@type='host']/originInfo/publisher">
						<xsl:variable name="ebene3" select="position()" />
						<rdaRole:publisherManifestation>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F11_2_2-','1','-',$ebene3)" />
						</rdaRole:publisherManifestation>
					</xsl:for-each>
					<!-- Attribute -->
					<xsl:if test="exists(relatedItem[@type='host']/originInfo/place/placeTerm)">
						<rda:placeOfPublicationManifestation><xsl:value-of select="relatedItem[@type='host']/originInfo/place/placeTerm" /></rda:placeOfPublicationManifestation>
					</xsl:if>
					<xsl:if test="exists(relatedItem[@type='host']/originInfo/publisher)">
						<rda:publishersNameManifestation><xsl:value-of select="relatedItem[@type='host']/originInfo/publisher" /></rda:publishersNameManifestation>
					</xsl:if>
					<xsl:if test="exists(relatedItem[@type='host']/originInfo/dateIssued)">
						<rda:dateOfPublicationManifestation><xsl:value-of select="relatedItem[@type='host']/originInfo/dateIssued" /></rda:dateOfPublicationManifestation>
					</xsl:if>
					<xsl:if test="exists(relatedItem[@type='host']/originInfo/place/placeTerm) and exists(relatedItem[@type='host']/originInfo/publisher) and exists(relatedItem[@type='host']/originInfo/dateIssued)">
						<rda:publicationStatementManifestation><xsl:value-of select="relatedItem[@type='host']/originInfo/place/placeTerm" /> : <xsl:value-of select="relatedItem[@type='host']/originInfo/publisher" />, <xsl:value-of select="relatedItem[@type='host']/originInfo/dateIssued" /></rda:publicationStatementManifestation>
					</xsl:if>
					<xsl:for-each select="relatedItem[@type='host']/identifier">
						<xsl:if test="@type='isbn'">
							<rda:identifierForTheManifestation>[ISBN] <xsl:value-of select="." /></rda:identifierForTheManifestation>							
						</xsl:if>
						<xsl:if test="@type='issn'">
							<rda:identifierForTheManifestation>[ISSN] <xsl:value-of select="." /></rda:identifierForTheManifestation>							
						</xsl:if>
						<xsl:if test="@type='ismn'">
							<rda:identifierForTheManifestation>[ISMN] <xsl:value-of select="." /></rda:identifierForTheManifestation>							
						</xsl:if>
					</xsl:for-each>
				</rdf:Description>						

				<!-- F32 Carrier Production Event -->
				<xsl:value-of select="$newline"/><xsl:comment>F32 Carrier Production Event</xsl:comment><xsl:value-of select="$newline"/>
				<xsl:if test="not(exists(relatedItem[@type='host']/identifier[@type='isbn']) or exists(relatedItem[@type='host']/identifier[@type='issn']) or exists(relatedItem[@type='host']/identifier[@type='ismn']))">
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F32_2-','1')" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F32" />
						<!-- Relationen -->
						<frbroo:R26F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F3-','1')" />
						</frbroo:R26F>
						<frbroo:R27F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
						</frbroo:R27F>
						<xsl:for-each select="location">
							<xsl:variable name="ebene3" select="position()" />
							<frbroo:R28F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F5_2-','1','-',$ebene3)" />
							</frbroo:R28F>								
						</xsl:for-each>
						<!-- Attribute -->
					</rdf:Description>						
				</xsl:if>
				<xsl:for-each select="relatedItem[@type='host']/identifier">
					<xsl:variable name="ebene2" select="position()" />
				
					<xsl:if test="@type='isbn' or @type='issn' or @type='ismn'">
						<rdf:Description>
							<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F32_2-',$ebene2)" />
							<!-- Typ -->
							<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F32" />
							<!-- Relationen -->
							<frbroo:R26F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F3-','1')" />
							</frbroo:R26F>
							<frbroo:R27F>
								<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
							</frbroo:R27F>
							<xsl:for-each select="../../location">
								<xsl:variable name="ebene3" select="position()" />
								<frbroo:R28F>
									<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F5_2-',$ebene2,'-',$ebene3)" />
								</frbroo:R28F>								
							</xsl:for-each>
							<!-- Attribute -->
						</rdf:Description>
					</xsl:if>
				</xsl:for-each>
					
				<!-- F5 Item -->
				<xsl:value-of select="$newline"/><xsl:comment>F5 Item</xsl:comment><xsl:value-of select="$newline"/>
				<xsl:for-each select="location">
					<xsl:variable name="ebene3" select="position()" />
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F5_2-','1','-',$ebene3)" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F5" />
						<!-- Relationen -->
						<frbroo:R28B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F32_2-','1')" />
						</frbroo:R28B>
						<frbroo:R6F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F24_2-','1')" />
						</frbroo:R6F>
						<frbroo:R7F>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F3-','1')" />
						</frbroo:R7F>
						<!-- Attribute -->
						<rda:identifierForTheItem><xsl:value-of select="physicalLocation" />: <xsl:value-of select="shelfLocator" /></rda:identifierForTheItem>
						<!-- <rda:identifierForTheItem>Mediennummer</rda:identifierForTheItem>-->
					</rdf:Description>						
				</xsl:for-each>
						
				<!-- Personen -->
				<xsl:value-of select="$newline"/><xsl:comment>Personen</xsl:comment><xsl:value-of select="$newline"/>
				<xsl:for-each select="relatedItem[@type='host']/name[@type='personal']">
					<xsl:variable name="ebene2" select="position()" />
				
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F10_2-',$ebene2)" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F10" />
						<!-- Relationen -->
						<cidoc_crm_v5:P14B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_2-','1')" />
						</cidoc_crm_v5:P14B>
						<!-- Attribute -->
						<rdaGr2:preferredNameForThePerson><xsl:value-of select="namePart" /></rdaGr2:preferredNameForThePerson>
					</rdf:Description>
				</xsl:for-each>
			
				<!-- Koerperschaften -->
				<xsl:value-of select="$newline"/><xsl:comment>Koerperschaften</xsl:comment><xsl:value-of select="$newline"/>
				<xsl:for-each select="relatedItem[@type='host']/name[@type='corporate']">
					<xsl:variable name="ebene2" select="position()" />				
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F11_2_1-',$ebene2)" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F11" />
						<!-- Relationen -->
						<cidoc_crm_v5:P14B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F28_2-','1')" />
						</cidoc_crm_v5:P14B>
						<!-- Attribute -->
						<rdaGr2:preferredNameForTheCorporateBody><xsl:value-of select="namePart" /></rdaGr2:preferredNameForTheCorporateBody>
					</rdf:Description>
				</xsl:for-each>
				<xsl:for-each select="relatedItem[@type='host']/originInfo/publisher">
					<xsl:variable name="ebene2" select="position()" />				
					<rdf:Description>
						<xsl:attribute name="rdf:about" select="concat($baseUri,'/',$id,'-F11_2_2-',$ebene2)" />
						<!-- Typ -->
						<rdf:type rdf:resource="http://www.cidoc-crm.org/rdfs/frbr#F11" />
						<!-- Relationen -->
						<cidoc_crm_v5:P14B>
							<xsl:attribute name="rdf:resource" select="concat($baseUri,'/',$id,'-F30_2-','1')" />
						</cidoc_crm_v5:P14B>
						<!-- Attribute -->
						<rdaGr2:preferredNameForTheCorporateBody><xsl:value-of select="." /></rdaGr2:preferredNameForTheCorporateBody>
					</rdf:Description>
				</xsl:for-each>
		
	</xsl:template>
	
</xsl:stylesheet>
