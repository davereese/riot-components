<rei-difference>
  <div class={ expanded ? 'diff diff--open' : 'diff' }>
    <div class="wrap">
      <div data-section="main" onclick={ open }>
        <span>The REI Difference</span>
      </div>
      <div data-section="guarantee" onclick={ open }>
        <span>100%</span> <span>Satisfaction<br><span class="spaced2">Guaranteed</span></span>
      </div>
      <div data-section="trust" onclick={ open }>
        <span class="two-line">Gear &amp; Advice<br>You Can Trust</span>
      </div>
      <div data-section="dividend" onclick={ open }>
        <span>10%</span> <span><span class="spaced3">Member</span><br>Dividend<span class="small">*</span></span>
      </div>
    </div>

    <a class={ expanded ? 'close on' : 'close' } onclick={ close }></a>
    <span class={ expanded ? 'choices on' : 'choices' }>
      <span class={ 'guarantee' == section ? 'current' : '' } data-section="guarantee" onclick={ open }></span>
      <span class={ 'trust' == section ? 'current' : '' } data-section="trust" onclick={ open }></span>
      <span class={ 'dividend' == section ? 'current' : '' } data-section="dividend" onclick={ open }></span>
    </span>
    <difference-details section={ section } expanded={ expanded } />

  </div>

  <script>
    this.section;
    this.expanded = false;

    open(e) {
      this.update({ section: 'main' === e.currentTarget.attributes['data-section'].value ? 'guarantee' : e.currentTarget.attributes['data-section'].value, expanded: true })
    }

    close(e) {
      this.update({ expanded: false });
    }
  </script>

  <style>
    .diff {
      position: relative;
      padding: 20px 0 24px;
      height: 158px;
      overflow: hidden;
      box-sizing: border-box;
      border-top: 1px solid #666;
      border-bottom: 1px solid #666;
      font-family: 'Open Sans Condensed', sans-serif;
      text-transform: uppercase;
      color: #ccc;
      transition: all 0.5s cubic-bezier(.39,.01,0,.99) 0.03s;
    }

     @media (max-width: 767px) {
      .diff {
        height: 262px;
      }
    }

    @media (min-width: 992px) {
      .diff {
        height: 102px;
      }
    }

    .diff--open {
      height: 425px;
    }

    @media (min-width: 768px) {
      .diff--open {
        height: 325px;
      }
    }

    @media (min-width: 992px) {
      .diff--open {
        height: 295px;
      }
    }

    .diff:hover,
    .diff:focus {
      color: #fff;
    }

    .diff::after {
      display: block;
      content: "";
      clear: both;
    }

    .wrap {
      width: 100%;
      height: 55px;
      margin: 0 auto;
    }

    @media (min-width: 768px) {
      .wrap {
        width: 678px;
      }
    }

    @media (min-width: 992px) {
      .wrap {
        width: 870px;
      }
    }

    @media (min-width: 1200px) {
      .wrap {
        width: 100%;
      }
    }

    .wrap > div {
      position: relative;
      box-sizing: border-box;
      padding: 0 2.9%;
      font-size: 20px;
      line-height: 1.1;
    }

    .wrap > div:hover,
    .wrap > div:focus {
      cursor: pointer;
    }

    .wrap > div::after {
      content: "";
      position: absolute;
      display: none;
      right: 0;
      top: 7px;
      width: 2px;
      height: 42px;
      border-right: 2px dotted #999;
    }

    @media (max-width: 575px) {
      .wrap > div[data-section="main"] > span:first-child:not(.two-line) {
        font-size: 40px;
      }
    }

    @media (max-width: 991px) {
      .wrap > div[data-section="main"] {
        padding: 0;
        width: 100%;
        text-align: center;
      }

      .wrap > div[data-section="main"]::after {
        display: none;
      }
    }

    @media (max-width: 767px) {
      .wrap > div[data-section="guarantee"],
      .wrap > div[data-section="trust"],
      .wrap > div[data-section="dividend"] {
        margin: 0 auto;
        padding: 0;
      }

      .wrap > div[data-section="guarantee"] {
        width: 251px
      }

      .wrap > div[data-section="trust"] {
        width: 139px;
      }

      .wrap > div[data-section="dividend"] {
        width: 195px;
      }
    }

    @media (min-width: 768px) {
      .wrap > div {
        float: left;
      }

      .wrap > div::after {
        display: block;
      }

      .wrap > div[data-section="guarantee"] {
        clear: both;
      }
    }

    @media (min-width: 992px) {
      .wrap > div[data-section="guarantee"] {
        clear: none;
      }

      .wrap > div[data-section="trust"] {
        padding-right: 0;
      }

      .wrap > div[data-section="trust"]::after,
      .wrap > div[data-section="dividend"] {
        display: none;
      }
    }

    @media (min-width: 1200px) {
      .wrap > div[data-section="trust"] {
        padding-right: 2.9%;
      }

      .wrap > div[data-section="trust"]::after,
      .wrap > div[data-section="dividend"] {
        display: block;
      }
    }

    .wrap > div:first-child {
      padding-left: 0;
    }

    .wrap > div:last-of-type {
      padding-right: 0;
    }

    @media (min-width: 768px) {
      .wrap > div:last-of-type {
        float: right;
        text-align: right;
      }
    }

    .wrap > div:last-of-type::after {
      border: 0;
    }

    .wrap > div > span:first-child:not(.two-line) {
      font-size: 50px;
    }

    .wrap > div > span:nth-child(2) {
      float: right;
      margin-top: 7px;
      margin-left: 20px;
      text-align: left;
      letter-spacing: 1px;
    }

    .wrap > div span.two-line {
      display: block;
      margin-top: 7px;
      letter-spacing: 1px;
    }

    .small {
      font-size: 10px;
      vertical-align: super;
    }

    .spaced2 {
      letter-spacing: 2px;
    }

    .spaced3 {
      letter-spacing: 3px;
    }

    .choices {
      position: absolute;
      opacity: 0;
      z-index: 10;
      bottom: 13px;
      left: 50%;
      margin-left: -87px;
      transition: opacity 0.5s;
    }

    .choices.on {
      opacity: 1;
    }

    .choices span {
      display: inline-block;
      width: 50px;
      height: 7px;
      margin: 0 3px;
      background-color: #000;
      transition: background-color 0.3s;
    }

    .choices span.current,
    .choices span.current:hover,
    .choices span.current:focus {
      background-color: #a1c900;
    }

    .choices span:hover,
    .choices span:focus {
      background-color: #666;
      cursor: pointer;
    }

    .close {
      position: absolute;
      height: 20px;
      width: 20px;
      top: 10px;
      right: 10px;
      z-index: 10;
      opacity: 0;
      background-color: #fff;
      border-radius: 50%;
      color: #000;
      transition: all 0.5s;
    }

    @media (max-width: 575px) {
      .close {
        top: 2px;
        right: 2px;
      }
    }

    .close::before {
      content: '\2297';
      display: block;
      padding-top: 7px;
      margin-left: -2px;
      font-size: 34px;
      line-height: 0;
    }

    .close:hover,
    .close:focus {
      color: #a1c900;
      cursor: pointer;
    }

    .close.on {
      opacity: 1;
    }
  </style>
</rei-difference>
