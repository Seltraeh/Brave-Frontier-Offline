.class public final Lcom/tapjoy/internal/dy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/dk$a;


# static fields
.field public static a:Landroid/os/Handler;

.field private static c:Lcom/tapjoy/internal/dy;

.field private static d:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/tapjoy/internal/dl;

.field private g:Lcom/tapjoy/internal/dz;

.field private h:Lcom/tapjoy/internal/eg;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/dy;

    invoke-direct {v0}, Lcom/tapjoy/internal/dy;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dy;->c:Lcom/tapjoy/internal/dy;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/dy;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/internal/dy$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/dy$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dy;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/tapjoy/internal/dy$3;

    invoke-direct {v0}, Lcom/tapjoy/internal/dy$3;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dy;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dy;->b:Ljava/util/List;

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    new-instance v0, Lcom/tapjoy/internal/dl;

    invoke-direct {v0}, Lcom/tapjoy/internal/dl;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dl;

    new-instance v0, Lcom/tapjoy/internal/eg;

    new-instance v1, Lcom/tapjoy/internal/ec;

    invoke-direct {v1}, Lcom/tapjoy/internal/ec;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/eg;-><init>(Lcom/tapjoy/internal/ec;)V

    iput-object v0, p0, Lcom/tapjoy/internal/dy;->h:Lcom/tapjoy/internal/eg;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dy;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dy;->c:Lcom/tapjoy/internal/dy;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/dy;)Lcom/tapjoy/internal/eg;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/dy;->h:Lcom/tapjoy/internal/eg;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/tapjoy/internal/dk;Lorg/json/JSONObject;I)V
    .locals 1

    sget v0, Lcom/tapjoy/internal/eh;->a:I

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2, p1, p3, p0, p4}, Lcom/tapjoy/internal/dk;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/tapjoy/internal/dk$a;Z)V

    return-void
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    sget-object v1, Lcom/tapjoy/internal/dy;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    sget-object v1, Lcom/tapjoy/internal/dy;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/dy;)V
    .locals 14

    const/4 v0, 0x0

    .line 9000
    iput v0, p0, Lcom/tapjoy/internal/dy;->e:I

    .line 10000
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 9000
    iput-wide v1, p0, Lcom/tapjoy/internal/dy;->i:J

    .line 11000
    iget-object v1, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 12000
    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 13000
    iget-object v2, v2, Lcom/tapjoy/internal/de;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 12000
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/cy;

    invoke-virtual {v4}, Lcom/tapjoy/internal/cy;->c()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tapjoy/internal/cy;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 14000
    iget-object v6, v4, Lcom/tapjoy/internal/cy;->f:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 15000
    invoke-virtual {v5}, Landroid/view/View;->hasWindowFocus()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "noWindowFocus"

    goto :goto_2

    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_4

    invoke-static {v8}, Lcom/tapjoy/internal/ds;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object v7, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v9, v8, Landroid/view/View;

    if-eqz v9, :cond_3

    check-cast v8, Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v8, v3

    goto :goto_1

    :cond_4
    iget-object v8, v1, Lcom/tapjoy/internal/dz;->d:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-object v7, v3

    :goto_2
    if-nez v7, :cond_5

    .line 12000
    iget-object v7, v1, Lcom/tapjoy/internal/dz;->e:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/tapjoy/internal/dz;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/dz;->a(Lcom/tapjoy/internal/cy;)V

    goto :goto_0

    :cond_5
    iget-object v4, v1, Lcom/tapjoy/internal/dz;->f:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tapjoy/internal/dz;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/tapjoy/internal/dz;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v4, v1, Lcom/tapjoy/internal/dz;->f:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tapjoy/internal/dz;->g:Ljava/util/HashMap;

    const-string v5, "noAdView"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16000
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 11000
    iget-object v4, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dl;

    .line 17000
    iget-object v4, v4, Lcom/tapjoy/internal/dl;->b:Lcom/tapjoy/internal/dm;

    .line 11000
    iget-object v5, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 18000
    iget-object v5, v5, Lcom/tapjoy/internal/dz;->f:Ljava/util/HashSet;

    .line 11000
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 19000
    iget-object v5, v5, Lcom/tapjoy/internal/dz;->f:Ljava/util/HashSet;

    .line 11000
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v3}, Lcom/tapjoy/internal/dk;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v7, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 20000
    iget-object v7, v7, Lcom/tapjoy/internal/dz;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 21000
    iget-object v8, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dl;

    .line 22000
    iget-object v8, v8, Lcom/tapjoy/internal/dl;->a:Lcom/tapjoy/internal/dn;

    .line 21000
    iget-object v9, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 23000
    iget-object v9, v9, Lcom/tapjoy/internal/dz;->g:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 21000
    invoke-interface {v8, v7}, Lcom/tapjoy/internal/dk;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/tapjoy/internal/dp;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 11000
    :cond_8
    invoke-static {v10}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/tapjoy/internal/dy;->h:Lcom/tapjoy/internal/eg;

    .line 24000
    iget-object v6, v8, Lcom/tapjoy/internal/eg;->a:Lcom/tapjoy/internal/ec;

    new-instance v13, Lcom/tapjoy/internal/ee;

    move-object v7, v13

    move-wide v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/tapjoy/internal/ee;-><init>(Lcom/tapjoy/internal/eb$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v6, v13}, Lcom/tapjoy/internal/ec;->a(Lcom/tapjoy/internal/eb;)V

    goto :goto_3

    .line 11000
    :cond_9
    iget-object v5, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 25000
    iget-object v5, v5, Lcom/tapjoy/internal/dz;->e:Ljava/util/HashSet;

    .line 11000
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-interface {v4, v3}, Lcom/tapjoy/internal/dk;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v10

    sget v5, Lcom/tapjoy/internal/eh;->a:I

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/tapjoy/internal/dy;->a(Landroid/view/View;Lcom/tapjoy/internal/dk;Lorg/json/JSONObject;I)V

    invoke-static {v10}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;)V

    iget-object v8, p0, Lcom/tapjoy/internal/dy;->h:Lcom/tapjoy/internal/eg;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 26000
    iget-object v9, v3, Lcom/tapjoy/internal/dz;->e:Ljava/util/HashSet;

    .line 27000
    iget-object v3, v8, Lcom/tapjoy/internal/eg;->a:Lcom/tapjoy/internal/ec;

    new-instance v4, Lcom/tapjoy/internal/ef;

    move-object v7, v4

    move-wide v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/tapjoy/internal/ef;-><init>(Lcom/tapjoy/internal/eb$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/ec;->a(Lcom/tapjoy/internal/eb;)V

    goto :goto_4

    .line 11000
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/dy;->h:Lcom/tapjoy/internal/eg;

    invoke-virtual {v1}, Lcom/tapjoy/internal/eg;->b()V

    :goto_4
    iget-object v1, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 28000
    iget-object v2, v1, Lcom/tapjoy/internal/dz;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dz;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dz;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dz;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dz;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dz;->f:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dz;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-boolean v0, v1, Lcom/tapjoy/internal/dz;->h:Z

    .line 30000
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 29000
    iget-wide v2, p0, Lcom/tapjoy/internal/dy;->i:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dy;->a(J)V

    return-void
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tapjoy/internal/dy;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dy;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dy;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dy;->k:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/tapjoy/internal/dk;Lorg/json/JSONObject;)V
    .locals 5

    .line 1000
    invoke-static {p1}, Lcom/tapjoy/internal/ds;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 2000
    iget-object v3, v0, Lcom/tapjoy/internal/dz;->d:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v0, Lcom/tapjoy/internal/eh;->a:I

    goto :goto_1

    :cond_2
    iget-boolean v0, v0, Lcom/tapjoy/internal/dz;->h:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/tapjoy/internal/eh;->b:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/tapjoy/internal/eh;->c:I

    :goto_1
    sget v3, Lcom/tapjoy/internal/eh;->c:I

    if-ne v0, v3, :cond_4

    return-void

    :cond_4
    invoke-interface {p2, p1}, Lcom/tapjoy/internal/dk;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 3000
    iget-object p3, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 4000
    iget-object v4, p3, Lcom/tapjoy/internal/dz;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_5

    const/4 p3, 0x0

    goto :goto_2

    :cond_5
    iget-object v4, p3, Lcom/tapjoy/internal/dz;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object p3, p3, Lcom/tapjoy/internal/dz;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object p3, v4

    :goto_2
    if-eqz p3, :cond_7

    .line 3000
    invoke-static {v3, p3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 5000
    iput-boolean v2, p3, Lcom/tapjoy/internal/dz;->h:Z

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_a

    .line 6000
    iget-object p3, p0, Lcom/tapjoy/internal/dy;->g:Lcom/tapjoy/internal/dz;

    .line 7000
    iget-object v1, p3, Lcom/tapjoy/internal/dz;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/dz$a;

    if-eqz v1, :cond_8

    iget-object p3, p3, Lcom/tapjoy/internal/dz;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v1, :cond_9

    .line 6000
    invoke-static {v3, v1}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Lcom/tapjoy/internal/dz$a;)V

    :cond_9
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/tapjoy/internal/dy;->a(Landroid/view/View;Lcom/tapjoy/internal/dk;Lorg/json/JSONObject;I)V

    :cond_a
    iget p1, p0, Lcom/tapjoy/internal/dy;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/tapjoy/internal/dy;->e:I

    return-void
.end method
