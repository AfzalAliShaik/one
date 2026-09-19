<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · Simple & Modern</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- GLOBAL RESET / SIMPLICITY ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: #f7f8fa;
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      color: #1e1e2a;
      line-height: 1.4;
      padding: 2rem 1.5rem;
    }

    /* ---------- TYPOGRAPHY & COLOR ---------- */
    h1, h2, h3 {
      font-weight: 600;
      letter-spacing: -0.02em;
    }

    h1 {
      font-size: 2.2rem;
      font-weight: 700;
      color: #0b0b1a;
      margin-bottom: 0.25rem;
    }

    .subhead {
      font-size: 1rem;
      color: #5b5b6b;
      margin-bottom: 2.5rem;
      font-weight: 400;
      border-left: 4px solid #0b0b1a;
      padding-left: 1rem;
    }

    /* ---------- SIMPLE LAYOUT ---------- */
    .shop-container {
      max-width: 1280px;
      margin: 0 auto;
    }

    /* header area — minimal */
    .simple-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1rem;
      margin-bottom: 2rem;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 0.6rem;
    }

    .brand i {
      font-size: 2rem;
      color: #0b0b1a;
    }

    .brand span {
      font-size: 1.6rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: #0b0b1a;
    }

    .simple-actions {
      display: flex;
      gap: 1rem;
      align-items: center;
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: #2d2d44;
      cursor: default; /* just visual, no interaction required */
      padding: 0.3rem;
    }

    /* ---------- ALL ITEMS ON FRONT PAGE — GRID ---------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 1.75rem;
      margin: 2rem 0 1rem;
    }

    /* clean card */
    .product-card {
      background: #ffffff;
      border-radius: 20px;
      padding: 1.25rem 1rem 1.5rem;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
      transition: all 0.15s ease;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      border: 1px solid #ececf0;
    }

    .product-card:hover {
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.04);
      border-color: #d0d0dd;
      transform: translateY(-3px);
    }

    /* product visual placeholder — minimal shapes */
    .product-visual {
      width: 100%;
      aspect-ratio: 1 / 1;
      background: #f2f3f7;
      border-radius: 16px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2.8rem;
      color: #2d2d44;
      margin-bottom: 1rem;
      transition: background 0.2s;
    }

    .product-card:hover .product-visual {
      background: #e9eaf0;
    }

    .product-name {
      font-size: 1.1rem;
      font-weight: 600;
      margin-bottom: 0.25rem;
      color: #0b0b1a;
      letter-spacing: -0.01em;
    }

    .product-price {
      font-size: 1rem;
      font-weight: 600;
      color: #0b0b1a;
      background: #f2f3f7;
      padding: 0.3rem 0.9rem;
      border-radius: 40px;
      display: inline-block;
      margin: 0.5rem 0 0.2rem;
    }

    /* tiny meta detail — rating / category (optional) */
    .product-meta {
      font-size: 0.8rem;
      color: #77778a;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.4rem;
      margin-bottom: 0.75rem;
    }

    .product-meta i {
      font-size: 0.7rem;
      color: #f5b342;
    }

    /* minimal "add" button — only visual, no action */
    .add-simple {
      margin-top: 0.8rem;
      font-size: 0.8rem;
      font-weight: 500;
      color: #1e1e2a;
      background: transparent;
      border: 1.5px solid #d0d0dd;
      border-radius: 40px;
      padding: 0.5rem 1.2rem;
      display: inline-flex;
      align-items: center;
      gap: 0.4rem;
      cursor: default;
      transition: 0.1s;
    }

    .product-card:hover .add-simple {
      background: #0b0b1a;
      color: #ffffff;
      border-color: #0b0b1a;
    }

    /* ---------- HORIZONTAL SCROLL / ALL ITEMS CLEARLY VISIBLE ---------- */
    /* we keep grid — every item is on the front page, no pagination, no tabs */

    /* ---------- FOOTNOTE / SIMPLE FOOTER ---------- */
    .simple-footer {
      margin-top: 4rem;
      padding-top: 1.5rem;
      border-top: 1px solid #e2e2ea;
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 0.85rem;
      color: #6b6b7e;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .footer-icons i {
      margin-left: 1.2rem;
      font-size: 1rem;
      color: #9a9aad;
      cursor: default;
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 600px) {
      body { padding: 1.5rem 1rem; }
      h1 { font-size: 1.8rem; }
      .product-grid { gap: 1rem; grid-template-columns: repeat(2, 1fr); }
      .product-visual { font-size: 2rem; }
      .product-name { font-size: 0.95rem; }
      .product-price { font-size: 0.9rem; }
      .add-simple { font-size: 0.7rem; padding: 0.4rem 1rem; }
      .simple-header { flex-direction: column; align-items: flex-start; }
    }

    @media (max-width: 380px) {
      .product-grid { grid-template-columns: 1fr; }
    }

    /* hide any leftover complex stuff — everything is flat and clear */
    .no-complexity {
      display: none;
    }

    /* make sure all items are visible, no filters/hidden sections */
    .all-items-visible {
      display: block;
    }
  </style>
