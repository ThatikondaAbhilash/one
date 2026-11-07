<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · reimagined</title>
  
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    /* ========== GLOBAL RESET & VARIABLES ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fcfaf7;
      --bg-card: #ffffff;
      --primary: #1e1b2b;
      --primary-light: #322d44;
      --accent: #d96c4e;
      --accent-light: #fce8e2;
      --accent-dark: #b14e33;
      --muted: #6b6778;
      --muted-light: #9c98a8;
      --surface: #f2efec;
      --success: #2c9a7a;
      --warning: #e7b84b;
      --radius: 20px;
      --radius-sm: 12px;
      --shadow-sm: 0 6px 18px rgba(30, 27, 43, 0.04);
      --shadow-md: 0 12px 32px rgba(30, 27, 43, 0.08);
      --shadow-lg: 0 24px 56px rgba(30, 27, 43, 0.12);
      --transition: 0.22s cubic-bezier(0.2, 0, 0, 1);
      --container: 1280px;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      display: block;
      max-width: 100%;
    }

    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ========== UTILITIES ========== */
    .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 15px;
      transition: all var(--transition);
      border: 2px solid transparent;
      white-space: nowrap;
    }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(217, 108, 78, 0.28);
    }

    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      border-color: var(--primary-light);
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(30, 27, 43, 0.2);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.12);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.25);
      backdrop-filter: blur(4px);
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.22);
      border-color: rgba(255, 255, 255, 0.45);
      transform: translateY(-3px);
    }

    .btn-sm {
      padding: 8px 20px;
      font-size: 13px;
    }

    /* ========== HEADER (reimagined) ========== */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(252, 250, 247, 0.88);
      backdrop-filter: blur(18px);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(30, 27, 43, 0.04);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 12px 0;
      min-height: 72px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.7px;
      color: var(--primary);
      flex-shrink: 0;
    }
    .brand .accent {
      color: var(--accent);
    }
    .brand i {
      font-size: 28px;
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 7px;
      padding: 8px 18px;
      border-radius: 999px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: all var(--transition);
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: var(--surface);
      color: var(--primary);
    }
    nav.main-nav li a i {
      font-size: 14px;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
      flex-shrink: 0;
    }
    .header-actions .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--muted);
      transition: all var(--transition);
      position: relative;
    }
    .header-actions .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }

    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -1px;
      right: -1px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg);
      transition: transform 0.2s;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 999px;
      padding: 0 16px 0 18px;
      transition: all var(--transition);
      border: 2px solid transparent;
      min-width: 220px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px rgba(217, 108, 78, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 14px;
      color: var(--primary);
    }
    .search-wrap input::placeholder {
      color: var(--muted-light);
    }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: var(--muted);
      font-size: 15px;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      font-size: 20px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }
    .mobile-toggle:hover {
      background: var(--accent-light);
    }

    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(30, 27, 43, 0.04);
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
      padding: 12px 18px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: var(--surface);
    }
    #mobileMenu ul li a i {
      width: 22px;
      color: var(--muted);
    }

    /* ========== HERO (new visual language) ========== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 520px;
      padding: 60px 0;
      border-radius: 32px;
      overflow: hidden;
      margin: 24px 28px 0;
      background: linear-gradient(145deg, #1e1b2b 0%, #2f2a3f 100%);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1600&q=85') center/cover no-repeat;
      opacity: 0.45;
      mix-blend-mode: luminosity;
      z-index: 0;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 30% 40%, rgba(217, 108, 78, 0.25) 0%, transparent 60%);
      z-index: 1;
      pointer-events: none;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(217, 108, 78, 0.18);
      color: #ffb8a3;
      padding: 6px 18px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.4px;
      margin-bottom: 20px;
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.08);
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 56px;
      font-weight: 700;
      color: #fff;
      line-height: 1.1;
      max-width: 680px;
      margin-bottom: 20px;
      text-wrap: balance;
    }
    .hero p {
      color: rgba(255, 255, 255, 0.8);
      font-size: 18px;
      max-width: 540px;
      margin-bottom: 32px;
      line-height: 1.6;
    }
    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ========== SECTIONS ========== */
    .section {
      padding: 64px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 32px;
      font-weight: 700;
      letter-spacing: -0.5px;
      line-height: 1.2;
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 6px;
      font-size: 16px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 15px;
      transition: var(--transition);
      white-space: nowrap;
      padding: 6px 0;
    }
    .section-header .view-all:hover {
      gap: 14px;
      color: var(--accent-dark);
    }

    /* ========== CATEGORIES (modern pill grid) ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 14px 22px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: all var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-light);
      background: #fff;
    }
    .cat-card .icon-wrap {
      width: 60px;
      height: 60px;
      border-radius: 18px;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 26px;
      color: var(--accent);
      transition: all var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
      transform: scale(1.05) rotate(-3deg);
    }
    .cat-card h4 {
      font-size: 15px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
      margin-top: 4px;
    }

    /* ========== PRODUCTS (upgraded card) ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: all var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.35s ease;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.05);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      padding: 4px 14px;
      border-radius: 999px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.4px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.08);
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.92);
      display: grid;
      place-items: center;
      font-size: 17px;
      color: var(--muted);
      transition: all var(--transition);
      backdrop-filter: blur(4px);
      box-shadow: 0 2px 10px rgba(0,0,0,0.04);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.1);
    }
    .product-card .body {
      padding: 18px 18px 10px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 16px;
      font-weight: 600;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 19px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 5px;
      font-size: 13px;
      color: #f5a623;
      letter-spacing: 1px;
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
      letter-spacing: normal;
    }
    .product-card .footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 11px;
      border-radius: 999px;
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: all var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
      box-shadow: 0 6px 16px rgba(217, 108, 78, 0.25);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
    }

    /* ========== DEAL (glass / modern split) ========== */
    .deal-wrap {
      display: flex;
      background: var(--bg-card);
      border-radius: 28px;
      overflow: hidden;
      box-shadow: var(--shadow-md);
      border: 1px solid rgba(255,255,255,0.7);
      backdrop-filter: blur(2px);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 360px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 44px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      background: linear-gradient(to right, #fff, #fefcf9);
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 5px 18px;
      border-radius: 999px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 16px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 34px;
      font-weight: 700;
      letter-spacing: -0.5px;
      margin-bottom: 8px;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 20px;
      font-size: 16px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 38px;
      font-weight: 800;
      color: var(--primary);
      letter-spacing: -0.5px;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
      letter-spacing: normal;
    }
    .deal-wrap .deal-content .stock {
      font-size: 15px;
      color: var(--muted);
      margin: 8px 0 16px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
    }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 16px 0 24px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 10px 18px;
      border-radius: 16px;
      min-width: 74px;
      text-align: center;
      box-shadow: 0 8px 18px rgba(30, 27, 43, 0.08);
    }
    .timer-box .num {
      font-size: 28px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.7px;
    }

    /* ========== TESTIMONIALS (elegant cards) ========== */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 6px 4px 18px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 5px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-light);
      border-radius: 999px;
    }
    .testimonial-card {
      flex: 0 0 360px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 30px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: all var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-md);
      transform: translateY(-4px);
    }
    .testimonial-card .stars {
      color: #f5a623;
      font-size: 18px;
      letter-spacing: 3px;
      margin-bottom: 12px;
    }
    .testimonial-card blockquote {
      font-size: 16px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 18px;
      font-style: italic;
      quotes: "“" "”";
    }
    .testimonial-card blockquote::before {
      content: "“";
      font-size: 40px;
      line-height: 0;
      vertical-align: -14px;
      color: var(--accent-light);
      margin-right: 2px;
      font-family: 'Playfair Display', serif;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
      border: 2px solid var(--accent-light);
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 15px;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--muted);
    }

    /* ========== NEWSLETTER (soft gradient) ========== */
    .newsletter-wrap {
      background: linear-gradient(145deg, #1e1b2b 0%, #2a2538 100%);
      border-radius: 32px;
      padding: 56px 64px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: var(--shadow-md);
    }
    .newsletter-wrap .text h3 {
      font-size: 30px;
      font-weight: 700;
      margin-bottom: 6px;
    }
    .newsletter-wrap .text p {
      opacity: 0.75;
      font-size: 16px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 520px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 220px;
      padding: 15px 22px;
      border-radius: 999px;
      border: 0;
      font-size: 15px;
      background: rgba(255, 255, 255, 0.10);
      color: #fff;
      transition: all var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.18);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 15px 36px;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg {
      margin-top: 12px;
      font-size: 14px;
      opacity: 0.9;
      width: 100%;
      display: none;
    }

    /* ========== FOOTER (clean & airy) ========== */
    footer {
      margin-top: 32px;
      padding: 56px 0 32px;
      border-top: 1px solid rgba(30, 27, 43, 0.04);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2.2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 48px;
    }
    .footer-grid .brand-col .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 320px;
      line-height: 1.7;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }
    .footer-grid .brand-col .socials a {
      width: 42px;
      height: 42px;
      border-radius: 14px;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: all var(--transition);
      font-size: 17px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
      transform: translateY(-3px);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 15px;
      margin-bottom: 16px;
      color: var(--primary);
      letter-spacing: 0.2px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
      padding-left: 3px;
    }
    .footer-bottom {
      text-align: center;
      padding-top: 26px;
      border-top: 1px solid rgba(30, 27, 43, 0.04);
      color: var(--muted-light);
      font-size: 13px;
      letter-spacing: 0.2px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1.6fr 1fr 1fr;
        gap: 36px;
      }
      .hero h1 {
        font-size: 48px;
      }
    }

    @media (max-width: 992px) {
      .hero h1 {
        font-size: 38px;
      }
      .hero {
        min-height: 420px;
        margin: 20px 20px 0;
        padding: 44px 0;
        border-radius: 28px;
      }
      .deal-wrap {
        flex-direction: column;
      }
      .deal-wrap .deal-img {
        flex: 0 0 260px;
      }
      .deal-wrap .deal-content {
        padding: 32px 32px;
      }
      .newsletter-wrap {
        padding: 40px 36px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
      .search-wrap {
        min-width: 160px;
      }
    }

    @media (max-width: 768px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 16px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 14px;
      }
      .hero h1 {
        font-size: 32px;
      }
      .hero p {
        font-size: 16px;
      }
      .section-header .title-group h2 {
        font-size: 26px;
      }
      .deal-wrap .deal-content h3 {
        font-size: 26px;
      }
      .deal-wrap .deal-content .price-big {
        font-size: 30px;
      }
      .timer-box {
        min-width: 60px;
        padding: 8px 14px;
      }
      .timer-box .num {
        font-size: 22px;
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 28px;
      }
      .brand {
        font-size: 20px;
      }
      .brand i {
        font-size: 22px;
      }
      .search-wrap {
        min-width: 130px;
        padding: 0 12px 0 16px;
      }
      .search-wrap input {
        font-size: 13px;
        padding: 9px 0;
      }
      .header-actions .icon-btn {
        width: 38px;
        height: 38px;
        font-size: 16px;
      }
      .cart-count {
        width: 18px;
        height: 18px;
        font-size: 10px;
      }
      .testimonial-card {
        flex: 0 0 300px;
      }
      .hero .actions .btn {
        padding: 10px 22px;
        font-size: 14px;
      }
      .section {
        padding: 44px 0;
      }
    }

    @media (max-width: 500px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .hero {
        margin: 12px 12px 0;
        min-height: 320px;
        padding: 32px 0;
        border-radius: 20px;
      }
      .hero h1 {
        font-size: 26px;
      }
      .container {
        padding: 0 16px;
      }
      .deal-wrap .deal-content {
        padding: 24px 20px;
      }
      .deal-wrap .deal-img {
        flex: 0 0 200px;
      }
      .newsletter-wrap {
        padding: 32px 22px;
        border-radius: 24px;
      }
      .newsletter-wrap .text h3 {
        font-size: 24px;
      }
      .product-card .body {
        padding: 14px 12px 8px;
      }
      .product-card .body h5 {
        font-size: 14px;
      }
      .product-card .body .price {
        font-size: 16px;
      }
      .product-card .footer {
        padding: 0 12px 14px;
      }
      .product-card .footer .add-btn {
        font-size: 13px;
        padding: 9px;
      }
      .timer-box {
        min-width: 52px;
        padding: 6px 10px;
      }
      .timer-box .num {
        font-size: 18px;
      }
      .timer-box .label {
        font-size: 9px;
      }
      .cat-card {
        padding: 18px 10px;
      }
      .cat-card .icon-wrap {
        width: 48px;
        height: 48px;
        font-size: 20px;
        border-radius: 14px;
      }
      .cat-card h4 {
        font-size: 13px;
      }
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
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:10px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
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
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO -->
    <section class="hero" aria-label="Hero banner">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover Premium <br>Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="cat-title">Browse Categories</h2>
            <p>Find exactly what you're looking for</p>
          </div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="prod-title">Trending Now</h2>
            <p>What's hot — popular picks from our community</p>
          </div>
          <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="deals-title">⚡ Flash Deal</h2>
            <p>Grab it before it's gone — limited stock</p>
          </div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
            <div>
              <span class="price-big">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> items left — hurry!</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box">
                <div class="num" id="dealDays">0</div>
                <div class="label">Days</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealHours">00</div>
                <div class="label">Hours</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealMinutes">00</div>
                <div class="label">Mins</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealSeconds">00</div>
                <div class="label">Secs</div>
              </div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="test-title">What Our Customers Say</h2>
            <p>Real reviews from real people</p>
          </div>
        </div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" aria-labelledby="news-title">
      <div class="container">
        <div class="newsletter-wrap">
          <div class="text">
            <h3 id="news-title">Stay in the Loop</h3>
            <p>Get exclusive offers, early access & new arrivals</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
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
            <i class="fas fa-store-alt"></i>
            <span>Nexus<span class="accent">Shop</span></span>
          </div>
          <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
          <div class="socials">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Company</h5>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Press</a></li>
            <li><a href="#">Blog</a></li>
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
        &copy; <span id="year"></span> NexusShop. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' }
    ];

    const TESTIMONIALS = [{
      name: 'Ava Martin',
      role: 'Verified Buyer',
      avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
      text: 'Fast shipping and excellent support. The product exceeded my expectations!',
      stars: 5
    }, {
      name: 'Michael Lee',
      role: 'Frequent Shopper',
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
      role: 'Tech Enthusiast',
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
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="count">${cat.count} items</div>
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
          `<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted);font-size:16px;">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
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
      cartCountEl.style.transform = 'scale(1.3)';
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
      cartBtn.style.color = 'var(--accent)';
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
      this.style.background = 'var(--success)';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
      }, 1600);
    });

    // Newsletter
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#ffb3b3';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Thanks for subscribing!';
      newsletterMsg.style.color = '#a8e6cf';
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

    console.log('🚀 NexusShop — reimagined e‑commerce experience.');
  </script>

</body>
</html>
