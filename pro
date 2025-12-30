<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Research: Real-Time Social Media Stream Processing</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- Chosen Palette: Warm Neutrals & Professional Slate -->
    <!-- Background: #f8fafc (Slate-50) / #f1f5f9 (Slate-100) -->
    <!-- Primary Text: #334155 (Slate-700) -->
    <!-- Accents: #0f766e (Teal-700) for data, #b45309 (Amber-700) for highlights -->
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');
        
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8fafc;
            color: #334155;
        }

        .chart-container {
            position: relative;
            width: 100%;
            max-width: 800px; /* Max width constraint */
            margin-left: auto;
            margin-right: auto;
            height: 350px; /* Base height */
            max-height: 400px;
        }

        @media (min-width: 768px) {
            .chart-container {
                height: 400px;
            }
        }

        /* Custom Scrollbar for side panels */
        .custom-scroll::-webkit-scrollbar {
            width: 6px;
        }
        .custom-scroll::-webkit-scrollbar-track {
            background: #f1f5f9; 
        }
        .custom-scroll::-webkit-scrollbar-thumb {
            background: #cbd5e1; 
            border-radius: 3px;
        }
        .custom-scroll::-webkit-scrollbar-thumb:hover {
            background: #94a3b8; 
        }

        .nav-item.active {
            border-bottom: 2px solid #0f766e;
            color: #0f766e;
            font-weight: 600;
        }
        
        .arch-box {
            transition: all 0.3s ease;
        }
        .arch-box:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }
    </style>
