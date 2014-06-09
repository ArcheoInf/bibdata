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
package de.archeoinf.indexing.mods2rdf;

import java.io.*;
import java.net.URLEncoder;
import java.util.*;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.xml.transform.TransformerException;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.Namespace;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;

public class Vocabulary2Skos {

	private Logger logger = Logger.getLogger(Vocabulary2Skos.class.getName());

    private String propfile_log4j    = "conf/mods2rdf/mods2rdf.log4j.properties";
    private String propfile_project  = "conf/mods2rdf/mods2rdf.properties";

	private Properties projectProperties = null;

	public static void main(String[] args) throws NumberFormatException, IOException, JDOMException, TransformerException {

		Vocabulary2Skos rdf;

		if (args.length > 0) {
			rdf = new Vocabulary2Skos(args[0]);
		}
		else {
			rdf = new Vocabulary2Skos();
		}

		long global = System.currentTimeMillis();

		for (String project : rdf.getProjectProperties().getProperty("projects").split(",")) {

			rdf.getLogger().info("Start working on project '" + project + "' - " + new java.util.Date());

			// Generate SKOS
			rdf.mods2skos(project);
		}
		
		rdf.getLogger().info("Mods2Skos ready. (Processing time: " + ((System.currentTimeMillis() - global)/1000) + " s)");
	}

	public Vocabulary2Skos() {
		
		// init logger
		PropertyConfigurator.configure(propfile_log4j);
		logger.info("Start generating SKOS ...");

		projectProperties = new Properties();

		try {
			FileInputStream fis = new FileInputStream(propfile_project);
			projectProperties.load(fis);
			fis.close();

		} catch (FileNotFoundException e) {
			logger.fatal("Could not open properties file '" + propfile_project + "' - " + e.getMessage());
		} catch (IOException e) {
			logger.fatal("Could not open properties file '" + propfile_project + "' - " + e.getMessage());
		}
	}

	public Vocabulary2Skos(String propfile) {
		
		// init logger
		PropertyConfigurator.configure(propfile_log4j);
		logger.info("Start generating SKOS ...");

		projectProperties = new Properties();
		
		propfile_project = propfile;

		try {
			FileInputStream fis = new FileInputStream(propfile_project);
			projectProperties.load(fis);
			fis.close();

		} catch (FileNotFoundException e) {
			logger.fatal("Could not open properties file '" + propfile_project + "' - " + e.getMessage());
		} catch (IOException e) {
			logger.fatal("Could not open properties file '" + propfile_project + "' - " + e.getMessage());
		}
	}

	public Logger getLogger() {
		return this.logger;
	}
	
	public Properties getProjectProperties() {
		return this.projectProperties;
	}

	public void mods2skos(String project) throws NumberFormatException, IOException, JDOMException, TransformerException {

		String[] entries = new File(this.projectProperties.getProperty("watchfolder") + File.separatorChar + project + File.separatorChar + this.projectProperties.getProperty(project + "_mods")).list();
		logger.info("Files in " + this.projectProperties.getProperty("watchfolder") + File.separatorChar + project + File.separatorChar + this.projectProperties.getProperty(project + "_mods"));
		logger.info(Arrays.toString(entries));

		String del = this.projectProperties.getProperty("watchfolder") + File.separatorChar + project + File.separatorChar + this.projectProperties.getProperty(project + "_skos");
		try {
            for (File f : new File(del).listFiles()) {
                f.delete();
            }
        }
        catch (NullPointerException e) {
          /* Do nothing! */
        }

		long begin = System.currentTimeMillis();

		int number_of_servers = Integer.parseInt(projectProperties.getProperty("number_of_servers"));

		LinkedList<Callable<HashMap<String,String>>> requestList = new LinkedList<Callable<HashMap<String,String>>>();

		for (String entry : entries) {

			requestList.add(new PooledGenerating(propfile_project, project, entry));
		}

		ThreadPoolExecutor pool = new ThreadPoolExecutor(number_of_servers, number_of_servers, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>());

        HashMap<String,String> subjects = new HashMap<String,String>();

		try {

			List<Future<HashMap<String,String>>> futureList = pool.invokeAll(requestList);

			for (Future<HashMap<String,String>> f : futureList) {

                subjects.putAll(f.get());
				logger.info("mods2skos: contains '" + subjects.size() + "' elements.");
			}

			pool.shutdown();

			logger.info("finished");

		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

        /* generate SKOS */
        Namespace rdf_ns = Namespace.getNamespace("rdf","http://www.w3.org/1999/02/22-rdf-syntax-ns#");
        Namespace skos_ns = Namespace.getNamespace("skos","http://www.w3.org/2004/02/skos/core#");

        Document doc = new Document(new Element("RDF", rdf_ns));
        //doc.getRootElement().addContent(new Element("RDF", rdf_ns));

        for (String s : subjects.keySet()) {
            Element rdfDescription = new Element("Description", rdf_ns);
            rdfDescription.setAttribute("about", this.projectProperties.getProperty("baseURI") + this.projectProperties.getProperty(project + "_uri") + "/concept/" + URLEncoder.encode(s, "UTF-8"), rdf_ns);

            Element type = new Element("type", rdf_ns);
            type.setAttribute("resource", "http://www.w3.org/2004/02/skos/core#Concept", rdf_ns);
            rdfDescription.addContent(type);
            type = new Element("type", rdf_ns);
            type.setAttribute("resource", "http://erlangen-crm.org/120111/E55_Type", rdf_ns);
            rdfDescription.addContent(type);

            Element prefLabel = new Element("prefLabel", skos_ns);
            prefLabel.addContent(s);
            rdfDescription.addContent(prefLabel);

            Element inScheme = new Element("inScheme", skos_ns);
            inScheme.setAttribute("resource", this.projectProperties.getProperty("baseURI") + "scheme/" + this.projectProperties.getProperty(project + "_scheme"), rdf_ns);
            rdfDescription.addContent(inScheme);

            doc.getRootElement().addContent(rdfDescription);
        }

        Format format = Format.getPrettyFormat();
        format.setEncoding("UTF-8");
        XMLOutputter xml = new XMLOutputter(format);

        xml.output(doc, new OutputStreamWriter(new FileOutputStream(this.projectProperties.getProperty("watchfolder") + File.separatorChar + project + File.separatorChar + this.projectProperties.getProperty(project + "_skos") + File.separatorChar + project + ".vocabulary.rdf.xml"), "UTF-8"));

		logger.info("mods2skos: generate data (Processing time: " + ((System.currentTimeMillis() - begin)/1000) + " s)");
	}
}
