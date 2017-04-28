<tree>
  <div class={ expanded ? 'tree start '+show : 'tree '+show } style={ treeStyles }>
    <div class="branch" each={ num } style={ top }>
      <span class="left" style={ delay }></span>
      <span class="right" style={ delay }></span>
    </div>
  </div>

  <script>
    this.expanded = opts.expanded;
    if ( undefined === opts.small ) {
      this.show = '';
    } else {
      this.show = 'tree--show-small';
    }

    // make array for number of branches
    this.num = [];
    for (var i = 0; i < opts.num; i++) {
      // for each branch, calculate settings
      var rand = Math.floor(Math.random() * 4) + 1;
      var settings = {};
      settings.top = 'top: '+((30 - rand) * i)+'px';
      settings.delay = 'animation-delay: '+((opts.num - i) * 0.1)+'s';
      this.num.push(settings);
    }

    // set tree styles
    this.treeStyles = 'height: '+((opts.num * 40) + 15)+'px; left: '+opts.pos+'%; transform: scale('+opts.scale+', '+opts.scale+');';
  </script>

  <style>
    .tree {
      position: absolute;
      display: none;
      bottom: -10px;
      width: 10px;
      height: 240px;
      border-radius: 5px;
      background-color: #a1c900;
      transform-origin: bottom;
    }

    @media (min-width: 576px) {
      .tree {
        display: block;
      }
    }

    .tree.tree--show-small {
      display: block;
    }
    
    @media (min-width: 576px) {
      .tree.tree--show-small {
        display: none;
      }
    }

    @keyframes leftbranch {
      from {transform: rotate(-90deg);}
      to {transform: rotate(-45deg);}
    }

    @keyframes rightbranch {
      from {transform: rotate(90deg)}
      to {transform: rotate(45deg);}
    }

    .branch {
      position: absolute;
    }

    .branch .left,
    .branch .right {
      position: absolute;
      display: block;
      width: 100px;
      height: 10px;
      border-radius: 5px;
      background-color: #a1c900;
      animation-delay: 0.5s;
      animation-fill-mode: forwards;
      animation-duration: 0.6s;
    }

    .branch .left {
      left: -90px;
      transform-origin: 95px 5px;
      transform: rotate(-90deg);
    }

    .branch .right {
      transform-origin: 5px 5px;
      transform: rotate(90deg);
    }

    .tree.start .branch .left {
      animation-name: leftbranch;
    }

    .tree.start .branch .right {
      animation-name: rightbranch;
    }
  </style>
</tree>