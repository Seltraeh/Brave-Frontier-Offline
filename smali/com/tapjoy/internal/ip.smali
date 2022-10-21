.class public final Lcom/tapjoy/internal/ip;
.super Lcom/tapjoy/internal/im;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/im<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/tapjoy/internal/fd;

.field private final d:Lcom/tapjoy/internal/ex;

.field private final e:Lcom/tapjoy/internal/fk;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tapjoy/internal/im;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tapjoy/internal/ip;->c:Lcom/tapjoy/internal/fd;

    .line 21
    iput-object p2, p0, Lcom/tapjoy/internal/ip;->d:Lcom/tapjoy/internal/ex;

    .line 22
    iput-object p3, p0, Lcom/tapjoy/internal/ip;->e:Lcom/tapjoy/internal/fk;

    .line 23
    iput-object p4, p0, Lcom/tapjoy/internal/ip;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fe;Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p1, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    iget-object v1, p1, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    iget-object p1, p1, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tapjoy/internal/ip;-><init>(Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "api/v1/tokens"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lcom/tapjoy/internal/im;->e()Ljava/util/Map;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/ip;->c:Lcom/tapjoy/internal/fd;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fd;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/ip;->d:Lcom/tapjoy/internal/ex;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/ex;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/ip;->e:Lcom/tapjoy/internal/fk;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fk;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/tapjoy/internal/ip;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/tapjoy/internal/ip;->f:Ljava/lang/String;

    const-string v2, "push_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
