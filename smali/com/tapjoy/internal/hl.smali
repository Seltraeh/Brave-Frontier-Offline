.class public final Lcom/tapjoy/internal/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ca;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ca<",
        "Lcom/tapjoy/internal/in$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/tapjoy/internal/hd;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/hk;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/in;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/hd;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tapjoy/internal/hl;->a:Lcom/tapjoy/internal/hd;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hl;->b:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/tapjoy/internal/jy;->a()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hl;->c:Ljava/util/Map;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/tapjoy/internal/hl;->d:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/in$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/bv<",
            "Lcom/tapjoy/internal/in$a;",
            ">;",
            "Lcom/tapjoy/internal/in$a;",
            ")V"
        }
    .end annotation

    .line 185
    instance-of v0, p1, Lcom/tapjoy/internal/in;

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p2, Lcom/tapjoy/internal/in$a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1058
    monitor-enter p0

    .line 1211
    :try_start_0
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/tapjoy/internal/jw;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/jz;->a(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v1

    .line 1059
    :goto_0
    iput-object v1, p0, Lcom/tapjoy/internal/hl;->d:Ljava/util/Set;

    .line 1060
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 190
    :cond_1
    :goto_1
    check-cast p1, Lcom/tapjoy/internal/in;

    .line 191
    iget-object v0, p1, Lcom/tapjoy/internal/in;->c:Ljava/lang/String;

    .line 192
    iget-boolean p1, p1, Lcom/tapjoy/internal/in;->d:Z

    .line 193
    iget-object v1, p0, Lcom/tapjoy/internal/hl;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/tapjoy/internal/hl;->b:Ljava/util/Map;

    iget-object v2, p2, Lcom/tapjoy/internal/in$a;->a:Lcom/tapjoy/internal/hk;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    iget-object p2, p2, Lcom/tapjoy/internal/in$a;->a:Lcom/tapjoy/internal/hk;

    .line 2167
    iget-object v1, p0, Lcom/tapjoy/internal/hl;->a:Lcom/tapjoy/internal/hd;

    .line 2956
    iget-object v1, v1, Lcom/tapjoy/internal/hd;->o:Lcom/tapjoy/internal/he;

    .line 2168
    instance-of v2, p2, Lcom/tapjoy/internal/hj;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const-string p1, "No content for \"{}\""

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v0, p2, v3

    .line 2169
    invoke-static {p1, p2}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2170
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "New content for \"{}\" is ready"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 2172
    invoke-static {v2, v4}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 2174
    new-instance p1, Lcom/tapjoy/internal/fz;

    invoke-direct {p1}, Lcom/tapjoy/internal/fz;-><init>()V

    invoke-virtual {p2, v1, p1}, Lcom/tapjoy/internal/hk;->a(Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V

    return-void

    .line 2176
    :cond_4
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/he;->b(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 52
    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    :try_start_0
    iput-object v0, p0, Lcom/tapjoy/internal/hl;->d:Ljava/util/Set;

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/tapjoy/internal/bv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/bv<",
            "Lcom/tapjoy/internal/in$a;",
            ">;)V"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/tapjoy/internal/in$a;

    new-instance v1, Lcom/tapjoy/internal/hj;

    invoke-direct {v1}, Lcom/tapjoy/internal/hj;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/in$a;-><init>(Lcom/tapjoy/internal/hk;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/hl;->a(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/in$a;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/bv;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/tapjoy/internal/in$a;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/hl;->a(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/in$a;)V

    return-void
.end method
