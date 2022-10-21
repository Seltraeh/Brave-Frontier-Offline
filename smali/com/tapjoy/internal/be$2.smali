.class final Lcom/tapjoy/internal/be$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .locals 3

    .line 1035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1036
    sget-object v1, Lcom/tapjoy/internal/be$3;->a:[I

    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->k()Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1049
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->h()V

    .line 1050
    :goto_0
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1051
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    .line 1052
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const-string v2, "top"

    .line 1054
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const-string v2, "right"

    .line 1056
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    const-string v2, "bottom"

    .line 1058
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1059
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1061
    :cond_3
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->s()V

    goto :goto_0

    .line 1064
    :cond_4
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->i()V

    goto :goto_2

    .line 1067
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->k()Lcom/tapjoy/internal/bn;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_6
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->f()V

    .line 1039
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1040
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1041
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1042
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1043
    :goto_1
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1044
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->s()V

    goto :goto_1

    .line 1046
    :cond_7
    invoke-interface {p1}, Lcom/tapjoy/internal/bk;->g()V

    :goto_2
    return-object v0
.end method