</head>
<body>
  <div class="shop-container">
    <!-- SIMPLE HEADER — no mega menu, no search bar overload -->
    <div class="simple-header">
      <div class="brand">
        <i class="fas fa-cube"></i>
        <span>NexusShop</span>
      </div>
      <div class="simple-actions">
        <i class="far fa-heart icon-btn"></i>
        <i class="far fa-user icon-btn"></i>
        <i class="fas fa-shopping-bag icon-btn"></i>
      </div>
    </div>

    <!-- TITLE + SUBTITLE (minimal) -->
    <h1>Everything in one place</h1>
    <div class="subhead">All products · no clutter · straight to the point</div>

    <!-- ========== ALL ITEMS ON FRONT PAGE ========== -->
    <div class="product-grid">
      <!-- 1 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-headphones"></i></div>
        <div class="product-name">Aura Buds</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.8 · Audio</div>
        <div class="product-price">$89</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 2 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-clock"></i></div>
        <div class="product-name">Pulse Watch</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.9 · Wearable</div>
        <div class="product-price">$199</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 3 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-laptop"></i></div>
        <div class="product-name">Zephyr Book</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.7 · Laptop</div>
        <div class="product-price">$1299</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 4 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-camera"></i></div>
        <div class="product-name">Lumina Cam</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.9 · Photo</div>
        <div class="product-price">$449</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 5 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-mobile-alt"></i></div>
        <div class="product-name">Nova Phone</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.8 · Mobile</div>
        <div class="product-price">$799</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 6 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-gamepad"></i></div>
        <div class="product-name">Reactor Pad</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.6 · Gaming</div>
        <div class="product-price">$59</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 7 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-tv"></i></div>
        <div class="product-name">Vision 4K</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.7 · Display</div>
        <div class="product-price">$699</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 8 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-keyboard"></i></div>
        <div class="product-name">TypeMaster</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.8 · Accessory</div>
        <div class="product-price">$129</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 9 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-mouse"></i></div>
        <div class="product-name">Glide Mouse</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.7 · Accessory</div>
        <div class="product-price">$39</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 10 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-battery-full"></i></div>
        <div class="product-name">Volt Core</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.9 · Power</div>
        <div class="product-price">$79</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 11 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-wifi"></i></div>
        <div class="product-name">Mesh Router</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.6 · Network</div>
        <div class="product-price">$159</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 12 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-print"></i></div>
        <div class="product-name">InkFlow</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.5 · Office</div>
        <div class="product-price">$249</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 13 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-microchip"></i></div>
        <div class="product-name">Core i9</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.9 · Component</div>
        <div class="product-price">$599</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 14 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-hdd"></i></div>
        <div class="product-name">Vault SSD</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.8 · Storage</div>
        <div class="product-price">$189</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 15 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-chair"></i></div>
        <div class="product-name">Ergo Throne</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.7 · Furniture</div>
        <div class="product-price">$299</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
      <!-- 16 -->
      <div class="product-card">
        <div class="product-visual"><i class="fas fa-lightbulb"></i></div>
        <div class="product-name">Glow Smart</div>
        <div class="product-meta"><i class="fas fa-star"></i> 4.6 · Smart Home</div>
        <div class="product-price">$49</div>
        <div class="add-simple"><i class="fas fa-plus"></i> Add</div>
      </div>
    </div>
    <!-- end product grid — every single item is visible on the front page -->

    <!-- simple, quiet footer -->
    <div class="simple-footer">
      <span>© NexusShop — all items on one page</span>
      <div class="footer-icons">
        <i class="fab fa-instagram"></i>
        <i class="fab fa-x-twitter"></i>
        <i class="fab fa-github"></i>
      </div>
    </div>
  </div>
</body>
</html>
