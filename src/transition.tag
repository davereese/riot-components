<transition>
  <div class={ expanded && 1 === version ? 'transition start' : 'transition' }>
    <tree num={ 5 } pos={ 93 } scale={ 1 } if={ 1 === version } expanded={ expanded } />
    <tree num={ 4 } pos={ 2 } scale={ 0.7 } if={ 1 === version } expanded={ expanded } />
    <tree num={ 6 } pos={ 10 } scale={ 1 } if={ 1 === version } expanded={ expanded } />
    <tree num={ 8 } pos={ 17 } scale={ 0.4 } if={ 1 === version } expanded={ expanded } />
    <tree num={ 3 } pos={ 1 } scale={ 0.6 } if={ 1 === version } expanded={ expanded } small={ small } />
    <tree num={ 5 } pos={ 95 } scale={ 0.5 } if={ 1 === version } expanded={ expanded } small={ small } />
  </div>

  <div class={ expanded && 2 === version ? 'transition start' : 'transition' }>
    <tree num={ 5 } pos={ 1 } scale={ 0.9 } if={ 2 === version } expanded={ expanded } />
    <tree num={ 7 } pos={ 9 } scale={ 1 } if={ 2 === version } expanded={ expanded } />
    <tree num={ 5 } pos={ 89 } scale={ 0.6 } if={ 2 === version } expanded={ expanded } />
    <tree num={ 5 } pos={ 98 } scale={ 0.8 } if={ 2 === version } expanded={ expanded } />
    <tree num={ 7 } pos={ 2 } scale={ 0.6 } if={ 2 === version } expanded={ expanded } small={ small } />
    <tree num={ 5 } pos={ 93 } scale={ 0.5 } if={ 2 === version } expanded={ expanded } small={ small } />
  </div>

  <div class={ expanded && 3 === version ? 'transition start' : 'transition' }>
    <tree num={ 6 } pos={ 88 } scale={ 0.4 } if={ 3 === version } expanded={ expanded } />
    <tree num={ 7 } pos={ 96 } scale={ 0.7 } if={ 3 === version } expanded={ expanded } />
    <tree num={ 6 } pos={ 5 } scale={ 1 } if={ 3 === version } expanded={ expanded } />
    <tree num={ 8 } pos={ 14 } scale={ 0.4 } if={ 3 === version } expanded={ expanded } />
    <tree num={ 4 } pos={ 1 } scale={ 0.7 } if={ 3 === version } expanded={ expanded } small={ small } />
    <tree num={ 6 } pos={ 97 } scale={ 0.6 } if={ 3 === version } expanded={ expanded } small={ small } />
  </div>

  <script>
    this.expanded = opts.expanded;
    this.small = true;

    this.on('update', function() {
      this.version = opts.version;
    });
  </script>

  <style>
    .transition {
      z-index: 9;
      position: absolute;
      width: 100%;
      height: 425px;
      top: 100%;
      transition: all 0.5s cubic-bezier(.39,.01,0,.99) 0.03s;
    }

    @media (min-width: 768px) {
      .transition {
        height: 325px;
      }
    }

    @media (min-width: 992px) {
      .transition {
        height: 295px;
      }
    }

    .transition.start {
      top: 0;
    }
  </style>
</transition>