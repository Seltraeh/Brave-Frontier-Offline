.class public final Lcom/tapjoy/internal/fd;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fd$b;,
        Lcom/tapjoy/internal/fd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fd;",
        "Lcom/tapjoy/internal/fd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/em<",
            "Lcom/tapjoy/internal/fd;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/fd$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/em;

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/Integer;

    .line 40
    sput-object v0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/Integer;

    .line 42
    sput-object v0, Lcom/tapjoy/internal/fd;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V
    .locals 3

    move-object v0, p0

    .line 176
    sget-object v1, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/em;

    move-object/from16 v2, p19

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/em;Lcom/tapjoy/internal/iy;)V

    move-object v1, p1

    .line 177
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    move-object v1, p2

    .line 178
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    move-object v1, p3

    .line 179
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    move-object v1, p4

    .line 180
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    move-object v1, p5

    .line 181
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    move-object v1, p6

    .line 182
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    move-object v1, p7

    .line 183
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    move-object v1, p8

    .line 184
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    move-object v1, p9

    .line 185
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    move-object v1, p10

    .line 186
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    move-object v1, p11

    .line 187
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    move-object v1, p12

    .line 188
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 189
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 190
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 191
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 192
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 193
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 194
    iput-object v1, v0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 225
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 226
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fd;

    .line 227
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    .line 228
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    .line 229
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    .line 230
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    .line 231
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    .line 232
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    .line 233
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    .line 234
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    .line 235
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    .line 236
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    .line 237
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    .line 238
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    .line 239
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    .line 240
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    .line 241
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    .line 242
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    .line 243
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    .line 244
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    .line 245
    invoke-static {v1, p1}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 250
    iget v0, p0, Lcom/tapjoy/internal/ek;->b:I

    if-nez v0, :cond_12

    .line 252
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 258
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 259
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 260
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 261
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 262
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 263
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 264
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 265
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 266
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 267
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 268
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 269
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 270
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_11
    add-int/2addr v0, v2

    .line 271
    iput v0, p0, Lcom/tapjoy/internal/ek;->b:I

    :cond_12
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", deviceMaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", osName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v1, ", displayD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, ", displayW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->n:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v1, ", displayH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ", pkgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", pkgSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, ", countrySim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, ", countryNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_10
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Info{"

    .line 297
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
