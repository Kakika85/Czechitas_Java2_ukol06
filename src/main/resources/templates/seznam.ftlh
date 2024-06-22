[#ftl]
[@c.page]
    [#list seznam as card]
        <div class="seznam">
        <a href="/${card.id}">
            <div class="vizitka">
                <div class="jmeno">${card.cele_jmeno}</div>
                <div class="firma">${card.firma}</div>
                <div class="udaje">
                    <div class="adresa">
                        <div>${card.ulice}</div>
                        <div><span>${card.psc}</span> <span>${card.obec}</span></div>
                    </div>
                    <div class="kontakty">
                        <div>[#if card.email??]<i class="las la-at"></i> <span>${card.email}</span>[#else]<small><em>not
                                    defined</em></small>[/#if]</div>
                        <div>[#if card.telefon??]<i class="las la-phone-alt"></i> <span>${card.telefon}</span>[#else]
                                <small><em>not defined</em></small>[/#if]</div>
                        <div>[#if card.web??]<i class="las la-globe"></i> <span>${card.web}</span>[#else]<small><em>not
                                    defined</em></small>[/#if]</div>
                    </div>
                </div>
            </div>
        </a>
    [/#list]
    <a href="/nova">
        <div class="vizitka vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white"/>
                <rect width="100" height="20" x="0" y="40" fill="white"/>
            </svg>
        </div>
    </a>
    </div>
[/@c.page]