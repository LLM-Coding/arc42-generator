<div class="dtc-landing">

    <!-- ============================ Hero ============================ -->
    <section class="dtc-hero">
        <span class="dtc-bp-corner tl"></span><span class="dtc-bp-corner tr"></span>
        <span class="dtc-bp-corner bl"></span><span class="dtc-bp-corner br"></span>
        <span class="dtc-bp-dim">— ARC42-GENERATOR —</span>

        <span class="dtc-tag">§ ARCHITECTURE / SPECIFICATION / BACKLOG</span>
        <h1>One source,<br><span class="grad">every shape.</span></h1>
        <p class="lead">
            The arc42 template is maintained once, as AsciiDoc, in the
            <a href="https://github.com/arc42/arc42-template">arc42-template</a> repository — the
            <strong>Golden Master</strong>. Readers want it as Word, Markdown, HTML, LaTeX and a
            dozen other formats, in their own language, with or without the embedded help texts.
            This generator produces every one of those combinations and packs each into a ZIP
            archive ready for download.
        </p>
        <div class="dtc-cta">
            <a class="dtc-btn dtc-btn-primary" href="arc42/arc42-arc42-generator.html">📘 Architecture</a>
            <a class="dtc-btn dtc-btn-ghost" href="https://arc42.org/download" target="_blank" rel="noopener">Just want a template? →</a>
        </div>
    </section>

    <div class="dtc-divider"><span class="seg"></span><span class="lk">⛓</span><span class="lk">⛓</span><span class="lk">⛓</span><span class="seg"></span></div>

    <!-- ========================== Pipeline ========================== -->
    <div class="dtc-sec-head">
        <h2>Four phases, one command</h2>
        <p>Every language of the Golden Master, in two flavors, converted into seventeen formats.</p>
    </div>
    <section class="dtc-pipeline">
        <div class="dtc-link"><div class="node on">✂️</div><b>Generate</b><span>strip feature flags</span></div>
        <div class="dtc-link"><div class="node">🔍</div><b>Discover</b><span>scan and validate</span></div>
        <div class="dtc-link"><div class="node">🔄</div><b>Convert</b><span>asciidoctor + pandoc</span></div>
        <div class="dtc-link"><div class="node">📦</div><b>Package</b><span>one zip per variant</span></div>
    </section>

    <div class="dtc-divider"><span class="seg"></span><span class="lk">⛓</span><span class="lk">⛓</span><span class="lk">⛓</span><span class="seg"></span></div>

    <!-- ======================= Document cards ======================= -->
    <div class="dtc-sec-head">
        <h2>What you'll find here</h2>
        <p>
            This documentation was recovered from the source code, not written alongside it.
            Every claim carries its evidence as <code>file:line</code>; facts only the team could
            supply are marked <em>(team answer)</em>.
        </p>
    </div>
    <section class="dtc-features">
        <div class="dtc-card">
            <div class="ic">🧩</div>
            <h3><a href="arc42/arc42-arc42-generator.html">Architecture</a></h3>
            <p>
                All twelve arc42 chapters. Context and building blocks as C4 diagrams, five
                cross-cutting concepts, seven ADRs with Pugh matrices, and chapter 11 separating
                risks from technical debt.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">🎯</div>
            <h3><a href="specs/prd-arc42-generator.html">Product Requirements</a></h3>
            <p>
                The problem, four personas, the goals and where the product falls short of them
                today. Success is measured in release effort, not in downloads.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">📋</div>
            <h3><a href="specs/use-cases-arc42-generator.html">Specification</a></h3>
            <p>
                Four persona use cases in Cockburn form, six system use cases for the technical
                interfaces, ten business rules, Gherkin criteria and twelve EARS requirements.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">🗂️</div>
            <h3><a href="specs/backlog-arc42-generator.html">Backlog</a></h3>
            <p>
                Four EPICs, sixteen user stories, prioritized with MoSCoW. The first EPIC exists
                because the build reports success even when conversions failed.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">🌳</div>
            <h3><a href="QUESTION_TREE-arc42-generator.html">Question Tree</a></h3>
            <p>
                How the documentation was recovered: five root questions refined until every leaf
                could be answered from one specific place in the code — or marked open.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">❓</div>
            <h3><a href="OPEN_QUESTIONS-arc42-generator.html">Open Questions</a></h3>
            <p>
                The nine questions the code could not answer, one section per role — all of them
                answered by the team, and those answers feed the documents above.
            </p>
        </div>
    </section>

    <div class="dtc-divider"><span class="seg"></span><span class="lk">⛓</span><span class="lk">⛓</span><span class="lk">⛓</span><span class="seg"></span></div>

    <!-- ========================= Build it ========================= -->
    <div class="dtc-sec-head">
        <h2>Build it yourself</h2>
        <p>Docker is the supported way to run the generator; the documentation builds with docToolchain.</p>
    </div>
    <section class="dtc-features">
        <div class="dtc-card">
            <div class="ic">🐳</div>
            <h3>The templates</h3>
            <p>
                <code>docker compose up</code> refreshes the Golden Master, generates both
                flavors, converts every format and writes the archives to
                <code>arc42-template/dist/</code>.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">📖</div>
            <h3>This site</h3>
            <p>
                <code>./dtcw4 local generateSite</code> renders <code>docs/</code> into a
                microsite. A GitHub Action does the same on every push and publishes the result
                here.
            </p>
        </div>
        <div class="dtc-card">
            <div class="ic">🔧</div>
            <h3>Contribute</h3>
            <p>
                A new translation needs no change in this repository — a directory matching
                <code>/^[A-Z]{2,}&#36;/</code> in the Golden Master is picked up by itself.
            </p>
        </div>
    </section>

</div>
