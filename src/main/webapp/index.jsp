<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · Modern E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Poppins:wght@600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & base ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafcfc;
      color: #0a1e2f;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    img {
      display: block;
      max-width: 100%;
      height: auto;
    }

    /* ----- container & utilities ----- */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    .section-title {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.02em;
    }

    .muted {
      color: #5e6f8d;
    }

    .flex {
      display: flex;
      align-items: center;
      gap: 1rem;
      flex-wrap: wrap;
    }

    /* ----- buttons ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      padding: 0.7rem 1.6rem;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: all 0.2s ease;
      background: transparent;
    }

    .btn-primary {
      background: #0a2540;
      color: white;
      box-shadow: 0 8px 18px -6px rgba(10, 37, 64, 0.2);
    }
    .btn-primary:hover {
      background: #153b5c;
      transform: translateY(-2px);
      box-shadow: 0 12px 24px -8px rgba(10, 37, 64, 0.25);
    }

    .btn-accent {
      background: #00c8ff;
      color: #042233;
      box-shadow: 0 8px 18px -6px rgba(0, 200, 255, 0.3);
    }
    .btn-accent:hover {
      background: #00b0e0;
      transform: translateY(-2px);
    }

    .btn-outline {
      border: 2px solid rgba(255, 255, 255, 0.25);
      color: white;
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.08);
      border-color: rgba(255, 255, 255, 0.5);
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.25rem;
      color: #1a2f44;
      padding: 0.4rem;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.15s;
    }
    .icon-btn:hover {
      background: #eef3f7;
      color: #00b0e0;
    }

    /* ----- header (sticky) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(10, 37, 64, 0.05);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0.8rem 0;
      gap: 1rem;
    }

    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      color: #0a1e2f;
      display: flex;
      align-items: center;
      gap: 0.3rem;
    }
    .brand .accent {
      color: #00c8ff;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 0.4rem;
      list-style: none;
    }
    .nav-links li a {
      padding: 0.5rem 1rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: 0.15s;
      color: #1a2f44;
    }
    .nav-links li a:hover,
    .nav-links li a.active {
      background: #eef3f7;
      color: #0a2540;
    }
    .nav-links li a i {
      margin-right: 0.4rem;
      opacity: 0.7;
    }

    .search-box {
      display: flex;
      align-items: center;
      background: #f0f4f8;
      border-radius: 60px;
      padding: 0.3rem 0.3rem 0.3rem 1.2rem;
      min-width: 220px;
      transition: 0.2s;
    }
    .search-box:focus-within {
      background: white;
      box-shadow: 0 0 0 3px rgba(0, 200, 255, 0.2);
    }
    .search-box input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.9rem;
      padding: 0.5rem 0;
      color: #0a1e2f;
    }
    .search-box input::placeholder {
      color: #7a8aa0;
    }
    .search-box button {
      background: #0a2540;
      color: white;
      border: none;
      border-radius: 60px;
      padding: 0.5rem 1.1rem;
      cursor: pointer;
      font-size: 0.9rem;
      transition: 0.15s;
    }
    .search-box button:hover {
      background: #153b5c;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 0.6rem;
    }
    .cart-icon {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 0.3rem;
      font-size: 1.2rem;
      padding: 0.3rem 0.8rem 0.3rem 0.5rem;
      border-radius: 40px;
      transition: 0.15s;
      background: transparent;
    }
    .cart-icon:hover {
      background: #eef3f7;
    }
    .cart-count {
      background: #00c8ff;
      color: #042233;
      font-weight: 700;
      font-size: 0.7rem;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: inline-grid;
      place-items: center;
      line-height: 1;
      margin-left: 0.1rem;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: #0a1e2f;
      cursor: pointer;
    }

    /* mobile menu */
    .mobile-menu {
      display: none;
      background: white;
      border-top: 1px solid rgba(10, 37, 64, 0.05);
      padding: 1rem 0;
    }
    .mobile-menu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 0.3rem;
    }
    .mobile-menu ul li a {
      display: block;
      padding: 0.7rem 1rem;
      font-weight: 500;
      border-radius: 12px;
      transition: 0.15s;
    }
    .mobile-menu ul li a:hover {
      background: #f0f4f8;
    }

    /* ----- hero ----- */
    .hero {
      background: linear-gradient(135deg, #0a1e2f 0%, #1d3a57 100%);
      border-radius: 28px;
      margin: 1.5rem auto 0;
      padding: 4rem 3rem;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
      background-image: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=800&q=80');
      background-size: cover;
      background-position: center;
      background-blend-mode: overlay;
    }
    .hero-content {
      max-width: 600px;
    }
    .hero-content h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.6rem;
      letter-spacing: -0.02em;
      line-height: 1.2;
      margin-bottom: 0.6rem;
    }
    .hero-content p {
      opacity: 0.9;
      margin-bottom: 1.8rem;
      font-size: 1.05rem;
    }
    .hero-badge {
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(4px);
      padding: 0.3rem 1.2rem;
      border-radius: 60px;
      font-weight: 500;
      font-size: 0.85rem;
      display: inline-block;
      margin-bottom: 1rem;
      border: 1px solid rgba(255, 255, 255, 0.08);
    }

    /* ----- sections ----- */
    .section {
      padding: 3rem 0 2rem;
    }

    /* categories */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 1.2rem;
      margin-top: 1.8rem;
    }
    .cat-card {
      background: white;
      border-radius: 20px;
      padding: 1.6rem 0.8rem;
      text-align: center;
      box-shadow: 0 8px 24px -8px rgba(10, 37, 64, 0.06);
      transition: all 0.2s ease;
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: #00c8ff30;
      box-shadow: 0 16px 32px -12px rgba(10, 37, 64, 0.12);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: #00c8ff;
      margin-bottom: 0.4rem;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 1.8rem;
      margin-top: 2rem;
    }
    .product-card {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 8px 24px -8px rgba(10, 37, 64, 0.04);
      transition: all 0.25s ease;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 40px -12px rgba(10, 37, 64, 0.12);
    }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      background: #f0f4f8;
    }
    .product-body {
      padding: 1rem 1rem 0.6rem;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 0.2rem;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: #5e6f8d;
      background: #f0f4f8;
      padding: 0.2rem 0.8rem;
      border-radius: 60px;
      display: inline-block;
      margin: 0.3rem 0 0.6rem;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      flex-wrap: wrap;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
      color: #0a1e2f;
    }
    .old-price {
      color: #7a8aa0;
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .rating {
      color: #f5b342;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 0.3rem;
    }
    .product-footer {
      padding: 0.6rem 1rem 1rem;
      display: flex;
      gap: 0.6rem;
      border-top: 1px solid #f0f4f8;
    }
    .product-footer .add-btn {
      flex: 1;
      background: #0a2540;
      color: white;
      border: none;
      padding: 0.6rem 0;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.85rem;
      cursor: pointer;
      transition: 0.15s;
    }
    .product-footer .add-btn:hover {
      background: #1d3a57;
    }
    .wish-btn {
      background: transparent;
      border: 1px solid #e2e8f0;
      border-radius: 40px;
      padding: 0 1rem;
      cursor: pointer;
      transition: 0.15s;
      font-size: 0.9rem;
    }
    .wish-btn:hover {
      background: #fef2f2;
      border-color: #f87171;
      color: #dc2626;
    }

    /* deal section */
    .deal-card {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      display: flex;
      flex-wrap: wrap;
      box-shadow: 0 12px 32px -12px rgba(10, 37, 64, 0.08);
      margin-top: 2rem;
    }
    .deal-card img {
      width: 100%;
      height: 280px;
      object-fit: cover;
      flex: 1 1 300px;
    }
    .deal-content {
      flex: 2 1 300px;
      padding: 2rem 2.2rem;
    }
    .deal-content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
    }
    .timer {
      display: flex;
      gap: 0.6rem;
      margin: 1.2rem 0;
    }
    .time-box {
      background: #0a2540;
      color: white;
      padding: 0.6rem 1rem;
      border-radius: 16px;
      min-width: 68px;
      text-align: center;
    }
    .time-box span {
      font-size: 1.6rem;
      font-weight: 700;
      display: block;
      line-height: 1.2;
    }
    .time-box small {
      font-size: 0.7rem;
      opacity: 0.7;
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 1.6rem;
      overflow-x: auto;
      padding: 0.8rem 0.2rem 1.2rem;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      min-width: 280px;
      background: white;
      padding: 1.8rem;
      border-radius: 24px;
      box-shadow: 0 8px 24px -8px rgba(10, 37, 64, 0.04);
      scroll-snap-align: start;
      flex-shrink: 0;
    }
    .testimonial-card .stars {
      color: #f5b342;
      letter-spacing: 2px;
      font-size: 1rem;
    }

    /* newsletter */
    .newsletter-box {
      background: #0a2540;
      color: white;
      border-radius: 32px;
      padding: 2.8rem 2rem;
      text-align: center;
      margin-top: 1.5rem;
    }
    .newsletter-box h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      gap: 0.6rem;
      flex-wrap: wrap;
      margin-top: 1.4rem;
    }
    .newsletter-box input {
      padding: 0.7rem 1.4rem;
      border-radius: 60px;
      border: none;
      min-width: 240px;
      font-size: 0.95rem;
      outline: none;
      background: rgba(255, 255, 255, 0.08);
      color: white;
      border: 1px solid rgba(255, 255, 255, 0.1);
    }
    .newsletter-box input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }
    .newsletter-box input:focus {
      background: rgba(255, 255, 255, 0.14);
    }

    /* footer */
    footer {
      padding: 2.5rem 0 1.5rem;
      border-top: 1px solid #eef3f7;
      margin-top: 2rem;
      color: #5e6f8d;
    }
    .footer-links {
      display: flex;
      flex-wrap: wrap;
      gap: 2.5rem;
      justify-content: space-between;
    }
    .footer-links .col {
      display: flex;
      flex-direction: column;
      gap: 0.3rem;
    }
    .footer-links .col strong {
      color: #0a1e2f;
      font-weight: 600;
      margin-bottom: 0.4rem;
    }

    /* responsive */
    @media (max-width: 992px) {
      .nav-links {
        display: none;
      }
      .mobile-toggle {
        display: block;
      }
      .search-box {
        min-width: 150px;
      }
    }

    @media (max-width: 768px) {
      .hero {
        padding: 2.5rem 1.5rem;
        border-radius: 20px;
      }
      .hero-content h1 {
        font-size: 2rem;
      }
      .header-inner {
        flex-wrap: wrap;
      }
      .search-box {
        order: 3;
        flex: 1 1 100%;
        margin-top: 0.4rem;
      }
    }

    @media (max-width: 480px) {
      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
      }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div class="flex">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand">Nexus<span class="accent">Shop</span></a>
    </div>

    <ul class="nav-links" id="navLinks">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
    </ul>

    <div class="flex" style="gap:0.4rem;">
      <div class="search-box">
        <input type="text" id="searchInput" placeholder="Search products..." aria-label="Search" />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <a href="#" class="cart-icon" id="cartBtn">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div class="mobile-menu" id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#newsletter">Newsletter</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="container hero">
    <div class="hero-content">
      <span class="hero-badge"><i class="fas fa-bolt"></i> Winter Collection 2026</span>
      <h1>Premium picks <br />made for you</h1>
      <p>Discover the latest in fashion, tech & accessories. Enjoy free shipping on selected items.</p>
      <div class="flex">
        <button class="btn btn-accent" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div style="flex:1;min-width:120px;"></div>
  </section>

  <!-- categories -->
  <section class="section container" id="categories">
    <div class="flex" style="justify-content:space-between;">
      <h2 class="section-title">Shop by category</h2>
      <span class="muted" style="font-size:0.9rem;">Browse our curated collections</span>
    </div>
    <div class="category-grid" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container">
    <div class="flex" style="justify-content:space-between;">
      <h2 class="section-title">Trending now</h2>
      <span class="muted" style="font-size:0.9rem;">Popular picks this week</span>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section class="section container" id="deals">
    <div class="flex" style="justify-content:space-between;">
      <h2 class="section-title">Flash sale</h2>
      <span class="muted">Limited time offer</span>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" />
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and incredibly powerful.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><span id="dealDays">0</span><small>Days</small></div>
          <div class="time-box"><span id="dealHours">00</span><small>Hrs</small></div>
          <div class="time-box"><span id="dealMinutes">00</span><small>Min</small></div>
          <div class="time-box"><span id="dealSeconds">00</span><small>Sec</small></div>
        </div>
        <div class="flex" style="gap:1rem;flex-wrap:wrap;">
          <span class="price" style="font-size:2rem;">$999</span>
          <span class="old-price" style="font-size:1.2rem;">$1,199</span>
          <span style="background:#dc2626;color:white;padding:0.2rem 1rem;border-radius:40px;font-weight:600;">-17%</span>
        </div>
        <p style="margin:0.8rem 0 0;">Only <strong>12</strong> items left at this price</p>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:1rem;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container">
    <h2 class="section-title">What our customers say</h2>
    <div class="testimonial-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p style="margin:0.6rem 0;">"Fast shipping and excellent support. The product exceeded my expectations!"</p>
        <div class="flex"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar" /><div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div></div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★☆</div>
        <p style="margin:0.6rem 0;">"Great selection and smooth checkout. Will definitely shop again."</p>
        <div class="flex"><img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar" /><div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div></div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p style="margin:0.6rem 0;">"Amazing quality and the customer service is top notch."</p>
        <div class="flex"><img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=60&h=60&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar" /><div><strong>James Park</strong><div class="muted" style="font-size:0.8rem;">Top contributor</div></div></div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section container" id="newsletter">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p style="opacity:0.8;">Get exclusive offers &amp; new arrivals</p>
      <form id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button class="btn btn-accent" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:0.8rem;font-size:0.9rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-links">
      <div>
        <div style="font-weight:700;font-size:1.2rem;color:#0a1e2f;">NexusShop</div>
        <p class="muted" style="max-width:280px;margin-top:0.3rem;">Modern e‑commerce demo built with love.</p>
        <div class="flex" style="margin-top:0.6rem;">
          <a href="#" class="icon-btn"><i class="fab fa-facebook"></i></a>
          <a href="#" class="icon-btn"><i class="fab fa-twitter"></i></a>
          <a href="#" class="icon-btn"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="col"><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div class="col"><strong>Support</strong><a href="#">Help center</a><a href="#">Shipping</a><a href="#">Contact</a></div>
    </div>
    <div style="text-align:center;margin-top:2rem;color:#7a8aa0;font-size:0.8rem;">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ---------- data ----------
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' },
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
  ];

  // ---------- render ----------
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  let cartCount = 0;

  function renderCategories() {
    categoriesGrid.innerHTML = CATEGORIES.map(c => `
      <div class="cat-card" data-cat="${c.id}">
        <div class="icon"><i class="fas ${c.icon}"></i></div>
        <h4>${c.name}</h4>
      </div>
    `).join('');
    categoriesGrid.querySelectorAll('.cat-card').forEach(el => {
      el.addEventListener('click', () => {
        const name =
