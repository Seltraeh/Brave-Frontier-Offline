.class final Lcom/tapjoy/internal/fg$b;
.super Lcom/tapjoy/internal/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/em<",
        "Lcom/tapjoy/internal/fg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 362
    sget-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    const-class v1, Lcom/tapjoy/internal/fg;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/ej;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .line 360
    check-cast p1, Lcom/tapjoy/internal/fg;

    .line 4367
    sget-object v0, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/tapjoy/internal/em;->d:Lcom/tapjoy/internal/em;

    const/4 v4, 0x2

    .line 4368
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/tapjoy/internal/em;->o:Lcom/tapjoy/internal/em;

    const/4 v4, 0x3

    .line 4369
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v4, 0x4

    .line 4370
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v4, 0x5

    .line 4371
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v4, 0x6

    .line 4372
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v4, 0x7

    .line 4373
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v4, 0x8

    .line 4374
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    sget-object v3, Lcom/tapjoy/internal/em;->d:Lcom/tapjoy/internal/em;

    const/16 v4, 0x9

    .line 4375
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    if-eqz v1, :cond_8

    sget-object v3, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    const/16 v4, 0xa

    .line 4376
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v4, 0xb

    .line 4377
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v4, 0xc

    .line 4378
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    if-eqz v1, :cond_b

    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v4, 0xd

    .line 4379
    invoke-virtual {v3, v4, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v2, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v3, 0xe

    .line 4380
    invoke-virtual {v2, v3, v1}, Lcom/tapjoy/internal/em;->a(ILjava/lang/Object;)I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    .line 4381
    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;
    .locals 6

    .line 1405
    new-instance v0, Lcom/tapjoy/internal/fg$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fg$a;-><init>()V

    .line 1406
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->a()J

    move-result-wide v1

    .line 1407
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/en;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 3188
    iget-object v4, p1, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    .line 1425
    invoke-virtual {v4}, Lcom/tapjoy/internal/ej;->a()Lcom/tapjoy/internal/em;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v5

    .line 1426
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ek$a;->a(ILcom/tapjoy/internal/ej;Ljava/lang/Object;)Lcom/tapjoy/internal/ek$a;

    goto :goto_0

    .line 1422
    :pswitch_0
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2347
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->p:Ljava/lang/String;

    goto :goto_0

    .line 1421
    :pswitch_1
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2342
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->o:Ljava/lang/String;

    goto :goto_0

    .line 1420
    :pswitch_2
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2337
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->n:Ljava/lang/String;

    goto :goto_0

    .line 1419
    :pswitch_3
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2332
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->m:Ljava/lang/String;

    goto :goto_0

    .line 1418
    :pswitch_4
    sget-object v3, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2327
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->l:Ljava/lang/Long;

    goto :goto_0

    .line 1417
    :pswitch_5
    sget-object v3, Lcom/tapjoy/internal/em;->d:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2322
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 1416
    :pswitch_6
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2317
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->j:Ljava/lang/String;

    goto :goto_0

    .line 1415
    :pswitch_7
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2312
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->i:Ljava/lang/String;

    goto :goto_0

    .line 1414
    :pswitch_8
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2307
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->h:Ljava/lang/String;

    goto :goto_0

    .line 1413
    :pswitch_9
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2302
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 1412
    :pswitch_a
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2297
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 1411
    :pswitch_b
    sget-object v3, Lcom/tapjoy/internal/em;->o:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 2292
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->e:Ljava/lang/Double;

    goto/16 :goto_0

    .line 1410
    :pswitch_c
    sget-object v3, Lcom/tapjoy/internal/em;->d:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2287
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1409
    :pswitch_d
    sget-object v3, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/en;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2282
    iput-object v3, v0, Lcom/tapjoy/internal/fg$a;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1430
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/en;->a(J)V

    .line 1431
    invoke-virtual {v0}, Lcom/tapjoy/internal/fg$a;->b()Lcom/tapjoy/internal/fg;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/eo;Ljava/lang/Object;)V
    .locals 3

    .line 360
    check-cast p2, Lcom/tapjoy/internal/fg;

    .line 3386
    sget-object v0, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    iget-object v1, p2, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3387
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tapjoy/internal/em;->d:Lcom/tapjoy/internal/em;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3388
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tapjoy/internal/em;->o:Lcom/tapjoy/internal/em;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3389
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3390
    :cond_2
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3391
    :cond_3
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3392
    :cond_4
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3393
    :cond_5
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3394
    :cond_6
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/tapjoy/internal/em;->d:Lcom/tapjoy/internal/em;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3395
    :cond_7
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/tapjoy/internal/em;->i:Lcom/tapjoy/internal/em;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3396
    :cond_8
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3397
    :cond_9
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3398
    :cond_a
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v2, 0xd

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3399
    :cond_b
    iget-object v0, p2, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/tapjoy/internal/em;->p:Lcom/tapjoy/internal/em;

    const/16 v2, 0xe

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V

    .line 3400
    :cond_c
    invoke-virtual {p2}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/eo;->a(Lcom/tapjoy/internal/iy;)V

    return-void
.end method
