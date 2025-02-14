# pheno-docs

This repository contains the documentation of the Human Phenotype Project (HPP) for researchers. It is published under the [Pheno Knowledgebase](https://knowledgebase.pheno.ai) website.

- Updates should be made via a PR.
- Please separate commits for changes to the source files from the rendering of the docs.

# How to build the docs

1. Ensure [quarto](https://quarto.org/docs/get-started/) is installed.
2. Install the JupyterLab extension for Quarto. This is required to render the Jupyter Notebooks properly.

```bash
python3 -m pip install jupyterlab-quarto
```

3. Go to the `pheno_knowledge_base` folder.
4. Run `quarto render` to build the docs.
5. Run `quarto preview` to preview the docs before publishing.


# How to update the publications list

1. Run the `src/create_publications.ipynb` notebook.
2. Build the docs (see above).