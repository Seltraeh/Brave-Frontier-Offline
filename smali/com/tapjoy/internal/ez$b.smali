.class final Lcom/tapjoy/internal/ez$b;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/em<",
        "Lcom/tapjoy/internal/ez;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 97
    sget-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    const-class v1, Lcom/tapjoy/internal/ez;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 3

    .line 95
    check-cast p1, Lcom/tapjoy/internal/ez;

    .line 3102
    sget-object v0, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/em;

    invoke-virtual {v0}, Lcom/tapjoy/internal/em;->a()Lcom/tapjoy/internal/em;

    move-result-object v0

    iget-object v1, p1, Lcom/tapjoy/internal/ez;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v0

    .line 3103
    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 6

    .line 1114
    new-instance v0, Lcom/tapjoy/internal/ez$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ez$a;-><init>()V

    .line 1115
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->a()J

    move-result-wide v1

    .line 1116
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1188
    iget-object v4, p1, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    .line 1121
    invoke-virtual {v4}, Lcom/tapjoy/internal/ej;->a()Lcom/tapjoy/internal/em;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v5

    .line 1122
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ek$a;->a(ILcom/tapjoy/internal/ej;Ljava/lang/Object;)Lcom/tapjoy/internal/ek$a;

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v3, v0, Lcom/tapjoy/internal/ez$a;->c:Ljava/util/List;

    sget-object v4, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/em;

    invoke-virtual {v4, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1126
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/en;->a(J)V

    .line 1127
    invoke-virtual {v0}, Lcom/tapjoy/internal/ez$a;->b()Lcom/tapjoy/internal/ez;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 3

    .line 95
    check-cast p2, Lcom/tapjoy/internal/ez;

    .line 2108
    sget-object v0, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/em;

    invoke-virtual {v0}, Lcom/tapjoy/internal/em;->a()Lcom/tapjoy/internal/em;

    move-result-object v0

    iget-object v1, p2, Lcom/tapjoy/internal/ez;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 2109
    invoke-virtual {p2}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/eo;->a(Lcom/tapjoy/internal/iy;)V

    return-void
.end method
