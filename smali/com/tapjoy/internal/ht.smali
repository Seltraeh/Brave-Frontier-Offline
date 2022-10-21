.class public final Lcom/tapjoy/internal/ht;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tapjoy/internal/ex;)Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "pkg_ver"

    .line 72
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "pkg_rev"

    .line 75
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "data_ver"

    .line 78
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "installer"

    .line 81
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "store"

    .line 84
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object p0, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tapjoy/internal/ey;ZZZ)Ljava/lang/String;
    .locals 7

    .line 273
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "type"

    .line 274
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ey;->n:Lcom/tapjoy/internal/fb;

    invoke-static {v2}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v2, "name"

    .line 275
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v3, "time"

    .line 277
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 278
    iget-object v3, p0, Lcom/tapjoy/internal/ey;->q:Ljava/lang/Long;

    const-string v4, "systime"

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/tapjoy/internal/ey;->p:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 280
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/ey;->q:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/u;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->r:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/tapjoy/internal/ey;->s:Ljava/lang/Long;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/tapjoy/internal/hg;->a:Ljava/lang/String;

    .line 282
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/tapjoy/internal/ey;->s:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/tapjoy/internal/u;->a(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 284
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/ey;->p:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/ey;->p:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 289
    :goto_0
    iget-object v3, p0, Lcom/tapjoy/internal/ey;->t:Ljava/lang/Long;

    if-eqz v3, :cond_2

    const-string v3, "duration"

    .line 290
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/ey;->t:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    :cond_2
    if-nez p1, :cond_3

    .line 293
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->u:Lcom/tapjoy/internal/fd;

    if-eqz p1, :cond_3

    const-string p1, "info"

    .line 294
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance v3, Lcom/tapjoy/internal/bh;

    iget-object v4, p0, Lcom/tapjoy/internal/ey;->u:Lcom/tapjoy/internal/fd;

    invoke-static {v4}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fd;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    :cond_3
    if-nez p2, :cond_4

    .line 296
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->v:Lcom/tapjoy/internal/ex;

    if-eqz p1, :cond_4

    const-string p1, "app"

    .line 297
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p2, Lcom/tapjoy/internal/bh;

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->v:Lcom/tapjoy/internal/ex;

    invoke-static {v3}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/ex;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    :cond_4
    if-nez p3, :cond_5

    .line 299
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->w:Lcom/tapjoy/internal/fk;

    if-eqz p1, :cond_5

    const-string p1, "user"

    .line 300
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p2, Lcom/tapjoy/internal/bh;

    iget-object p3, p0, Lcom/tapjoy/internal/ey;->w:Lcom/tapjoy/internal/fk;

    invoke-static {p3, p0}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fk;Lcom/tapjoy/internal/ey;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 303
    :cond_5
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->y:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    const-string p1, "event_seq"

    .line 304
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ey;->y:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 306
    :cond_6
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->z:Lcom/tapjoy/internal/fa;

    const-string p2, "category"

    if-eqz p1, :cond_8

    const-string p1, "event_prev"

    .line 307
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->z:Lcom/tapjoy/internal/fa;

    .line 1258
    new-instance v4, Lcom/tapjoy/internal/bc;

    invoke-direct {v4}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v4

    .line 1259
    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v4, v3, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fb;

    invoke-static {v4}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    .line 1260
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, v3, Lcom/tapjoy/internal/fa;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    .line 1261
    iget-object v2, v3, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1262
    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v2

    iget-object v3, v3, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 1264
    :cond_7
    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 311
    :cond_8
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->A:Lcom/tapjoy/internal/fg;

    if-eqz p1, :cond_16

    const-string p1, "purchase"

    .line 312
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/ey;->A:Lcom/tapjoy/internal/fg;

    .line 2213
    new-instance v2, Lcom/tapjoy/internal/bc;

    invoke-direct {v2}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v2}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v2

    const-string v3, "product_id"

    .line 2214
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v2

    iget-object v3, v1, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v2

    .line 2215
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    const-string v3, "product_quantity"

    .line 2216
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2218
    :cond_9
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    if-eqz v3, :cond_a

    const-string v3, "product_price"

    .line 2219
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2221
    :cond_a
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    if-eqz v3, :cond_b

    const-string v3, "product_price_currency"

    .line 2222
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2224
    :cond_b
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    if-eqz v3, :cond_c

    const-string v3, "currency_price"

    .line 2225
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2227
    :cond_c
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    if-eqz v3, :cond_d

    const-string v3, "product_type"

    .line 2228
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2230
    :cond_d
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    if-eqz v3, :cond_e

    const-string v3, "product_title"

    .line 2231
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2233
    :cond_e
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    if-eqz v3, :cond_f

    const-string v3, "product_description"

    .line 2234
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2236
    :cond_f
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    if-eqz v3, :cond_10

    const-string v3, "transaction_id"

    .line 2237
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2239
    :cond_10
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    if-eqz v3, :cond_11

    const-string v3, "transaction_state"

    .line 2240
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2242
    :cond_11
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    if-eqz v3, :cond_12

    const-string v3, "transaction_date"

    .line 2243
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2245
    :cond_12
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    if-eqz v3, :cond_13

    const-string v3, "campaign_id"

    .line 2246
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2248
    :cond_13
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    if-eqz v3, :cond_14

    const-string v3, "receipt"

    .line 2249
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2251
    :cond_14
    iget-object v3, v1, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    if-eqz v3, :cond_15

    const-string v3, "signature"

    .line 2252
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v1, v1, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2254
    :cond_15
    invoke-virtual {v2}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 316
    :cond_16
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->B:Ljava/lang/String;

    if-eqz p1, :cond_17

    const-string p1, "exception"

    .line 317
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ey;->B:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 322
    :cond_17
    :try_start_0
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->D:Lcom/tapjoy/internal/ff;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "meta"

    if-eqz p1, :cond_1c

    .line 323
    :try_start_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/tapjoy/internal/ey;->C:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 325
    iget-object v1, p0, Lcom/tapjoy/internal/ey;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/bi;->a(Ljava/util/Map;)V

    .line 327
    :cond_18
    iget-object v1, p0, Lcom/tapjoy/internal/ey;->D:Lcom/tapjoy/internal/ff;

    .line 328
    iget-object v2, v1, Lcom/tapjoy/internal/ff;->d:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string v2, "fq7_change"

    .line 329
    iget-object v3, v1, Lcom/tapjoy/internal/ff;->d:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_19
    iget-object v2, v1, Lcom/tapjoy/internal/ff;->e:Ljava/lang/String;

    if-eqz v2, :cond_1a

    const-string v2, "fq30_change"

    .line 332
    iget-object v3, v1, Lcom/tapjoy/internal/ff;->e:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1a
    iget-object v2, v1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    if-eqz v2, :cond_1b

    const-string v2, "push_id"

    .line 335
    iget-object v1, v1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1b
    invoke-virtual {v0, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bc;

    goto :goto_1

    .line 338
    :cond_1c
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->C:Ljava/lang/String;

    if-eqz p1, :cond_1d

    .line 339
    invoke-virtual {v0, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/ey;->C:Ljava/lang/String;

    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 345
    :cond_1d
    :goto_1
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->I:Ljava/lang/String;

    if-eqz p1, :cond_1e

    const-string p1, "dimensions"

    .line 346
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/ey;->I:Ljava/lang/String;

    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 348
    :cond_1e
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->J:Ljava/lang/Integer;

    if-eqz p1, :cond_1f

    const-string p1, "count"

    .line 349
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ey;->J:Ljava/lang/Integer;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 351
    :cond_1f
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->K:Ljava/lang/Long;

    if-eqz p1, :cond_20

    const-string p1, "first_time"

    .line 352
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ey;->K:Ljava/lang/Long;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 354
    :cond_20
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->L:Ljava/lang/Long;

    if-eqz p1, :cond_21

    const-string p1, "last_time"

    .line 355
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ey;->L:Ljava/lang/Long;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 359
    :cond_21
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->E:Ljava/lang/String;

    if-eqz p1, :cond_22

    .line 360
    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ey;->E:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 362
    :cond_22
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->F:Ljava/lang/String;

    if-eqz p1, :cond_23

    const-string p1, "p1"

    .line 363
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ey;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 365
    :cond_23
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->G:Ljava/lang/String;

    if-eqz p1, :cond_24

    const-string p1, "p2"

    .line 366
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ey;->G:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 368
    :cond_24
    iget-object p1, p0, Lcom/tapjoy/internal/ey;->H:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_26

    const-string p1, "values"

    .line 369
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    .line 370
    iget-object p0, p0, Lcom/tapjoy/internal/ey;->H:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/fc;

    .line 371
    iget-object p2, p1, Lcom/tapjoy/internal/fc;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p2

    iget-object p1, p1, Lcom/tapjoy/internal/fc;->f:Ljava/lang/Long;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    goto :goto_2

    .line 373
    :cond_25
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    .line 376
    :cond_26
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/ez;)Ljava/lang/String;
    .locals 10

    .line 380
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->a()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 387
    iget-object p0, p0, Lcom/tapjoy/internal/ez;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/ey;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 388
    iget-object v7, v4, Lcom/tapjoy/internal/ey;->u:Lcom/tapjoy/internal/fd;

    invoke-virtual {v1, v7}, Lcom/tapjoy/internal/fd;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_2

    .line 390
    :cond_1
    :goto_1
    iget-object v1, v4, Lcom/tapjoy/internal/ey;->u:Lcom/tapjoy/internal/fd;

    const/4 v7, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 394
    iget-object v8, v4, Lcom/tapjoy/internal/ey;->v:Lcom/tapjoy/internal/ex;

    invoke-virtual {v2, v8}, Lcom/tapjoy/internal/ex;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x1

    goto :goto_4

    .line 396
    :cond_3
    :goto_3
    iget-object v2, v4, Lcom/tapjoy/internal/ey;->v:Lcom/tapjoy/internal/ex;

    const/4 v8, 0x0

    :goto_4
    if-eqz v3, :cond_4

    .line 400
    iget-object v9, v4, Lcom/tapjoy/internal/ey;->w:Lcom/tapjoy/internal/fk;

    invoke-virtual {v3, v9}, Lcom/tapjoy/internal/fk;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 402
    :cond_4
    iget-object v3, v4, Lcom/tapjoy/internal/ey;->w:Lcom/tapjoy/internal/fk;

    const/4 v5, 0x0

    .line 406
    :cond_5
    new-instance v6, Lcom/tapjoy/internal/bh;

    invoke-static {v4, v7, v8, v5}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/ey;ZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    goto :goto_0

    .line 409
    :cond_6
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->b()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;
    .locals 1

    .line 413
    sget-object v0, Lcom/tapjoy/internal/ht$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "usages"

    return-object p0

    .line 423
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "custom"

    return-object p0

    :cond_2
    const-string p0, "campaign"

    return-object p0

    :cond_3
    const-string p0, "app"

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/fd;)Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "sdk"

    .line 31
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "os_name"

    .line 32
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "os_ver"

    .line 33
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "device_id"

    .line 34
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "device_maker"

    .line 35
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "device_model"

    .line 36
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "pkg_id"

    .line 37
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "pkg_sign"

    .line 38
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "locale"

    .line 39
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    const-string v1, "timezone"

    .line 40
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "display_d"

    .line 43
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "display_w"

    .line 46
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, "display_h"

    .line 49
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "mac"

    .line 52
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "country_sim"

    .line 55
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "country_net"

    .line 58
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "imei"

    .line 61
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "android_id"

    .line 64
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object p0, p0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 66
    :cond_7
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/fk;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, v0}, Lcom/tapjoy/internal/ht;->a(Lcom/tapjoy/internal/fk;Lcom/tapjoy/internal/ey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tapjoy/internal/fk;Lcom/tapjoy/internal/ey;)Ljava/lang/String;
    .locals 6

    .line 93
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/tapjoy/internal/fk;->s:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "installed"

    .line 95
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fk;->s:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fk;->t:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "referrer"

    .line 98
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fk;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fk;->G:Ljava/lang/String;

    const-string v2, "idfa_optout"

    const-string v3, "idfa"

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->G:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 103
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->H:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p1, Lcom/tapjoy/internal/ey;->r:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/tapjoy/internal/hg;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    invoke-static {}, Lcom/tapjoy/internal/hr;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 111
    invoke-static {}, Lcom/tapjoy/internal/hr;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 117
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->u:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const-string p1, "fq7"

    .line 118
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fk;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->v:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    const-string p1, "fq30"

    .line 121
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fk;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 124
    :cond_5
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    iget-object v1, p0, Lcom/tapjoy/internal/fk;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/fh;

    .line 127
    iget-object v3, v2, Lcom/tapjoy/internal/fh;->h:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 128
    iget-object v2, v2, Lcom/tapjoy/internal/fh;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "push"

    .line 132
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->a()Lcom/tapjoy/internal/bc;

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    goto :goto_2

    .line 136
    :cond_8
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->b()Lcom/tapjoy/internal/bc;

    :cond_9
    const-string p1, "session"

    .line 140
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    .line 142
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->x:Ljava/lang/Integer;

    const-string v1, "total_count"

    if-eqz p1, :cond_a

    .line 143
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fk;->x:Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 145
    :cond_a
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->y:Ljava/lang/Long;

    if-eqz p1, :cond_b

    const-string p1, "total_length"

    .line 146
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fk;->y:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 148
    :cond_b
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->z:Ljava/lang/Long;

    const-string v2, "last_at"

    if-eqz p1, :cond_c

    .line 149
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/internal/fk;->z:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 151
    :cond_c
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->A:Ljava/lang/Long;

    if-eqz p1, :cond_d

    const-string p1, "last_length"

    .line 152
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/internal/fk;->A:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 155
    :cond_d
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    const-string p1, "purchase"

    .line 157
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    .line 159
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->B:Ljava/lang/String;

    if-eqz p1, :cond_e

    const-string p1, "currency"

    .line 160
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/internal/fk;->B:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 162
    :cond_e
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->C:Ljava/lang/Integer;

    if-eqz p1, :cond_f

    .line 163
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->C:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 165
    :cond_f
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->D:Ljava/lang/Double;

    if-eqz p1, :cond_10

    const-string p1, "total_price"

    .line 166
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->D:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 168
    :cond_10
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->E:Ljava/lang/Long;

    if-eqz p1, :cond_11

    .line 169
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->E:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 171
    :cond_11
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->F:Ljava/lang/Double;

    if-eqz p1, :cond_12

    const-string p1, "last_price"

    .line 172
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->F:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 175
    :cond_12
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    .line 177
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->I:Ljava/lang/String;

    if-eqz p1, :cond_13

    const-string p1, "user_id"

    .line 178
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->I:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 180
    :cond_13
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->J:Ljava/lang/Integer;

    if-eqz p1, :cond_14

    const-string p1, "user_level"

    .line 181
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->J:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 183
    :cond_14
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->K:Ljava/lang/Integer;

    if-eqz p1, :cond_15

    const-string p1, "friend_count"

    .line 184
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->K:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 186
    :cond_15
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->L:Ljava/lang/String;

    if-eqz p1, :cond_16

    const-string p1, "uv1"

    .line 187
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->L:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 189
    :cond_16
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->M:Ljava/lang/String;

    if-eqz p1, :cond_17

    const-string p1, "uv2"

    .line 190
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->M:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 192
    :cond_17
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->N:Ljava/lang/String;

    if-eqz p1, :cond_18

    const-string p1, "uv3"

    .line 193
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->N:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 195
    :cond_18
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->O:Ljava/lang/String;

    if-eqz p1, :cond_19

    const-string p1, "uv4"

    .line 196
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 198
    :cond_19
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->P:Ljava/lang/String;

    if-eqz p1, :cond_1a

    const-string p1, "uv5"

    .line 199
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->P:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 201
    :cond_1a
    iget-object p1, p0, Lcom/tapjoy/internal/fk;->Q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    const-string p1, "tags"

    .line 202
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fk;->Q:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/bc;

    .line 205
    :cond_1b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/tapjoy/internal/fk;->R:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "push_optout"

    .line 206
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 209
    :cond_1c
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
