.class public abstract Lcom/tapjoy/internal/gj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gj$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/gj$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Lcom/tapjoy/internal/gj;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/tapjoy/internal/gj$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gj$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/tapjoy/internal/gj;->d:Z

    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/tapjoy/internal/gj;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;
    .locals 2

    .line 191
    new-instance v0, Lcom/tapjoy/internal/gj$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gj$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->a()Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/tapjoy/internal/gj;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gl;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/gj;

    if-nez v0, :cond_0

    .line 88
    sput-object p0, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/gj;

    .line 89
    sget-boolean v0, Lcom/tapjoy/internal/gj;->d:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl;->a(J)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tapjoy/internal/gj$a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p1, Lcom/tapjoy/internal/gj$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 232
    :cond_0
    iget-object p0, p1, Lcom/tapjoy/internal/gj$a;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/TreeMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 163
    invoke-static {p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 133
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/internal/gj;->a:Ljava/util/Set;

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 134
    sput-object p0, Lcom/tapjoy/internal/gj;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    .line 107
    sget-boolean v0, Lcom/tapjoy/internal/gj;->d:Z

    if-eq v0, p0, :cond_1

    .line 108
    sput-boolean p0, Lcom/tapjoy/internal/gj;->d:Z

    .line 109
    sget-object v0, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/gj;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 111
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/gj;->a(J)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj;->a()V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;
    .locals 1

    .line 201
    sget-object v0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gj$a;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->b()Lcom/tapjoy/internal/gj$a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/tapjoy/internal/gj$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gj$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/tapjoy/internal/gj;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    sget-boolean v0, Lcom/tapjoy/internal/gj;->d:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/gj;

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/gj;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;
    .locals 1

    .line 210
    sget-object v0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/gj$a;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;
    .locals 1

    .line 218
    sget-object v0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/gj$a;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;
    .locals 1

    .line 244
    new-instance v0, Lcom/tapjoy/internal/gj$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gj$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(J)V
.end method

.method protected abstract a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
