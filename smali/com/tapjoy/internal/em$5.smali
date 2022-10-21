.class final Lcom/tapjoy/internal/em$5;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/em<",
        "Lcom/tapjoy/internal/iy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 381
    check-cast p1, Lcom/tapjoy/internal/iy;

    .line 3383
    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result p1

    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 2

    .line 2258
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->g()J

    move-result-wide v0

    .line 2259
    iget-object p1, p1, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {p1, v0, v1}, Lcom/tapjoy/internal/ix;->b(J)Lcom/tapjoy/internal/iy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 0

    .line 381
    check-cast p2, Lcom/tapjoy/internal/iy;

    .line 2387
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/eo;->a(Lcom/tapjoy/internal/iy;)V

    return-void
.end method
