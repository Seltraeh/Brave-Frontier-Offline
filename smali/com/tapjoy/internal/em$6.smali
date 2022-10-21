.class final Lcom/tapjoy/internal/em$6;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/em<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic r:Lcom/tapjoy/internal/em;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/em;Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/tapjoy/internal/em$6;->r:Lcom/tapjoy/internal/em;

    invoke-direct {p0, p2, p3}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)I
    .locals 5

    .line 464
    check-cast p2, Ljava/util/List;

    .line 4471
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4472
    iget-object v3, p0, Lcom/tapjoy/internal/em$6;->r:Lcom/tapjoy/internal/em;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .line 5466
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Repeated values can only be sized with a tag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/tapjoy/internal/em$6;->r:Lcom/tapjoy/internal/em;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object p1

    .line 1490
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V
    .locals 4

    .line 464
    check-cast p3, Ljava/util/List;

    .line 2483
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2484
    iget-object v2, p0, Lcom/tapjoy/internal/em$6;->r:Lcom/tapjoy/internal/em;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 0

    .line 3478
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Repeated values can only be encoded with a tag."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
