/*
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
*/
package de.archeoinf.aggregation.bnb2mods;

import net.sf.saxon.s9api.QName;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;

import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import java.io.*;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Properties;

public class Bnb2Mods {

	private static Logger logger = Logger.getLogger(Bnb2Mods.class.getName());

	private static String propfile_log4j = "conf/bnb2mods/bnb2mods.log4j.properties";
	private static String propfile_bnb  = "conf/bnb2mods/bnb2mods.properties";

	private static Properties bnbProperties = null;

	public static void main(String[] args) throws IOException, TransformerException {

		// init logger
		PropertyConfigurator.configure(propfile_log4j);
		logger.info("read BNB data.");

		bnbProperties = new Properties();
		FileInputStream fis = new FileInputStream(propfile_bnb);
		bnbProperties.load(fis);	

		String[] entries = new File(bnbProperties.getProperty("watchfolder") + File.separatorChar + bnbProperties.getProperty("bl_bnb_dataset")).list();
		logger.debug("Files in " + bnbProperties.getProperty("watchfolder") + File.separatorChar + bnbProperties.getProperty("bl_bnb_dataset"));
		logger.info(Arrays.toString(entries));

		long begin = 0;

		// TODO delete tmp-files for entry in Documents/BL-BNB-dataset
		String del = bnbProperties.getProperty("watchfolder") + File.separatorChar + bnbProperties.getProperty("bl_bnb_data");
		for (File f : new File(del).listFiles()) {
			f.delete();
		}
		
		for (String entry : entries) {

			begin = System.currentTimeMillis();

			String source = bnbProperties.getProperty("watchfolder") + File.separatorChar + bnbProperties.getProperty("bl_bnb_dataset") + File.separatorChar + entry;
			String result = bnbProperties.getProperty("watchfolder") + File.separatorChar + bnbProperties.getProperty("bl_bnb_data") + File.separatorChar + entry.split("\\.")[0];
			String result_uri = bnbProperties.getProperty("watchfolder_uri") + "/" + bnbProperties.getProperty("bl_bnb_data") + "/" + entry.split("\\.")[0];
			String mods   = bnbProperties.getProperty("watchfolder") + File.separatorChar + bnbProperties.getProperty("bl_bnb_mods") + File.separatorChar + entry.split("\\.")[0];

			BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(source),"UTF-8"));
			
			String s = result + ".1.xml";
			String u = result_uri + ".1.xml";
			String m = mods + ".1.mods.xml";

			BufferedWriter out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(s),"UTF-8"));

			String line = "";

			int cnt = 0;
			int rdf = 0;
			int files = 1;

			String header = "";

			while((line = in.readLine()) != null) {

				// TODO Ersetze rdf:description durch rdf:Description
				
				if (line.contains("rdf:description")) {
					line.replaceAll("description", "Description");
				}
				
				//line = XMLFilter.removeInvalidXMLCharacters(line);
				
				if (files == 1 && cnt < 2) {
					header += line;				
				}
				else {

					if (cnt == 2) {
						out.write(header + "\n");
					}
					
					if (line.contains("</rdf:RDF>")) {
						// Datei abschliessen
						//if (!line.contains("</rdf:RDF>")) {

							out.write("</rdf:RDF>");

							out.close();
							
							// TODO convert to mods
							Document doc = new Document(new Element("bnb"));
							doc.getRootElement().addContent(new Element("bnb"));
							
							HashMap<String,String> params = new HashMap<String,String>();
							params.put("data", u);
							
							transformXml2XmlStreaming(doc, bnbProperties.getProperty("xslt"), params, m);
					}
					else {
						out.write(line + "\n");

						if (line.equals("</rdf:Description>")) {
							rdf++;
						}
					}
				}
				cnt++;
			}
			
			logger.info("bnb2mods: read and convert data from '" + entry + "' (Processing time: " + ((System.currentTimeMillis() - begin)/1000) + " s)");

		}
	}
	
	public static void transformXml2XmlStreaming(Document doc, String xslt, HashMap<String,String> params, String resfile) throws TransformerException, IOException {
		
        File xsltFile = new File(xslt);

        Format format = Format.getPrettyFormat();
        format.setEncoding("UTF-8");
        XMLOutputter xml = new XMLOutputter(format);

        InputStream is = new ByteArrayInputStream(xml.outputString(doc).getBytes("UTF-8"));
        javax.xml.transform.Source xmlSource = new javax.xml.transform.stream.StreamSource(is);
        javax.xml.transform.Source xsltSource = new javax.xml.transform.stream.StreamSource(xsltFile);
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(resfile),"UTF-8"));

        javax.xml.transform.Result result = new javax.xml.transform.stream.StreamResult(bw);

        TransformerFactory transFact = new net.sf.saxon.TransformerFactoryImpl();
        javax.xml.transform.Transformer trans = transFact.newTransformer(xsltSource);
        
        for (String p : params.keySet()) {
        	//trans.setParameter((new QName(p)).toString(), new XdmAtomicValue(params.get(p).toString()));
        	trans.setParameter((new QName(p)).toString(), params.get(p).toString());
        }

        trans.transform(xmlSource, result);
    }
	
}
