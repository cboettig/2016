The current wording risks leaving the take-home as "All our issues with
citation, credit, and reproducibility of software can be adequately
addressed within the current model of academic citation practices."
We dismiss problems where the desire of credit conflict with the desire
to track provenance by saying "that's a problem for academic citation
in general, so to the extent that citation still fulfils both roles for
papers, it can do so for data as well."

I fear this misses the orders of magnitude difference between how these
problems manifest in software vs how they are dealt with in papers.
The quirks of citation practices which have been manageable in papers
are exacerbated to a degree in which they may no longer be manageable.

For instance: Both citations to both software and papers can suffer the
'wrapper problem' -- citing a review paper acknowledges the provenance of
ideas but fails to allocate credit (citation count) to the originators.
Likewise citing a software client library acknowledges the provenance
through it's dependency on the sever software system, but fails to
transfer credit to it.  The difference is one of scale -- a closely knit
research community can self-police a glaring omission of credit if an
author cites a textbook in place of a citation classic of the field.
A reviewer is far less likely to be familiar with the original sources
and underlying dependencies when they encounter a citation to a software
wrapper around an existing algorithm or software system.

Both software and papers share a tension in citing for provenance and
citing for credit, but software has this issue in spades.  Provenance
means fine-grained citation to particular version, credit means
accumulating those citations against a single object.  Thin wrappers
around fundamental dependencies are commonplace.  Authorship concepts
are both more diverse and less governed by well-understood norms.

While we strive to offer practical guidelines that acknowledge the
current incentive system of academic citation, a more modern system of
assigning credit is sorely needed.  It is not that academic software
needs a separate system from academic papers, but that it underscores
the need to overhaul the system of credit for both.


-----

As discussed in the workshop, I'm working on a pull request along these lines, but comments & references welcome here.



Software citation principles run the risk of suggesting that with a little guidance, software citation can be sufficiently managed within the current framework of academic citation. 

Citation practices were designed to perform a role of provenance of ideas, and have been co-opted to perform a role of credit and evaluation.  


Should software citation principles recommend citing dependencies of 

Software citation 
