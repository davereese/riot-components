<difference-details>
  <div class={ expanded ? 'details details--open' : 'details' }>
    <h3 class="details__title">The REI Difference</h3>
    <div class={ 'guarantee' === section ? 'details__item current' : 'details__item' }>
      <h4>100% satisfaction guaranteed</h4>
      <p>We stand behind everything we sell. If you are not satisfied with your REI purchase, you can return it for a replacement or refund within one year of purchase.</p>
      <p>REI's guarantee doesn't cover ordinary wear and tear or damage caused by improper use or accidents.</p>
      <p>If your item has a manufacturing defect in its materials or workmanship, you can return it at any time. See our <a href="https://www.rei.com/help/limited-warranty.html" target="_blank">limited warranty</a>.</p>
    </div>

    <div class={ 'trust' === section ? 'details__item current' : 'details__item' }>
      <h4>Gear &amp; advice you can trust</h4>
      <p>At REI, we live and breathe the outdoors, and we're passionate about sharing our expertise with people of all skill levels. Whether you're new to the outdoors or a seasoned explorer, we'll take the time to understand your needs and help you find the right gear for you.</p>
    </div>

    <div class={ 'dividend' === section ? 'details__item current' : 'details__item' }>
      <h4>10% annual member refund</h4>
      <p>Anyone can shop at REI, but for a one-time $20 fee you can become an REI member and enjoy a lifetime of benefits. These include an annual member refund, typically 10% back on eligible purchases.*</p>
      <p>*10% is typical but not guaranteed. Your refund is based on eligible purchases, which exclude REI gift cards, services, fees, REI Adventures trips, REI Garage, and discounted items. <a href="https://www.rei.com/membership/dividend" target="_blank">Learn more</a></p>
    </div>
    <transition expanded={ expanded } version={ version } />
  </div>

  <script>
    this.expanded = opts.expanded;
    this.section = opts.section;
    this.version = 1;

    this.on('update', function() {
      switch ( this.section ) {
        case 'guarantee':
          this.version = 1;
          break;
        case 'trust':
          this.version = 2;
          break;
        case 'dividend':
          this.version = 3;
          break;
      }
    });

  </script>

  <style>
    .details {
      position: absolute;
      width: 100%;
      height: 425px;
      top: 100%;
      z-index: 5;
      background: #efeee2;
      font-family: 'Roboto', serif;
      text-transform: none;
      color: #000;
      transition: all 0.5s cubic-bezier(.39,.01,0,.99) 0.03s;
    }

    @media (min-width: 768px) {
      .details {
        height: 325px;
      }
    }

    @media (min-width: 992px) {
      .details {
        height: 295px;
      }
    }

    .details--open {
      top: 0;
    }

    .details__title {
      margin: 10px 0;
      text-align: center;
      font-family: 'Kameron', serif;
      font-size: 40px;
    }

     @media (max-width: 575px) {
       .details__title {
         font-size: 30px;
       }
     }

    .details__item {
      position: absolute;
      display: none;
      width: 80%;
      z-index: 10;
      left: 10%;
    }
    
    @media (min-width: 576px) {
      .details__item {
        width: 61%;
        left: 23.5%;
      }
    }

    .details__item.current {
      display: block;
    }

    .details__item h4 {
      font-family: 'Kameron', serif;
      font-size: 25px;
      margin: 0 0 5px;
    }

    .details__item p {
      margin: 0 0 10px;
    }
  </style>
</difference-details>
