<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nexus Shop | Modern E-commerce</title>
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=Inter:wght@300;400;500&display=swap)" rel="stylesheet">
    <style>
        :root {
            --primary: #0f172a;
            --accent: #3b82f6;
            --accent-hover: #2563eb;
            --light: #f8fafc;
            --light-gray: #e2e8f0;
            --medium-gray: #94a3b8;
            --dark-gray: #475569;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --border-radius: 12px;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.12);
            --shadow-md: 0 4px 6px -1px rgba(0,0,0,0.1);
            --shadow-lg: 0 10px 25px -5px rgba(0,0,0,0.1);
            --transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            color: var(--primary);
            background-color: white;
            line-height: 1.6;
        }

        h1, h2, h3, h4 {
            font-family: 'Outfit', sans-serif;
            font-weight: 600;
        }

        .container {
            width: 100%;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* New Header */
        .top-bar {
            background-color: var(--primary);
            color: white;
            padding: 8px 0;
            font-size: 14px;
        }

        .top-bar-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-bar-left {
            display: flex;
            gap: 20px;
        }

        .top-bar-right {
            display: flex;
            gap: 20px;
        }

        .top-bar a {
            color: white;
            text-decoration: none;
            opacity: 0.9;
            transition: var(--transition);
        }

        .top-bar a:hover {
            opacity: 1;
            color: var(--accent);
        }

        .header-main {
            background-color: white;
            border-bottom: 1px solid var(--light-gray);
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(10px);
            background-color: rgba(255, 255, 255, 0.95);
        }

        .header-main-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-family: 'Outfit', sans-serif;
            font-size: 28px;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .logo-dot {
            width: 8px;
            height: 8px;
            background-color: var(--accent);
            border-radius: 50%;
            margin-top: 6px;
        }

        .search-container {
            flex: 1;
            max-width: 500px;
            margin: 0 40px;
            position: relative;
        }

        .search-bar {
            width: 100%;
            padding: 12px 20px 12px 48px;
            border: 1px solid var(--light-gray);
            border-radius: var(--border-radius);
            background-color: var(--light);
            font-size: 16px;
            transition: var(--transition);
        }

        .search-bar:focus {
            outline: none;
            border-color: var(--accent);
            background-color: white;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .search-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--medium-gray);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        .action-item {
            position: relative;
            color: var(--dark-gray);
            text-decoration: none;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            align-items: center;
            font-size: 12px;
            gap: 4px;
        }

        .action-item:hover {
            color: var(--accent);
        }

        .action-icon {
            font-size: 20px;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background-color: var(--accent);
            color: white;
            border-radius: 50%;
            width: 18px;
            height: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 10px;
            font-weight: 600;
        }

        /* Navigation */
        .navigation {
            border-bottom: 1px solid var(--light-gray);
            background-color: white;
        }

        .nav-container {
            display: flex;
            align-items: center;
            padding: 0;
        }

        .nav-item {
            padding: 16px 20px;
            text-decoration: none;
            color: var(--dark-gray);
            font-weight: 500;
            transition: var(--transition);
            border-bottom: 2px solid transparent;
            position: relative;
        }

        .nav-item:hover, .nav-item.active {
            color: var(--accent);
            border-bottom-color: var(--accent);
        }

        .nav-item.dropdown::after {
            content: '▼';
            margin-left: 6px;
            font-size: 10px;
            opacity: 0.7;
        }

        .dropdown-menu {
            position: absolute;
            top: 100%;
            left: 0;
            background-color: white;
            min-width: 200px;
            border-radius: var(--border-radius);
            box-shadow: var(--shadow-lg);
            opacity: 0;
            visibility: hidden;
            transform: translateY(10px);
            transition: var(--transition);
            z-index: 100;
        }

        .nav-item:hover .dropdown-menu {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-item {
            display: block;
            padding: 12px 20px;
            text-decoration: none;
            color: var(--dark-gray);
            transition: var(--transition);
            border-bottom: 1px solid var(--light-gray);
        }

        .dropdown-item:last-child {
            border-bottom: none;
        }

        .dropdown-item:hover {
            background-color: var(--light);
            color: var(--accent);
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: white;
            border-radius: var(--border-radius);
            overflow: hidden;
            margin: 30px 0;
            position: relative;
        }

        .hero-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            padding: 60px;
            align-items: center;
        }

        .hero-content h1 {
            font-size: 48px;
            line-height: 1.1;
            margin-bottom: 16px;
            background: linear-gradient(90deg, #3b82f6 0%, #8b5cf6 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-content p {
            font-size: 18px;
            color: #cbd5e1;
            margin-bottom: 32px;
            max-width: 500px;
        }

        .hero-image {
            position: relative;
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--shadow-lg);
        }

        .hero-image img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .hero-image:hover img {
            transform: scale(1.05);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: var(--border-radius);
            text-decoration: none;
            font-weight: 600;
            font-size: 16px;
            transition: var(--transition);
            border: none;
            cursor: pointer;
            font-family: 'Outfit', sans-serif;
        }

        .btn-primary {
            background-color: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background-color: var(--accent-hover);
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        .btn-secondary {
            background-color: transparent;
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .btn-secondary:hover {
            background-color: rgba(255, 255, 255, 0.1);
            border-color: white;
        }

        /* Categories */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 32px;
        }

        .section-header h2 {
            font-size: 32px;
            color: var(--primary);
        }

        .view-all {
            color: var(--accent);
            text-decoration: none;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 20px;
            margin-bottom: 60px;
        }

        .category-card {
            background: white;
            border: 1px solid var(--light-gray);
            border-radius: var(--border-radius);
            padding: 24px;
            text-align: center;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, var(--accent), #8b5cf6);
            opacity: 0;
            transition: var(--transition);
        }

        .category-card:hover {
            transform: translateY(-5px);
            border-color: var(--accent);
            box-shadow: var(--shadow-lg);
        }

        .category-card:hover::before {
            opacity: 1;
        }

        .category-icon {
            font-size: 40px;
            margin-bottom: 16px;
            color: var(--accent);
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .category-card h3 {
            font-size: 18px;
            margin-bottom: 8px;
        }

        .category-card p {
            color: var(--medium-gray);
            font-size: 14px;
        }

        /* Products - Grid Layout */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 24px;
            margin-bottom: 60px;
        }

        .product-card {
            background: white;
            border: 1px solid var(--light-gray);
            border-radius: var(--border-radius);
            overflow: hidden;
            transition: var(--transition);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--shadow-lg);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background-color: var(--accent);
            color: white;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            z-index: 2;
        }

        .product-badge.sale {
            background-color: var(--danger);
        }

        .product-badge.new {
            background-color: var(--success);
        }

        .product-image {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: 20px;
        }

        .product-title {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 8px;
            color: var(--primary);
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 12px;
        }

        .current-price {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary);
        }

        .old-price {
            font-size: 14px;
            color: var(--medium-gray);
            text-decoration: line-through;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            margin-bottom: 16px;
        }

        .stars {
            color: #fbbf24;
        }

        .rating-count {
            color: var(--medium-gray);
            font-size: 14px;
        }

        .product-actions {
            display: flex;
            gap: 8px;
        }

        .action-btn {
            flex: 1;
            padding: 10px;
            border: 1px solid var(--light-gray);
            background: white;
            border-radius: var(--border-radius);
            color: var(--dark-gray);
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
        }

        .action-btn:hover {
            background-color: var(--light);
            color: var(--accent);
            border-color: var(--accent);
        }

        .action-btn.primary {
            background-color: var(--accent);
            color: white;
            border-color: var(--accent);
        }

        .action-btn.primary:hover {
            background-color: var(--accent-hover);
        }

        /* Featured Deals */
        .deals-section {
            background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
            border-radius: var(--border-radius);
            padding: 40px;
            margin-bottom: 60px;
        }

        .deal-card {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            background: white;
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--shadow-md);
        }

        .deal-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        .deal-content {
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-tag {
            display: inline-block;
            background-color: var(--danger);
            color: white;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 16px;
        }

        .deal-title {
            font-size: 32px;
            margin-bottom: 16px;
        }

        .deal-description {
            color: var(--dark-gray);
            margin-bottom: 24px;
            line-height: 1.7;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 32px;
        }

        .deal-current {
            font-size: 36px;
            font-weight: 700;
            color: var(--primary);
        }

        .deal-original {
            font-size: 20px;
            color: var(--medium-gray);
            text-decoration: line-through;
        }

        .deal-savings {
            background-color: var(--success);
            color: white;
            padding: 6px 12px;
            border-radius: 4px;
            font-size: 14px;
            font-weight: 600;
        }

        .countdown {
            display: flex;
            gap: 12px;
            margin-bottom: 32px;
        }

        .countdown-item {
            text-align: center;
            background: var(--light);
            padding: 16px;
            border-radius: var(--border-radius);
            min-width: 70px;
        }

        .countdown-number {
            font-size: 24px;
            font-weight: 700;
            color: var(--primary);
            display: block;
        }

        .countdown-label {
            font-size: 12px;
            color: var(--medium-gray);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
            gap: 24px;
            margin-bottom: 60px;
        }

        .testimonial-card {
            background: white;
            border: 1px solid var(--light-gray);
            border-radius: var(--border-radius);
            padding: 30px;
            transition: var(--transition);
        }

        .testimonial-card:hover {
            border-color: var(--accent);
            box-shadow: var(--shadow-md);
        }

        .testimonial-content {
            font-size: 16px;
            line-height: 1.7;
            color: var(--dark-gray);
            margin-bottom: 24px;
            position: relative;
            padding-left: 20px;
        }

        .testimonial-content::before {
            content: '"';
            position: absolute;
            left: 0;
            top: -10px;
            font-size: 48px;
            color: var(--accent);
            opacity: 0.2;
            font-family: serif;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .author-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--light-gray);
        }

        .author-info h4 {
            font-size: 16px;
            margin-bottom: 4px;
        }

        .author-info p {
            color: var(--medium-gray);
            font-size: 14px;
        }

        /* Newsletter */
        .newsletter-section {
            background: linear-gradient(135deg, var(--primary) 0%, #1e293b 100%);
            border-radius: var(--border-radius);
            padding: 60px;
            text-align: center;
            color: white;
            margin-bottom: 60px;
        }

        .newsletter-content {
            max-width: 600px;
            margin: 0 auto;
        }

        .newsletter-content h2 {
            font-size: 36px;
            margin-bottom: 16px;
            color: white;
        }

        .newsletter-content p {
            color: #cbd5e1;
            margin-bottom: 32px;
            font-size: 18px;
        }

        .newsletter-form {
            display: flex;
            gap: 12px;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-input {
            flex: 1;
            padding: 16px 24px;
            border: 2px solid rgba(255, 255, 255, 0.2);
            background: rgba(255, 255, 255, 0.1);
            border-radius: var(--border-radius);
            color: white;
            font-size: 16px;
            transition: var(--transition);
        }

        .newsletter-input:focus {
            outline: none;
            border-color: var(--accent);
            background: rgba(255, 255, 255, 0.15);
        }

        .newsletter-input::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        /* Footer */
        .footer {
            background-color: var(--primary);
            color: white;
            padding: 60px 0 30px;
            margin-top: 60px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(4, 1fr);
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-brand .logo {
            color: white;
            margin-bottom: 20px;
        }

        .footer-brand p {
            color: #cbd5e1;
            margin-bottom: 24px;
            max-width: 300px;
        }

        .social-links {
            display: flex;
            gap: 16px;
        }

        .social-link {
            width: 40px;
            height: 40px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: var(--transition);
        }

        .social-link:hover {
            background-color: var(--accent);
            transform: translateY(-3px);
        }

        .footer-col h3 {
            font-size: 18px;
            margin-bottom: 20px;
            color: white;
            position: relative;
            padding-bottom: 10px;
        }

        .footer-col h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 30px;
            height: 2px;
            background-color: var(--accent);
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 12px;
        }

        .footer-links a {
            color: #cbd5e1;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--accent);
            padding-left: 6px;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #94a3b8;
            font-size: 14px;
        }

        .payment-methods {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .payment-method {
            width: 40px;
            height: 24px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 12px;
            font-weight: 600;
        }

        /* Responsive */
        @media (max-width: 1200px) {
            .hero-container {
                grid-template-columns: 1fr;
                text-align: center;
            }
            
            .hero-content p {
                margin: 0 auto 32px;
            }
            
            .deal-card {
                grid-template-columns: 1fr;
            }
            
            .deal-image {
                height: 300px;
            }
        }

        @media (max-width: 992px) {
            .header-main-container {
                flex-wrap: wrap;
                gap: 20px;
            }
            
            .search-container {
                order: 3;
                flex: 1 0 100%;
                margin: 0;
            }
            
            .navigation {
                overflow-x: auto;
                padding-bottom: 8px;
            }
            
            .nav-container {
                width: max-content;
            }
            
            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .top-bar {
                display: none;
            }
            
            .products-grid,
            .categories-grid,
            .testimonials-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 16px;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .hero-container {
                padding: 40px 24px;
            }
            
            .hero-content h1 {
                font-size: 36px;
            }
            
            .deals-section {
                padding: 30px 24px;
            }
            
            .deal-content {
                padding: 30px 24px;
            }
            
            .countdown {
                flex-wrap: wrap;
            }
        }

        @media (max-width: 576px) {
            .products-grid,
            .categories-grid,
            .testimonials-grid {
                grid-template-columns: 1fr;
            }
            
            .header-actions {
                gap: 16px;
            }
            
            .action-item span:last-child {
                display: none;
            }
            
            .footer-grid {
                grid-template-columns: 1fr;
            }
            
            .btn {
                padding: 10px 20px;
                font-size: 14px;
            }
            
            .section-header h2 {
                font-size: 24px;
            }
        }

        /* Micro-interactions */
        .add-to-cart-btn:active {
            transform: scale(0.95);
        }

        .product-card .wishlist-btn.active {
            color: var(--danger);
        }

        .scroll-progress {
            position: fixed;
            top: 0;
            left: 0;
            width: 0%;
            height: 3px;
            background: linear-gradient(90deg, var(--accent), #8b5cf6);
            z-index: 1000;
            transition: width 0.1s;
        }
    </style>
</head>
<body>
    <div class="scroll-progress"></div>
    
    <!-- Top Bar -->
    <div class="top-bar">
        <div class="container top-bar-container">
            <div class="top-bar-left">
                <a href="#"><i class="fas fa-truck"></i> Free shipping on orders over $50</a>
                <a href="#"><i class="fas fa-phone"></i> (800) 123-4567</a>
            </div>
            <div class="top-bar-right">
                <a href="#">Track Order</a>
                <a href="#">Store Locator</a>
                <a href="#">Help Center</a>
            </div>
        </div>
    </div>
    
    <!-- Main Header -->
    <header class="header-main">
        <div class="container header-main-container">
            <a href="#" class="logo">
                NexusShop<div class="logo-dot"></div>
            </a>
            
            <div class="search-container">
                <i class="fas fa-search search-icon"></i>
                <input type="text" class="search-bar" placeholder="Search products, brands, and categories...">
            </div>
            
            <div class="header-actions">
                <a href="#" class="action-item">
                    <i class="far fa-user action-icon"></i>
                    <span>Account</span>
                </a>
                <a href="#" class="action-item">
                    <i class="far fa-heart action-icon"></i>
                    <span>Wishlist</span>
                </a>
                <a href="#" class="action-item">
                    <i class="fas fa-shopping-cart action-icon"></i>
                    <span>Cart</span>
                    <span class="cart-count">3</span>
                </a>
            </div>
        </div>
    </header>
    
    <!-- Navigation -->
    <nav class="navigation">
        <div class="container nav-container">
            <a href="#" class="nav-item active"><i class="fas fa-home"></i> Home</a>
            <a href="#" class="nav-item dropdown">Categories</a>
            <a href="#" class="nav-item"><i class="fas fa-bolt"></i> New Arrivals</a>
            <a href="#" class="nav-item"><i class="fas fa-fire"></i> Best Sellers</a>
            <a href="#" class="nav-item"><i class="fas fa-percent"></i> Deals</a>
            <a href="#" class="nav-item"><i class="fas fa-star"></i> Premium</a>
            <a href="#" class="nav-item">Brands</a>
            <a href="#" class="nav-item">Blog</a>
        </div>
    </nav>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="container hero-container">
            <div class="hero-content">
                <h1>Summer Collection 2026</h1>
                <p>Discover the latest trends in fashion, technology & lifestyle with exclusive deals and premium quality products.</p>
                <div style="display: flex; gap: 16px; flex-wrap: wrap;">
                    <a href="#" class="btn btn-primary">Shop Collection</a>
                    <a href="#" class="btn btn-secondary">Explore Deals</a>
                </div>
            </div>
            <div class="hero-image">
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80)" alt="Summer Collection">
            </div>
        </div>
    </section>
    
    <!-- Categories Section -->
    <section class="container">
        <div class="section-header">
            <h2>Shop by Category</h2>
            <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        
        <div class="categories-grid">
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-mobile-alt"></i></div>
                <h3>Electronics</h3>
                <p>Latest gadgets & devices</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-tshirt"></i></div>
                <h3>Fashion</h3>
                <p>Trendy outfits & accessories</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-home"></i></div>
                <h3>Home & Living</h3>
                <p>Furniture & decor items</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-heartbeat"></i></div>
                <h3>Health & Fitness</h3>
                <p>Sports gear & wellness</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-book-open"></i></div>
                <h3>Books & Media</h3>
                <p>Entertainment & learning</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-gamepad"></i></div>
                <h3>Gaming</h3>
                <p>Consoles & accessories</p>
            </div>
        </div>
    </section>
    
    <!-- Featured Products -->
    <section class="container">
        <div class="section-header">
            <h2>Featured Products</h2>
            <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        
        <div class="products-grid">
            <div class="product-card">
                <span class="product-badge new">New</span>
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80)" alt="Smartphone" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Smartphone Pro 14</h3>
                    <div class="product-price">
                        <span class="current-price">$1,099</span>
                        <span class="old-price">$1,299</span>
                    </div>
                    <div class="product-rating">
                        <span class="stars">★★★★★</span>
                        <span class="rating-count">(128 reviews)</span>
                    </div>
                    <div class="product-actions">
                        <button class="action-btn primary add-to-cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                        <button class="action-btn wishlist-btn"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            </div>
            
            <div class="product-card">
                <span class="product-badge sale">Sale</span>
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80)" alt="Camera" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Mirrorless Camera</h3>
                    <div class="product-price">
                        <span class="current-price">$2,499</span>
                        <span class="old-price">$2,999</span>
                    </div>
                    <div class="product-rating">
                        <span class="stars">★★★★★</span>
                        <span class="rating-count">(42 reviews)</span>
                    </div>
                    <div class="product-actions">
                        <button class="action-btn primary add-to-cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                        <button class="action-btn wishlist-btn"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            </div>
            
            <div class="product-card">
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80)" alt="Sneakers" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Premium Sneakers</h3>
                    <div class="product-price">
                        <span class="current-price">$150</span>
                    </div>
                    <div class="product-rating">
                        <span class="stars">★★★★☆</span>
                        <span class="rating-count">(53 reviews)</span>
                    </div>
                    <div class="product-actions">
                        <button class="action-btn primary add-to-cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                        <button class="action-btn wishlist-btn"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            </div>
            
            <div class="product-card">
                <span class="product-badge">Premium</span>
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80)" alt="Smartwatch" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Smart Watch Ultra</h3>
                    <div class="product-price">
                        <span class="current-price">$349</span>
                        <span class="old-price">$399</span>
                    </div>
                    <div class="product-rating">
                        <span class="stars">★★★★★</span>
                        <span class="rating-count">(214 reviews)</span>
                    </div>
                    <div class="product-actions">
                        <button class="action-btn primary add-to-cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                        <button class="action-btn wishlist-btn"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Featured Deal -->
    <section class="deals-section">
        <div class="container">
            <div class="deal-card">
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80)" alt="Laptop Deal" class="deal-image">
                <div class="deal-content">
                    <span class="deal-tag">Flash Sale</span>
                    <h2 class="deal-title">Premium Laptop Pro</h2>
                    <p class="deal-description">Experience ultimate performance with our flagship laptop featuring the latest processor, stunning display, and all-day battery life.</p>
                    
                    <div class="deal-price">
                        <span class="deal-current">$1,299</span>
                        <span class="deal-original">$1,599</span>
                        <span class="deal-savings">Save $300</span>
                    </div>
                    
                    <div class="countdown">
                        <div class="countdown-item">
                            <span class="countdown-number" id="hours">24</span>
                            <span class="countdown-label">Hours</span>
                        </div>
                        <div class="countdown-item">
                            <span class="countdown-number" id="minutes">59</span>
                            <span class="countdown-label">Minutes</span>
                        </div>
                        <div class="countdown-item">
                            <span class="countdown-number" id="seconds">59</span>
                            <span class="countdown-label">Seconds</span>
                        </div>
                    </div>
                    
                    <button class="btn btn-primary" style="align-self: flex-start;">Shop Now <i class="fas fa-arrow-right"></i></button>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Testimonials -->
    <section class="container">
        <div class="section-header">
            <h2>Customer Reviews</h2>
        </div>
        
        <div class="testimonials-grid">
            <div class="testimonial-card">
                <div class="testimonial-content">
                    The shopping experience was seamless and the product quality exceeded my expectations. Delivery was incredibly fast!
                </div>
                <div class="testimonial-author">
                    <img src="[randomuser.me](https://randomuser.me/api/portraits/women/43.jpg)" alt="Sarah" class="author-avatar">
                    <div class="author-info">
                        <h4>Sarah Johnson</h4>
                        <p>Verified Buyer</p>
                    </div>
                </div>
            </div>
            
            <div class="testimonial-card">
                <div class="testimonial-content">
                    Excellent customer service and fast shipping. The product was exactly as described. Will definitely shop here again!
                </div>
                <div class="testimonial-author">
                    <img src="[randomuser.me](https://randomuser.me/api/portraits/men/32.jpg)" alt="Michael" class="author-avatar">
                    <div class="author-info">
                        <h4>Michael Chen</h4>
                        <p>Verified Buyer</p>
                    </div>
                </div>
            </div>
            
            <div class="testimonial-card">
                <div class="testimonial-content">
                    Found incredible deals on premium products. The website is easy to navigate and checkout was a breeze.
                </div>
                <div class="testimonial-author">
                    <img src="[randomuser.me](https://randomuser.me/api/portraits/women/65.jpg)" alt="Emma" class="author-avatar">
                    <div class="author-info">
                        <h4>Emma Rodriguez</h4>
                        <p>Verified Buyer</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Newsletter -->
    <section class="newsletter-section">
        <div class="container">
            <div class="newsletter-content">
                <h2>Join Our Community</h2>
                <p>Subscribe to our newsletter for exclusive deals, new arrivals, and style inspiration delivered straight to your inbox.</p>
                <form class="newsletter-form">
                    <input type="email" class="newsletter-input" placeholder="Enter your email address" required>
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
                <p style="font-size: 14px; margin-top: 16px; opacity: 0.8;">By subscribing, you agree to our Privacy Policy</p>
            </div>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col footer-brand">
                    <a href="#" class="logo" style="color: white;">
                        NexusShop<div class="logo-dot"></div>
                    </a>
                    <p>Your premier destination for quality products, exceptional service, and community-driven shopping.</p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div class="footer-col">
                    <h3>Shop</h3>
                    <ul class="footer-links">
                        <li><a href="#">All Products</a></li>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale Items</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Support</h3>
                    <ul class="footer-links">
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Shipping Info</a></li>
                        <li><a href="#">Returns & Exchanges</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Our Company</h3>
                    <ul class="footer-links">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Sustainability</a></li>
                        <li><a href="#">Affiliate Program</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Payment Methods</h3>
                    <div class="payment-methods">
                        <div class="payment-method">Visa</div>
                        <div class="payment-method">MC</div>
                        <div class="payment-method">Amex</div>
                        <div class="payment-method">PayPal</div>
                        <div class="payment-method">Stripe</div>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2026 NexusShop. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    <script>
        // Scroll Progress Bar
        const progressBar = document.querySelector('.scroll-progress');
        window.addEventListener('scroll', () => {
            const winScroll = document.body.scrollTop || document.documentElement.scrollTop;
            const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
            const scrolled = (winScroll / height) * 100;
            progressBar.style.width = `${scrolled}%`;
        });
        
        // Countdown Timer
        function updateCountdown() {
            const now = new Date();
            const endOfDay = new Date();
            endOfDay.setHours(23, 59, 59, 999);
            
            const diff = endOfDay - now;
            
            const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((diff % (1000 * 60)) / 1000);
            
            document.getElementById('hours').textContent = String(Math.floor(hours)).padStart(2, '0');
            document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
            document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
        }
        
        setInterval(updateCountdown, 1000);
        updateCountdown();
        
        // Add to Cart & Wishlist Interactions
        document.querySelectorAll('.add-to-cart-btn').forEach(button => {
            button.addEventListener('click', function() {
                const cartCount = document.querySelector('.cart-count');
                let count = parseInt(cartCount.textContent) || 0;
                cartCount.textContent = count + 1;
                
                // Add animation
                this.innerHTML = '<i class="fas fa-check"></i> Added';
                this.style.backgroundColor = 'var(--success)';
                
                setTimeout(() => {
                    this.innerHTML = '<i class="fas fa-shopping-cart"></i> Add to Cart';
                    this.style.backgroundColor = '';
                }, 2000);
            });
        });
        
        document.querySelectorAll('.wishlist-btn').forEach(button => {
            button.addEventListener('click', function() {
                this.classList.toggle('active');
                if (this.classList.contains('active')) {
                    this.innerHTML = '<i class="fas fa-heart"></i>';
                } else {
                    this.innerHTML = '<i class="far fa-heart"></i>';
                }
            });
        });
        
        // Newsletter Form
        document.querySelector('.newsletter-form').addEventListener('submit', function(e) {
            e.preventDefault();
            const email = this.querySelector('input[type="email"]').value;
            alert(`Thank you for subscribing with ${email}! You'll receive our next newsletter.`);
            this.reset();
        });
        
        // Mobile Navigation Toggle (for future implementation)
        document.addEventListener('DOMContentLoaded', function() {
            const navItems = document.querySelectorAll('.nav-item.dropdown');
            navItems.forEach(item => {
                item.addEventListener('click', function(e) {
                    if (window.innerWidth <= 768) {
                        e.preventDefault();
                        this.classList.toggle('active');
                    }
                });
            });
        });
    </script>
</body>
</html>
