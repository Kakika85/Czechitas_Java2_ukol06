[#ftl]
[@c.page]
    <div class="detail">
        <div class="vizitka">
            <div class="jmeno">${vizitkaOptional.cele_jmeno}</div>
            <div class="firma">${vizitkaOptional.firma}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${vizitkaOptional.ulice}</div>
                    <div><span>${vizitkaOptional.psc}</span> <span>${vizitkaOptional.obec}</span></div>
                </div>
                <div class="kontakty">
                    <div>[#if vizitkaOptional.email??]<i class="las la-at"></i>
                            <span>${vizitkaOptional.email}</span>[#else]<span>not defined</span>[/#if]</div>
                    <div>[#if vizitkaOptional.telefon??]<i class="las la-phone-alt"></i>
                            <span>${vizitkaOptional.telefon}</span>[#else]<span>not defined</span>[/#if]</div>
                    <div>[#if vizitkaOptional.web??]<i class="las la-globe"></i>
                            <span>${vizitkaOptional.web}</span>[#else]<span>not defined</span>[/#if]</div>
                </div>
            </div>
        </div>

        <div class="mapa">
            <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitkaOptional.celaAdresa?url}" width="100%"
                    height="100%"
                    frameborder="0"></iframe>
        </div>

        [@c.back /]
    </div>
[/@c.page]