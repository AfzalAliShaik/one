<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #fafaf8;
            --bg-card: #ffffff;
            --primary: #1a1a2e;
            --primary-light: #2d2d44;
            --accent: #e94560;
            --accent-hover: #d63851;
            --text: #1a1a2e;
            --text-muted: #6b7280;
            --border: #e8e8ed;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.04);
            --shadow-md: 0 4px 16px rgba(0,0,0,0.06);
            --shadow-lg: 0 12px 32px rgba(0,0,0,0.10);
            --radius: 14px;
            --radius-sm: 8px;
            --font: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
        }

        /* ========== RESET ========== */
        * { margin: 0; padding: 0; box-sizing: border-box; }

        html { scroll-behavior: smooth; }

        body {
            font-family: var(--font);
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        a { text-decoration: none; color: inherit; }
        button { font-family: inherit; cursor: pointer; border: none; background: none; }
        input { font-family: inherit; }
        img { max-width: 100%; display: block; }

        /* ========== CONTAINER ========== */
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== HEADER ========== */
        .site-header {
            background: rgba(255,255,255,0.95);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 1.35rem;
            letter-spacing: -0.03em;
            color: var(--primary);
            flex-shrink: 0;
        }

        .brand i {
            font-size: 1.5rem;
            color: var(--accent);
        }

        .search-bar {
            flex: 1;
            max-width: 480px;
            display: flex;
            align-items: center;
            gap: 10px;
            background: #f3f4f6;
            border: 1px solid var(--border);
            border-radius: 50px;
            padding: 0 18px;
            height: 42px;
            transition: all 0.2s;
        }

        .search-bar:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(233,69,96,0.08);
        }

        .search-bar i {
            color: var(--text-muted);
            font-size: 0.9rem;
        }

        .search-bar input {
            flex: 1;
            border: none;
            background: transparent;
            outline: none;
            font-size: 0.9rem;
            color: var(--text);
        }

        .search-bar input::placeholder {
            color: var(--text-muted);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-shrink: 0;
        }

        .icon-link {
            display: flex;
            align-items: center;
            gap: 6px;
            color: var(--primary);
            font-size: 0.9rem;
            font-weight: 500;
            transition: color 0.2s;
            position: relative;
        }

        .icon-link:hover { color: var(--accent); }

        .cart-link { position: relative; }

        .cart-badge {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--accent);
            color: #fff;
            font-size: 0.65rem;
            font-weight: 700;
            min-width: 18px;
            height: 18px;
            border-radius: 9px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 5px;
        }

        /* ========== HERO ========== */
        .hero {
            text-align: center;
            padding: 56px 0 40px;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 2.8rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            color: var(--primary);
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.05rem;
            color: var(--text-muted);
            font-weight: 400;
        }

        /* ========== PRODUCT GRID ========== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            gap: 24px;
            padding-bottom: 64px;
        }

        .product-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            transition: all 0.25s ease;
            box-shadow: var(--shadow-sm);
        }

        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }

        .product-visual-link { width: 100%; }

        .product-visual {
            width: 100%;
            aspect-ratio: 1 / 1;
            background: linear-gradient(135deg, #f3f4f6 0%, #e8e8ed 100%);
            border-radius: var(--radius-sm);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: var(--primary-light);
            margin-bottom: 16px;
            transition: all 0.25s;
        }

        .product-card:hover .product-visual {
            background: linear-gradient(135deg, #e8e8ed 0%, #dcdce4 100%);
            color: var(--accent);
        }

        .product-name {
            font-size: 1.05rem;
            font-weight: 600;
            color: var(--primary);
            margin-bottom: 4px;
            letter-spacing: -0.01em;
        }

        .product-meta {
            font-size: 0.78rem;
            color: var(--text-muted);
            display: flex;
            align-items: center;
            gap: 5px;
            margin-bottom: 10px;
        }

        .product-meta i { color: #f5b342; font-size: 0.72rem; }

        .product-price {
            font-size: 1.2rem;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 14px;
            letter-spacing: -0.02em;
        }

        .add-simple {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 10px 22px;
            border-radius: 50px;
            border: 1.5px solid var(--primary);
            background: transparent;
            color: var(--primary);
            font-size: 0.82rem;
            font-weight: 600;
            transition: all 0.2s;
        }

        .add-simple:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }

        .add-simple i { font-size: 0.72rem; }

        /* ========== EMPTY STATE ========== */
        .empty-state {
            text-align: center;
            padding: 80px 20px;
            color: var(--text-muted);
        }

        .empty-state i {
            font-size: 3rem;
            color: #d1d5db;
            margin-bottom: 16px;
            display: block;
        }

        .empty-state p { font-size: 1rem; margin-bottom: 20px; }

        /* ========== PRODUCT DETAIL ========== */
        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 0.88rem;
            font-weight: 500;
            color: var(--text-muted);
            margin: 32px 0 24px;
            transition: color 0.2s;
        }

        .back-link:hover { color: var(--accent); }

        .product-detail {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 56px;
            align-items: start;
            padding-bottom: 80px;
        }

        .product-detail-visual {
            background: linear-gradient(135deg, #f3f4f6 0%, #e8e8ed 100%);
            border-radius: var(--radius);
            aspect-ratio: 1 / 1;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 8rem;
            color: var(--primary-light);
        }

        .product-detail-info {
            padding-top: 20px;
        }

        .category-tag {
            display: inline-block;
            background: #f3f4f6;
            color: var(--text-muted);
            font-size: 0.72rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            padding: 5px 12px;
            border-radius: 50px;
            margin-bottom: 14px;
        }

        .product-detail-info h1 {
            font-family: 'Playfair Display', serif;
            font-size: 2.4rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 12px;
            color: var(--primary);
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 0.9rem;
            color: var(--text-muted);
            margin-bottom: 20px;
        }

        .rating i { color: #f5b342; font-size: 0.85rem; }

        .detail-price {
            font-size: 2rem;
            font-weight: 800;
            color: var(--accent);
            margin-bottom: 8px;
            letter-spacing: -0.02em;
        }

        .stock {
            font-size: 0.88rem;
            color: var(--text-muted);
            margin-bottom: 28px;
        }

        .qty-label {
            display: block;
            font-size: 0.88rem;
            font-weight: 500;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .qty-label input {
            width: 80px;
            padding: 8px 12px;
            margin-left: 10px;
            border: 1.5px solid var(--border);
            border-radius: var(--radius-sm);
            font-size: 0.9rem;
            outline: none;
            transition: border-color 0.2s;
        }

        .qty-label input:focus { border-color: var(--accent); }

        .btn-primary {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 50px;
            background: var(--accent);
            color: #fff;
            font-size: 0.92rem;
            font-weight: 600;
            transition: all 0.2s;
        }

        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-1px);
            box-shadow: 0 8px 20px rgba(233,69,96,0.3);
        }

        /* ========== CART PAGE ========== */
        .page-title {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            font-weight: 700;
            margin: 40px 0 28px;
            letter-spacing: -0.02em;
        }

        .cart-table {
            width: 100%;
            border-collapse: collapse;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            margin-bottom: 28px;
        }

        .cart-table thead {
            background: #f9fafb;
            border-bottom: 1px solid var(--border);
        }

        .cart-table th {
            text-align: left;
            padding: 16px 20px;
            font-size: 0.78rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            color: var(--text-muted);
        }

        .cart-table td {
            padding: 18px 20px;
            border-bottom: 1px solid var(--border);
            font-size: 0.92rem;
            vertical-align: middle;
        }

        .cart-table tr:last-child td { border-bottom: none; }

        .cart-product {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .cart-icon {
            width: 52px;
            height: 52px;
            background: #f3f4f6;
            border-radius: var(--radius-sm);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.3rem;
            color: var(--primary-light);
            flex-shrink: 0;
        }

        .cart-table input[type="number"] {
            width: 64px;
            padding: 8px 10px;
            border: 1.5px solid var(--border);
            border-radius: var(--radius-sm);
            font-size: 0.88rem;
            outline: none;
            transition: border-color 0.2s;
        }

        .cart-table input[type="number"]:focus { border-color: var(--accent); }

        .icon-btn-danger {
            color: var(--text-muted);
            font-size: 0.95rem;
            padding: 8px;
            border-radius: 6px;
            transition: all 0.2s;
        }

        .icon-btn-danger:hover {
            color: var(--accent);
            background: rgba(233,69,96,0.08);
        }

        .cart-summary {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 28px;
            max-width: 420px;
            margin-left: auto;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 0;
            font-size: 0.92rem;
            color: var(--text-muted);
        }

        .summary-row.total {
            border-top: 1px solid var(--border);
            margin-top: 8px;
            padding-top: 20px;
            font-size: 1.2rem;
            font-weight: 700;
            color: var(--primary);
        }

        .cart-summary .btn-primary {
            width: 100%;
            justify-content: center;
            margin-top: 20px;
        }

        /* ========== FOOTER ========== */
        .site-footer {
            border-top: 1px solid var(--border);
            padding: 32px 0;
            margin-top: auto;
        }

        .footer-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 16px;
            font-size: 0.85rem;
            color: var(--text-muted);
        }

        .footer-icons {
            display: flex;
            gap: 20px;
        }

        .footer-icons i {
            font-size: 1rem;
            color: var(--text-muted);
            transition: color 0.2s;
            cursor: pointer;
        }

        .footer-icons i:hover { color: var(--accent); }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 900px) {
            .product-detail {
                grid-template-columns: 1fr;
                gap: 32px;
            }
            .product-detail-visual { font-size: 5rem; }
            .product-detail-info h1 { font-size: 1.8rem; }
            .hero h1 { font-size: 2rem; }
        }

        @media (max-width: 700px) {
            .header-inner { height: auto; padding: 14px 0; flex-wrap: wrap; }
            .search-bar { order: 3; max-width: 100%; width: 100%; }
            .product-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .product-card { padding: 14px; }
            .product-visual { font-size: 2rem; }
            .product-name { font-size: 0.9rem; }
            .product-price { font-size: 1rem; }
            .add-simple { padding: 8px 16px; font-size: 0.75rem; }
            .container { padding: 0 16px; }
            .cart-table th, .cart-table td { padding: 12px 10px; font-size: 0.82rem; }
            .cart-icon { width: 40px; height: 40px; font-size: 1rem; }
            .cart-summary { max-width: 100%; }
        }

        @media (max-width: 420px) {
            .product-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <!-- ========== HEADER ========== -->
    <header class="site-header">
        <div class="container header-inner">
            <a href="index.html" class="brand">
                <i class="fas fa-cube"></i>
                <span>NexusShop</span>
            </a>

            <form class="search-bar" onsubmit="event.preventDefault(); filterProducts(this.q.value);">
                <i class="fas fa-search"></i>
                <input type="text" name="q" placeholder="Search products…" />
            </form>

            <nav class="header-actions">
                <a href="cart.html" class="icon-link cart-link">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-badge">0</span>
                </a>
            </nav>
        </div>
    </header>

    <!-- ========== MAIN ========== -->
    <main class="container">
        <div class="hero">
            <h1>Everything in one place</h1>
            <p>All products · no clutter · straight to the point</p>
        </div>

        <div class="product-grid" id="productGrid"></div>

        <div class="empty-state" id="emptyState" style="display:none;">
            <i class="fas fa-box-open"></i>
            <p>No products found. Try a different search.</p>
        </div>
    </main>

    <!-- ========== FOOTER ========== -->
    <footer class="site-footer">
        <div class="container footer-inner">
            <span>© NexusShop — Java Home myweb 8.8.6</span>
            <div class="footer-icons">
                <i class="fab fa-instagram"></i>
                <i class="fab fa-x-twitter"></i>
                <i class="fab fa-github"></i>
            </div>
        </div>
    </footer>

    <!-- ========== SCRIPTS ========== -->
    <script src="js/products.js"></script>
    <script src="js/app.js"></script>
    <script>
        function renderProducts(list) {
            const grid = document.getElementById("productGrid");
            const empty = document.getElementById("emptyState");
            grid.innerHTML = "";
            if (!list.length) { empty.style.display = "block"; return; }
            empty.style.display = "none";
            list.forEach(p => {
                const card = document.createElement("div");
                card.className = "product-card";
                card.innerHTML = `
                    <a href="product.html?id=${p.id}" class="product-visual-link">
                        <div class="product-visual"><i class="fas ${p.icon}"></i></div>
                    </a>
                    <div class="product-name">${p.name}</div>
                    <div class="product-meta"><i class="fas fa-star"></i> ${p.rating} · ${p.category}</div>
                    <div class="product-price">$${p.price}</div>
                    <button class="add-simple" onclick="addToCart(${p.id},1)">
                        <i class="fas fa-plus"></i> Add to Cart
                    </button>
                `;
                grid.appendChild(card);
            });
        }

        function filterProducts(q) {
            if (!q) return renderProducts(PRODUCTS);
            const k = q.toLowerCase();
            renderProducts(PRODUCTS.filter(p =>
                p.name.toLowerCase().includes(k) || p.category.toLowerCase().includes(k)
            ));
        }

        document.addEventListener("DOMContentLoaded", () => renderProducts(PRODUCTS));
    </script>
</body>
</html>
