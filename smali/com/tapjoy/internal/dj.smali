.class public final Lcom/tapjoy/internal/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/cj;
.implements Lcom/tapjoy/internal/df$a;


# static fields
.field private static c:Lcom/tapjoy/internal/dj;


# instance fields
.field public a:F

.field public b:Lcom/tapjoy/internal/ck;

.field private final d:Lcom/tapjoy/internal/cl;

.field private final e:Lcom/tapjoy/internal/ci;

.field private f:Lcom/tapjoy/internal/de;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/cl;Lcom/tapjoy/internal/ci;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dj;->a:F

    iput-object p1, p0, Lcom/tapjoy/internal/dj;->d:Lcom/tapjoy/internal/cl;

    iput-object p2, p0, Lcom/tapjoy/internal/dj;->e:Lcom/tapjoy/internal/ci;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dj;
    .locals 3

    sget-object v0, Lcom/tapjoy/internal/dj;->c:Lcom/tapjoy/internal/dj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/internal/ci;

    invoke-direct {v0}, Lcom/tapjoy/internal/ci;-><init>()V

    new-instance v1, Lcom/tapjoy/internal/cl;

    invoke-direct {v1}, Lcom/tapjoy/internal/cl;-><init>()V

    new-instance v2, Lcom/tapjoy/internal/dj;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/dj;-><init>(Lcom/tapjoy/internal/cl;Lcom/tapjoy/internal/ci;)V

    sput-object v2, Lcom/tapjoy/internal/dj;->c:Lcom/tapjoy/internal/dj;

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/dj;->c:Lcom/tapjoy/internal/dj;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iput p1, p0, Lcom/tapjoy/internal/dj;->a:F

    .line 3000
    iget-object v0, p0, Lcom/tapjoy/internal/dj;->f:Lcom/tapjoy/internal/de;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dj;->f:Lcom/tapjoy/internal/de;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dj;->f:Lcom/tapjoy/internal/de;

    .line 4000
    iget-object v0, v0, Lcom/tapjoy/internal/de;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/cy;

    .line 5000
    iget-object v1, v1, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/dv;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/dy;->b()V

    return-void

    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    .line 2000
    invoke-static {}, Lcom/tapjoy/internal/dy;->c()V

    return-void
.end method
