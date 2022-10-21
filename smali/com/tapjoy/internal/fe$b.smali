.class final Lcom/tapjoy/internal/fe$b;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/em<",
        "Lcom/tapjoy/internal/fe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 129
    sget-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    const-class v1, Lcom/tapjoy/internal/fe;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .line 127
    check-cast p1, Lcom/tapjoy/internal/fe;

    .line 4134
    iget-object v0, p1, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/em;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/em;

    const/4 v4, 0x2

    .line 4135
    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/tapjoy/internal/fk;->c:Lcom/tapjoy/internal/em;

    const/4 v3, 0x3

    .line 4136
    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 4137
    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 6

    .line 1150
    new-instance v0, Lcom/tapjoy/internal/fe$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fe$a;-><init>()V

    .line 1151
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->a()J

    move-result-wide v1

    .line 1152
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    .line 1159
    invoke-virtual {v4}, Lcom/tapjoy/internal/ej;->a()Lcom/tapjoy/internal/em;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v5

    .line 1160
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ek$a;->a(ILcom/tapjoy/internal/ej;Ljava/lang/Object;)Lcom/tapjoy/internal/ek$a;

    goto :goto_0

    .line 1156
    :cond_0
    sget-object v3, Lcom/tapjoy/internal/fk;->c:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/fk;

    .line 2117
    iput-object v3, v0, Lcom/tapjoy/internal/fe$a;->e:Lcom/tapjoy/internal/fk;

    goto :goto_0

    .line 1155
    :cond_1
    sget-object v3, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/ex;

    .line 2112
    iput-object v3, v0, Lcom/tapjoy/internal/fe$a;->d:Lcom/tapjoy/internal/ex;

    goto :goto_0

    .line 1154
    :cond_2
    sget-object v3, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/fd;

    .line 2107
    iput-object v3, v0, Lcom/tapjoy/internal/fe$a;->c:Lcom/tapjoy/internal/fd;

    goto :goto_0

    .line 1164
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/en;->a(J)V

    .line 1165
    invoke-virtual {v0}, Lcom/tapjoy/internal/fe$a;->b()Lcom/tapjoy/internal/fe;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 3

    .line 127
    check-cast p2, Lcom/tapjoy/internal/fe;

    .line 3142
    iget-object v0, p2, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/em;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3143
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/em;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3144
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/tapjoy/internal/fk;->c:Lcom/tapjoy/internal/em;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3145
    :cond_2
    invoke-virtual {p2}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/eo;->a(Lcom/tapjoy/internal/iy;)V

    return-void
.end method
