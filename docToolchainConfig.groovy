// docToolchain configuration for the arc42-generator documentation
// see https://doctoolchain.org/docToolchain/v4.0.x/ for all options

outputPath = 'build/docs'

inputPath = 'docs'

inputFiles = [
        [file: 'QUESTION_TREE-arc42-generator.adoc', formats: ['html']],
        [file: 'OPEN_QUESTIONS-arc42-generator.adoc', formats: ['html']],
        [file: 'arc42-requirements.adoc', formats: ['html']],
        [file: 'arc42/arc42-arc42-generator.adoc', formats: ['html']],
        [file: 'specs/prd-arc42-generator.adoc', formats: ['html']],
        [file: 'specs/use-cases-arc42-generator.adoc', formats: ['html']],
        [file: 'specs/backlog-arc42-generator.adoc', formats: ['html']],
]

taskInputsDirs = [:]

// === microsite (task: generateSite) =========================================
microsite = [:]

// title in the upper left corner and fallback page title
microsite.title = 'arc42-generator'

// project landing page: site/ overlays the internal theme, so
// site/doc/landingpage.gsp replaces the theme's placeholder page. The path is
// relative to docs/, and pointing outside it keeps the template out of the
// published site - inside docs/ it would be copied along as a stray asset.
microsite.siteFolder = '../site'
microsite.landingPage = 'landingpage.gsp'

// footer and edit links
microsite.footerGithub = 'https://github.com/LLM-Coding/arc42-generator'
microsite.issueUrl = 'https://github.com/LLM-Coding/arc42-generator/issues/new'
microsite.gitRepoUrl = 'https://github.com/LLM-Coding/arc42-generator/edit/master/docs/'
microsite.footerText = '<small class="text-white">built with docToolchain</small>'

// Menu entries come from the :jbake-menu: attribute of each document.
// The include fragments below are rendered as pages but must not appear in the
// menu: arc42 chapters, the help style and the ADR records all live inside
// their parent document.
microsite.menu = [
        architecture : 'Architecture',
        prd          : 'Product',
        spec         : 'Specification',
        backlog      : 'Backlog',
        questiontree : 'Question Tree',
        openquestions: 'Open Questions',
        legacy       : 'arc42 Requirements',
        src          : '-',
        common       : '-',
        adrs         : '-',
        arc42        : '-',
        specs        : '-',
        doc          : '-',
]

// === diagrams ===============================================================
// Rendered remotely by Kroki, so no local PlantUML or Graphviz is needed --
// neither on a developer machine nor on the CI runner.
asciidoctorAttributes = [
        'diagram-server-url' : 'https://kroki.io/',
        'diagram-server-type': 'kroki_io',
]
// Note: the diagram blocks carry opts=inline. Kroki decides who renders a
// diagram, not where the result is stored: asciidoctor-diagram still writes a
// file. In the microsite that file lands in the site root (output/images/)
// while a page one level down references ./images/, so every diagram 404s.
// Inline SVG removes the file, and with it the mismatch.
