<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SYNTH//SHOP — Future Essentials</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Syne:wght@700;800&family=JetBrains+Mono:wght@400;700&display=swap" rel="stylesheet">
  <!-- Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    /* ========== RESET & VARS ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #08080c;
      --bg-soft: #0f0f16;
      --bg-card: #111119;
      --border: rgba(255, 255, 255, 0.08);
      --border-strong: rgba(255, 255, 255, 0.18);
      --text: #f2f0ec;
      --muted: #8a8a9a;
      --muted-soft: #5e5e72;
      --acid: #ccff00;
      --magenta: #ff00a0;
      --cyan: #00f0ff;
      --radius: 0px; /* sharp corners */
      --container: 1400px;
      --mono: 'JetBrains Mono', monospace;
      --display: 'Syne', sans-serif;
      --sans: 'Space Grotesk', system-ui, sans-serif;
    }

    html { scroll-behavior: smooth; }

    body {
      font-family: var(--sans);
      background: var(--bg);
      color: var(--text);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      overflow-x: hidden;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 32px;
    }

    /* ========== SCROLLBAR ========== */
    ::-webkit-scrollbar { width: 8px; height: 8px; }
    ::-webkit-scrollbar-track { background: var(--bg); }
    ::-webkit-scrollbar-thumb { background: var(--acid); }

    /* ========== TYPOGRAPHY / UTILS ========== */
    .mono { font-family: var(--mono); text-transform: uppercase; letter-spacing: 0.08em; font-size: 0.7rem; }
    .display { font-family: var(--display); font-weight: 800; line-height: 0.95; letter-spacing: -0.04em; }
    .text-acid { color: var(--acid); }
    .text-magenta { color: var(--magenta); }
    .text-cyan { color: var(--cyan); }
    .text-muted { color: var(--muted); }

    .line { height: 1px; background: var(--border); width: 100%; }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 28px;
      font-family: var(--mono);
      font-size: 0.75rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.12em;
      border: 1px solid var(--border-strong);
      background: transparent;
      color: var(--text);
      transition: all 0.18s ease;
      border-radius: 0;
      white-space: nowrap;
    }
    .btn:hover {
      background: var(--acid);
      color: #000;
      border-color: var(--acid);
      transform: translate(-2px, -2px);
      box-shadow: 4px 4px 0 var(--magenta);
    }
    .btn-acid {
      background: var(--acid);
      color: #000;
      border-color: var(--acid);
    }
    .btn-acid:hover {
      background: #fff;
      border-color: #fff;
      box-shadow: 4px 4px 0 var(--cyan);
    }
    .btn-magenta {
      background: var(--magenta);
      color: #000;
      border-color: var(--magenta);
    }
    .btn-magenta:hover {
      background: #fff;
      border-color: #fff;
      box-shadow: 4px 4px 0 var(--acid);
    }
    .btn-sm { padding: 8px 16px; font-size: 0.65rem; }

    /* ========== HEADER ========== */
    header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(8, 8, 12, 0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      padding: 14px 0;
      min-height: 76px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-family: var(--display);
      font-weight: 800;
      font-size: 1.8rem;
      letter-spacing: -0.06em;
      color: #fff;
      flex-shrink: 0;
    }
    .brand .slash {
      color: var(--acid);
      font-family: var(--mono);
      font-weight: 400;
      font-size: 1.2rem;
      letter-spacing: 0;
    }
    .brand i {
      color: var(--acid);
      font-size: 1.4rem;
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 18px;
      font-family: var(--mono);
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted);
      border: 1px solid transparent;
      transition: all 0.18s ease;
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      color: var(--acid);
      border-color: var(--border-strong);
      background: rgba(204, 255, 0, 0.04);
    }
    nav.main-nav li a i { font-size: 0.7rem; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
      flex-shrink: 0;
    }
    .header-actions .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      font-size: 1rem;
      color: var(--muted);
      border: 1px solid transparent;
      transition: all 0.18s ease;
      position: relative;
    }
    .header-actions .icon-btn:hover {
      color: var(--acid);
      border-color: var(--border-strong);
      background: rgba(255,255,255,0.02);
    }

    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: 2px;
      right: 2px;
      background: var(--magenta);
      color: #000;
      font-family: var(--mono);
      font-size: 0.6rem;
      font-weight: 700;
      width: 18px;
      height: 18px;
      display: grid;
      place-items: center;
      border: 1px solid #000;
      transition: transform 0.2s;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg-soft);
      border: 1px solid var(--border);
      padding: 0 14px;
      transition: all 0.18s ease;
      min-width: 220px;
    }
    .search-wrap:focus-within {
      border-color: var(--acid);
      box-shadow: 0 0 0 1px var(--acid);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 12px 0;
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      color: var(--text);
    }
    .search-wrap input::placeholder { color: var(--muted-soft); }
    .search-wrap button {
      padding: 8px 0 8px 12px;
      color: var(--muted);
      font-size: 0.9rem;
      transition: color 0.18s;
    }
    .search-wrap button:hover { color: var(--acid); }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      place-items: center;
      font-size: 1.1rem;
      background: var(--bg-soft);
      border: 1px solid var(--border);
      color: var(--text);
      transition: all 0.18s;
    }
    .mobile-toggle:hover {
      border-color: var(--acid);
      color: var(--acid);
    }

    #mobileMenu {
      display: none;
      background: var(--bg-soft);
      border-top: 1px solid var(--border);
      padding: 12px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 14px 18px;
      font-family: var(--mono);
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted);
      border: 1px solid transparent;
      transition: all 0.18s;
    }
    #mobileMenu ul li a:hover {
      color: var(--acid);
      border-color: var(--border-strong);
      background: rgba(204,255,0,0.03);
    }
    #mobileMenu ul li a i { width: 20px; color: var(--muted-soft); }

    /* ========== HERO ========== */
    .hero {
      position: relative;
      min-height: 640px;
      display: flex;
      align-items: center;
      border-bottom: 1px solid var(--border);
      overflow: hidden;
      padding: 80px 0;
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background-image:
        linear-gradient(rgba(204, 255, 0, 0.03) 1px, transparent 1px),
        linear-gradient(90deg, rgba(204, 255, 0, 0.03) 1px, transparent 1px);
      background-size: 64px 64px;
      pointer-events: none;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 2;
      display: grid;
      grid-template-columns: 1.1fr 0.9fr;
      gap: 64px;
      align-items: center;
    }
    .hero-content .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.2em;
      color: var(--acid);
      border: 1px solid var(--acid);
      padding: 6px 14px;
      margin-bottom: 28px;
    }
    .hero-content .eyebrow i { font-size: 0.6rem; }
    .hero-content h1 {
      font-family: var(--display);
      font-size: clamp(3.5rem, 7vw, 6.4rem);
      font-weight: 800;
      line-height: 0.9;
      letter-spacing: -0.05em;
      margin-bottom: 24px;
      text-transform: uppercase;
    }
    .hero-content h1 .stroke {
      color: transparent;
      -webkit-text-stroke: 2px var(--acid);
    }
    .hero-content p {
      font-size: 1.1rem;
      color: var(--muted);
      max-width: 480px;
      margin-bottom: 36px;
      line-height: 1.7;
    }
    .hero-actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    .hero-visual {
      position: relative;
      aspect-ratio: 4/5;
      border: 1px solid var(--border-strong);
      overflow: hidden;
      background: var(--bg-card);
    }
    .hero-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(135deg, rgba(255,0,160,0.15), transparent 50%),
                  linear-gradient(225deg, rgba(0,240,255,0.08), transparent 50%);
      z-index: 1;
      pointer-events: none;
    }
    .hero-visual img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      filter: grayscale(30%) contrast(1.1);
      transition: transform 0.6s ease;
    }
    .hero-visual:hover img { transform: scale(1.04); }
    .hero-visual .tag {
      position: absolute;
      top: 24px;
      left: 24px;
      z-index: 2;
      font-family: var(--mono);
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.2em;
      background: var(--acid);
      color: #000;
      padding: 4px 10px;
    }
    .hero-visual .vertical-label {
      position: absolute;
      right: 16px;
      bottom: 24px;
      z-index: 2;
      writing-mode: vertical-rl;
      font-family: var(--mono);
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.3em;
      color: var(--muted);
    }

    /* ========== MARQUEE ========== */
    .marquee {
      border-top: 1px solid var(--border);
      border-bottom: 1px solid var(--border);
      overflow: hidden;
      padding: 14px 0;
      background: var(--bg-soft);
    }
    .marquee-track {
      display: flex;
      gap: 48px;
      width: max-content;
      animation: marquee 28s linear infinite;
    }
    .marquee-track span {
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.2em;
      color: var(--muted);
      white-space: nowrap;
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .marquee-track span i { color: var(--acid); font-size: 0.5rem; }
    @keyframes marquee {
      0% { transform: translateX(0); }
      100% { transform: translateX(-50%); }
    }

    /* ========== SECTIONS ========== */
    .section {
      padding: 96px 0;
      border-bottom: 1px solid var(--border);
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 24px;
      margin-bottom: 56px;
      flex-wrap: wrap;
    }
    .section-header .section-num {
      font-family: var(--mono);
      font-size: 0.7rem;
      color: var(--acid);
      letter-spacing: 0.2em;
      display: block;
      margin-bottom: 8px;
    }
    .section-header h2 {
      font-family: var(--display);
      font-size: clamp(2rem, 4vw, 3.2rem);
      font-weight: 800;
      line-height: 1;
      letter-spacing: -0.04em;
      text-transform: uppercase;
    }
    .section-header .view-all {
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.12em;
      color: var(--muted);
      display: flex;
      align-items: center;
      gap: 10px;
      border: 1px solid var(--border);
      padding: 10px 18px;
      transition: all 0.18s;
      white-space: nowrap;
    }
    .section-header .view-all:hover {
      color: var(--acid);
      border-color: var(--acid);
      gap: 16px;
    }

    /* ========== CATEGORIES (horizontal tags) ========== */
    .category-scroll {
      display: flex;
      gap: 12px;
      overflow-x: auto;
      padding-bottom: 8px;
      scrollbar-width: thin;
      scrollbar-color: var(--acid) var(--bg);
    }
    .category-scroll::-webkit-scrollbar { height: 4px; }
    .category-scroll::-webkit-scrollbar-thumb { background: var(--acid); }

    .cat-pill {
      flex: 0 0 auto;
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 16px 24px;
      background: var(--bg-card);
      border: 1px solid var(--border);
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted);
      transition: all 0.18s ease;
      cursor: pointer;
      white-space: nowrap;
    }
    .cat-pill:hover {
      border-color: var(--acid);
      color: var(--acid);
      background: rgba(204,255,0,0.04);
      transform: translateY(-2px);
    }
    .cat-pill i { font-size: 1rem; color: var(--acid); }
    .cat-pill .count {
      font-size: 0.6rem;
      color: var(--muted-soft);
      margin-left: 4px;
    }

    /* ========== PRODUCTS GRID ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--bg-card);
      border: 1px solid var(--border);
      display: flex;
      flex-direction: column;
      transition: all 0.22s ease;
      position: relative;
    }
    .product-card:hover {
      border-color: var(--acid);
      transform: translate(-3px, -3px);
      box-shadow: 6px 6px 0 rgba(204, 255, 0, 0.12);
    }
    .product-card .img-wrap {
      position: relative;
      aspect-ratio: 1/1;
      overflow: hidden;
      background: var(--bg-soft);
      border-bottom: 1px solid var(--border);
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.4s ease;
      filter: grayscale(20%);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.05);
      filter: grayscale(0%);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      font-family: var(--mono);
      font-size: 0.55rem;
      text-transform: uppercase;
      letter-spacing: 0.15em;
      padding: 4px 8px;
      background: var(--acid);
      color: #000;
      z-index: 2;
    }
    .product-card .badge.sale {
      background: var(--magenta);
      color: #000;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 32px;
      height: 32px;
      display: grid;
      place-items: center;
      background: rgba(0,0,0,0.6);
      border: 1px solid var(--border-strong);
      color: var(--muted);
      font-size: 0.8rem;
      transition: all 0.18s;
      z-index: 2;
      backdrop-filter: blur(4px);
    }
    .product-card .wish-btn:hover {
      color: var(--magenta);
      border-color: var(--magenta);
    }
    .product-card .body {
      padding: 16px 16px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-card .body .category-tag {
      font-family: var(--mono);
      font-size: 0.55rem;
      text-transform: uppercase;
      letter-spacing: 0.15em;
      color: var(--muted-soft);
      margin-bottom: 2px;
    }
    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      letter-spacing: -0.01em;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin-top: 6px;
    }
    .product-card .body .price {
      font-family: var(--mono);
      font-weight: 700;
      font-size: 1rem;
      color: var(--acid);
      letter-spacing: 0.02em;
    }
    .product-card .body .old-price {
      font-family: var(--mono);
      font-size: 0.7rem;
      color: var(--muted-soft);
      text-decoration: line-through;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.65rem;
      color: var(--magenta);
      letter-spacing: 2px;
      margin-top: 4px;
    }
    .product-card .body .rating span {
      font-family: var(--mono);
      color: var(--muted-soft);
      letter-spacing: 0.02em;
      margin-left: 4px;
    }
    .product-card .footer {
      padding: 0 16px 16px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 10px;
      font-family: var(--mono);
      font-size: 0.65rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      font-weight: 700;
      background: transparent;
      border: 1px solid var(--border-strong);
      color: var(--text);
      transition: all 0.18s ease;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--acid);
      color: #000;
      border-color: var(--acid);
    }
    .product-card .footer .add-btn.added {
      background: var(--cyan);
      color: #000;
      border-color: var(--cyan);
    }

    /* ========== DEAL BANNER ========== */
    .deal-banner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      border: 1px solid var(--border-strong);
      background: var(--bg-soft);
      overflow: hidden;
    }
    .deal-banner .deal-visual {
      position: relative;
      min-height: 420px;
      overflow: hidden;
      border-right: 1px solid var(--border);
    }
    .deal-banner .deal-visual img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      filter: grayscale(20%) contrast(1.1);
    }
    .deal-banner .deal-visual::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(to right, rgba(8,8,12,0.3), transparent);
    }
    .deal-banner .deal-content {
      padding: 56px 56px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-banner .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-family: var(--mono);
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.2em;
      color: #000;
      background: var(--magenta);
      padding: 4px 12px;
      align-self: flex-start;
      margin-bottom: 20px;
    }
    .deal-banner .deal-content h3 {
      font-family: var(--display);
      font-size: 2.6rem;
      font-weight: 800;
      line-height: 1;
      letter-spacing: -0.03em;
      text-transform: uppercase;
      margin-bottom: 12px;
    }
    .deal-banner .deal-content .desc {
      color: var(--muted);
      font-size: 1rem;
      max-width: 380px;
      margin-bottom: 24px;
      line-height: 1.6;
    }
    .deal-banner .deal-content .price-big {
      font-family: var(--mono);
      font-size: 2.4rem;
      font-weight: 700;
      color: var(--acid);
      letter-spacing: -0.02em;
    }
    .deal-banner .deal-content .price-big .old {
      font-size: 1.1rem;
      font-weight: 400;
      color: var(--muted-soft);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-banner .deal-content .stock {
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted);
      margin: 10px 0 24px;
    }
    .deal-banner .deal-content .stock strong { color: var(--magenta); }

    .timer-grid {
      display: flex;
      gap: 8px;
      margin: 8px 0 28px;
    }
    .timer-box {
      background: var(--bg);
      border: 1px solid var(--border-strong);
      padding: 12px 16px;
      min-width: 70px;
      text-align: center;
    }
    .timer-box .num {
      font-family: var(--mono);
      font-size: 1.6rem;
      font-weight: 700;
      line-height: 1.1;
      color: var(--acid);
    }
    .timer-box .label {
      font-family: var(--mono);
      font-size: 0.5rem;
      text-transform: uppercase;
      letter-spacing: 0.15em;
      color: var(--muted-soft);
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 1px;
      background: var(--border);
      border: 1px solid var(--border);
    }
    .testimonial-card {
      background: var(--bg-card);
      padding: 40px 40px 36px;
      transition: background 0.2s;
    }
    .testimonial-card:hover { background: #16161f; }
    .testimonial-card .stars {
      color: var(--magenta);
      font-size: 1rem;
      letter-spacing: 4px;
      margin-bottom: 20px;
    }
    .testimonial-card blockquote {
      font-size: 1.1rem;
      line-height: 1.7;
      color: var(--text);
      margin-bottom: 28px;
      font-style: normal;
      letter-spacing: -0.01em;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 16px;
    }
    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      object-fit: cover;
      border: 1px solid var(--border-strong);
      filter: grayscale(30%);
    }
    .testimonial-card .author .name {
      font-family: var(--mono);
      font-size: 0.75rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.1em;
    }
    .testimonial-card .author .role {
      font-family: var(--mono);
      font-size: 0.6rem;
      color: var(--muted-soft);
      text-transform: uppercase;
      letter-spacing: 0.1em;
      margin-top: 2px;
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-box {
      border: 1px solid var(--border-strong);
      padding: 56px 64px;
      background: var(--bg-soft);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 48px;
      flex-wrap: wrap;
    }
    .newsletter-box .text h3 {
      font-family: var(--display);
      font-size: 2.2rem;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: -0.03em;
      line-height: 1;
      margin-bottom: 8px;
    }
    .newsletter-box .text p {
      color: var(--muted);
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
    }
    .newsletter-box form {
      display: flex;
      gap: 0;
      flex: 1;
      max-width: 480px;
    }
    .newsletter-box form input {
      flex: 1;
      padding: 16px 20px;
      background: var(--bg);
      border: 1px solid var(--border-strong);
      border-right: none;
      color: var(--text);
      font-family: var(--mono);
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      outline: none;
      transition: border-color 0.18s;
      min-width: 0;
    }
    .newsletter-box form input::placeholder { color: var(--muted-soft); }
    .newsletter-box form input:focus { border-color: var(--acid); }
    .newsletter-box form .btn {
      border-radius: 0;
      padding: 16px 28px;
      border: 1px solid var(--acid);
    }
    #newsletterMsg {
      margin-top: 12px;
      font-family: var(--mono);
      font-size: 0.65rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--acid);
      width: 100%;
      display: none;
    }

    /* ========== FOOTER ========== */
    footer {
      padding: 64px 0 32px;
      background: var(--bg);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 48px;
    }
    .footer-grid .brand-col .brand {
      font-size: 1.6rem;
      margin-bottom: 16px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 0.85rem;
      max-width: 300px;
      line-height: 1.7;
      margin-bottom: 20px;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 8px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      display: grid;
      place-items: center;
      border: 1px solid var(--border);
      color: var(--muted);
      font-size: 0.9rem;
      transition: all 0.18s;
    }
    .footer-grid .brand-col .socials a:hover {
      color: var(--acid);
      border-color: var(--acid);
      background: rgba(204,255,0,0.04);
    }
    .footer-grid .col h5 {
      font-family: var(--mono);
      font-size: 0.65rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.15em;
      color: var(--muted);
      margin-bottom: 18px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    .footer-grid .col ul li a {
      font-family: var(--mono);
      font-size: 0.65rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted-soft);
      transition: color 0.18s;
    }
    .footer-grid .col ul li a:hover { color: var(--acid); }
    .footer-bottom {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding-top: 28px;
      border-top: 1px solid var(--border);
      font-family: var(--mono);
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted-soft);
      flex-wrap: wrap;
      gap: 12px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1.6fr 1fr 1fr; gap: 36px; }
      .hero .container { gap: 40px; }
      .hero-content h1 { font-size: clamp(3rem, 6vw, 5rem); }
    }

    @media (max-width: 992px) {
      .hero .container { grid-template-columns: 1fr; gap: 48px; }
      .hero-visual { max-width: 500px; aspect-ratio: 16/10; }
      .deal-banner { grid-template-columns: 1fr; }
      .deal-banner .deal-visual { min-height: 260px; border-right: none; border-bottom: 1px solid var(--border); }
      .deal-banner .deal-content { padding: 40px 32px; }
      .newsletter-box { padding: 40px 32px; flex-direction: column; text-align: center; }
      .newsletter-box form { max-width: 100%; }
    }

    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .hero { min-height: auto; padding: 56px 0; }
      .hero-content h1 { font-size: clamp(2.6rem, 10vw, 3.6rem); }
      .hero-content p { font-size: 1rem; }
      .section { padding: 64px 0; }
      .section-header h2 { font-size: clamp(1.8rem, 6vw, 2.6rem); }
      .section-header { margin-bottom: 36px; }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
      .testimonials-grid { grid-template-columns: 1fr; }
      .deal-banner .deal-content h3 { font-size: 2rem; }
      .timer-box { min-width: 54px; padding: 10px 8px; }
      .timer-box .num { font-size: 1.2rem; }
      .newsletter-box .text h3 { font-size: 1.8rem; }
      .brand { font-size: 1.4rem; }
      .brand i { font-size: 1.1rem; }
      .search-wrap { min-width: 140px; padding: 0 10px; }
      .search-wrap input { font-size: 0.6rem; padding: 10px 0; }
      .header-actions .icon-btn { width: 38px; height: 38px; font-size: 0.85rem; }
      .cart-count { width: 16px; height: 16px; font-size: 0.5rem; }
      .container { padding: 0 20px; }
    }

    @media (max-width: 500px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .product-card .body { padding: 12px 10px 8px; }
      .product-card .body h5 { font-size: 0.8rem; }
      .product-card .body .price { font-size: 0.85rem; }
      .product-card .body .old-price { font-size: 0.6rem; }
      .product-card .footer { padding: 0 10px 12px; }
      .product-card .footer .add-btn { font-size: 0.55rem; padding: 8px; }
      .hero-content h1 { font-size: 2.2rem; }
      .hero-actions .btn { padding: 10px 16px; font-size: 0.6rem; }
      .newsletter-box form { flex-direction: column; gap: 8px; }
      .newsletter-box form input { border-right: 1px solid var(--border-strong); }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .deal-banner .deal-content { padding: 28px 20px; }
      .deal-banner .deal-content h3 { font-size: 1.6rem; }
      .deal-banner .deal-content .price-big { font-size: 1.8rem; }
      .testimonial-card { padding: 28px 24px; }
      .testimonial-card blockquote { font-size: 0.95rem; }
    }
  </style>