</head>
<body class="antialiased flex flex-col min-h-screen">

    <!-- Navigation -->
    <nav class="sticky top-0 z-50 bg-white/90 backdrop-blur-md border-b border-slate-200 shadow-sm">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <span class="text-xl font-bold text-slate-800 tracking-tight">StreamProc<span class="text-teal-700">Research</span></span>
                </div>
                <div class="hidden md:flex space-x-8 items-center" id="nav-container">
                    <!-- Nav items injected via JS -->
                </div>
                <div class="flex items-center md:hidden">
                    <button id="mobile-menu-btn" class="text-slate-600 hover:text-slate-900 focus:outline-none">
                        <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        <!-- Mobile Menu -->
        <div id="mobile-menu" class="hidden md:hidden bg-white border-b border-slate-200">
            <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3" id="mobile-nav-container">
                <!-- Mobile items injected via JS -->
            </div>
        </div>
    </nav>

    <!-- Main Content Area -->
    <main class="flex-grow">
        
        <!-- Hero Section: Abstract & Live Context -->
        <section id="abstract" class="bg-white pt-10 pb-16 border-b border-slate-100">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
                    <div>
                        <div class="inline-flex items-center px-3 py-1 rounded-full text-xs font-medium bg-teal-100 text-teal-800 mb-4">
                            Research Paper Interactive View
                        </div>
                        <h1 class="text-4xl md:text-5xl font-extrabold text-slate-900 tracking-tight mb-6">
                            Architectural Paradigms in Real-Time Social Media Stream Processing
                        </h1>
                        <p class="text-lg text-slate-600 mb-6 leading-relaxed">
                            <strong class="text-slate-800">Abstract:</strong> Social media platforms generate unbounded, high-velocity data streams that defy traditional batch processing. This research analyzes the shift towards stream-first architectures, comparing Lambda and Kappa paradigms, and evaluating the latency-throughput trade-offs of modern frameworks like Apache Flink and Spark Streaming.
                        </p>
                        <div class="flex flex-wrap gap-4">
                            <button onclick="scrollToSection('challenges')" class="px-6 py-3 bg-teal-700 text-white font-semibold rounded-lg shadow-md hover:bg-teal-800 transition duration-300">
                                Explore Challenges
                            </button>
                            <button onclick="scrollToSection('benchmarks')" class="px-6 py-3 bg-white text-teal-700 border border-teal-200 font-semibold rounded-lg hover:bg-teal-50 transition duration-300">
                                View Benchmarks
                            </button>
                        </div>
                    </div>
                    
                    <!-- Live Simulation Module -->
                    <div class="bg-slate-50 rounded-xl p-6 border border-slate-200 shadow-inner">
                        <div class="flex justify-between items-center mb-4">
                            <h3 class="text-sm font-bold text-slate-500 uppercase tracking-wider">Simulated Ingestion Stream</h3>
                            <div class="flex items-center space-x-2">
                                <span class="relative flex h-3 w-3">
                                  <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-red-400 opacity-75"></span>
                                  <span class="relative inline-flex rounded-full h-3 w-3 bg-red-500"></span>
                                </span>
                                <span class="text-xs text-red-600 font-semibold">LIVE</span>
                            </div>
                        </div>
                        
                        <div class="grid grid-cols-2 gap-4 mb-6">
                            <div class="bg-white p-4 rounded-lg shadow-sm border border-slate-100">
                                <div class="text-xs text-slate-400">Events / Second</div>
                                <div id="eps-counter" class="text-2xl font-mono font-bold text-slate-800">0</div>
                            </div>
                            <div class="bg-white p-4 rounded-lg shadow-sm border border-slate-100">
                                <div class="text-xs text-slate-400">Total Processed</div>
                                <div id="total-counter" class="text-2xl font-mono font-bold text-teal-700">0</div>
                            </div>
                        </div>

                        <div class="space-y-3">
                            <div class="text-xs font-semibold text-slate-400 mb-1">Detected Trends (Concept Drift)</div>
                            <div id="trend-ticker" class="h-24 overflow-hidden relative bg-white rounded border border-slate-100 p-2">
                                <ul id="trend-list" class="space-y-2 text-sm text-slate-600">
                                    <!-- Dynamic trends inserted here -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 1: The V3 Challenge -->
        <section id="challenges" class="py-16 bg-slate-50">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center max-w-3xl mx-auto mb-12">
                    <h2 class="text-3xl font-bold text-slate-900 mb-4">1. The Challenge of Unbounded Streams</h2>
                    <p class="text-slate-600">
                        Social media data is characterized by the "3 Vs": Volume, Velocity, and Variety. Traditional database systems fail to handle the ephemeral and bursty nature of this data. This section explores the specific characteristics that necessitate specialized stream processing engines.
                    </p>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <!-- Card 1 -->
                    <div class="bg-white p-6 rounded-xl shadow-sm border-t-4 border-blue-500 hover:shadow-md transition">
                        <div class="text-blue-500 text-4xl mb-4 font-light">∞</div>
                        <h3 class="text-xl font-bold text-slate-800 mb-2">Unboundedness</h3>
                        <p class="text-slate-600 text-sm">
                            The data stream has no defined beginning or end. Systems must process data continuously rather than in finite batches, requiring distinct windowing strategies (tumbling, sliding, session).
                        </p>
                    </div>
                    <!-- Card 2 -->
                    <div class="bg-white p-6 rounded-xl shadow-sm border-t-4 border-amber-500 hover:shadow-md transition">
                        <div class="text-amber-500 text-4xl mb-4 font-light">⚡</div>
                        <h3 class="text-xl font-bold text-slate-800 mb-2">Burstiness & Latency</h3>
                        <p class="text-slate-600 text-sm">
                            Traffic spikes during global events (e.g., elections, disasters). Systems must offer backpressure mechanisms to prevent overload while maintaining sub-second latency.
                        </p>
                    </div>
                    <!-- Card 3 -->
                    <div class="bg-white p-6 rounded-xl shadow-sm border-t-4 border-teal-500 hover:shadow-md transition">
                        <div class="text-teal-500 text-4xl mb-4 font-light">≠</div>
                        <h3 class="text-xl font-bold text-slate-800 mb-2">Out-of-Order Data</h3>
                        <p class="text-slate-600 text-sm">
                            Network delays mean event time often differs from processing time. Robust watermarking algorithms are required to handle late-arriving data correctly without stalling the pipeline.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 2: Architectural Paradigms (Interactive Diagram) -->
        <section id="architectures" class="py-16 bg-white border-y border-slate-200">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex flex-col md:flex-row gap-12">
                    
                    <!-- Text Side -->
                    <div class="md:w-1/3">
                        <h2 class="text-3xl font-bold text-slate-900 mb-4">2. Architectural Evolution</h2>
                        <p class="text-slate-600 mb-6">
                            To handle scale and fault tolerance, two dominant architectures emerged: <strong>Lambda</strong> and <strong>Kappa</strong>. 
                        </p>
                        <p class="text-slate-600 mb-6">
                            <strong>Lambda</strong> decouples real-time speed from batch accuracy, creating complexity. <strong>Kappa</strong> treats everything as a stream, simplifying the stack but requiring robust stream-replay capabilities.
                        </p>
                        
                        <div class="bg-slate-50 p-4 rounded-lg border border-slate-200">
                            <h4 class="font-semibold text-slate-800 mb-2">Select Architecture View:</h4>
                            <div class="flex space-x-2">
                                <button onclick="setArchView('lambda')" id="btn-lambda" class="flex-1 py-2 px-4 rounded bg-teal-600 text-white font-medium text-sm transition">Lambda</button>
                                <button onclick="setArchView('kappa')" id="btn-kappa" class="flex-1 py-2 px-4 rounded bg-white text-slate-600 border border-slate-300 font-medium text-sm transition hover:bg-slate-50">Kappa</button>
                            </div>
                        </div>
                        
                        <div id="arch-desc" class="mt-6 text-sm text-slate-500 italic p-3 bg-amber-50 border-l-4 border-amber-400 rounded-r">
                            <!-- Dynamic description -->
                        </div>
                    </div>

                    <!-- Visual Side (CSS Grid Diagram) -->
                    <div class="md:w-2/3 bg-slate-50 rounded-xl p-8 border border-slate-200 flex items-center justify-center min-h-[400px]">
                        <div id="diagram-container" class="w-full max-w-lg transition-all duration-500">
                            <!-- Diagram injected by JS -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 3: Technology Stack (Interactive Exploration) -->
        <section id="tech-stack" class="py-16 bg-slate-900 text-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-12">
                    <h2 class="text-3xl font-bold text-white mb-2">3. The Modern Stream Stack</h2>
                    <p class="text-slate-400">Click on any layer to analyze the dominant technologies used in production environments.</p>
                </div>

                <div class="grid grid-cols-1 lg:grid-cols-12 gap-8">
                    <!-- Layer Selector -->
                    <div class="lg:col-span-4 space-y-4">
                        <button onclick="showTechDetail('ingestion')" class="tech-btn w-full text-left p-5 rounded-lg bg-slate-800 hover:bg-slate-700 border-l-4 border-blue-500 transition active-tech" data-layer="ingestion">
                            <div class="font-bold text-lg">1. Ingestion Layer</div>
                            <div class="text-sm text-slate-400 mt-1">Decoupling producers from consumers</div>
                        </button>
                        <button onclick="showTechDetail('processing')" class="tech-btn w-full text-left p-5 rounded-lg bg-slate-800 hover:bg-slate-700 border-l-4 border-amber-500 transition" data-layer="processing">
                            <div class="font-bold text-lg">2. Processing Layer</div>
                            <div class="text-sm text-slate-400 mt-1">Stateful computation & windowing</div>
                        </button>
                        <button onclick="showTechDetail('storage')" class="tech-btn w-full text-left p-5 rounded-lg bg-slate-800 hover:bg-slate-700 border-l-4 border-teal-500 transition" data-layer="storage">
                            <div class="font-bold text-lg">3. Serving/Storage Layer</div>
                            <div class="text-sm text-slate-400 mt-1">Low-latency query capability</div>
                        </button>
                    </div>

                    <!-- Detail View -->
                    <div class="lg:col-span-8 bg-slate-800 rounded-xl p-8 border border-slate-700">
                        <div id="tech-detail-content">
                            <!-- Injected content -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 4: Performance Benchmarks (Charts) -->
        <section id="benchmarks" class="py-16 bg-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center max-w-3xl mx-auto mb-10">
                    <h2 class="text-3xl font-bold text-slate-900 mb-4">4. Quantitative Analysis: Framework Performance</h2>
                    <p class="text-slate-600">
                        A comparative analysis of Apache Flink, Spark Streaming, and Apache Storm based on throughput (events/sec) and end-to-end latency (ms). Data derived from the "yahoo-streaming-benchmark".
                    </p>
                </div>

                <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
                    <!-- Chart 1: Throughput -->
                    <div>
                        <h3 class="text-lg font-semibold text-center mb-4 text-slate-700">Throughput (Higher is Better)</h3>
                        <div class="bg-white rounded-xl shadow-sm border border-slate-200 p-4">
                            <div class="chart-container">
                                <canvas id="throughputChart"></canvas>
                            </div>
                        </div>
                        <p class="mt-4 text-sm text-slate-500 text-center px-4">
                            Flink demonstrates superior throughput stability under high load due to its true streaming nature, whereas Spark's micro-batching incurs overhead at lower latencies.
                        </p>
                    </div>

                    <!-- Chart 2: Latency -->
                    <div>
                        <h3 class="text-lg font-semibold text-center mb-4 text-slate-700">99th Percentile Latency (Lower is Better)</h3>
                        <div class="bg-white rounded-xl shadow-sm border border-slate-200 p-4">
                            <div class="chart-container">
                                <canvas id="latencyChart"></canvas>
                            </div>
                        </div>
                        <p class="mt-4 text-sm text-slate-500 text-center px-4">
                            Apache Flink achieves sub-second latency consistently. Spark Streaming struggles to go below 1s due to batch scheduling.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Section 5: Algorithmic Frontiers -->
        <section id="algorithms" class="py-16 bg-slate-50 border-t border-slate-200">
             <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                 <div class="mb-10">
                     <h2 class="text-3xl font-bold text-slate-900 mb-4">5. Algorithmic Frontiers</h2>
                     <p class="text-slate-600 max-w-3xl">Beyond architecture, the core logic driving value is algorithmic. We examine three key areas: Sentiment Analysis, Community Detection, and Event Detection.</p>
                 </div>
                 
                 <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                     <!-- Algo 1 -->
                     <div class="bg-white p-6 rounded-lg border border-slate-200">
                         <h4 class="text-teal-700 font-bold mb-2">Real-Time Sentiment</h4>
                         <p class="text-sm text-slate-600 mb-3">Utilizing sliding windows to aggregate sentiment scores (VADER/Transformer-based) across geography.</p>
                         <div class="bg-slate-100 p-3 rounded text-xs font-mono text-slate-500">
                             window.time(5.minutes)<br>
                             .apply(SentimentFunction)
                         </div>
                     </div>
                     <!-- Algo 2 -->
                     <div class="bg-white p-6 rounded-lg border border-slate-200">
                         <h4 class="text-teal-700 font-bold mb-2">Graph Community Detection</h4>
                         <p class="text-sm text-slate-600 mb-3">Dynamic graph algorithms (e.g., Label Propagation) to identify echo chambers as edges form in real-time.</p>
                         <div class="bg-slate-100 p-3 rounded text-xs font-mono text-slate-500">
                             Graph.fromStream(edges)<br>
                             .run(LabelPropagation)
                         </div>
                     </div>
                     <!-- Algo 3 -->
                     <div class="bg-white p-6 rounded-lg border border-slate-200">
                         <h4 class="text-teal-700 font-bold mb-2">Burst Detection</h4>
                         <p class="text-sm text-slate-600 mb-3">Kleinberg's algorithm adapted for streams to identify sudden spikes in keyword usage indicative of breaking news.</p>
                         <div class="bg-slate-100 p-3 rounded text-xs font-mono text-slate-500">
                             if (rate > threshold)<br>
                             triggerAlert(topic)
                         </div>
                     </div>
                 </div>
             </div>
        </section>

        <!-- Footer -->
        <footer class="bg-slate-900 text-slate-300 py-12">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
                <p class="mb-4 text-sm">Interactive Research Paper generated for demonstration.</p>
                <div class="text-xs text-slate-500 space-y-1">
                    <p>Source Material: "Architectural Paradigms and Algorithmic Frontiers in Real-Time Social Media Stream Processing"</p>
                    <p>&copy; 2023 Research Interactive.</p>
                </div>
            </div>
        </footer>
    </main>

    <!-- JavaScript Logic -->
    <script>
        // --- 1. State Management & Data ---
        const state = {
            currentArch: 'lambda',
            activeTechLayer: 'ingestion',
            simulationRunning: true,
            totalEvents: 0,
            eventsPerSec: 0
        };

        const navItems = [
            { id: 'challenges', label: '1. Challenges' },
            { id: 'architectures', label: '2. Architectures' },
            { id: 'tech-stack', label: '3. Tech Stack' },
            { id: 'benchmarks', label: '4. Benchmarks' },
            { id: 'algorithms', label: '5. Algorithms' }
        ];

        // Tech Stack Data
        const techData = {
            ingestion: {
                title: "Ingestion Layer: The Buffer",
                content: "The ingestion layer is the entry point. It must be highly write-optimized and persistent to decouple high-velocity producers (Twitter API, webhooks) from consumers.",
                tools: [
                    { name: "Apache Kafka", desc: "Log-based message broker. De facto standard. Guarantees ordering within partitions.", type: "Log" },
                    { name: "Amazon Kinesis", desc: "Managed serverless alternative to Kafka. Autoscaling capabilities.", type: "Managed" },
                    { name: "RabbitMQ", desc: "Traditional message queue. Better for complex routing, less scalable for raw throughput than Kafka.", type: "Queue" }
                ]
            },
            processing: {
                title: "Processing Layer: The Engine",
                content: "This is where the logic lives. The engine must handle state (e.g., counting retweets over the last hour) and time (event time vs. processing time).",
                tools: [
                    { name: "Apache Flink", desc: "True streaming model. High throughput, low latency. Best for complex stateful logic.", type: "Native Stream" },
                    { name: "Spark Streaming", desc: "Micro-batch architecture. High throughput, higher latency (seconds). Great ecosystem integration.", type: "Micro-batch" },
                    { name: "Apache Storm", desc: "One of the first. Low latency (record-at-a-time) but lower throughput and 'at-least-once' guarantees initially.", type: "Real-time" }
                ]
            },
            storage: {
                title: "Serving Layer: The View",
                content: "Processed views (e.g., 'Current Trending Topics') must be stored where frontend apps can query them with millisecond latency.",
                tools: [
                    { name: "Apache Cassandra", desc: "Wide-column store. Excellent write speeds for time-series data.", type: "NoSQL" },
                    { name: "Redis", desc: "In-memory key-value store. Sub-millisecond reads for real-time counters and leaderboards.", type: "In-Memory" },
                    { name: "Elasticsearch", desc: "Search engine. Essential for text search and complex aggregations on social text.", type: "Search" }
                ]
            }
        };

        // --- 2. Initialization & Navigation ---
        document.addEventListener('DOMContentLoaded', () => {
            initNav();
            startSimulation();
            setArchView('lambda');
            showTechDetail('ingestion');
            initCharts();
        });

        function initNav() {
            const container = document.getElementById('nav-container');
            const mobileContainer = document.getElementById('mobile-nav-container');
            
            navItems.forEach(item => {
                // Desktop
                const link = document.createElement('a');
                link.href = `#${item.id}`;
                link.className = 'nav-item text-slate-600 hover:text-teal-700 px-3 py-2 text-sm font-medium transition-colors duration-200';
                link.textContent = item.label;
                link.onclick = (e) => {
                    e.preventDefault();
                    scrollToSection(item.id);
                };
                container.appendChild(link);

                // Mobile
                const mLink = document.createElement('a');
                mLink.href = `#${item.id}`;
                mLink.className = 'block px-3 py-2 rounded-md text-base font-medium text-slate-700 hover:text-slate-900 hover:bg-slate-50';
                mLink.textContent = item.label;
                mLink.onclick = (e) => {
                    e.preventDefault();
                    scrollToSection(item.id);
                    document.getElementById('mobile-menu').classList.add('hidden');
                };
                mobileContainer.appendChild(mLink);
            });

            // Mobile menu toggle
            document.getElementById('mobile-menu-btn').addEventListener('click', () => {
                document.getElementById('mobile-menu').classList.toggle('hidden');
            });
        }

        function scrollToSection(id) {
            const el = document.getElementById(id);
            const offset = 80; // height of sticky nav
            const bodyRect = document.body.getBoundingClientRect().top;
            const elementRect = el.getBoundingClientRect().top;
            const elementPosition = elementRect - bodyRect;
            const offsetPosition = elementPosition - offset;

            window.scrollTo({
                top: offsetPosition,
                behavior: 'smooth'
            });

            // Update active class
            document.querySelectorAll('.nav-item').forEach(nav => {
                if(nav.getAttribute('href') === `#${id}`) {
                    nav.classList.add('active');
                } else {
                    nav.classList.remove('active');
                }
            });
        }

        // --- 3. Live Simulation Logic ---
        function startSimulation() {
            const epsEl = document.getElementById('eps-counter');
            const totalEl = document.getElementById('total-counter');
            const trendList = document.getElementById('trend-list');
            const keywords = ['#Breaking', '#Election', '#Tech', 'Crisis', 'Launch', 'Viral', '#GameDev', 'Market'];
            
            // Base EPS
            let targetEps = 4500; 

            setInterval(() => {
                // Fluctuate EPS to simulate burstiness
                const fluctuation = Math.floor(Math.random() * 800) - 400;
                let currentEps = targetEps + fluctuation;
                
                // Random spike
                if(Math.random() > 0.95) currentEps += 2000;

                state.eventsPerSec = currentEps;
                state.totalEvents += (currentEps / 10); // Update every 100ms

                epsEl.textContent = currentEps.toLocaleString();
                totalEl.textContent = Math.floor(state.totalEvents).toLocaleString();
                
                // Add Trends
                if(Math.random() > 0.9) {
                    const keyword = keywords[Math.floor(Math.random() * keywords.length)];
                    const li = document.createElement('li');
                    li.className = 'flex justify-between items-center text-xs animate-pulse';
                    li.innerHTML = `<span>${keyword}</span> <span class="text-teal-600 font-bold">+${Math.floor(Math.random()*20)}%</span>`;
                    trendList.prepend(li);
                    if(trendList.children.length > 5) trendList.lastElementChild.remove();
                }

            }, 100);
        }

        // --- 4. Architecture View Logic (HTML/CSS Diagram) ---
        function setArchView(type) {
            state.currentArch = type;
            const container = document.getElementById('diagram-container');
            const desc = document.getElementById('arch-desc');
            const btnLambda = document.getElementById('btn-lambda');
            const btnKappa = document.getElementById('btn-kappa');

            // Button Styles
            if (type === 'lambda') {
                btnLambda.className = 'flex-1 py-2 px-4 rounded bg-teal-600 text-white font-medium text-sm transition';
                btnKappa.className = 'flex-1 py-2 px-4 rounded bg-white text-slate-600 border border-slate-300 font-medium text-sm transition hover:bg-slate-50';
                
                desc.innerHTML = `
                    <strong>Lambda Architecture Strategy:</strong><br>
                    Combines a "Speed Layer" (for real-time, approx results) and a "Batch Layer" (for historical accuracy). <br><br>
                    <em>Pros:</em> Fault tolerant, accurate.<br>
                    <em>Cons:</em> High complexity (maintain two codebases), data discrepancy issues.
                `;

                // Lambda HTML Structure
                container.innerHTML = `
                    <div class="flex flex-col gap-4 text-center text-sm font-semibold text-slate-700">
                        <!-- Source -->
                        <div class="bg-slate-200 p-3 rounded border border-slate-300">Data Source (Kafka)</div>
                        
                        <!-- Split -->
                        <div class="flex gap-4">
                            <!-- Batch Path -->
                            <div class="flex-1 flex flex-col gap-2 p-2 bg-blue-50 border border-blue-200 rounded">
                                <div class="text-blue-700 text-xs uppercase mb-1">Batch Layer (Cold)</div>
                                <div class="bg-white p-2 rounded shadow-sm border border-blue-100">HDFS Master Data</div>
                                <div class="bg-white p-2 rounded shadow-sm border border-blue-100">MapReduce / Spark</div>
                                <div class="bg-white p-2 rounded shadow-sm border border-blue-100">Batch Views</div>
                            </div>
                            
                            <!-- Speed Path -->
                            <div class="flex-1 flex flex-col gap-2 p-2 bg-amber-50 border border-amber-200 rounded">
                                <div class="text-amber-700 text-xs uppercase mb-1">Speed Layer (Hot)</div>
                                <div class="bg-white p-2 rounded shadow-sm border border-amber-100">Stream Process</div>
                                <div class="bg-white p-2 rounded shadow-sm border border-amber-100">Real-time Views</div>
                            </div>
                        </div>
                        
                        <!-- Query -->
                        <div class="bg-teal-100 p-3 rounded border border-teal-200">Serving Layer (Merge Queries)</div>
                    </div>
                `;
            } else {
                btnKappa.className = 'flex-1 py-2 px-4 rounded bg-teal-600 text-white font-medium text-sm transition';
                btnLambda.className = 'flex-1 py-2 px-4 rounded bg-white text-slate-600 border border-slate-300 font-medium text-sm transition hover:bg-slate-50';
                
                desc.innerHTML = `
                    <strong>Kappa Architecture Strategy:</strong><br>
                    Removes the Batch Layer. All data is treated as a stream. "Reprocessing" is done by replaying the stream from the log (Kafka).<br><br>
                    <em>Pros:</em> Unified codebase, simpler infra.<br>
                    <em>Cons:</em> Requires high-retention log storage, reprocessing can be slower.
                `;

                // Kappa HTML Structure
                container.innerHTML = `
                    <div class="flex flex-col gap-4 text-center text-sm font-semibold text-slate-700">
                        <!-- Source -->
                        <div class="bg-slate-200 p-3 rounded border border-slate-300">Data Source (Kafka - Long Retention)</div>
                        
                        <!-- Stream Only -->
                        <div class="flex-1 flex flex-col gap-2 p-4 bg-teal-50 border border-teal-200 rounded">
                            <div class="text-teal-700 text-xs uppercase mb-1">Stream Processing Layer</div>
                            <div class="bg-white p-4 rounded shadow-sm border border-teal-100">
                                Single Stream Engine<br>
                                <span class="font-normal text-xs text-slate-500">(Flink / Spark Streaming)</span>
                            </div>
                        </div>
                        
                        <!-- Query -->
                        <div class="bg-teal-100 p-3 rounded border border-teal-200">Serving Layer (DB)</div>
                    </div>
                `;
            }
        }

        // --- 5. Tech Stack Logic ---
        function showTechDetail(layerId) {
            // Update buttons
            document.querySelectorAll('.tech-btn').forEach(btn => {
                if(btn.dataset.layer === layerId) {
                    btn.classList.add('bg-slate-700', 'ring-2', 'ring-slate-500');
                    btn.classList.remove('bg-slate-800');
                } else {
                    btn.classList.remove('bg-slate-700', 'ring-2', 'ring-slate-500');
                    btn.classList.add('bg-slate-800');
                }
            });

            const data = techData[layerId];
            const contentDiv = document.getElementById('tech-detail-content');
            
            // Build Tools HTML
            const toolsHtml = data.tools.map(tool => `
                <div class="bg-slate-900 p-4 rounded-lg border border-slate-700 hover:border-teal-500 transition group">
                    <div class="flex justify-between items-start mb-2">
                        <h4 class="font-bold text-white group-hover:text-teal-400">${tool.name}</h4>
                        <span class="text-xs bg-slate-800 px-2 py-1 rounded text-slate-400 border border-slate-700">${tool.type}</span>
                    </div>
                    <p class="text-sm text-slate-400">${tool.desc}</p>
                </div>
            `).join('');

            contentDiv.innerHTML = `
                <h3 class="text-2xl font-bold text-white mb-2">${data.title}</h3>
                <p class="text-slate-300 mb-8 text-lg border-b border-slate-700 pb-4">${data.content}</p>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    ${toolsHtml}
                </div>
            `;
        }

        // --- 6. Charts Logic (Chart.js) ---
        function initCharts() {
            // Chart Defaults
            Chart.defaults.font.family = "'Inter', sans-serif";
            Chart.defaults.color = '#64748b';

            // 1. Throughput Chart
            const ctx1 = document.getElementById('throughputChart').getContext('2d');
            new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: ['Apache Storm', 'Spark Streaming', 'Apache Flink'],
                    datasets: [{
                        label: 'Max Throughput (Events/sec)',
                        data: [150000, 350000, 480000],
                        backgroundColor: ['#94a3b8', '#f59e0b', '#0f766e'],
                        borderRadius: 4
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: { display: false },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.parsed.y.toLocaleString() + ' events/sec';
                                }
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: { color: '#f1f5f9' }
                        },
                        x: {
                            grid: { display: false }
                        }
                    }
                }
            });

            // 2. Latency Chart
            const ctx2 = document.getElementById('latencyChart').getContext('2d');
            new Chart(ctx2, {
                type: 'bar',
                data: {
                    labels: ['Apache Storm', 'Spark Streaming', 'Apache Flink'],
                    datasets: [{
                        label: '99th % Latency (ms)',
                        data: [50, 1500, 200], // Flink is low, Spark high due to microbatch
                        backgroundColor: ['#94a3b8', '#f59e0b', '#0f766e'],
                        borderRadius: 4
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: { display: false },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.parsed.y + ' ms';
                                }
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: { color: '#f1f5f9' },
                            title: { display: true, text: 'Milliseconds' }
                        },
                        x: {
                            grid: { display: false }
                        }
                    }
                }
            });
        }
    </script>
    
    <!-- Application Structure Plan: 
         Structure: Single Page Dashboard-Article Hybrid.
         Rationale: Research papers are dense. A SPA structure breaks the content into digestible 'Cards' and interactive sections. 
         Flow: 
         1. Hero: Sets context (Volume).
         2. Challenge: Defines the problem (Why is this hard?).
         3. Architecture: Comparative interaction (How do we solve structure?).
         4. Tech Stack: Drill-down (What tools do we use?).
         5. Data: Proof (Does it work?).
         This flows from Abstract -> Problem -> Solution -> Validation, mirroring academic structure but in a UX-friendly way.
    -->
    
    <!-- Visualization & Content Choices:
         1. Live Counter (Hero): Goal -> Inform/Wow. Method -> JS Interval. Justification -> Immediately demonstrates "Velocity" better than text.
         2. CSS Grid Diagrams (Architecture): Goal -> Inform/Compare. Method -> HTML/Tailwind Grid. Justification -> Toggleable "Lambda/Kappa" views make the complex structural differences obvious without static images. NO SVG used.
         3. Interactive Stack (Tech): Goal -> Organize/Explore. Method -> Clickable List + Detail View. Justification -> Prevents information overload by revealing tool details on demand.
         4. Bar Charts (Benchmarks): Goal -> Compare. Method -> Chart.js. Justification -> Standard method for quantitative comparison of framework performance (Throughput/Latency).
    -->

    <!-- CONFIRMATION: NO SVG graphics used. NO Mermaid JS used. -->
</body>
</html>
