.class public final Lcom/tapjoy/internal/gc;
.super Lcom/tapjoy/internal/gn;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/tapjoy/internal/gn$a;

.field private final d:Lcom/tapjoy/internal/gn$a;

.field private final e:Lcom/tapjoy/internal/gn$a;

.field private final f:Lcom/tapjoy/internal/gn$a;

.field private final g:Lcom/tapjoy/internal/gn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/gc;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 49
    invoke-direct {p0}, Lcom/tapjoy/internal/gn;-><init>()V

    const-string v0, "BuildConfig"

    .line 51
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gn$a;

    const-string v0, "ServerFinal"

    .line 52
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->d:Lcom/tapjoy/internal/gn$a;

    const-string v0, "AppRuntime"

    .line 53
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/gn$a;

    .line 54
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/gn$a;->b:Ljava/util/Map;

    const-string v0, "ConnectFlags"

    .line 55
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/gn$a;

    const-string v0, "ServerDefault"

    .line 56
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->g:Lcom/tapjoy/internal/gn$a;

    const-string v0, "SDKDefault"

    .line 57
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gn$a;

    move-result-object v0

    .line 1072
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, -0x1

    .line 1079
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "placement_request_content_retry_timeout"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Number;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1081
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "placement_request_content_retry_backoff"

    .line 1080
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object v1, v0, Lcom/tapjoy/internal/gn$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    sget-object v2, Lcom/tapjoy/internal/gc;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/gn$a;

    iget-object v3, v3, Lcom/tapjoy/internal/gn$a;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/gn$a;

    iput-object v0, p1, Lcom/tapjoy/internal/gn$a;->b:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Lcom/tapjoy/internal/gn;->setChanged()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "final"

    .line 93
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "default"

    .line 94
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->d:Lcom/tapjoy/internal/gn$a;

    iput-object v0, v1, Lcom/tapjoy/internal/gn$a;->b:Ljava/util/Map;

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->g:Lcom/tapjoy/internal/gn$a;

    iput-object p1, v0, Lcom/tapjoy/internal/gn$a;->b:Ljava/util/Map;

    .line 99
    invoke-virtual {p0}, Lcom/tapjoy/internal/gn;->setChanged()V

    return-void
.end method
