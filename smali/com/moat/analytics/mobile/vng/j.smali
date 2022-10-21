.class Lcom/moat/analytics/mobile/vng/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/vng/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:J

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/moat/analytics/mobile/vng/j$a;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/vng/j$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/vng/j;->a:I

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->b:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->c:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->e:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Z

    new-instance v1, Lcom/moat/analytics/mobile/vng/j$2;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/vng/j$2;-><init>(Lcom/moat/analytics/mobile/vng/j;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/moat/analytics/mobile/vng/j$3;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/vng/j$3;-><init>(Lcom/moat/analytics/mobile/vng/j;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->p:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/j;->n:Lcom/moat/analytics/mobile/vng/j$a;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j;->m:Ljava/util/List;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/moat/analytics/mobile/vng/j;->k:J

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "javascript:(function(d,k){function l(){function d(a,b){var c=ipkn[b]||ipkn[kuea];if(c){var h=function(b){var c=b.b;c.ts=b.i;c.ticks=b.g;c.buffered=!0;a(c)};h(c.first);c.a.forEach(function(a){h(a)})}}function e(a){var b=a.a,c=a.c,h=a.b;a=a.f;var d=[];if(c)b[c]&&d.push(b[c].fn[0]);else for(key in b)if(b[key])for(var g=0,e=b[key].fn.length;g<e;g++)d.push(b[key].fn[g]);g=0;for(e=d.length;g<e;g++){var f=d[g];if(\'function\'===typeof f)try{h?f(h):f()}catch(k){}a&&delete b[c]}}function f(a,b,c){\'function\'===typeof a&& (b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]},c===yhgt&&d(a,b))}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};ipkn={};csif={};this.h=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId;this.metadata=a};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea; c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.hgen=function(a,b){f(a,b||kuea,csif)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={a:iymv,b:a,c:ewat};briz?e(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={a:bjmk,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.egpw= function(a){var b=a||kuea;ryup[b]=!0;var c={a:uqaj,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.sglu=function(a){var b=a.adKey||kuea,c={a:yhgt,b:a.event||a,g:1,i:+new Date,f:!1};b!==kuea&&(c.c=a.adKey);a=0<Object.keys(yhgt).length;if(!a||!this.isNative)if(ipkn[b]){var d=ipkn[b].a.slice(-1)[0]||ipkn[b].first;JSON.stringify(c.b)==JSON.stringify(d.b)?d.g+=1:(5<=ipkn[b].a.length&&ipkn[b].a.shift(),ipkn[b].a.push(c))}else ipkn[b]={first:c,a:[]};a&&e(c);return a};this.ucbx=function(a){e({c:a.adKey||kuea,a:csif, b:a.event,f:!1})}}\'undefined\'===typeof d.MoatMAK&&(d.MoatMAK=new l,d.MoatMAK.h(k),d.__zMoatInit__=!0)})(window,%s);"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j;->l:Ljava/lang/String;

    const-string p1, "Initialize"

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "UPDATE_METADATA"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "UPDATE_VIEW_INFO"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object p1

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v1, p2}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->d()V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object p1

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/j;)V

    const/4 p1, 0x3

    const-string p2, "JavaScriptBridge"

    const-string v0, "bridge initialization succeeded"

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/j;)I
    .locals 0

    iget p0, p0, Lcom/moat/analytics/mobile/vng/j;->a:I

    return p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/j;I)I
    .locals 0

    iput p1, p0, Lcom/moat/analytics/mobile/vng/j;->a:I

    return p1
.end method

