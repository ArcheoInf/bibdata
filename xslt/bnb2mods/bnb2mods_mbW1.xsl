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
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:isbd="http://iflastandards.info/ns/isbd/elements/"
    xmlns:owlt="http://www.w3.org/2006/time#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
	
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	
	<xsl:template name="mbW1">
		<xsl:variable name="c" select=".."/> 
		<mods>
			<xsl:for-each select="$c/dcterms:identifier">
				<xsl:if test="starts-with(.,'GB')">
					<recordInfo>
						<recordIdentifier source="British National Bibliography">
							<xsl:value-of select="concat(.,'UO')"/>
						</recordIdentifier>
					</recordInfo>
				</xsl:if>
			</xsl:for-each>
			
			<!--  Titlevarianten inkl. evtl. relatedItems -->
			<xsl:for-each select="$c/dcterms:title">
				
				<xsl:if test="contains(current(), 'Vol.')"><!-- mehrbaendiges Werk -->
				
					<xsl:if test="contains(substring-before(current(), 'Vol.'), ' = ')"><!-- Orignaltitel + Uebersetzter Titel -->
						<xsl:if test="contains(substring-before(substring-before(current(), 'Vol.'), ' = '), ' : ')"><!-- Orignaltitel hat Untertitel -->
							<titleInfo fall="1">
								<title>
									<xsl:value-of select="substring-before(substring-before(substring-before(current(), 'Vol.'), ' = '), ' : ')"/>
								</title>
								<subTitle>
									<xsl:value-of select="substring-after(substring-before(substring-before(current(), 'Vol.'), ' = '), ' : ')"/>
								</subTitle>
							</titleInfo>
						</xsl:if>
						<xsl:if test="not(contains(substring-before(substring-before(current(), 'Vol.'), ' = '), ' : '))"><!-- Orignaltitel hat keinen Untertitel -->
							<titleInfo fall="2">
								<title>
									<xsl:value-of select="substring-before(substring-before(current(), 'Vol.'), ' = ')"/>
								</title>
							</titleInfo>
						</xsl:if>
					</xsl:if>
					<xsl:if test="not(contains(substring-before(current(), 'Vol.'), ' = '))"><!-- Orignaltitel ohne Uebersetzter Titel -->
						<xsl:if test="contains(substring-before(current(), 'Vol.'), ' : ')"><!-- Orignaltitel hat Untertitel -->
							<titleInfo fall="3">
								<title>
									<xsl:value-of select="substring-before(substring-before(current(), 'Vol.'), ' : ')"/>
								</title>
								<subTitle>
									<xsl:value-of select="substring-after(substring-before(current(), 'Vol.'), ' : ')"/>
								</subTitle>
							</titleInfo>
						</xsl:if>
						<xsl:if test="not(contains(substring-before(current(), 'Vol.'), ' : '))"><!-- Orignaltitel hat keinen Untertitel -->
							<titleInfo fall="4">
								<title>
									<xsl:value-of select="substring-before(current(), 'Vol.')"/>
								</title>
							</titleInfo>
						</xsl:if>
					</xsl:if>
					
					
					<!-- Baende -->
					<relatedItem type="constituent">
						<!-- Identifer -->
						<xsl:for-each select="$c/dcterms:identifier">
							<xsl:if test="starts-with(.,'GB')">
								<recordInfo>
									<recordIdentifier source="British National Bibliography">
										<xsl:value-of select="."/>
									</recordIdentifier>
								</recordInfo>
							</xsl:if>
							<xsl:if test="contains(.,'ISBN')">
								<identifier type="uri">
									<xsl:value-of select="."/>
								</identifier>
							</xsl:if>	
						</xsl:for-each>
					
						
						<xsl:if test="contains(substring-after(current(), 'Vol.'), ', ')"><!-- Band hat eigenen Titel -->
							<!-- titleInfo -->
							<xsl:if test="contains(substring-after(substring-after(current(), 'Vol.'), ', '), ' : ')"><!-- Orignaltitel hat Untertitel -->
								<titleInfo fall="9">
									<title>
										<xsl:value-of select="substring-before(substring-after(substring-after(current(), 'Vol.'), ', '), ' : ')"/>
									</title>
									<subTitle>
										<xsl:value-of select="substring-after(substring-after(substring-after(current(), 'Vol.'), ', '), ' : ')"/>
									</subTitle>
								</titleInfo>
							</xsl:if>
							<xsl:if test="not(contains(substring-after(substring-after(current(), 'Vol.'), ', '), ' : '))"><!-- Orignaltitel hat keinen Untertitel -->
								<titleInfo fall="10">
									<title>
										<xsl:value-of select="substring-after(substring-after(current(), 'Vol.'), ', ')"/>
									</title>
								</titleInfo>
							</xsl:if>
							<part>
								<detail type="volume">
									<number>
										<xsl:variable name="vol" select="substring-before(substring-after(current(), 'Vol.'), ', ')" />
										<xsl:if test="starts-with($vol, ' ')"><xsl:value-of select="substring($vol, 2, string-length($vol))"/></xsl:if>
										<xsl:if test="not(starts-with($vol, ' '))"><xsl:value-of select="$vol"/></xsl:if>												
									</number>
								</detail>
							</part>
							
							<!-- contributor -->
							<xsl:for-each select="$c/dcterms:contributor">
								<xsl:variable name="list" select="tokenize(rdf:Description/rdfs:label, ', ')"/>
								<xsl:if test="count($list)=1">
									<name type="corporate">
										<namePart>
											<xsl:value-of select="rdf:Description/rdfs:label"/>
										</namePart>
										<role>
											<roleTerm type="text" authority="marcrelator">contributor</roleTerm>
											<roleTerm type="code" authority="marcrelator">ctb</roleTerm>
										</role>	
									</name>
								</xsl:if>
								<xsl:if test="count($list)=2">
									<name>
										<namePart>
											<xsl:value-of select="rdf:Description/rdfs:label"/>
										</namePart>
										<role>
											<roleTerm type="text" authority="marcrelator">contributor</roleTerm>
											<roleTerm type="code" authority="marcrelator">ctb</roleTerm>
										</role>	
									</name>
								</xsl:if>
								<xsl:if test="count($list)=3">
									<name>
										<namePart>
											<xsl:value-of select="concat($list[1],', ',$list[2])"/>
										</namePart>
										<namePart type="date">
											<xsl:value-of select="$list[3]"/>
										</namePart>
										<role>
											<roleTerm type="text" authority="marcrelator">contributor</roleTerm>
											<roleTerm type="code" authority="marcrelator">ctb</roleTerm>
										</role>	
									</name>
								</xsl:if>
							</xsl:for-each>
							
							<typeOfResource>
								<xsl:value-of select="$c/dcterms:type/rdf:Description/rdfs:label"/>
							</typeOfResource>
														
							<xsl:if test="starts-with($c/isbd:hasEditionStatement, 'New')">
								<xsl:for-each select="$c/dcterms:description">
									<xsl:if test="starts-with(current(), 'Previous ed')">
										<relatedItem type="preceding">
											<titleInfo>
												<xsl:if test="not($c/contains(dcterms:title, ' : '))">
													<xsl:if test="not($c/contains(dcterms:title, '. Vol.'))">
														<title>
															<xsl:value-of select="$c/dcterms:title"/>
														</title>
													</xsl:if>
												</xsl:if>
												<xsl:if test="contains($c/dcterms:title, ' : ')">
													<xsl:if test="not(contains($c/dcterms:title, '. Vol.'))">
														<title>
															<xsl:value-of select="substring-before($c/dcterms:title, ' : ')"/>
														</title>
													</xsl:if>	
												</xsl:if>
												<xsl:if test="contains($c/dcterms:title, ' : ')">
													<xsl:if test="contains($c/dcterms:title, 'Vol.')">
														<xsl:variable name="title6" select="tokenize($c/dcterms:title, '. Vol.')[1]"/>
														<xsl:variable name="title8" select="tokenize($c/dcterms:title, ' : ')[1]"/>
														<xsl:variable name="title2" select="tokenize($c/dcterms:title, ' : ')[2]"/>
														<xsl:variable name="title9" select="substring-before($c/dcterms:title, ' : ')"/>
														<xsl:variable name="title10" select="substring-before(substring-after($c/dcterms:title, ' : '), '. Vol.')"/>
														<title>
															<xsl:value-of select="$title9"/>
														</title>
														<subtitle>
															<xsl:value-of select="$title10"/>
														</subtitle>
													</xsl:if>	
												</xsl:if>
												<xsl:if test="not(contains($c/dcterms:title, ' : '))">
													<xsl:if test="contains($c/dcterms:title, 'Vol.')">
														<title>
															<xsl:value-of select="substring-before($c/dcterms:title, '. Vol.')"/>
														</title>
													</xsl:if>
												</xsl:if>
											</titleInfo>
											<xsl:if test="contains(current(), ': ')">
												<originInfo>
													<dateIssued>
														<xsl:value-of select="substring-after(current(), ': ')"/>
													</dateIssued>
												</originInfo>
											</xsl:if>
											<typeOfResource>
												<xsl:value-of select="$c/dcterms:type/rdf:Description/rdfs:label"/>
											</typeOfResource>
											<genre authority="marcgt">book</genre>
										</relatedItem>
									</xsl:if>
								</xsl:for-each>
							</xsl:if>
							
							<originInfo>
								<xsl:if test="exists($c/isbd:hasPlaceOfPublicationProductionDistribution/rdf:Description/rdfs:label)">
									<place>
										<placeTerm type="text">
											<xsl:value-of select="$c/isbd:hasPlaceOfPublicationProductionDistribution/rdf:Description/rdfs:label"/>
										</placeTerm>	
									</place>
								</xsl:if>
								<xsl:if test="exists($c/dcterms:publisher/rdf:Description/rdfs:label)">
									<publisher>
										<xsl:value-of select="$c/dcterms:publisher/rdf:Description/rdfs:label"/>
									</publisher>
								</xsl:if>
								<xsl:if test="exists($c/dcterms:issued)">
									<dateIssued>
										<xsl:value-of select="$c/dcterms:issued"/>
									</dateIssued>
								</xsl:if>
								<xsl:if test="exists($c/dcterms:type/rdf:description/rdfs:label)">
									<issuance>
										<xsl:value-of select="$c/dcterms:type/rdf:description/rdfs:label"/>
									</issuance>
								</xsl:if>
								<xsl:if test="exists($c/isbd:hasEditionStatement)">
									<edition>
										<xsl:value-of select="$c/isbd:hasEditionStatement"/>
									</edition>
								</xsl:if>
							</originInfo>
							
							<language>
								<languageTerm type="code">
									<xsl:attribute name="authority">iso639-2b</xsl:attribute>
									<xsl:value-of select="$c/dcterms:language/rdf:Description/rdf:value"/>
								</languageTerm>
							</language>
							
							<xsl:if test="exists($c/dcterms:extent/rdf:Description/rdfs:label)">
								<physicalDescription>
									<extent>
										<xsl:value-of select="$c/dcterms:extent/rdf:Description/rdfs:label"/>
									</extent>
								</physicalDescription>
							</xsl:if>
							
							<xsl:for-each select="$c/dcterms:description">
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
							
							<xsl:for-each-group select="$c/dcterms:subject" group-by="rdf:Description/skos:inScheme/@rdf:resource">
								<xsl:if test="exists(current-group()//skos:prefLabel)">
									<xsl:for-each select="current-group()">
										<subject>
											<xsl:attribute name="authorityURI">
												<xsl:value-of select="current-grouping-key()"/>
											</xsl:attribute>
											<topic>
												<xsl:value-of select="rdf:Description/skos:prefLabel"/>
											</topic>
										</subject>
									</xsl:for-each>
								</xsl:if>
								<xsl:if test="exists(current-group()//skos:notation)">
									<xsl:for-each select="current-group()">
										<classification>
											<xsl:attribute name="authorityURI">
												<xsl:value-of select="current-grouping-key()"/>
											</xsl:attribute>
											<xsl:attribute name="authority">
												<xsl:value-of select="'ddc'"/>
											</xsl:attribute>
											<xsl:value-of select="rdf:Description/skos:notation"/>
										</classification>
									</xsl:for-each>
								</xsl:if>	
							</xsl:for-each-group>
				
							<xsl:for-each select="$c/dcterms:subject/rdf:Description/rdfs:label">
								<subject>
									<topic>
										<xsl:value-of select="current()"/>
									</topic>
								</subject>
							</xsl:for-each>					
				
							<xsl:for-each-group select="$c/dcterms:coverage" group-by="rdf:Description/skos:inScheme/@rdf:resource">
								<xsl:if test="exists(current-group()//skos:prefLabel)">
									<xsl:for-each select="current-group()">
										<subject>
											<xsl:attribute name="authorityURI">
												<xsl:value-of select="current-grouping-key()"/>
											</xsl:attribute>
											<geographic>
												<xsl:value-of select="rdf:Description/skos:prefLabel"/>
											</geographic>
										</subject>
									</xsl:for-each>
								</xsl:if>
							</xsl:for-each-group>
							
							<xsl:for-each select="$c/dcterms:tableOfContents">
								<xsl:if test="contains(current(), 'Vol.')">
									<tableOfContents type="volume">
										<xsl:value-of select="current()"/>
									</tableOfContents>
								</xsl:if>
								<xsl:if test="not(contains(current(), 'Vol.'))">
									<tableOfContents>
										<xsl:value-of select="current()"/>
									</tableOfContents>
								</xsl:if>	
							</xsl:for-each>
							
							<xsl:for-each select="$c/dcterms:isPartOf/rdf:Description/rdfs:label">
				
								<xsl:if test="contains(current(), ', ')">
									<xsl:if test="contains(current(), ' ; ')">
										<xsl:variable name="volume5" select="tokenize(current(), ' ; ')[2]"/>
										<relatedItem type="series">
											<titleInfo>
												<title>
													<xsl:if test="contains(current(), ' / ')">
														<xsl:value-of select="substring-after(substring-before(current(), ' ; '), ' / ')"/>
													</xsl:if>
													<xsl:if test="contains(current(), '. ')">
														<xsl:value-of select="substring-after(substring-before(current(), ' ; '), '. ')"/>
													</xsl:if>
													<xsl:if test="not(contains(current(), '. '))">
														<xsl:if test="not(contains(current(), ' / '))">
															<xsl:value-of select="substring-before(current(), ' ; ')"/>
														</xsl:if>
													</xsl:if>
												</title>
											</titleInfo>
											<part>
												<detail type="volume">
													<number>
														<xsl:value-of select="$volume5"/>
													</number>
												</detail>
											</part>
											<xsl:if test="contains(current(), ' / ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(substring-before(current(), ' ; '), ' / ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
											<xsl:if test="contains(current(), '. ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(substring-before(current(), ' ; '), '. ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
										</relatedItem>
									</xsl:if>	
								</xsl:if>
				
								<xsl:if test="contains(current(), ', ')">
									<xsl:if test="not(contains(current(), ' ; '))">
									<xsl:variable name="volume4" select="tokenize(current(), ', ')[2]"/>
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:if test="contains(current(), ' / ')">
													<xsl:value-of select="substring-after(substring-before(current(), ', '), ' / ')"/>
												</xsl:if>
												<xsl:if test="contains(current(), '. ')">
													<xsl:value-of select="substring-after(substring-before(current(), ', '), '. ')"/>
												</xsl:if>
												<xsl:if test="not(contains(current(), '. '))">
													<xsl:if test="not(contains(current(), ' / '))">
														<xsl:value-of select="substring-before(current(), ', ')"/>
													</xsl:if>
												</xsl:if>
											</title>
										</titleInfo>
										<part>
											<detail type="volume">
												<number>
													<xsl:value-of select="$volume4"/>
												</number>
											</detail>
										</part>
											<xsl:if test="contains(current(), ' / ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(substring-before(current(), ', '), ' / ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
											<xsl:if test="contains(current(), '. ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(substring-before(current(), ', '), '. ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
									</relatedItem>
									</xsl:if>
								</xsl:if>
								
								<xsl:if test="contains(current(), ' ; ')">
									<xsl:if test="not(contains(current(), ', '))">
									<xsl:variable name="volume5" select="tokenize(current(), ' ; ')[2]"/>
									<relatedItem type="series">
										<titleInfo>
											<title>
													<xsl:if test="contains(current(), ' / ')">
														<xsl:value-of select="substring-after(substring-before(current(), ' ; '), ' / ')"/>
													</xsl:if>
													<xsl:if test="contains(current(), '. ')">
														<xsl:value-of select="substring-after(substring-before(current(), ' ; '), '. ')"/>
													</xsl:if>
													<xsl:if test="not(contains(current(), '. '))">
														<xsl:if test="not(contains(current(), ' / '))">
															<xsl:value-of select="substring-before(current(), ' ; ')"/>
														</xsl:if>
													</xsl:if>
											</title>
										</titleInfo>
										<part>
											<detail type="volume">
												<number>
													<xsl:value-of select="$volume5"/>
												</number>
											</detail>
										</part>
											<xsl:if test="contains(current(), ' / ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(substring-before(current(), ' ; '), ' / ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
											<xsl:if test="contains(current(), '. ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(substring-before(current(), ' ; '), '. ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
									</relatedItem>
									</xsl:if>
								</xsl:if>
								
								<xsl:if test="not(contains(current(), ', '))">
									<xsl:if test="not(contains(current(), ' ; '))">
										<relatedItem type="series">
											<titleInfo>
												<title>
													<xsl:if test="contains(current(), ' / ')">
														<xsl:value-of select="substring-after(current(), ' / ')"/>
													</xsl:if>
													<xsl:if test="contains(current(), '. ')">
														<xsl:value-of select="substring-after(current(), '. ')"/>
													</xsl:if>
													<xsl:if test="not(contains(current(), '. '))">
														<xsl:if test="not(contains(current(), ' / '))">
															<xsl:value-of select="current()"/>
														</xsl:if>
													</xsl:if>
												</title>
											</titleInfo>
											<xsl:if test="contains(current(), ' / ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(current(), ' / ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
											<xsl:if test="contains(current(), '. ')">
												<relatedItem type="series">
													<titleInfo>
														<title>
															<xsl:value-of select="substring-before(current(), '. ')"/>
														</title>
													</titleInfo>
												</relatedItem>
											</xsl:if>
										</relatedItem>	
									</xsl:if>	
								</xsl:if>
							</xsl:for-each>
							
						</xsl:if>
						<xsl:if test="not(contains(substring-after(current(), 'Vol.'), ', '))"><!-- Band hat keinen eigenen Titel -->
							<part>
								<detail type="volume">
									<number>
										<xsl:value-of select="substring-after(current(), 'Vol.')"/>
										<xsl:variable name="vol" select="substring-after(current(), 'Vol.')" />
										<xsl:if test="starts-with($vol, ' ')"><xsl:value-of select="substring($vol, 2, string-length($vol))"/></xsl:if>
										<xsl:if test="not(starts-with($vol, ' '))"><xsl:value-of select="$vol"/></xsl:if>												
									</number>
								</detail>
							</part>
						</xsl:if>
						
						<!--  alternative title -->
						<xsl:for-each select="$c/dcterms:alternative">
							<titleInfo type="alternative">
								<title><xsl:value-of select="current()"/></title>
							</titleInfo>
						</xsl:for-each>
	
					</relatedItem>
										
				</xsl:if>
				
			</xsl:for-each>
			

			<genre authority="marcgt">MultivolumeMonograph</genre>

			<xsl:if test="not(contains(substring-after(current(), 'Vol.'), ', '))"><!-- Band hat keinen eigenen Titel -->
			
				<!-- contributor -->
				<xsl:for-each select="$c/dcterms:contributor">
					<xsl:variable name="list" select="tokenize(rdf:Description/rdfs:label, ', ')"/>
					<xsl:if test="count($list)=1">
						<name type="corporate">
							<namePart>
								<xsl:value-of select="rdf:Description/rdfs:label"/>
							</namePart>
							<role>
								<roleTerm type="text" authority="marcrelator">contributor</roleTerm>
								<roleTerm type="code" authority="marcrelator">ctb</roleTerm>
							</role>	
						</name>
					</xsl:if>
					<xsl:if test="count($list)=2">
						<name>
							<namePart>
								<xsl:value-of select="rdf:Description/rdfs:label"/>
							</namePart>
							<role>
								<roleTerm type="text" authority="marcrelator">contributor</roleTerm>
								<roleTerm type="code" authority="marcrelator">ctb</roleTerm>
							</role>	
						</name>
					</xsl:if>
					<xsl:if test="count($list)=3">
						<name>
							<namePart>
								<xsl:value-of select="concat($list[1],', ',$list[2])"/>
							</namePart>
							<namePart type="date">
								<xsl:value-of select="$list[3]"/>
							</namePart>
							<role>
								<roleTerm type="text" authority="marcrelator">contributor</roleTerm>
								<roleTerm type="code" authority="marcrelator">ctb</roleTerm>
							</role>	
						</name>
					</xsl:if>
				</xsl:for-each>
				
				<typeOfResource>
					<xsl:value-of select="$c/dcterms:type/rdf:Description/rdfs:label"/>
				</typeOfResource>
								
				<xsl:if test="starts-with($c/isbd:hasEditionStatement, 'New')">
					<xsl:for-each select="$c/dcterms:description">
						<xsl:if test="starts-with(current(), 'Previous ed')">
							<relatedItem type="preceding">
								<titleInfo>
									<xsl:if test="not($c/contains(dcterms:title, ' : '))">
										<xsl:if test="not($c/contains(dcterms:title, '. Vol.'))">
											<title>
												<xsl:value-of select="$c/dcterms:title"/>
											</title>
										</xsl:if>
									</xsl:if>
									<xsl:if test="contains($c/dcterms:title, ' : ')">
										<xsl:if test="not(contains($c/dcterms:title, '. Vol.'))">
											<title>
												<xsl:value-of select="substring-before($c/dcterms:title, ' : ')"/>
											</title>
										</xsl:if>	
									</xsl:if>
									<xsl:if test="contains($c/dcterms:title, ' : ')">
										<xsl:if test="contains($c/dcterms:title, 'Vol.')">
											<xsl:variable name="title6" select="tokenize($c/dcterms:title, '. Vol.')[1]"/>
											<xsl:variable name="title8" select="tokenize($c/dcterms:title, ' : ')[1]"/>
											<xsl:variable name="title2" select="tokenize($c/dcterms:title, ' : ')[2]"/>
											<xsl:variable name="title9" select="substring-before($c/dcterms:title, ' : ')"/>
											<xsl:variable name="title10" select="substring-before(substring-after($c/dcterms:title, ' : '), '. Vol.')"/>
											<title>
												<xsl:value-of select="$title9"/>
											</title>
											<subtitle>
												<xsl:value-of select="$title10"/>
											</subtitle>
										</xsl:if>	
									</xsl:if>
									<xsl:if test="not(contains($c/dcterms:title, ' : '))">
										<xsl:if test="contains($c/dcterms:title, 'Vol.')">
											<title>
												<xsl:value-of select="substring-before($c/dcterms:title, '. Vol.')"/>
											</title>
										</xsl:if>
									</xsl:if>
								</titleInfo>
								<xsl:if test="contains(current(), ': ')">
									<originInfo>
										<dateIssued>
											<xsl:value-of select="substring-after(current(), ': ')"/>
										</dateIssued>
									</originInfo>
								</xsl:if>
								<typeOfResource>
									<xsl:value-of select="$c/dcterms:type/rdf:Description/rdfs:label"/>
								</typeOfResource>
								<genre authority="marcgt">book</genre>
							</relatedItem>
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				
				<originInfo>
					<xsl:if test="exists($c/isbd:hasPlaceOfPublicationProductionDistribution/rdf:Description/rdfs:label)">
						<place>
							<placeTerm type="text">
								<xsl:value-of select="$c/isbd:hasPlaceOfPublicationProductionDistribution/rdf:Description/rdfs:label"/>
							</placeTerm>	
						</place>
					</xsl:if>
					<xsl:if test="exists($c/dcterms:publisher/rdf:Description/rdfs:label)">
						<publisher>
							<xsl:value-of select="$c/dcterms:publisher/rdf:Description/rdfs:label"/>
						</publisher>
					</xsl:if>
					<xsl:if test="exists($c/dcterms:issued)">
						<dateIssued>
							<xsl:value-of select="$c/dcterms:issued"/>
						</dateIssued>
					</xsl:if>
					<xsl:if test="exists($c/dcterms:type/rdf:description/rdfs:label)">
						<issuance>
							<xsl:value-of select="$c/dcterms:type/rdf:description/rdfs:label"/>
						</issuance>
					</xsl:if>
					<xsl:if test="exists($c/isbd:hasEditionStatement)">
						<edition>
							<xsl:value-of select="$c/isbd:hasEditionStatement"/>
						</edition>
					</xsl:if>
				</originInfo>
				
				<language>
					<languageTerm type="code">
						<xsl:attribute name="authority">iso639-2b</xsl:attribute>
						<xsl:value-of select="$c/dcterms:language/rdf:Description/rdf:value"/>
					</languageTerm>
				</language>
				
				<xsl:if test="exists($c/dcterms:extent/rdf:Description/rdfs:label)">
					<physicalDescription>
						<extent>
							<xsl:value-of select="$c/dcterms:extent/rdf:Description/rdfs:label"/>
						</extent>
					</physicalDescription>
				</xsl:if>
				
				<xsl:for-each select="$c/dcterms:description">
					<note>
						<xsl:value-of select="."/>
					</note>
				</xsl:for-each>
				
				<xsl:for-each-group select="$c/dcterms:subject" group-by="rdf:Description/skos:inScheme/@rdf:resource">
					<xsl:if test="exists(current-group()//skos:prefLabel)">
						<xsl:for-each select="current-group()">
							<subject>
								<xsl:attribute name="authorityURI">
									<xsl:value-of select="current-grouping-key()"/>
								</xsl:attribute>
								<topic>
									<xsl:value-of select="rdf:Description/skos:prefLabel"/>
								</topic>
							</subject>
						</xsl:for-each>
					</xsl:if>
					<xsl:if test="exists(current-group()//skos:notation)">
						<xsl:for-each select="current-group()">
							<classification>
								<xsl:attribute name="authorityURI">
									<xsl:value-of select="current-grouping-key()"/>
								</xsl:attribute>
								<xsl:attribute name="authority">
									<xsl:value-of select="'ddc'"/>
								</xsl:attribute>
								<xsl:value-of select="rdf:Description/skos:notation"/>
							</classification>
						</xsl:for-each>
					</xsl:if>	
				</xsl:for-each-group>
	
				<xsl:for-each select="$c/dcterms:subject/rdf:Description/rdfs:label">
					<subject>
						<topic>
							<xsl:value-of select="current()"/>
						</topic>
					</subject>
				</xsl:for-each>					
	
				<xsl:for-each-group select="$c/dcterms:coverage" group-by="rdf:Description/skos:inScheme/@rdf:resource">
					<xsl:if test="exists(current-group()//skos:prefLabel)">
						<xsl:for-each select="current-group()">
							<subject>
								<xsl:attribute name="authorityURI">
									<xsl:value-of select="current-grouping-key()"/>
								</xsl:attribute>
								<geographic>
									<xsl:value-of select="rdf:Description/skos:prefLabel"/>
								</geographic>
							</subject>
						</xsl:for-each>
					</xsl:if>
				</xsl:for-each-group>
				
				<xsl:for-each select="$c/dcterms:tableOfContents">
					<xsl:if test="contains(current(), 'Vol.')">
						<tableOfContents type="volume">
							<xsl:value-of select="current()"/>
						</tableOfContents>
					</xsl:if>
					<xsl:if test="not(contains(current(), 'Vol.'))">
						<tableOfContents>
							<xsl:value-of select="current()"/>
						</tableOfContents>
					</xsl:if>	
				</xsl:for-each>
				
				<xsl:for-each select="$c/dcterms:isPartOf/rdf:Description/rdfs:label">
	
					<xsl:if test="contains(current(), ', ')">
						<xsl:if test="contains(current(), ' ; ')">
							<xsl:variable name="volume5" select="tokenize(current(), ' ; ')[2]"/>
							<relatedItem type="series">
								<titleInfo>
									<title>
										<xsl:if test="contains(current(), ' / ')">
											<xsl:value-of select="substring-after(substring-before(current(), ' ; '), ' / ')"/>
										</xsl:if>
										<xsl:if test="contains(current(), '. ')">
											<xsl:value-of select="substring-after(substring-before(current(), ' ; '), '. ')"/>
										</xsl:if>
										<xsl:if test="not(contains(current(), '. '))">
											<xsl:if test="not(contains(current(), ' / '))">
												<xsl:value-of select="substring-before(current(), ' ; ')"/>
											</xsl:if>
										</xsl:if>
									</title>
								</titleInfo>
								<part>
									<detail type="volume">
										<number>
											<xsl:value-of select="$volume5"/>
										</number>
									</detail>
								</part>
								<xsl:if test="contains(current(), ' / ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(substring-before(current(), ' ; '), ' / ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
								<xsl:if test="contains(current(), '. ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(substring-before(current(), ' ; '), '. ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
							</relatedItem>
						</xsl:if>	
					</xsl:if>
	
					<xsl:if test="contains(current(), ', ')">
						<xsl:if test="not(contains(current(), ' ; '))">
						<xsl:variable name="volume4" select="tokenize(current(), ', ')[2]"/>
						<relatedItem type="series">
							<titleInfo>
								<title>
									<xsl:if test="contains(current(), ' / ')">
										<xsl:value-of select="substring-after(substring-before(current(), ', '), ' / ')"/>
									</xsl:if>
									<xsl:if test="contains(current(), '. ')">
										<xsl:value-of select="substring-after(substring-before(current(), ', '), '. ')"/>
									</xsl:if>
									<xsl:if test="not(contains(current(), '. '))">
										<xsl:if test="not(contains(current(), ' / '))">
											<xsl:value-of select="substring-before(current(), ', ')"/>
										</xsl:if>
									</xsl:if>
								</title>
							</titleInfo>
							<part>
								<detail type="volume">
									<number>
										<xsl:value-of select="$volume4"/>
									</number>
								</detail>
							</part>
								<xsl:if test="contains(current(), ' / ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(substring-before(current(), ', '), ' / ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
								<xsl:if test="contains(current(), '. ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(substring-before(current(), ', '), '. ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
						</relatedItem>
						</xsl:if>
					</xsl:if>
					
					<xsl:if test="contains(current(), ' ; ')">
						<xsl:if test="not(contains(current(), ', '))">
						<xsl:variable name="volume5" select="tokenize(current(), ' ; ')[2]"/>
						<relatedItem type="series">
							<titleInfo>
								<title>
										<xsl:if test="contains(current(), ' / ')">
											<xsl:value-of select="substring-after(substring-before(current(), ' ; '), ' / ')"/>
										</xsl:if>
										<xsl:if test="contains(current(), '. ')">
											<xsl:value-of select="substring-after(substring-before(current(), ' ; '), '. ')"/>
										</xsl:if>
										<xsl:if test="not(contains(current(), '. '))">
											<xsl:if test="not(contains(current(), ' / '))">
												<xsl:value-of select="substring-before(current(), ' ; ')"/>
											</xsl:if>
										</xsl:if>
								</title>
							</titleInfo>
							<part>
								<detail type="volume">
									<number>
										<xsl:value-of select="$volume5"/>
									</number>
								</detail>
							</part>
								<xsl:if test="contains(current(), ' / ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(substring-before(current(), ' ; '), ' / ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
								<xsl:if test="contains(current(), '. ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(substring-before(current(), ' ; '), '. ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
						</relatedItem>
						</xsl:if>
					</xsl:if>
					
					<xsl:if test="not(contains(current(), ', '))">
						<xsl:if test="not(contains(current(), ' ; '))">
							<relatedItem type="series">
								<titleInfo>
									<title>
										<xsl:if test="contains(current(), ' / ')">
											<xsl:value-of select="substring-after(current(), ' / ')"/>
										</xsl:if>
										<xsl:if test="contains(current(), '. ')">
											<xsl:value-of select="substring-after(current(), '. ')"/>
										</xsl:if>
										<xsl:if test="not(contains(current(), '. '))">
											<xsl:if test="not(contains(current(), ' / '))">
												<xsl:value-of select="current()"/>
											</xsl:if>
										</xsl:if>
									</title>
								</titleInfo>
								<xsl:if test="contains(current(), ' / ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(current(), ' / ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
								<xsl:if test="contains(current(), '. ')">
									<relatedItem type="series">
										<titleInfo>
											<title>
												<xsl:value-of select="substring-before(current(), '. ')"/>
											</title>
										</titleInfo>
									</relatedItem>
								</xsl:if>
							</relatedItem>	
						</xsl:if>	
					</xsl:if>
				</xsl:for-each>
			
			</xsl:if>
			
		</mods>
	</xsl:template>
		
</xsl:stylesheet>
