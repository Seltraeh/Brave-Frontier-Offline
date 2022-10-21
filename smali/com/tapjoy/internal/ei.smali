.class public abstract Lcom/tapjoy/internal/ei;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/tapjoy/internal/ep;",
        ">",
        "Lcom/tapjoy/internal/em<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/tapjoy/internal/ep;

    .line 3029
    invoke-interface {p1}, Lcom/tapjoy/internal/ep;->a()I

    move-result p1

    invoke-static {p1}, Lcom/tapjoy/internal/eo;->a(I)I

    move-result p1

    return p1
.end method

.method protected abstract a(I)Lcom/tapjoy/internal/ep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 2

    .line 1037
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->c()I

    move-result p1

    .line 1038
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ei;->a(I)Lcom/tapjoy/internal/ep;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1040
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/em$a;

    iget-object v1, p0, Lcom/tapjoy/internal/em;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/em$a;-><init>(ILjava/lang/Class;)V

    throw v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/tapjoy/internal/ep;

    .line 2033
    invoke-interface {p2}, Lcom/tapjoy/internal/ep;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/eo;->c(I)V

    return-void
.end method