.method private a(Landroid/webkit/WebView;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/vng/j;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/j;)I
    .locals 2

    iget v0, p0, Lcom/moat/analytics/mobile/vng/j;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/vng/j;->a:I

    return v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/vng/j;->f:Z

    return p1
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/vng/b;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.mqjh(\"%s\");}"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/vng/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/vng/j;->e:Z

    return p0
.end method

.method private d()V
    .locals 3

    const-string v0, "JavaScriptBridge"

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v1

    :try_start_0
    iget-object v1, v1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/moat/analytics/mobile/vng/j;->c:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    const-string v2, "Attempting to establish communication (setting environment variables)."

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/j;->c:Z

    :cond_1
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Attempt failed to establish communication (did not set environment variables)."

    invoke-static {v0, p0, v2, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private d(Lcom/moat/analytics/mobile/vng/b;)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Stopping view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/vng/i;->a(Lcom/moat/analytics/mobile/vng/b;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/vng/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Z

    return p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "JavaScriptBridge"

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->a(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaScript is not enabled in the given WebView. Can\'t "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p0, p1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/moat/analytics/mobile/vng/n;

    const-string v0, "JavaScript is not enabled in the WebView"

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/vng/n;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView is null. Can\'t "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p0, p1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/moat/analytics/mobile/vng/n;

    const-string v0, "WebView is null"

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/vng/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "JavaScriptBridge"

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "Can\'t send info, already cleaned up"

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->b:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/vng/j;->b:Z

    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moat/analytics/mobile/vng/b;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/vng/b;->f()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    :cond_5
    const-string v5, "Tracker has no subject"

    invoke-static {v2, v1, p0, v5}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    iget-boolean v5, v4, Lcom/moat/analytics/mobile/vng/b;->f:Z

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/moat/analytics/mobile/vng/b;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/moat/analytics/mobile/vng/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_7

    const-string v5, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.mqjh(\"%s\");}"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4}, Lcom/moat/analytics/mobile/vng/b;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.sglu(%s);}"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_8

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v5

    new-instance v6, Lcom/moat/analytics/mobile/vng/j$1;

    invoke-direct {v6, p0}, Lcom/moat/analytics/mobile/vng/j$1;-><init>(Lcom/moat/analytics/mobile/vng/j;)V

    invoke-virtual {v5, v4, v6}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    :goto_1
    invoke-virtual {p0, v4}, Lcom/moat/analytics/mobile/vng/j;->c(Lcom/moat/analytics/mobile/vng/b;)V

    goto :goto_0

    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView became null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_b

    const-string v3, ""

    goto :goto_3

    :cond_b
    const-string v3, "based on null url"

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", stopping tracking loop"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/j;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/j;->b()V

    :cond_c
    return-void
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/vng/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->d()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->m:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/vng/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:J

    return-wide v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/vng/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->i()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Z

    const-string v1, "JavaScriptBridge"

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    const-string v0, "Can\'t send, already cleaned up"

    invoke-static {p1, v1, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/vng/p;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 12

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Lcom/moat/analytics/mobile/vng/s$a;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->d()Lcom/moat/analytics/mobile/vng/s$b;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/s$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/s$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/s$a;->c()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/moat/analytics/mobile/vng/j;->n:Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v8, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "0"

    const-string v10, "1"

    if-ne v7, v8, :cond_0

    move-object v7, v9

    goto :goto_0

    :cond_0
    move-object v7, v10

    :goto_0
    :try_start_1
    iget-boolean v8, v1, Lcom/moat/analytics/mobile/vng/s$b;->e:Z

    if-eqz v8, :cond_1

    move-object v8, v10

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    iget-boolean v11, v1, Lcom/moat/analytics/mobile/vng/s$b;->d:Z

    if-eqz v11, :cond_2

    move-object v9, v10

    :cond_2
    const-string v10, "versionHash"

    const-string v11, "fe5b19d82fecca4c1d668e2e40e2636224135a71"

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "appName"

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "namespace"

    const-string v10, "VNG"

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    const-string v10, "2.6.3"

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deviceOS"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isNative"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appId"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    iget-object v3, v1, Lcom/moat/analytics/mobile/vng/s$b;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sim"

    iget-object v3, v1, Lcom/moat/analytics/mobile/vng/s$b;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    iget-object v1, v1, Lcom/moat/analytics/mobile/vng/s$b;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildFp"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildModel"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildMfg"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildBrand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildProduct"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildTags"

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f1"

    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f2"

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    const-string v0, "aqzx"

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const-string v0, "{}"

    return-object v0
.end method

.method static synthetic h(Lcom/moat/analytics/mobile/vng/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->e()V

    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Stopping metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/i;->a(Lcom/moat/analytics/mobile/vng/j;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "webViewReady"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "webViewReady first time"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->i()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->c()V

    return-void
.end method

.method a(Lcom/moat/analytics/mobile/vng/b;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding tracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JavaScriptBridge"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.crts(%s);}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    const-string p2, "JavaScriptBridge"

    const-string v0, "Can\'t dispatch, already cleaned up"

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "javascript:%s.dispatchEvent(%s);"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method b()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->i()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/vng/b;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method b(Lcom/moat/analytics/mobile/vng/b;)V
    .locals 3

    const-string v0, "startTracking"

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting tracking on tracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JavaScriptBridge"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.mqjh(\"%s\");}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/b;)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markUserInteractionEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "JavaScriptBridge"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.ucbx(%s);}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method c(Lcom/moat/analytics/mobile/vng/b;)V
    .locals 6

    const-string v0, "JavaScriptBridge"

    iget-boolean v1, p0, Lcom/moat/analytics/mobile/vng/j;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "stopTracking"

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->d(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/moat/analytics/mobile/vng/n; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending tracking on tracker"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.egpw(\"%s\");}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/moat/analytics/mobile/vng/b;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Failed to end impression."

    invoke-static {v0, p0, v3, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/moat/analytics/mobile/vng/n; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->n:Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/j;->b()V

    :goto_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    throw v2
.end method

.method c(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "flushDispatchQueue"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    :goto_3
    iget-object v6, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    if-ge v5, v2, :cond_4

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "javascript:%s.dispatchMany([%s])"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->g(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "finalize"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/j;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
