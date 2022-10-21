.class public final Lcom/tapjoy/internal/in;
.super Lcom/tapjoy/internal/im;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/in$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/im<",
        "Lcom/tapjoy/internal/in$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field private final e:Lcom/tapjoy/internal/hd;

.field private final f:Lcom/tapjoy/internal/fd;

.field private final g:Lcom/tapjoy/internal/ex;

.field private final h:Lcom/tapjoy/internal/fk;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/hd;Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tapjoy/internal/im;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tapjoy/internal/in;->e:Lcom/tapjoy/internal/hd;

    .line 45
    iput-object p2, p0, Lcom/tapjoy/internal/in;->f:Lcom/tapjoy/internal/fd;

    .line 46
    iput-object p3, p0, Lcom/tapjoy/internal/in;->g:Lcom/tapjoy/internal/ex;

    .line 47
    iput-object p4, p0, Lcom/tapjoy/internal/in;->h:Lcom/tapjoy/internal/fk;

    .line 48
    iput-object p5, p0, Lcom/tapjoy/internal/in;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/tapjoy/internal/in;->d:Z

    .line 50
    iput-object p6, p0, Lcom/tapjoy/internal/in;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .locals 6

    .line 1086
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1087
    :goto_0
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1088
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "interstitial"

    .line 1089
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1090
    sget-object v0, Lcom/tapjoy/internal/hy;->n:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bi;->a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hy;

    goto :goto_0

    :cond_0
    const-string v4, "contextual_button"

    .line 1091
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    sget-object v1, Lcom/tapjoy/internal/hv;->d:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bi;->a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/hv;

    goto :goto_0

    :cond_1
    const-string v4, "enabled_placements"

    .line 1093
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1094
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->c()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1096
    :cond_2
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->s()V

    goto :goto_0

    .line 1099
    :cond_3
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->i()V

    if-eqz v0, :cond_5

    .line 1100
    invoke-virtual {v0}, Lcom/tapjoy/internal/hy;->a()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/tapjoy/internal/hy;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1101
    :cond_4
    new-instance p1, Lcom/tapjoy/internal/in$a;

    new-instance v1, Lcom/tapjoy/internal/hi;

    iget-object v3, p0, Lcom/tapjoy/internal/in;->e:Lcom/tapjoy/internal/hd;

    iget-object v4, p0, Lcom/tapjoy/internal/in;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/in;->i:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/tapjoy/internal/hi;-><init>(Lcom/tapjoy/internal/hd;Ljava/lang/String;Lcom/tapjoy/internal/hy;Landroid/content/Context;)V

    invoke-direct {p1, v1, v2}, Lcom/tapjoy/internal/in$a;-><init>(Lcom/tapjoy/internal/hk;Ljava/util/List;)V

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    .line 1104
    new-instance p1, Lcom/tapjoy/internal/in$a;

    new-instance v0, Lcom/tapjoy/internal/gz;

    iget-object v3, p0, Lcom/tapjoy/internal/in;->e:Lcom/tapjoy/internal/hd;

    iget-object v4, p0, Lcom/tapjoy/internal/in;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/in;->i:Landroid/content/Context;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/tapjoy/internal/gz;-><init>(Lcom/tapjoy/internal/hd;Ljava/lang/String;Lcom/tapjoy/internal/hv;Landroid/content/Context;)V

    invoke-direct {p1, v0, v2}, Lcom/tapjoy/internal/in$a;-><init>(Lcom/tapjoy/internal/hk;Ljava/util/List;)V

    return-object p1

    .line 1106
    :cond_6
    new-instance p1, Lcom/tapjoy/internal/in$a;

    new-instance v0, Lcom/tapjoy/internal/hj;

    invoke-direct {v0}, Lcom/tapjoy/internal/hj;-><init>()V

    invoke-direct {p1, v0, v2}, Lcom/tapjoy/internal/in$a;-><init>(Lcom/tapjoy/internal/hk;Ljava/util/List;)V

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "placement"

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

    .line 60
    invoke-super {p0}, Lcom/tapjoy/internal/im;->e()Ljava/util/Map;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/in;->f:Lcom/tapjoy/internal/fd;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fd;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/in;->g:Lcom/tapjoy/internal/ex;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/ex;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/in;->h:Lcom/tapjoy/internal/fk;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fk;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/tapjoy/internal/in;->c:Ljava/lang/String;

    const-string v2, "placement"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic f()Ljava/lang/Object;
    .locals 3

    .line 2070
    invoke-super {p0}, Lcom/tapjoy/internal/im;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/in$a;

    .line 2071
    iget-object v1, v0, Lcom/tapjoy/internal/in$a;->a:Lcom/tapjoy/internal/hk;

    instance-of v2, v1, Lcom/tapjoy/internal/hj;

    if-nez v2, :cond_0

    .line 2072
    invoke-virtual {v1}, Lcom/tapjoy/internal/hk;->b()V

    .line 2073
    iget-object v1, v0, Lcom/tapjoy/internal/in$a;->a:Lcom/tapjoy/internal/hk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/hk;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2075
    new-instance v1, Lcom/tapjoy/internal/hj;

    invoke-direct {v1}, Lcom/tapjoy/internal/hj;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/in$a;->a:Lcom/tapjoy/internal/hk;

    :cond_0
    return-object v0
.end method
