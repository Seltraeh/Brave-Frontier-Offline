.class final Lcom/tapjoy/internal/hd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ca<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/hd;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hd;Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/tapjoy/internal/hd$1;->b:Lcom/tapjoy/internal/hd;

    iput-object p2, p0, Lcom/tapjoy/internal/hd$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/bv<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Lcom/tapjoy/internal/bv;Ljava/lang/Object;)V
    .locals 4

    .line 1259
    iget-object p1, p0, Lcom/tapjoy/internal/hd$1;->b:Lcom/tapjoy/internal/hd;

    invoke-static {p1}, Lcom/tapjoy/internal/hd;->a(Lcom/tapjoy/internal/hd;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/hf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hf;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/hd$1;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 2106
    iget-object v2, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v3, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2110
    :cond_0
    iget-object p2, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Z)V

    .line 2116
    iget-object p2, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object p1, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {p2, p1, v0, v1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;J)V

    return-void
.end method
