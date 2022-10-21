.class final Lcom/tapjoy/internal/fh$b;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/em<",
        "Lcom/tapjoy/internal/fh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 143
    sget-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    const-class v1, Lcom/tapjoy/internal/fh;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 4

    .line 141
    check-cast p1, Lcom/tapjoy/internal/fh;

    .line 4148
    sget-object v0, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    iget-object v1, p1, Lcom/tapjoy/internal/fh;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    iget-object v2, p1, Lcom/tapjoy/internal/fh;->g:Ljava/lang/Long;

    const/4 v3, 0x2

    .line 4149
    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fh;->h:Ljava/lang/Long;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    const/4 v3, 0x3

    .line 4150
    invoke-virtual {v2, v3, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 4151
    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 6

    .line 1164
    new-instance v0, Lcom/tapjoy/internal/fh$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fh$a;-><init>()V

    .line 1165
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->a()J

    move-result-wide v1

    .line 1166
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

    .line 1173
    invoke-virtual {v4}, Lcom/tapjoy/internal/ej;->a()Lcom/tapjoy/internal/em;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v5

    .line 1174
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ek$a;->a(ILcom/tapjoy/internal/ej;Ljava/lang/Object;)Lcom/tapjoy/internal/ek$a;

    goto :goto_0

    .line 1170
    :cond_0
    sget-object v3, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2126
    iput-object v3, v0, Lcom/tapjoy/internal/fh$a;->e:Ljava/lang/Long;

    goto :goto_0

    .line 1169
    :cond_1
    sget-object v3, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2121
    iput-object v3, v0, Lcom/tapjoy/internal/fh$a;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1168
    :cond_2
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2116
    iput-object v3, v0, Lcom/tapjoy/internal/fh$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1178
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/en;->a(J)V

    .line 1179
    invoke-virtual {v0}, Lcom/tapjoy/internal/fh$a;->b()Lcom/tapjoy/internal/fh;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 3

    .line 141
    check-cast p2, Lcom/tapjoy/internal/fh;

    .line 3156
    sget-object v0, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    iget-object v1, p2, Lcom/tapjoy/internal/fh;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3157
    sget-object v0, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    iget-object v1, p2, Lcom/tapjoy/internal/fh;->g:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3158
    iget-object v0, p2, Lcom/tapjoy/internal/fh;->h:Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3159
    :cond_0
    invoke-virtual {p2}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/eo;->a(Lcom/tapjoy/internal/iy;)V

    return-void
.end method
