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
