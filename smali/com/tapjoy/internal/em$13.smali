.class final Lcom/tapjoy/internal/em$13;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 2

    .line 310
    check-cast p1, Ljava/lang/Long;

    .line 3312
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/eo;->b(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/eo;->a(J)I

    move-result p1

    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 6

    .line 1320
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->d()J

    move-result-wide v0

    const/4 p1, 0x1

    ushr-long v2, v0, p1

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 2

    .line 310
    check-cast p2, Ljava/lang/Long;

    .line 2316
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/eo;->b(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/eo;->c(J)V

    return-void
.end method