</head>

<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-cube"></i>
          <span>SYNTH<span class="slash">//</span>SHOP</span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Index</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Drops</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deal</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Signals</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:10px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
              <i class="fas fa-shopping-bag"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Index</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Drops</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deal</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Signals</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO -->
    <section class="hero" aria-label="Hero">
      <div class="container">
        <div class="hero-content">
          <div class="eyebrow"><i class="fas fa-circle"></i> New drop / 04.26</div>
          <h1>FUTURE<br><span class="stroke">ESSENTIALS</span></h1>
          <p>Hardware, apparel and objects engineered for the next decade. No filler. Just signal.</p>
          <div class="hero-actions">
            <button class="btn btn-acid" id="shopNow"><i class="fas fa-arrow-down"></i> Shop the drop</button>
            <button class="btn" id="exploreDeals"><i class="fas fa-bolt"></i> Flash deal</button>
          </div>
        </div>
        <div class="hero-visual">
          <span class="tag">Featured</span>
          <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=85" alt="Featured product" loading="eager">
          <span class="vertical-label">SYS.001 — 2026</span>
        </div>
      </div>
    </section>

    <!-- MARQUEE -->
    <div class="marquee" aria-hidden="true">
      <div class="marquee-track">
        <span><i class="fas fa-circle"></i> Free shipping over $150</span>
        <span><i class="fas fa-circle"></i> New drops every Friday</span>
        <span><i class="fas fa-circle"></i> Members get early access</span>
        <span><i class="fas fa-circle"></i> Carbon-neutral delivery</span>
        <span><i class="fas fa-circle"></i> 30-day returns</span>
        <span><i class="fas fa-circle"></i> Free shipping over $150</span>
        <span><i class="fas fa-circle"></i> New drops every Friday</span>
        <span><i class="fas fa-circle"></i> Members get early access</span>
        <span><i class="fas fa-circle"></i> Carbon-neutral delivery</span>
        <span><i class="fas fa-circle"></i> 30-day returns</span>
      </div>
    </div>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div>
            <span class="section-num">// 01 — Categories</span>
            <h2 id="cat-title">Browse by<br>system</h2>
          </div>
          <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="category-scroll" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div>
            <span class="section-num">// 02 — Trending</span>
            <h2 id="prod-title">Current<br>drops</h2>
          </div>
          <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
      <div class="container">
        <div class="section-header">
          <div>
            <span class="section-num">// 03 — Flash deal</span>
            <h2 id="deals-title">Limited<br>release</h2>
          </div>
        </div>
        <div class="deal-banner">
          <div class="deal-visual">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> 48H ONLY</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and absurdly powerful. The M2 chip redefines what a laptop can be.</p>
            <div class="price-big">$999 <span class="old">$1,199</span></div>
            <p class="stock">Only <strong>12</strong> units left</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
            </div>
            <button class="btn btn-magenta" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
      <div class="container">
        <div class="section-header">
          <div>
            <span class="section-num">// 04 — Signals</span>
            <h2 id="test-title">From the<br>network</h2>
          </div>
        </div>
        <div class="testimonials-grid" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" aria-labelledby="news-title">
      <div class="container">
        <div class="newsletter-box">
          <div class="text">
            <h3 id="news-title">Stay in<br>the loop</h3>
            <p>Exclusive drops, early access, zero spam.</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="YOUR@EMAIL.COM" aria-label="Email" required />
            <button class="btn btn-acid" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand">
            <i class="fas fa-cube"></i>
            <span>SYNTH<span class="slash">//</span>SHOP</span>
          </div>
          <p>Future essentials, curated. A demo store built for the next decade.</p>
          <div class="socials">
            <a href="#" aria-label="X"><i class="fab fa-x-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Company</h5>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Press</a></li>
            <li><a href="#">Journal</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Support</h5>
          <ul>
            <li><a href="#">Help Center</a></li>
            <li><a href="#">Shipping</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Legal</h5>
          <ul>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Terms</a></li>
            <li><a href="#">Cookies</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        <span>&copy; <span id="year"></span> SYNTH//SHOP — All rights reserved.</span>
        <span>SYS.VER 2.6.0 — Built for the future</span>
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'audio', name: 'Audio', icon: 'fa-headphones', count: 14 },
      { id: 'wearables', name: 'Wearables', icon: 'fa-watch', count: 21 },
      { id: 'computing', name: 'Computing', icon: 'fa-laptop', count: 9 },
      { id: 'apparel', name: 'Apparel', icon: 'fa-tshirt', count: 33 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 18 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-mobile-alt', count: 27 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'NEW',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'Computing' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'Computing' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'SALE',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'Wearables' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'NEW',
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'SALE',
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'Audio' }
    ];

    const TESTIMONIALS = [{
      name: 'Ava Martin',
      role: 'Verified buyer',
      avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
      text: 'Fast shipping and excellent support. The product exceeded my expectations.',
      stars: 5
    }, {
      name: 'Michael Lee',
      role: 'Frequent shopper',
      avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
      text: 'Great selection and smooth checkout. Will definitely shop again.',
      stars: 4
    }, {
      name: 'Sophia Chen',
      role: 'Designer',
      avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
      text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
      stars: 5
    }, {
      name: 'James Wilson',
      role: 'Tech enthusiast',
      avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
      text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
      stars: 5
    }];

    // ============================================================
    // STATE
    // ============================================================
    let cartCount = 0;

    // ============================================================
    // DOM REFS
    // ============================================================
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ============================================================
    // RENDER FUNCTIONS
    // ============================================================
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-pill';
        el.innerHTML = `
          <i class="fas ${cat.icon}"></i>
          <span>${cat.name}</span>
          <span class="count">/ ${cat.count}</span>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML =
          `<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted);font-family:var(--mono);text-transform:uppercase;letter-spacing:0.1em;font-size:0.7rem;">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        const badgeClass = p.badge === 'SALE' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating">
              ${stars} <span>(${p.reviews})</span>
            </div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      // Add to cart listeners
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id, this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>${escapeHtml(t.text)}</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
            <div>
              <div class="name">${escapeHtml(t.name)}</div>
              <div class="role">${escapeHtml(t.role)}</div>
            </div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ============================================================
    // UTILITY FUNCTIONS
    // ============================================================
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;'
      } [s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.4)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();

      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.innerHTML = orig;
          btnEl.classList.remove('added');
        }, 1500);
      }
      const cartBtn = document.getElementById('cartBtn');
      cartBtn.style.color = 'var(--acid)';
      setTimeout(() => cartBtn.style.color = '', 400);
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) {
        renderProducts(PRODUCTS);
        return;
      }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ============================================================
    // DEAL TIMER
    // ============================================================
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ============================================================
    // EVENT BINDINGS
    // ============================================================

    // Search
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') filterProducts(e.target.value);
    });

    // Mobile menu
    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
      mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    // Close mobile menu on link click
    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    // Hero buttons
    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    // Deal buy
    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added!';
      this.style.background = 'var(--cyan)';
      this.style.borderColor = 'var(--cyan)';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
        this.style.borderColor = '';
      }, 1600);
    });

    // Newsletter
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = 'var(--magenta)';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Thanks for subscribing!';
      newsletterMsg.style.color = 'var(--acid)';
      newsletterMsg.style.display = 'block';
      newsletterEmail.value = '';
      setTimeout(() => {
        newsletterMsg.style.display = 'none';
      }, 3500);
    });

    // Cart button click feedback
    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    // Year in footer
    document.getElementById('year').textContent = new Date().getFullYear();

    // ============================================================
    // INIT
    // ============================================================
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    // Close mobile menu on resize to desktop
    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('🚀 SYNTH//SHOP — future essentials loaded.');
  </script>

</body>
</html>
