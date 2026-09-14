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

// the landing page ships with the internal theme
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
