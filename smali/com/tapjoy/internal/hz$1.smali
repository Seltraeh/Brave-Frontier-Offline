.class final Lcom/tapjoy/internal/hz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Lcom/tapjoy/internal/hz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/tapjoy/internal/bi;)Landroid/graphics/Point;
    .locals 4

    .line 45
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->h()V

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offset"

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->h()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :goto_1
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->r()I

    move-result v0

    goto :goto_1

    :cond_0
    const-string v3, "y"

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->s()V

    goto :goto_1

    .line 62
    :cond_2
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->i()V

    .line 63
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->s()V

    goto :goto_0

    .line 68
    :cond_4
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->i()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .locals 5

    .line 1078
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1080
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1081
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    .line 1082
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1083
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object v3

    .line 1084
    invoke-static {v3}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1085
    new-instance v0, Lcom/tapjoy/internal/ib;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tapjoy/internal/ib;-><init>(Ljava/net/URL;)V

    goto :goto_0

    :cond_1
    const-string v4, "landscape"

    .line 1087
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1088
    invoke-static {p1}, Lcom/tapjoy/internal/hz$1;->b(Lcom/tapjoy/internal/bi;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v4, "portrait"

    .line 1089
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1090
    invoke-static {p1}, Lcom/tapjoy/internal/hz$1;->b(Lcom/tapjoy/internal/bi;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    .line 1092
    :cond_3
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->s()V

    goto :goto_0

    .line 1095
    :cond_4
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->i()V

    .line 1097
    new-instance p1, Lcom/tapjoy/internal/hz;

    invoke-direct {p1, v0, v1, v2}, Lcom/tapjoy/internal/hz;-><init>(Lcom/tapjoy/internal/ib;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object p1
.end method
