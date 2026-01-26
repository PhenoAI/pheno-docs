# pheno-docs

This repository contains the documentation of the Human Phenotype Project (HPP) for researchers.

## Sites in this Repository

This repository contains **two separate websites**:

1. **Pheno Knowledge Base** (`pheno_knowledge_base/`)
   - Published at: [Pheno Knowledgebase](https://knowledgebase.pheno.ai)
   - Output directory: `docs/`
   - The main knowledge base for the HPP

2. **Pheno Knowledge Base Expanded** (`pheno_knowledge_base_expanded/`)
   - Output directory: `docs-expanded/`
   - An expanded version with additional content (separate from the main site)

## Contributing

- Updates should be made via a PR.
- Please separate commits for changes to the source files from the rendering of the docs.

# How to build the docs

## Prerequisites

1. Ensure [quarto](https://quarto.org/docs/get-started/) is installed.
2. Install the JupyterLab extension for Quarto. This is required to render the Jupyter Notebooks properly.

```bash
python3 -m pip install jupyterlab-quarto
```

## Building the Main Knowledge Base

1. Go to the `pheno_knowledge_base` folder.
2. Run `quarto render` to build the docs (outputs to `docs/`).
3. Run `quarto preview` to preview the docs before publishing.

## Building the Expanded Knowledge Base

1. Go to the `pheno_knowledge_base_expanded` folder.
2. Run `quarto render` to build the docs (outputs to `docs-expanded/`).
3. Run `quarto preview` to preview the docs before publishing.


# How to update the publications list

1. Run the `src/create_publications.ipynb` notebook.
2. Build the docs (see above).

# How to update the datasets introduction

1. Update the corresponding markdown file in the `markdowns-expanded` folder.
2. Run the `python ../pheno-examples/src/tools/add_intro.py pheno_knowledge_base/datasets` command to update the introduction to the datasets.
3. Build the docs (see above).
