.class public final Lcom/tapjoy/internal/cy;
.super Lcom/tapjoy/internal/cn;


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/tapjoy/internal/co;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/dg;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/tapjoy/internal/dv;

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field private final j:Lcom/tapjoy/internal/cp;

.field private k:Lcom/tapjoy/internal/dt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/cy;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/co;Lcom/tapjoy/internal/cp;)V
    .locals 5

    invoke-direct {p0}, Lcom/tapjoy/internal/cn;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/cy;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/cy;->d:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    iput-object p1, p0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/co;

    iput-object p2, p0, Lcom/tapjoy/internal/cy;->j:Lcom/tapjoy/internal/cp;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/cy;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/cy;->b(Landroid/view/View;)V

    .line 1000
    iget-object v1, p2, Lcom/tapjoy/internal/cp;->h:Lcom/tapjoy/internal/cq;

    sget-object v2, Lcom/tapjoy/internal/cq;->a:Lcom/tapjoy/internal/cq;

    if-eq v1, v2, :cond_1

    .line 2000
    sget-object v2, Lcom/tapjoy/internal/cq;->c:Lcom/tapjoy/internal/cq;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3000
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/dx;

    .line 4000
    iget-object v2, p2, Lcom/tapjoy/internal/cp;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 5000
    iget-object p2, p2, Lcom/tapjoy/internal/cp;->e:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/tapjoy/internal/dx;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    goto :goto_1

    .line 2000
    :cond_1
    :goto_0
    new-instance v1, Lcom/tapjoy/internal/dw;

    .line 3000
    iget-object p2, p2, Lcom/tapjoy/internal/cp;->b:Landroid/webkit/WebView;

    invoke-direct {v1, p2}, Lcom/tapjoy/internal/dw;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 5000
    :goto_1
    iget-object p2, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    invoke-virtual {p2}, Lcom/tapjoy/internal/dv;->a()V

    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object p2

    .line 6000
    iget-object p2, p2, Lcom/tapjoy/internal/de;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 7000
    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tapjoy/internal/dv;->c()Landroid/webkit/WebView;

    move-result-object p2

    .line 8000
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->a:Lcom/tapjoy/internal/cv;

    const-string v4, "impressionOwner"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->b:Lcom/tapjoy/internal/cv;

    const-string v4, "mediaEventsOwner"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->d:Lcom/tapjoy/internal/cr;

    const-string v4, "creativeType"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->e:Lcom/tapjoy/internal/cu;

    const-string v4, "impressionType"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/tapjoy/internal/co;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "isolateVerificationScripts"

    invoke-static {v2, v3, p1}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const-string v0, "init"

    .line 9000
    invoke-virtual {v1, p2, v0, p1}, Lcom/tapjoy/internal/di;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/dt;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/dt;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tapjoy/internal/cy;->k:Lcom/tapjoy/internal/dt;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/cy;->d:Z

    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object v1

    .line 10000
    invoke-virtual {v1}, Lcom/tapjoy/internal/de;->b()Z

    move-result v2

    iget-object v1, v1, Lcom/tapjoy/internal/de;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tapjoy/internal/dj;->a()Lcom/tapjoy/internal/dj;

    move-result-object v1

    .line 11000
    invoke-static {}, Lcom/tapjoy/internal/df;->a()Lcom/tapjoy/internal/df;

    move-result-object v2

    .line 12000
    iput-object v1, v2, Lcom/tapjoy/internal/df;->c:Lcom/tapjoy/internal/df$a;

    .line 11000
    invoke-static {}, Lcom/tapjoy/internal/df;->a()Lcom/tapjoy/internal/df;

    move-result-object v2

    .line 13000
    iput-boolean v0, v2, Lcom/tapjoy/internal/df;->a:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/tapjoy/internal/df;->b:Z

    invoke-virtual {v2}, Lcom/tapjoy/internal/df;->b()V

    .line 11000
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    .line 14000
    invoke-static {}, Lcom/tapjoy/internal/dy;->b()V

    .line 11000
    iget-object v1, v1, Lcom/tapjoy/internal/dj;->b:Lcom/tapjoy/internal/ck;

    .line 15000
    invoke-virtual {v1}, Lcom/tapjoy/internal/ck;->a()F

    move-result v2

    iput v2, v1, Lcom/tapjoy/internal/ck;->b:F

    invoke-virtual {v1}, Lcom/tapjoy/internal/ck;->b()V

    iget-object v2, v1, Lcom/tapjoy/internal/ck;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/dj;->a()Lcom/tapjoy/internal/dj;

    move-result-object v0

    .line 16000
    iget v0, v0, Lcom/tapjoy/internal/dj;->a:F

    iget-object v1, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/dv;->a(F)V

    iget-object v0, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    iget-object v1, p0, Lcom/tapjoy/internal/cy;->j:Lcom/tapjoy/internal/cp;

    invoke-virtual {v0, p0, v1}, Lcom/tapjoy/internal/dv;->a(Lcom/tapjoy/internal/cy;Lcom/tapjoy/internal/cp;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/cy;->c()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/cy;->b(Landroid/view/View;)V

    .line 20000
    iget-object v0, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dv;->d()V

    .line 21000
    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object v0

    .line 22000
    iget-object v0, v0, Lcom/tapjoy/internal/de;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21000
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/cy;

    if-eq v1, p0, :cond_2

    invoke-virtual {v1}, Lcom/tapjoy/internal/cy;->c()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, v1, Lcom/tapjoy/internal/cy;->k:Lcom/tapjoy/internal/dt;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/cs;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    if-nez v0, :cond_0

    const-string v0, "Error type is null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Message is null"

    invoke-static {p2, v0}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17000
    iget-object v0, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 18000
    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dv;->c()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 19000
    invoke-virtual {p1}, Lcom/tapjoy/internal/cs;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "error"

    invoke-virtual {v1, v0, p1, v2}, Lcom/tapjoy/internal/di;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdSession is finished"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/cy;->k:Lcom/tapjoy/internal/dt;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 23000
    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/cy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    .line 24000
    iget-object v0, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 25000
    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dv;->c()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "finishSession"

    .line 26000
    invoke-virtual {v1, v0, v4, v3}, Lcom/tapjoy/internal/di;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object v0

    .line 27000
    invoke-virtual {v0}, Lcom/tapjoy/internal/de;->b()Z

    move-result v1

    iget-object v3, v0, Lcom/tapjoy/internal/de;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/tapjoy/internal/de;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/internal/de;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tapjoy/internal/dj;->a()Lcom/tapjoy/internal/dj;

    move-result-object v0

    .line 28000
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v1

    .line 30000
    invoke-static {}, Lcom/tapjoy/internal/dy;->c()V

    .line 29000
    iget-object v4, v1, Lcom/tapjoy/internal/dy;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/tapjoy/internal/dy;->a:Landroid/os/Handler;

    new-instance v5, Lcom/tapjoy/internal/dy$1;

    invoke-direct {v5, v1}, Lcom/tapjoy/internal/dy$1;-><init>(Lcom/tapjoy/internal/dy;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28000
    invoke-static {}, Lcom/tapjoy/internal/df;->a()Lcom/tapjoy/internal/df;

    move-result-object v1

    .line 31000
    iput-boolean v2, v1, Lcom/tapjoy/internal/df;->a:Z

    iput-boolean v2, v1, Lcom/tapjoy/internal/df;->b:Z

    iput-object v3, v1, Lcom/tapjoy/internal/df;->c:Lcom/tapjoy/internal/df$a;

    .line 28000
    iget-object v0, v0, Lcom/tapjoy/internal/dj;->b:Lcom/tapjoy/internal/ck;

    .line 32000
    iget-object v1, v0, Lcom/tapjoy/internal/ck;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 33000
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dv;->b()V

    iput-object v3, p0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/cy;->k:Lcom/tapjoy/internal/dt;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/cy;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
